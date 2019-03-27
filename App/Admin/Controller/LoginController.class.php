<?php
namespace Admin\Controller;
use Common\Controller\CommonController;
class LoginController extends CommonController {
	//空操作
	public function _empty(){
		header("HTTP/1.0 404 Not Found");
		$this->display('Public:404');
	}
	public function login(){
        $this->display();
    }
    //登录验证
    public function checkLogin(){
    	$username=trim(I('post.username'));
    	$pwd=trim(I('post.pwd'));
     	if(empty($username)||empty($pwd)){
     		$this->error('请填写完整信息');
     	}
     	$admin=M('Admin')->where("username='$username'")->find();
     	if($admin['password']!=md5($pwd)){
     		$this->error('登录密码不正确');
     	}
    	$_SESSION['admin_userid']=$admin['admin_id'];
    	$this->redirect('Index/index');
    }

    //登出
    public function loginout(){
    	$_SESSION['admin_userid']=null;
    	$this->redirect('Login/login');
    }
     
}