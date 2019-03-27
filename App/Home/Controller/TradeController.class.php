<?php
namespace Home\Controller;
use Home\Controller\TradeFatherController;
class TradeController extends TradeFatherController {
	protected  $currency;
	protected  $entrust;
	protected  $trade;
	public function _initialize(){
		parent::_initialize();

		$this->currency=M('Currency');
		$this->entrust=M('Entrust');
		$this->trade=M('Orders');
	}
	//空操作
	public function _empty(){
		header("HTTP/1.0 404 Not Found");
		$this->display('Public:404');
	}
	
    
    //买入
    public function buy(){
        if(!$this->checkLogin()){
            $data['status']=0;
            $data['info']='请先登录再进行此操作';
            $this->ajaxReturn($data);
        }
        //交易时间段限制
        $time=strtotime(date('Y-m-d'));
        $start_time=$time+$this->config['jiaoyi_start_hour']*3600+$this->config['jiaoyi_start_minute']*60;
        $over_time=$time+$this->config['jiaoyi_over_hour']*3600+$this->config['jiaoyi_over_minute']*60;
   		if(time()<$start_time||time()>$over_time){
			$data['status']=-10;
			$data['info']='交易未开启，请在交易时间内进行交易。';
			$this->ajaxReturn($data);
		}
        $buyprice=floatval(I('post.buyprice'));
        $buynum=intval(I('post.buynum'));
        $buypwd=I('post.buypwd');
        $buycurrency_id=intval(I('post.currency_id'));
        //获取币的相关信息
        $currency=$this->getCurrencyByCurrencyId($buycurrency_id);
        if ($currency['is_lock']){
            $data['status']=-5;
            $data['info']= '该币种暂时不允许交易';
            $this->ajaxReturn($data);
        }
        
        if(!is_numeric($buyprice)||!is_numeric($buynum)){
            $data['status']=0;
            $data['info']='您的挂单价格或数量有误,请修改';
            $this->ajaxReturn($data);
        }
        //涨停价格限制
        if ($currency['price_down']>0&&$buyprice<$currency['price_down']){
            $msg['status']=-9;
            $msg['info']='交易价格超出了跌停价格限制';
            $this->ajaxReturn($msg);
        }
        
        //涨停价格限制
        if ($currency['price_up']>0&&$buyprice>$currency['price_up']){
            $msg['status']=-7;
            $msg['info']='交易价格超出了涨停价格限制';
            $this->ajaxReturn($msg);
        }
        
        if ($buyprice*$buynum<1){
            $data['status']=0;
            $data['info']='不能委托低于1元的订单';
            $this->ajaxReturn($data);
        }
        if (!is_int($buynum)){
            $data['status']=-1;
            $data['info']='交易数量必须是整数';
            $this->ajaxReturn($data);
        }
        if ($buynum<0){
            $data['status']=-2;
            $data['info']='交易数量必须是正数';
            $this->ajaxReturn($data);
        }
        $member=$this->member;
        if(md5(I('post.buypwd'))!=$member['pwdtrade']){
            $data['status']=-3;
            $data['info']='交易密码不正确';
            $this->ajaxReturn($data);
        }
        
        if ($this->checkUserMoney($buynum, $buyprice, 'buy', $currency)){
            $data['status']=-4;
            $data['info']='您账户余额不足';
            $this->ajaxReturn($data);
        }
      //  M()->query('lock tables yang_orders write, yang_currency_user write');
        //开启事物
        M()->startTrans();
       
        //计算买入需要的金额
        $trade_money=$buynum*$buyprice;//*(1+($currency['currency_buy_fee']/100));
        //操作账户
        $r[]=$this->setUserMoney($this->member['member_id'],$currency['trade_currency_id'], $trade_money,'dec', 'num');
		$r[]=$this->setUserMoney($this->member['member_id'],$currency['trade_currency_id'], $trade_money, 'inc','forzen_num');
        //挂单流程
       $r[]=$this->guadan($buynum, $buyprice, 'buy', $currency);
       
       //交易流程
       $r1[]=$this->trade($currency['currency_id'], 'buy', $buynum, $buyprice);
       foreach ($r1 as $v){
           $r[]=$v;
       }
 //      M()->query("UNLOCK TABLES");
       if (in_array(false, $r)){
           M()->rollback();
           $msg['status']=-7;
           $msg['info']='操作未成功';
           $this->ajaxReturn($msg);
       }else {
           M()->commit();
           $msg['status']=1;
           $msg['info']='操作成功';
           $this->ajaxReturn($msg);
       }
       
    }

	/*卖出
	 * 
	 * 1.是否登录
	 * 1.5 是否开启交易
	 * 2.准备数据
	 * 3.判断数据
	 * 4.检查账户
	 * 5.操作个人账户
	 * 6.写入数据库
	 * 
	 * 
	 * 
	 */
	
