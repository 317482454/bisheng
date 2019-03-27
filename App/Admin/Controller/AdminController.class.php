<?php
namespace Admin\Controller;
use Common\Controller\CommonController;
class AdminController extends CommonController {
	protected $admin;
	protected $config;
	public function _initialize(){
		parent::_initialize();
		//验证登录
		if (empty($_SESSION['admin_userid'])){
			$this->redirect('Login/login');
		}
		
		//管理员信息
		$uid=$_SESSION['admin_userid'];
		$admin_user=M("Admin")->where("admin_id='$uid'")->find();
		$this->admin=$admin_user;
		//网站配置信息
		$config=M("Config")->field('key,value')->select();
		foreach ($config as $k=>$v){
			$config[$v['key']]=$v['value'];
		}
		$this->config=$config;
		//**************权限管理***********
		$URL_MODULE_MAP = array_keys(C('URL_MODULE_MAP'))[0];
		$adminquanxian=M("Admin")->field('Nav')->where("admin_id='{$_SESSION['admin_userid']}'")->find();
		$rules=$adminquanxian['nav'];
		if(empty($rules)){
			$this->error('此账号尚未分配权限',$URL_MODULE_MAP.'/Login/login');
		}
		$rules=explode(',', $rules);
		foreach ($rules as $k=>$v){
			$list[]=M("Nav")->where('nav_id='.$v)->find();
		}
		foreach ($list as $k=>$v){
			$v['nav_url'] = '/'.$URL_MODULE_MAP.$v['nav_url'];
			$value[$v['cat_id']][]=$v;
		}
		foreach ($value as $k=>$v){
			$this->assign($k."_nav",$v);
		}
		$this->assign('URL_MODULE_MAP',$URL_MODULE_MAP);
	}
	//图片处理
	public function upload($file){
	    
	    switch($file['type'])
	    {
	        case 'image/jpeg': $ext = 'jpg'; break;
	        case 'image/gif': $ext = 'gif'; break;
	        case 'image/png': $ext = 'png'; break;
	        case 'image/tiff': $ext = 'tif'; break;
	        default: $ext = ''; break;
	    }
	    if (empty($ext)){
	        return false;
	    }
		$upload = new \Think\Upload();// 实例化上传类
		$upload->maxSize   =     3145728 ;// 设置附件上传大小
		$upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
		$upload->savePath  =      './Public/Uploads/'; // 设置附件上传目录
		// 上传文件
		$info   =  $upload->uploadOne($file);
		if(!$info) {
			// 上传错误提示错误信息
			$this->error($upload->getError());exit();
		}else{
			// 上传成功
			$pic=$info['savepath'].$info['savename'];
			$url='/Uploads'.ltrim($pic,".");
		}
		return $url;
	}
	
	public function upload_art($file){
			
		// 		switch($file['type'])
		// 		{
		// 			case 'image/jpeg': $ext = 'jpg'; break;
		// 			case 'image/gif': $ext = 'gif'; break;
		// 			case 'image/png': $ext = 'png'; break;
		// 			case 'image/tiff': $ext = 'tif'; break;
		// 			default: $ext = ''; break;
		// 		}
		// 		if (empty($ext)){
		// 			return false;
		// 		}
	
		if($file['type'] != "application/msword"){
			return false;
		}
		$ext = "doc";
		$upload = new \Think\Upload();// 实例化上传类
		$upload->maxSize   =     3145728 ;// 设置附件上传大小
		// 		$upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
		$upload->exts      =     array('doc');
		$upload->savePath  =      './Public/Uploads/'; // 设置附件上传目录
		// 上传文件
	
		$info   =  $upload->uploadOne($file);
		if(!$info) {
			// 上传错误提示错误信息
			$this->error($upload->getError());exit();
		}else{
			// 			dump($file);die;
			// 上传成功
			$pic=$info['savepath'].$info['savename'];
			$url='/Uploads'.ltrim($pic,".");
		}
		return $url;
	}
	//空操作
	public function _empty(){
		header("HTTP/1.0 404 Not Found");
		$this->display('Public:404');
	}
}



