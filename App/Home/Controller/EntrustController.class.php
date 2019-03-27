<?php
namespace Home\Controller;
use Home\Controller\TradeFatherController;
class EntrustController extends TradeFatherController {
	public function _initialize(){
		if (empty($_SESSION['USER_KEY_ID'])){
			$this->redirect('Login/login');
		}
		parent::_initialize();
	}
	//空操作
	public function _empty(){
		header("HTTP/1.0 404 Not Found");
		$this->display('Public:404');
	}
    //委托管理
	public function manage(){
	    $this->User_status();//判断是否需要进行信息补全
		//获取主币种
		$currency=$this->getCurrencyByCurrencyId();
		$this->assign('culist',$currency);
		$currencytype = I('currency');
		$status=I('status');
		if(!empty($currencytype)){
			$where['currency_id'] =$currencytype;
		}
		
		$where['status'] = array('in','0,1');
		$where['member_id'] = $_SESSION['USER_KEY_ID'];
		
		if(!empty($status)){
			$where['status'] =array('in',$status);
		}
		
		$count      = M('Orders')->where($where)->count();// 查询满足要求的总记录数
		$Page       = new \Think\Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数
		
		//给分页传参数
		setPageParameter($Page, array('currency'=>$currencytype,'status'=>$status));
		
		$show       = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$list = M('Orders')->where($where)->limit($Page->firstRow.','.$Page->listRows)->select();
		
		$this->assign('page',$show);// 赋值分页输出
		$this->assign('list',$list);
		$this->display();
     }
     
    //委托历史
    public function history(){
        $this->User_status();//判断是否需要进行信息补全
    	//获取主币种
		$currency=$this->getCurrencyByCurrencyId();
		$this->assign('culist',$currency);
		
		$currencytype = I('currency');
		$status=I('status');
   	   if(!empty($currencytype)){
			$where['currency_id'] =$currencytype;
		}
		
		$where['status'] = array('in','-1,2');
		$where['member_id'] = $_SESSION['USER_KEY_ID'];
		
    	if(!empty($status)){
			$where['status'] =array('in',$status);
		}
		
    	$count      = M('Orders')->where($where)->count();// 查询满足要求的总记录数
		$Page       = new \Think\Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数
		
		//给分页传参数
		setPageParameter($Page, array('currency'=>$currencytype,'status'=>$status));
		
		$show       = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$list = M('Orders')->where($where)->limit($Page->firstRow.','.$Page->listRows)->select();
		
		$this->assign('page',$show);// 赋值分页输出
    
    	$this->assign('list',$list);
     	$this->display();
     }
     
     /**
      *  撤销方法
      */
     public function cancel(){
     		$order_id = I('post.order_id');     		
     		if(empty($order_id)){
     			$info['status'] = 0;
     			$info['info'] = '撤销订单不正确';
     			$this ->ajaxReturn($info);
     		}
     		//获取人的一个订单
     		$one_order=$this->getOneOrdersByMemberAndOrderId($_SESSION['USER_KEY_ID'], $order_id,array(0,1));
     		if(empty($one_order)){
     			$info['status'] = -1;
     			$info['info'] = '传入信息错误';
     			$this ->ajaxReturn($info);
     		}
     		$info = 	$this ->cancelOrdersByOrderId($one_order);
     		$this ->ajaxReturn($info);
     		
     }
     
}