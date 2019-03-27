<?php
namespace Home\Controller;
use Common\Controller\CommonController;
class TradeFatherController extends CommonController {
	public function _initialize(){
		parent::_initialize();
	}
	//空操作
	public function _empty(){
		header("HTTP/1.0 404 Not Found");
		$this->display('Public:404');
	}
	/**
	 * 返回指定用户挂单记录
	 * @param int $member_id
	 * @param int $order_id
	 * @param array $status
	 */
	protected function getOneOrdersByMemberAndOrderId($member_id,$order_id,$status=array(0,1,2,-1)){
	    $where['member_id']=$member_id;
	    $where['orders_id']=$order_id;
	    $where['status']=array('in',$status);
	    $one_order=M('Orders')->where($where)->find();
	    return  $one_order;
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

}