<?php
namespace Admin\Controller;
use Admin\Controller\AdminController;
class DividendController extends AdminController {
	public function _initialize(){
		parent::_initialize();
	}
	//空操作
	public function _empty(){
		header("HTTP/1.0 404 Not Found");
		$this->display('Public:404');
	}
	public function index(){
		$config=M('Dividend_config')->select();
		foreach ($config as $k=>$v){
               $list[$v['name']]=$v['value'];
		}
		$currency = M('Currency')->field('currency_id,currency_name')->select();
		$this->assign('config',$list);
		$this->assign('currency',$currency);
       	$this->display();
     }
     
   
     public function updateCofig(){
     	foreach ($_POST as $k=>$v){
     		$rs[]=M('Dividend_config')->where("name='{$k}'")->setField('value',$v);
     	}
     	if($rs){
     		$this->success('配置修改成功');
     	}else{
     		$this->error('配置修改失败');
     	}
     }
}