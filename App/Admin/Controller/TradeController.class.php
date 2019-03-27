<?php
namespace Admin\Controller;
use Common\Controller\CommonController;
use Think\Page;

class TradeController extends AdminController {
    //空操作
    public function _empty(){
        header("HTTP/1.0 404 Not Found");
        $this->display('Public:404');
    }
    /**
     * 挂单记录
     */
    public function trade(){
            $type=I('type');
			$currency_id=I('currency_id');
			$email=I('email');
        	if(!empty($type)){
                $where['a.type'] = array("EQ",$type);
            }
            if(!empty($currency_id)){
                $where['a.currency_id'] = array("EQ",$currency_id);
            }
            if(!empty($email)){
                $where['c.email'] = array('like',"%".$email."%");
            }
        $field = "a.*,b.currency_name as b_name,c.email as email";
        $count      = M('Trade')
            ->alias('a')
            ->field($field)
            ->join("LEFT JOIN ".C("DB_PREFIX")."currency AS b ON a.currency_id = b.currency_id")
            ->join("LEFT JOIN ".C("DB_PREFIX")."member as c on a.member_id = c.member_id ")
            ->where($where)
            ->count();// 查询满足要求的总记录数
        $Page       = new Page($count,25);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        //给分页传参数
        setPageParameter($Page, array('type'=>$type,'currency_id'=>$currency_id,'email'=>$email));
         
        $show       = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $list = M('Trade')
            ->alias('a')
            ->field($field)
            ->join("LEFT JOIN ".C("DB_PREFIX")."currency AS b ON a.currency_id = b.currency_id")
            ->join("LEFT JOIN ".C("DB_PREFIX")."member as c on a.member_id = c.member_id ")
            ->where($where)
            ->order(" a.add_time desc ")
            ->limit($Page->firstRow.','.$Page->listRows)
            ->select();
        if($list){
            foreach ($list as $key=>$vo) {
                $list[$key]['type_name'] = getOrdersType($vo['type']);
            }
        }
        //币种
        $currency = M('Currency')->field('currency_name,currency_id')->select();
        $this->assign('currency',$currency);
        $this->assign('list',$list);
        $this->assign('page',$show);// 赋值分页输出
        $this->display();
    }

    /**
     * 委托记录
     */
    public function orders(){
        $status_id=I('status_id');
        $currency_id=I('currency_id');
        $email=I('email');
       
            if(!empty($currency_id)){
                $where['a.currency_id'] = array("EQ",$currency_id);
            }
            if(!empty($status_id)||$status_id==="0"){
                $where['a.status'] = array('EQ',$status_id);
            }
            if(!empty($email)){
                $where['c.email'] = array('like',"%".$email."%");
            }

        
        $field = "a.*,b.currency_name as b_name,c.email as email";
        $count      = M('Orders')
            ->alias('a')
            ->field($field)
            ->join("LEFT JOIN ".C("DB_PREFIX")."currency AS b ON a.currency_id = b.currency_id")
            ->join("LEFT JOIN ".C("DB_PREFIX")."member as c on a.member_id = c.member_id ")
            ->where($where)
            ->order(" a.add_time desc ")->count();// 查询满足要求的总记录数
        $Page       = new Page($count,25);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        //给分页传参数
        setPageParameter($Page, array('status_id'=>$status_id,'currency_id'=>$currency_id,'email'=>$email));
        
        $show       = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $list = M('Orders')
            ->alias('a')
            ->field($field)
            ->join("LEFT JOIN ".C("DB_PREFIX")."currency AS b ON a.currency_id = b.currency_id")
            ->join("LEFT JOIN ".C("DB_PREFIX")."member as c on a.member_id = c.member_id ")
            ->where($where)
            ->order(" a.add_time desc ")
            ->limit($Page->firstRow.','.$Page->listRows)
            ->select();
        //币种
        $currency = M('Currency')->field('currency_name,currency_id')->select();
        $this->assign('currency',$currency);
        $this->assign('list',$list);
        $this->assign('page',$show);// 赋值分页输出
        $this->display();
    }
    
    /**
     *撤销订单  
     */
	public function cancel($order_id){
		$order_id = I('post.order_id');
	
		if(empty($order_id)){
			$info['status'] = 0;
			$info['info'] = '撤销订单不正确';
			$this ->ajaxReturn($info);
		}
		 
		$where['orders_id'] = $order_id ;
		$where['status'] = array('in','0,1');
		$list = M('Orders')->where("orders_id = '$order_id'")->find();
		 
		if(empty($list)){
			$info['status'] = 1;
			$info['info'] = '撤销订单有误';
			$this ->ajaxReturn($info);
		}
		$member_id = $list['member_id'];
		$info =$this->cancelOrdersByOrderId($list);
		$this ->ajaxReturn($info);
	}
	/**
	 *撤销订单
	 * @param   int $list  订货单信息
	 * @param   int $member_id  用户id
	 * @param   int $order_id  订单号 id
	 */
	protected  function cancelOrdersByOrderId($one_order){
		M()->startTrans();
		$r[]=$this->setOrdersStatusByOrdersId(-1, $one_order['orders_id']);
		//返还资金
		switch ($one_order['type']){
			case 'buy':
				$money=($one_order['num']-$one_order['trade_num'])*$one_order['price'];
				$r[]= $this->setUserMoney($one_order['member_id'], $one_order['currency_trade_id'],$money , 'inc', 'num');
				$r[]=$this->setUserMoney($one_order['member_id'], $one_order['currency_trade_id'], $money, 'dec', 'forzen_num');
				break;
			case 'sell':
				$num=$one_order['num']-$one_order['trade_num'] ;
				$r[]= $this->setUserMoney($one_order['member_id'], $one_order['currency_id'],$num, 'inc', 'num');
				$r[]=$this->setUserMoney($one_order['member_id'], $one_order['currency_id'], $num, 'dec', 'forzen_num');
				break;
		}
		//更新订单状态
		if(!in_array(false, $r)){
			M()->commit();
			$info['status'] =1;
			$info['info'] = '撤销成功';
			return $info;
		}else{
			M()->rollback();
			$info['status'] = -1;
			$info['info'] = '撤销失败';
	
			return $info;
		}
	}
	/**
	 * 设置订单状态
	 * @param int $status  0 1 2 -1
	 * @param int $orders_id 订单id
	 * @return  boolean
	 */
	protected function setOrdersStatusByOrdersId($status,$orders_id){
		return M('Orders')->where("orders_id=$orders_id")->setField('status',$status);
	}
	
}