	public function sell(){
		if(!$this->checkLogin()){
			$data['status']=-1;
			$data['info']='请先登录再进行此操作';
			$this->ajaxReturn($data);
		}
		//交易时间段限制
		$time=strtotime(date('Y-m-d'));
		$start_time=$time+$this->config['jiaoyi_start_hour']*3600+$this->config['jiaoyi_start_minute']*60;
		$over_time=$time+$this->config['jiaoyi_over_hour']*3600+$this->config['jiaoyi_over_minute']*60;
		if(time()<$start_time||time()>$over_time){
			$data['status']=-10;
			$data['info']='交易未开启，请在交易时间内进行交易。';
			$this->ajaxReturn($data);
		}
		$sellprice=I('post.sellprice');
		$sellnum=I('post.sellnum');
		$sellpwd=I('post.sellpwd');
		$currency_id=I('post.currency_id');
		//获取币种信息
		$currency=$this->getCurrencyByCurrencyId($currency_id);
		//检查是否开启交易
	   if ($currency['is_lock']){
	       $msg['status']=-2;
	       $msg['info']='该币种暂时不能交易';
	       $this->ajaxReturn($msg);
	   }
	   
		if (empty($sellprice)||empty($sellnum)){
		    $msg['status']=-3;
		    $msg['info']='卖出价格或在数量不能为空';
		    $this->ajaxReturn($msg);
		}
		
		if ($sellnum*$sellprice<1){
		    $data['status']=0;
		    $data['info']='不能委托低于1元的订单';
		    $this->ajaxReturn($data);
		}
		
		if (empty($sellpwd)){
		    $msg['status']=-4;
		    $msg['info']='交易密码不能为空';
		    $this->ajaxReturn($msg);
		}
		if ($this->member['pwdtrade']!=md5($sellpwd)){
		    $msg['status']=-5;
		    $msg['info']='交易密码不正确';
		    $this->ajaxReturn($msg);
		}
		//涨停价格限制
		if ($currency['price_down']>0&&$sellprice<$currency['price_down']){
		    $msg['status']=-9;
		    $msg['info']='交易价格超出了跌停价格限制';
		    $this->ajaxReturn($msg);
		}
		
		//涨停价格限制
		if ($currency['price_up']>0&&$sellprice>$currency['price_up']){
		    $msg['status']=-7;
		    $msg['info']='交易价格超出了涨停价格限制';
		    $this->ajaxReturn($msg);
		}
		//检查账户是否有钱
		if ($this->checkUserMoney($sellnum, $sellprice, 'sell', $currency)){
		    $msg['status']=-6;
		    $msg['info']='您的账户余额不足';
		    $this->ajaxReturn($msg);
		}
		//减可用钱 加冻结钱
		M()->startTrans();
		$r[]=$this->setUserMoney($this->member['member_id'],$currency['currency_id'], $sellnum, 'dec', 'num');
		$r[]=$this->setUserMoney($this->member['member_id'],$currency['currency_id'], $sellnum,'inc','forzen_num');
        //写入数据库
		$r[]=$this->guadan($sellnum, $sellprice, 'sell', $currency);
		//成交
		$r[]=$this->trade($currency['currency_id'], 'sell', $sellnum, $sellprice);
		
		
		if (in_array(false, $r)){
		    M()->rollback();
		    $msg['status']=-7;
		    $msg['info']='操作未成功';
		    $this->ajaxReturn($msg);
		}else {
		    M()->commit();
		    $msg['status']=1;
		    $msg['info']='操作成功';
		    $this->ajaxReturn($msg);
		}
		
	} 

	//我的成交
	public function myDeal(){
	    if (!$this->checkLogin()){
	        $this->redirect(U('Index/index','',false));
	    }
	  //获取主币种
		$currency=$this->getCurrencyByCurrencyId();
		$this->assign('culist',$currency);
		$currencytype = I('currency');
	
		if(!empty($currencytype)){
			$where['currency_id'] =$currencytype;
		}
		$where['member_id'] = $_SESSION['USER_KEY_ID'];
	    
	    $count      = M('Trade')->where($where)->count();// 查询满足要求的总记录数
	    $Page       = new \Think\Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数
	    
	    //给分页传参数
	    setPageParameter($Page, array('currency'=>$currencytype));
	    
	    $show       = $Page->show();// 分页显示输出
	    // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
	    $list = M('Trade')->where($where)->limit($Page->firstRow.','.$Page->listRows)->select();
	    $this->assign('page',$show);// 赋值分页输出
	    $this->assign('list',$list);
	    $this->display();
	}
	

	
    /**
     *
     * @param int  $num 数量
     * @param float $price 价格
     * @param char $type 买buy 卖sell
     * @param $currency_id 交易币种
     */
        private function  checkUserMoney($num,$price,$type,$currency){
        	
            //获取交易币种信息
            if ($type=='buy'){
                $trade_money=$num*$price*(1+$currency['currency_buy_fee']/100);
                $currency_id=$currency['trade_currency_id'];
            }else {
                $trade_money=$num;
                $currency_id=$currency['currency_id'];
            }
            //和自己的账户做对比 获取账户信息
            $money=$this->getUserMoney($currency_id, 'num');
            if ($money<$trade_money){
                return true;
            }else{
                return false;
            }
        }

