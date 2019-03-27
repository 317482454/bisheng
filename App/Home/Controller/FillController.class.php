<?php
namespace Home\Controller;
use Home\Controller\HomeController;
use Think\Page;
use Think\Upload;

class FillController extends HomeController {
    //空操作
    public function _initialize(){
        parent::_initialize();
    }
    public function _empty(){
        header("HTTP/1.0 404 Not Found");
        $this->display('Public:404');
    }
    public function index(){
    	$where['uid']=$_SESSION['USER_KEY_ID'];//用户id
		$count      = M("Fill")->where($where)->count();// 查询满足要求的总记录数
		$Page       = new \Think\Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数(25)
		$show       = $Page->show();// 分页显示输出// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$list = M("Fill")->where($where)->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
		$this->assign('list',$list);// 赋值数据集
		$this->assign('page',$show);// 赋值分页输出
        $this->display();
    }
    
}