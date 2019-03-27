<?php
namespace Common\Controller;
use Think\Controller;
use Home\Controller\PublicController;
class CommonController extends Controller {
    protected $config;
    protected $trade;
    protected $member;
    protected $dividendConfig;
    public function _initialize(){
    
    	foreach ($_POST as $v){
    		// 正则表达式 判断是否有selert语句 如果有提示错误
    		$re=inject_check($v);
    		if($re){
    			if(IS_AJAX){
    				$data['stauts']=0;
    				$data['info']="非法字符";
    				$this->ajaxReturn($data);exit;
    			}else{
    				$this->display('Public:404');
    				exit;
    			}
    		   
    		}
    	}
    	foreach ($_GET as $v){
    		// 正则表达式 判断是否有selert语句 如果有提示错误
    		$re=inject_check($v);
    		if($re){
    			if(IS_AJAX){
    				$data['stauts']=0;
    				$data['info']="非法字符";
    				$this->ajaxReturn($data);exit;
    			}else{
    				$this->display('Public:404');
    				exit;
    			}
    		}
    	}
    	
    	
        $list=M("Config")->select();
		foreach ($list as $k=>$v){
            $list[$v['key']]=$v['value'];
        }
        $this->config=$list;
        $this->assign('config',$list);
        
		//分红奖励控制参数
        $dividend=M("Dividend_config")->select();
        foreach ($dividend as $k=>$v){
        	$dividendConfig[$v['name']]=$v['value'];
        }
        
        $this->dividendConfig=$dividendConfig;
        $this->assign('dividendConfig',$dividendConfig);
        
        
        $this->login_limit_time();
 		//帮助中心
		$info_help = M('Article_category')->where('parent_id = 6')->limit(4)->select();
		//团队信息显示
		$info_team = M('Article')->where('position_id = 7')->limit(4)->select();

		$this->assign('help',$info_help);
		$this->assign('team',$info_team);

        
        if(!empty($_SESSION['USER_KEY_ID'])){
            $member=M("Member")->field('*,(rmb+forzen_rmb) as count')->where("member_id='{$_SESSION['USER_KEY_ID']}'")->find();
            $this->member=$member;
            $this->assign("member",$member);
        }
        $this->trade=M('Orders');
        //执行抓取条数
        $newMessageCount = $this->pullMessageCount($_SESSION['USER_KEY_ID']);
        $this->assign('newMessageCount',$newMessageCount);
        
		//币种信息
        $currency=$this->currency();
        $this->assign('currency',$currency);

    }

	/**
 	* 检测是否需要进行信息填写(补全)
 	*/
	protected function  User_status(){
		header("Content-type:text/html;charset=utf-8");
		$list = M('Member')->where(array('member_id'=>session('USER_KEY_ID')))->find();
		if($list['status']==0){
			session('STATUS',0);
			$this->redirect('ModifyMember/modify','',1,"<script>alert('请填写个人信息')</script>");
			exit();
		}
	}

	/**
	 * 查询钱包余额
	 * @param unknown $port_number 端口号
	 * @return Ambigous <number, unknown> 剩余的余额
	 */
	protected  function get_qianbao_balance($currency){
		require_once 'App/Common/Common/easybitcoin.php';
		$bitcoin = new \Bitcoin($currency['rpc_user'],$currency['rpc_pwd'],$currency['rpc_url'],$currency['port_number']);
		$money=$bitcoin->getinfo();
		$num=empty($money['balance'])?0:$money['balance'];
		return $num;
	}

    /**
     * 根据ID返回具体分类
     * @param string $id
     * @return boolean|array $list;
     */

    public function getCatById($id=null){
        if (empty($id)){
            return false;
        }
        return M('Article_category')->where("id=$id")->find();
    }

    /**
     * 返回指定父类下面的二级分类
     * @param string $parentId
     * @return boolean|array $list;
     */
    public function getChildCatByParentCat($parentId=null){
        if (empty($parentId)){
            return false;
        }
        return M('Article_category')->where("parent_id=$parentId")->select();
    }
    /**
     * 获取当前币种的信息
     * @param int $id 币种id
     * @return 24H成交量 24H_done_num  24H成交额 24H_done_money 24H涨跌 24H_change 7D涨跌  7D_change
     * @return 最新价格 new_price 买一价 buy_one_price 卖一价 sell_one_price 最高价 max_price 最低价 min_price
     */