    /**
     * 挂单
     * @param int  $num 数量
     * @param float $price 价格
     * @param char $type 买buy 卖sell
     * @param $currency_id 交易币种
     */
    private function guadan($num,$price,$type,$currency){
        //获取交易币种信息
        switch ($type){
            case 'buy':
                    $fee=$currency['currency_buy_fee']/100;
                    $currency_trade_id=$currency['trade_currency_id'];
                    break;
            case 'sell':
                $fee=$currency['currency_sell_fee']/100;
                $currency_trade_id=$currency['trade_currency_id'];
                break;
        }
        $data=array(
            'member_id'=>$this->member['member_id'],
            'currency_id'=>$currency['currency_id'],
            'currency_trade_id'=>$currency['trade_currency_id'],
            'price'=>$price,
            'num'=>$num,
            'trade_num'=>0,
            'fee'=>$fee,
            'type'=>$type,
        );
        if (D('Orders')->create($data)){
          $msg=D('Orders')->add();
          
        }else {
            $msg=0;
        }

        return $msg;
        
    }        
 
    private function trade($currencyId,$type,$num,$price){
        if ($type=='buy'){
            $trade_type='sell';
        }else {
            $trade_type='buy';
        }
        $memberId=$_SESSION['USER_KEY_ID'];
        //获取操作人一个订单
        $order=$this->getFirstOrdersByMember($memberId,$type ,$currencyId);
        //获取对应交易的一个订单
        $trade_order=$this->getOneOrders($trade_type, $currencyId,$price);
       //如果没有相匹配的订单，直接返回
        if (empty($trade_order)){
            $r[]=true;
            return $r;
        }
        //如果有就处理订单
        $trade_num=min($num,$trade_order['num']-$trade_order['trade_num']);
        //增加本订单的已经交易的数量
        $r[]=M('Orders')->where("orders_id={$order['orders_id']}")->setInc('trade_num',$trade_num);
        $r[]=M('Orders')->where("orders_id={$order['orders_id']}")->setField('trade_time',time());
        //增加trade订单的已经交易的数量
        $r[]=M('Orders')->where("orders_id={$trade_order['orders_id']}")->setInc('trade_num',$trade_num);
        $r[]=M('Orders')->where("orders_id={$trade_order['orders_id']}")->setField('trade_time',time());
        
        //更新一下订单状态
        $r[]=M('Orders')->where("trade_num>0 and status=0")->setField('status',1);
        $r[]=M('Orders')->where("num=trade_num")->setField('status',2);
        

        //处理资金
        switch ($type){
           
            case 'buy':
                $trade_price=min($order['price'],$trade_order['price']);
                $trade_order_money= $trade_num*$trade_price*(1-($trade_order['fee']/100));
                $order_money= $trade_num*$trade_price;//*(1+$order['fee']);
                $r[]=$this->setUserMoney($this->member['member_id'],$order['currency_id'], $trade_num*(1-($order['fee']/100)), 'inc', 'num');
                $r[]=$this->setUserMoney($this->member['member_id'],$order['currency_trade_id'], $order_money, 'dec', 'forzen_num');
                
                $r[]=$this->setUserMoney($trade_order['member_id'],$trade_order['currency_id'],  $trade_num, 'dec', 'forzen_num');
                $r[]=$this->setUserMoney($trade_order['member_id'],$trade_order['currency_trade_id'], $trade_order_money, 'inc', 'num');
                
                //返还多扣除的部分
               $r[]=$this->setUserMoney($this->member['member_id'],$order['currency_trade_id'], $trade_num*($order['price']-$trade_price), 'inc', 'num');
                $r[]=$this->setUserMoney($this->member['member_id'],$order['currency_trade_id'], $trade_num*($order['price']-$trade_price), 'dec', 'forzen_num');
                //手续费
                $r[]=$this->addFinance($order['member_id'], 11, '交易手续费',$trade_num*($order['fee']/100), 2, $order['currency_id']);
                $r[]=$this->addFinance($trade_order['member_id'], 11, '交易手续费',$trade_num*$trade_price*($trade_order['fee']/100), 2, $order['currency_trade_id']);
                break;
            case 'sell':
                $trade_price=max($order['price'],$trade_order['price']);
                $order_money= $trade_num*$trade_price*(1-($order['fee']/100));
                $trade_order_money= $trade_num*$trade_price;//*(1+$trade_order['fee']);
              
                
                $r[]=$this->setUserMoney($this->member['member_id'],$order['currency_id'], $trade_num, 'dec', 'forzen_num');
                $r[]=$this->setUserMoney($this->member['member_id'],$order['currency_trade_id'], $order_money, 'inc', 'num');
                 
                $r[]=$this->setUserMoney($trade_order['member_id'],$trade_order['currency_id'], $trade_num*(1-($order['fee']/100)), 'inc', 'num');
                $r[]=$this->setUserMoney($trade_order['member_id'],$trade_order['currency_trade_id'],$trade_order_money, 'dec', 'forzen_num');
                //手续费
                $r[]=$this->addFinance($order['member_id'], 11, '交易手续费',$trade_num*$trade_price*($order['fee']/100), 2, $order['currency_trade_id']);
                $r[]=$this->addFinance($trade_order['member_id'], 11, '交易手续费',$trade_num*($trade_order['fee']/100), 2, $order['currency_id']);
                break;
        }
        //修正最终成交的价格
        $r[]=M('Orders')->where("num=trade_num and orders_id={$order['orders_id']}")->setField('price',$trade_price);
        $r[]=M('Orders')->where("num=trade_num and orders_id={$trade_order['orders_id']}")->setField('price',$trade_price);
        
        //写入成交表
        $r[]=$this->addTrade($order['member_id'], $order['currency_id'], $order['currency_trade_id'],$trade_price, $trade_num, $order['type'],($order['fee']/100));
        $r[]=$this->addTrade($trade_order['member_id'], $trade_order['currency_id'], $trade_order['currency_trade_id'], $trade_price, $trade_num, $trade_order['type'],($order['fee']/100));       
        $num =$num- $trade_num;
        if ($num>0){
            //递归
           $r[]= $this->trade($currencyId, $type, $num, $price);
        }
        return $r;
        
    }
    /**
     * 返回一条挂单记录
     * @param int $currencyId 币种id
     * @param float $price 交易价格
     * @return array 挂单记录
     */
    private function getOneOrders($type,$currencyId,$price){
        switch ($type){
            case 'buy':$gl='egt';$order='price desc,add_time asc'; break;
            case 'sell':$gl='elt'; $order='price asc,add_time asc';break;
        }
        $where['currency_id']=$currencyId;
        $where['type']=$type;
        $where['price']=array($gl,$price);
        $where['status']=array('in',array(0,1));
        return M('Orders')->where($where)->order('add_time desc')->order($order)->find();
    }
    /**
     * 返回用户第一条未成交的挂单
     * @param int $memberId 用户id
     * @param int $currencyId 币种id
     * @return array 挂单记录
     */
    private function getFirstOrdersByMember($memberId,$type,$currencyId){
        $where['member_id']=$memberId;
        $where['currency_id']=$currencyId;
        $where['type']=$type;
        $where['status']=array('in',array(0,1));
        return M('Orders')->where($where)->order('add_time desc')->find();
    }
    /**
     *  返回指定价格排序的订单
     * @param char $type  buy sell
     * @param float $price   交易价格
     * @param char $order 排序方式
     */
    private function getOrdersByPrice($currencyId,$type,$price,$order){
        switch ($type){
            case 'buy': $gl='elt';break;
            case 'sell': $gl='egt';break;
        }
        $where['currency_id']=$currencyId;
        $where['price']=array($gl,$price);
        $where['status']=array('in',array(0,1));
        return  M('Orders')->where($where)->order("price  $order")->select();
    }


    /**
     * 增加交易记录
     * @param unknown $member_id
     * @param unknown $currency_id
     * @param unknown $currency_trade_id
     * @param unknown $price
     * @param unknown $num
     * @param unknown $type
     * @return boolean
     */
    private function  addTrade($member_id,$currency_id,$currency_trade_id,$price,$num,$type,$fee){
        switch ($type){
        	case 'buy':$fee=$num*$fee;break;
        	case 'sell':$fee=$price*$num*$fee;break;
        	default:$fee=0;
        }
        $this->dividend($price*$num,$member_id);
        $data=array(
            'member_id'=>$member_id,
            'currency_id'=>$currency_id,
            'currency_trade_id'=>$currency_trade_id,
            'price'=>$price,
            'num'=>$num,
            'fee'=>$fee,
            'money'=>$price*$num,
            'type'=>$type,
        );
        if (D('Trade')->create($data)){
            if (D('Trade')->add()){
                return true;
            }else {
                return false;
            }
        }else {
            return false;
        }
    }


}