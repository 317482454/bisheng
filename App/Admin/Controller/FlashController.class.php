<?php
namespace Admin\Controller;
use Admin\Controller\AdminController;
use Home\Controller\PublicController;
class FlashController extends AdminController {
	//空操作
	public function _initialize(){
		parent::_initialize();
	}
	public function _empty(){
		header("HTTP/1.0 404 Not Found");
		$this->display('Public:404');
	}
	Public function add(){
		$flash=M('Flash');
		if(IS_POST){
			if($_FILES["Filedata"]["tmp_name"]){
				$data['pic']=$this->upload($_FILES["Filedata"]);
			}
			if(!empty($_POST['jump_url'])){
				$data['jump_url']=$_POST['jump_url'];
			}
			if(!empty($_POST['sort'])){
				$data['sort']=$_POST['sort'];
			}
			if(!empty($_POST['title'])){
				$data['title']=$_POST['title'];
			}
			$data['add_time']=time();
			if(!empty($_POST['flash_id'])){
				$data['flash_id']=$_POST['flash_id'];
				$rs=$flash->save($data);
			}else{
				$rs=$flash->add($data);
			}
			if($rs){
				$this->success('操作成功');
			}else{
				$this->error('操作失败');
			}
		}else{
			if(!empty($_GET['flash_id'])){
				$list=$flash->where('flash_id='.$_GET['flash_id'])->find();
				$this->assign('flash',$list);
			}
			$this->display();
		}
	}
	public function index(){
		$list=M('Flash')->select();
		$this->assign('flash',$list);
		$this->assign('empty','暂无数据');
		$this->display();
    }
    public function del(){
    	if(!empty($_GET['flash_id'])){
            $list=M('Flash')->where('flash_id='.$_GET['flash_id'])->delete();
        }
    	if($list){
    		$this->success('删除成功');
    	}else{
    		$this->error('删除失败');
    	}
    }
}