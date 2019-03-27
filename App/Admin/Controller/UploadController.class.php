<?php
namespace Admin\Controller;
use Common\Controller\CommonController;
class UploadController extends CommonController {
	public function _initialize(){
		parent::_initialize();
	}
	/**
	 * ajax上传图片方法
	 */
	function addPicForAjax(){
	    $upload = new \Think\Upload();// 实例化上传类
	    $upload->maxSize   =     3145728 ;// 设置附件上传大小
	    $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
	    $upload->savePath  =      './Public/Uploads/'; // 设置附件上传目录
	    // 上传文件
	    $info   =   $upload->upload();
	    if(!$info) {// 上传错误提示错误信息
	        $arr['status']=0;
	        $arr['info']=$upload->getError();
	        $this->ajaxReturn();
	    }else{
	        // 上传成功
	        $pic='/Uploads'.ltrim($info['Filedata']['savepath'].$info['Filedata']['savename'],"."); ;//去除左侧点
	        $arr['status']=1;
	        $arr['info']=$pic;
	        $this->ajaxReturn($arr);
	    }
	}
}
?>