    public function getCurrencyMessageById($id){
        $where['currency_id']=$id;
        $time=time();
        //一天前的时间
        $old_time=strtotime(date('Y-m-d',$time));
        //最新价格
        $order='add_time desc';
        $rs=M('Trade')->where($where)->order($order)->find();
        $data['new_price']=$rs['price'];
        //判断价格是升是降
        $re=M('Trade')->where($where)->where("add_time<$old_time")->order($order)->find();
        if($re['price']>$rs['price']){
            //说明价格下降
            $data['new_price_status']=0;
        }else{
            $data['new_price_status']=1;
        }
        //24H涨跌
        $re=M('Trade')->where($where)->where("add_time<$time-60*60*24")->order($order)->find();
        if ($re['price']!=0){
            $data['24H_change']=sprintf("%.2f", ($rs['price']-$re['price'])/$re['price']*100);
            if($data['24H_change']==0){
                $data['24H_change']=100;
            }
        }else {
            $data['24H_change']=100;
        }
        //7D涨跌
        $re=M('Trade')->where($where)->where("add_time<$time-60*60*24*7")->order($order)->find();
        if ($re['price']!=0){
            $data['7D_change']=sprintf("%.2f", ($rs['price']-$re['price'])/$re['price']*100);
            if($data['7D_change']==0){
                $data['7D_change']=100;
            }
        }else {
            $data['7D_change']=100;
        }
        //24H成交量
        $rs=M('Trade')->field('num')->where($where)->where("add_time>$time-60*60*24")->sum('num');
        $data['24H_done_num']=$rs;
        //24H成交额
        $rs=M('Trade')->field('num*price')->where($where)->where("add_time>$time-60*60*24")->sum('num*price');
        $data['24H_done_money']=$rs;
        //最低价
        $data['min_price']=$this->getminPriceTrade($id);
        //最高价
         $data['max_price']=$this->getmaxPriceTrade($id);
        //买一价
        $data['buy_one_price']=$this->getOneOrdersByPrice($id, 'buy');
        //卖一价
        $data['sell_one_price']=$this->getOneOrdersByPrice($id, 'sell');
        //返回
        return $data;
    }
    //获取对应币种，该会员的资产
    public function getCurrencyUser($uid,$cid){
        $where['member_id']=$uid;
        $where['currency_id']=$cid;
        $rs=M('Currency_user')->field('*,(num+forzen_num) as count')->where($where)->find();
        return $rs;
    }
    //获取全部币种信息
    public function currency(){
        $list=M('Currency')->where('is_line=1 ')->order('sort')->select();
        return $list;
    }
    //获取单独币种信息
    public function currency_one($id){
        $list=M('Currency')->where("currency_id=".$id)->find();
        return $list;
    }
    //验证前台登录
    public function checkLogin(){
        if (!$_SESSION['USER_KEY'] || !$_SESSION['USER_KEY_ID']) {
            return false;
        }
        return true;
    }

	//空操作
	public function _empty(){
	    header("HTTP/1.0 404 Not Found");
	    $this->display('Public:404');
	}
	
	
	/**
	 * 根据ID返回具体分类
	 * @param string $id
	 * @return boolean|array $list;
	 */

    /**
     * @param $id 用户ID
     * @return bool 返回用户未读消息条数
     */
    public function pullMessageCount($id){
        if(empty($id)){
            return false;
        }
        if(!$count = M('message')->where(array('member_id'=>$id,'status'=>0))->count()){
            return false;
        }
        return $count;
    }
    /**
     * 添加委托表
     * @param  $member_id   用户id
     * @param  $currency_id 币种id
     * @param  $all_num  全部数量
     * @param  $price
     * @param  $type   卖出单1 还是买入单2
     * @param  $fee  手续费
     * @return
     */
    public function addEntrust($member_id,$currency_id,$all_num,$price,$type,$fee){
        $data['member_id']=$member_id;
        $data['currency_id']=$currency_id;
        $data['all_num']=$all_num;
        $data['surplus_num']=$all_num;
        $data['price']=$price;
        $data['add_time']=time();
        $data['type']=$type;
        $data['fee']=$fee;
        $data['status']=0;
        $list=M('Entrust')->add($data);
        if($list){
            return $list;
        }else{
            return false;
        }
    }

   /**
    *  /**
     * 添加消息库
     * @param int $member_id   用户ID -1 为群发
     * @param int $type    分类  4=系统  -1=文章表系统公告 -2 个人信息
     * @param String $title       标题
     * @param String $content     内容
     * @return bool|mixed  成功返回增加Id 否则 false
     */

