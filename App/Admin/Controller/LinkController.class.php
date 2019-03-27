<?php
namespace Admin\Controller;
use Admin\Controller\CommonController;
class LinkController extends AdminController{
	//空操作
	public function _empty(){
		header("HTTP/1.0 404 Not Found");
		$this->display('Public:404');
	}
	public function index(){
		$Link = M('Link'); // 实例化User对象
		$count      = $Link->count();// 查询满足要求的总记录数
		$Page       = new \Think\Page($count,25);// 实例化分页类 传入总记录数和每页显示的记录数(25)
		$show       = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$list = $Link->order('add_time desc')->limit($Page->firstRow.','.$Page->listRows)->select();
		$this->assign('list',$list);// 赋值数据集
		$this->assign('page',$show);// 赋值分页输出
		$this->display();
	}
	public function add(){
		$id=I('id');
		if(!empty($id)){
			$list=M("Link")->where("id='$id'")->find();
			$this->assign("list",$list);
		}
		$this->display();
	}
	public function add_link(){
		
		if(empty($_POST['name'])){
			$this->error("请输入链接名称");
		}
		if(empty($_POST['url'])){
			$this->error("请输入链接地址");
		}
		if(!isset($_POST['status'])){
			$this->error("请选择链接状态");
		}
		$id=I('id');
		
		$data['name']=I('name');
		$data['url']=I('url');
		$data['status']=I('status');
		$data['add_time']=time();
		if(empty($id)){
			$re=M("Link")->add($data);
		}else{
			$re=M("Link")->where("id='$id'")->save($data);
		}
		if($re){
			$this->success("添加成功",U('Link/index'));
		}else{
			$this->error("添加失败");
		}
		
	}
	
	public function del(){
		$id=I('id');
		if(empty($id)){
			$this->error("无效参数，无法删除");
		}
		$re=M("Link")->where("id='$id'")->delete();
		if($re){
			$this->success("删除成功",U("Link/index"));
		}else{
			$this->error("删除失败");
		}
	}
}    