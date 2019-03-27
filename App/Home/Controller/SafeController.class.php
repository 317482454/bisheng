<?php
namespace Home\Controller;
use Common\Controller\CommonController;
class SafeController extends HomeController {
 	public function _initialize(){
 		parent::_initialize();
 	}
	//空操作
	public function _empty(){
		header("HTTP/1.0 404 Not Found");
		$this->display('Public:404');
	}
	public function index(){
        $u_info = M('Member')->where("member_id = {$_SESSION['USER_KEY_ID']}")->find();


        $this->assign('u_info',$u_info);
		$this->assign('empty','暂无数据');
        $this->display();
     }
	 public function mobilebind(){
		
		$this->assign('empty','暂无数据');
        $this->display();
     }
}