    public function addMessage_all($member_id,$type,$title,$content){
        $data['u_id']=$member_id;
        $data['type']=$type;
        $data['title']=$title;
        $data['content']=$content;
        $data['add_time']=time();
        $id=M('Message_all')->add($data);
        if($id){
            return $id;
        }else{
            return false;
        }
    }
    /**
     * 添加财务日志方法
     * @param unknown $member_id
     * @param unknown $type  
     * @param unknown $content
     * @param unknown $money
     * @param unknown $money_type  收入=1/支出=2
     * @param unknown $currency_id  币种id 0是rmb
     * @return 
     */
    public function addFinance($member_id,$type,$content,$money,$money_type,$currency_id){
    	$data['member_id']=$member_id;
    	$data['type']=$type;
    	$data['content']=$content;
    	$data['money_type']=$money_type;
    	$data['money']=$money;
    	$data['add_time']=time();
    	$data['currency_id']=$currency_id;
        $data['ip'] = get_client_ip();
    	$list=M('Finance')->add($data);
    	if($list){
    		return $list;
    	}else{
    		return false;
    	}
    }
    //修正众筹表 计算剩余数量  修改状态
     public function checkZhongchou(){
     	$list=M('Issue')->field('id,add_time,end_time,num,num_nosell,zhongchou_success_bili,status')->select();
     	foreach($list as $k=>$v){
     		$where['id']=$v['id'];
     		if($v['status']==3){
     			M('Issue')->where($where)->setField('end_time',time());
     			continue;
    	 	}
     		if($v['add_time']>time()){
     			M('Issue')->where($where)->setField('status',0);
     		}
     		if($v['add_time']<time()&&$v['end_time']>time()){
     			M('Issue')->where($where)->setField('status',1);
    	 	}
    	 	if($v['end_time']<time()){
    	 		M('Issue')->where($where)->setField('status',2);
    	 		M('Issue')->where($where)->setField('end_time',time());
    	 	}
    	 	$num=M('Issue_log')->where('iid='.$v['id'])->sum('num');
    	 	M('Issue')->where($where)->setField('deal',$v['num']-$num-$v['num_nosell']);
    	 	$limit_num=$v['num']*$v['zhongchou_success_bili']-$v['num_nosell'] ;
    	 	if($num>=$limit_num){
    	 		M('Issue')->where($where)->setField('status',2);
    	 	}
     	}
     }
     //获取会员一次众筹有几次记录
     public function getIssuecountById($uid,$iid){
         if (empty($uid)){
             return 0;
         }
     	$list=M('Issue_log')->where("uid=$uid and iid=$iid")->count();
     	if($list){
     		return $list;
     	}else{
     		return false;
     	}
     }
     //超过时限退出登录方法
     //登录时间存在session里，每次判断当前时间比较，时间过了就清掉SESSION记录
     protected function login_limit_time(){
     	if(!empty($_SESSION['login_time'])){
     		if(!empty($this->config['time_limit'])){
     			if($_SESSION['login_time']<time()-$this->config['time_limit']*60){
     				$_SESSION['login_time']=null;
	     			$_SESSION['USER_KEY_ID']=null;
	       			$_SESSION['USER_KEY']=null;
	       			$_SESSION['STATUS']=null;
	       			$this->redirect('Index/index');
	     		}
     		}
     	}
     	$time=time();
     	$_SESSION['login_time']=$time;
     }
     //设置交易时间，超时不开交易方法
     
     /**
      * 实例化币种
      * @param unknown $currency_id   币种id
      * @return unknown
      */
     public function getCurrencynameById($currency_id){
        if ($currency_id==0){
            return array('currency_name'=>'人民币','currency_mark'=>'CNY','currency_buy_fee'=>0,'currency_sell_fee'=>0);
        }
     	$where['currency_id']= $currency_id;
     	
     	$list = M('Currency')->field('currency_name,currency_mark,currency_buy_fee,currency_sell_fee')->where($where)->find();
     	return $list;
     }
     /**
      *
      * @param int $currency_id 币种id
      * @return array 币种结果集
      */
     protected  function  getCurrencyByCurrencyId($currency_id=0){
		if (empty($currency_id)) {
			$where['currency_id']=array('gt',$currency_id);
		}else{
			$where['currency_id']=array('eq',$currency_id);
		} 	
     	//获取交易币种信息
     	$list= M('Currency')->field("currency_id,price_up,price_down,currency_buy_fee,currency_sell_fee,trade_currency_id,is_lock,rpc_url,rpc_pwd,rpc_user,port_number,currency_all_tibi")->where($where)->select();
    	if (!empty($currency_id)) {
    		return $list[0];  	
     	}else{
     		return $list;
     	}
     }
     
     /**
      * 获取用户名
      * @param unknown $member_id   用户id
      * @return unknown
      */
     public function setUnameById($member_id){
     	 
     	$where['member_id']= $member_id;
     	$list = M('Member')->field('name')->where($where)->find();
     	if(!empty($list)){
     		return $list['name'];
     	}
     }
     /**
      * 设置用户资金表 字段值
      * @param int $member_id  用户id
      * @param int $currenty_id 币种id
      * @param string $key  字段名称
      * @param string $value 字段值
      * @return  boolean 返回执行结果
      */
     protected function  setCurrentyMemberByMemberId($member_id,$currenty_id,$key,$value){
         return   M("Currency_user")->where("member_id=$member_id and  currency_id=$currenty_id")->setField($key,$value);
     

     }
     /**
      * 获取指定数量个人挂单记录
      * @param int $num 数量
      */
     protected function getOrdersByUser($num,$currency_id){
         $where['member_id']=$_SESSION['USER_KEY_ID'];
         $where['status']=array('in',array(0,1));
         $where['currency_id']=$currency_id;
         return  M('Orders')->where($where)->order("add_time desc")->limit($num)->select();
     
     }
     
     /**
      * 设置账户资金
      * @param int $currency_id  币种ID
      * @param int $num 交易数量
      * @param char $inc_dec  setDec setInc 是加钱还是减去
      * @param char forzen_num num
      */
      protected   function setUserMoney($member_id,$currency_id,$num,$inc_dec,$field){
         $inc_dec=strtolower($inc_dec) ;
         $field=strtolower($field) ;
         //允许传入的字段
         if (!in_array($field, array('num','forzen_num'))){
             return false;
         }
         //如果是RMB
         if ($currency_id==0){
             //修正字段
             switch ($field){
                 case 'forzen_num': $field='forzen_rmb';break;
                 case 'num': $field='rmb';break;
             }
             switch ($inc_dec){
                 case 'inc':
                     $msg= M('Member')->where("member_id=$member_id ")->setInc($field,$num);
                     break;
                 case 'dec':
                     $msg= M('Member')->where("member_id=$member_id")->setDec($field,$num);
                     break;
                 default:return false;
             }
             return $msg;
         }else{
             switch ($inc_dec){
                 case 'inc':
                     $msg= M('Currency_user')->where("member_id=$member_id and currency_id=$currency_id")->setInc($field,$num);
                     break;
                 case 'dec':
                     $msg= M('Currency_user')->where("member_id=$member_id and currency_id=$currency_id")->setDec($field,$num);
                     break;
                 default:return false;
             }
             return $msg;
         }
     }
     /**
      * 返回指定状态的挂单记录
      * @param int $status -1 0 1 2
      * @param int $num 数量
      * @param int $currency_id 币种id
      */
    protected function getOrdersByStatus($status,$num,$currency_id){
        $where['currency_id']=$currency_id;
        $where['status']=$status;
        return M('Orders')->where($where)->limit($num)->order('trade_time desc')->select();
    }
     /**
      * 获取指定数量的成交记录
      * @param int $num
      */
     protected function getTradesByNum($num,$currency_id){
         $where['currency_id']=$currency_id;
         return M('Trade')->where($where)->order('add_time desc')->select();
     }
     
     /**
      *  获取当前登陆账号指定币种的金额
      * @param int $currency_id 币种ID
      * @param char $field  num  forzen_num
      * @return array 当前登陆人账号信息
      */
     protected  function getUserMoney($currency_id,$field){
          
         if (empty($currency_id)){
             switch ($field){
                 case 'num':$field='rmb';break;
                 case 'forzen_num':$field='forzen_rmb';break;
                 default:$field='rmb';
             }
             $this->member[$field];
         }else {
             $currency_user= M('Currency_user')->where("member_id={$this->member['member_id']} and currency_id=$currency_id")->find();
         }
         return  isset($this->member[$field])? $this->member[$field]:$currency_user[$field];
     }
      
     /**
      * 返回指定数量排序的挂单记录
      * @param char $type buy sell
      * @param int $num 数量
      * @param char $order 排序 desc asc
      */
       protected function getOrdersByType($currencyid,$type,$num,$order){
         $where['type']=array('eq',$type);
         $where['status']=array('in',array(0,1));
         $where['currency_id']=$currencyid;
         $list= M('Orders')->field("sum(num) as num,sum(trade_num) as trade_num,price,type,status")->where($where)->group('price')->order("price $order, add_time asc")->limit($num)->select();
         foreach ($list as $k=>$v){
             $list[$k]['bili']=100-($v['trade_num']/$v['num']*100);
         }
         if ($type=='sell'){
           $list=  array_reverse($list);
         }
         return $list;
     }

     
//      /**
//       *撤销订单
//       * @param unknown  Int $list  订货单信息
//       * @param unknown  Int $member_id  用户id
//       * @param unknown  Int $order_id  订单号 id
//       */
//      public function cancelByOrderid($list,$member_id,$order_id){
//      	M()->startTrans();
//      	//dump($list['num']);die;
//      	$num = $list['num'];
//      	$trade_num = $list['trade_num'];
//      	$fee = $list['fee'];
//      	$price = $list['price'];
     
//      	if($list['type']  == "sell" ){
//      		$btype = $list['currency_id'];
//      	}else{
//      		$btype = $list['currency_trade_id'];
//      	}
//      	$num = $num - $trade_num;
//      	if($num == 0){
//      		$info['status'] = 4;
//      		$info['info'] = '没有需要撤销的金额';
//      		return $info;
//      	}
     	 
//      	$whereOrder['orders_id'] = $order_id;
//      	$re[] = M('Orders')->where($whereOrder)->setField('status',-1);
     	 
     	 
//      	if($list['currency_trade_id'] == 0){
//      		$whereCurren['member_id'] = $member_id;
//      		$re[] = M('Member')->where($whereCurren)->setInc('rmb',$num);
//      		$re[] = M('Member')->where($whereCurren)->setDec('forzen_rmb',$num);
//      	}else{
//      		$whereCurren['member_id'] = $member_id;
//      		$whereCurren['currency_id'] = $btype;
//      		$re[] = M('currency_user')->where($whereCurren)->setInc('num',$num);
//      		$re[] = M('currency_user')->where($whereCurren)->setDec('forzen_num',$num);
     		 
//      	}
     
//      	if(!in_array(false, $re)){
//      		M()->commit();
//      		$info['status'] = 2;
//      		$info['info'] = '撤销成功';
//      		return $info;
//      	}else{
//      		M()->rollback();
//      		$info['status'] = 3;
//      		$info['info'] = '撤销失败';
     
//      		return $info;
//      	}
//      }
     /**
      * 获取一个挂单记录价格 买一 卖一
      * @param unknown $currencyid
      * @param unknown $type
      * @param unknown $order
      */
     protected function getOneOrdersByPrice($currencyid,$type){
         $where['currency_id']=$currencyid;
         $where['type']=$type;
         $where['status']=array('in',array(0,1));
         switch ($type){
             case 'buy': $order='desc';
             break;
             case 'sell':$order='asc';
             break;
         }
          $orders= M('Orders')->field('price')->where($where)->order('price '.$order)->find();
          return $orders['price'];
     }
     /**
      * 返回最高价
     @param int $currency_id 币种ID
      */
     protected function getMaxPriceTrade($currency_id){
         $order='desc';
         $trade= $this->getTradeByPrice($currency_id,$order);
         return $trade['price'];
     }
     /**
      * 返回最低价
      @param int $currency_id 币种ID
      */
     protected function getminPriceTrade($currency_id){
         $order='asc';
          $trade= $this->getTradeByPrice($currency_id,$order);
          return $trade['price'];
     }
     /**
      * 指定价格一个成交记录
      * @param int $currency_id 币种ID
      * @param char $order 排序
      */
     private function getTradeByPrice($currency_id,$order){
         $where['currency_id']=$currency_id;
        return M('Trade')->field('price')->where($where)->order('price '.$order)->find();

     }

     /**
      * 分红奖励全部
      *@param $money 传入交易金额
      *@param $member_id 用户id 不传自动处理登录用户
      */
     protected function dividend($money,$member_id=''){
     	if(empty($member_id)){
     		$userid=$_SESSION['USER_KEY_ID'];
     	}
     	$num=$this->findDividendMinNum();
     	if(!$num){
     		return ;
     	}
     	//max是还可以获得多少个分红股
     	$max=$this->getUserAddDividendPower($member_id,$num);
     	if(!$max){
     		return ;
     	}
     	//增加用户分红业绩
     	if(!$this->addUserDividendNum($money,$member_id,$max,$num)){
     		return;
     	}
     	$this->addDividend($member_id,$num,$max);
     
     }
     /**
      * 增加用户分红业绩
      * @param $money 用户表dividend_num代表分红业绩与金额等比例
      * @param
      * return 成功失败
      */
     private function addUserDividendNum($money,$member_id,$max){
     	if($money>$max*$this->dividendConfig['money'.$max]){
     		$money=$max*$this->dividendConfig['money'.$max];
     	}
     	$res=M('Member')->where('member_id='.$member_id)->setInc('dividend_num',$money);
     	if($res){
     		return true;
     	}else {
     		return false;
     	}
     }
     /**
      * 判断用户进入获得分红股数量是否超过当日上线
      * @param $money 用户表dividend_num代表分红业绩与金额等比例
      * @param
      * return 还可以获得的分红股数
      */
     private function getUserAddDividendPower($member_id,$num){
     	$max=$this->dividendConfig['max'.$num];
     	$today=strtotime(date('Y-m-d 0:0:0'));
     	$count=M('Finance')
     	->where('type=13 and add_time>'.$today.' and member_id='.$member_id)
     	->select();
     	$money=0;
     	if($count){
     		foreach ($count as $k=>$v){
     			$money+=$v['money'];
     		}
     	}
     	if($money<$this->dividendConfig['max'.$num]){
     		return $this->dividendConfig['max'.$num]-$money;
     	}
     	return false;
     }
     /**
      * 获取触发分红业绩
      * return 触发分红业绩后缀
      */
     private function findDividendMinNum(){
     	$num=M('Currency')
     	->field('currency_all_num')
     	->where('currency_id='.$this->dividendConfig['dividend_id'])
     	->find();
     	if($num['currency_all_num']<$this->dividendConfig['num1']*10000){
     		return false;
     	}
     	if($num['currency_all_num']<$this->dividendConfig['num2']*10000){
     		return 1;
     	}
     	if($num['currency_all_num']<$this->dividendConfig['num3']*10000){
     		return 2;
     	}
     	if($num['currency_all_num']<$this->dividendConfig['num4']*10000){
     		return 3;
     	}
     	return false;
     }
     /**
      * 触发分红业绩
      * $num 最少限制
      * $member_id 用户ID
      */
     private function addDividend($member_id,$num,$max){
     	$member=M('Member')
     	->field('dividend_num')
     	->where('member_id='.$member_id)
     	->find();
     	$money=$this->dividendConfig['get'.$num];
     	$n=floor($member['dividend_num']/$this->dividendConfig['money'.$num]);
     	$n=min($n,$max);
     	if($n){
     		M('Member')->where('member_id='.$member_id)->setDec('dividend_num',$this->dividendConfig['money'.$num]*$n);
     		M('Currency')->where("currency_id=".$this->dividendConfig['dividend_id'])->setInc('currency_all_num',$money*$n);
     		$this->setUserMoney($member_id, $this->dividendConfig['dividend_id'],$money*$n, "inc",'num');
     		$this->addFinance($member_id, 13, "获得分红股",$money*$n,1, $this->dividendConfig['dividend_id']);
     
     		return 2;
     	}
     	return 1;
     }
     
     /**
      * ajax 发送手机号码
      */
     public function ajaxSandPhone(){
     	$phone = urldecode($_POST['phone']);
     	if(empty($phone)){
     		$data['status']=0;
     		$data['info'] = "参数错误";
     		$this->ajaxReturn($data);
     	}
     	if(!preg_match("/^1[34578]{1}\d{9}$/",$phone)){
     		$data['status']=-1;
     		$data['info'] = "手机号码不正确";
     		$this->ajaxReturn($data);
     	}
     	$r = sandPhone($phone,$this->config['CODE_NAME'],$this->config['CODE_USER_NAME'],$this->config['CODE_USER_PASS']);
     	$name=chuanglan_status($r['1']);
     	if($r[1]==0){
     		$data['stauts']=1;
     		$data['info']=$name;
     		$this->ajaxReturn($data);exit;
     	}else{
     		$data['status'] =-2;
     		$data['info']=$name;
     		$this->ajaxReturn($data);exit;
     	}
//      	if($r!="短信发送成功"){
//      		$data['status']=0;
//      		$data['info'] = $r;
//      		$this->ajaxReturn($data);
//      	}else{
//      		$data['status']=1;
//      		$data['info'] = $r;
//      		$this->ajaxReturn($data);
//      	}
     }
   }

