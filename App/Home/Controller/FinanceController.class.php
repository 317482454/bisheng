<?php
namespace Home\Controller;
use Home\Controller\HomeController;
use Think\Page;
use Think\Upload;

class FinanceController extends HomeController {
    //空操作
    public function _initialize(){
        parent::_initialize();
    }
    public function _empty(){
        header("HTTP/1.0 404 Not Found");
        $this->display('Public:404');
    }
    public function index(){
    	$where['member_id']=$_SESSION['USER_KEY_ID'];//用户id
    	$field=C("DB_PREFIX")."finance.*,".C("DB_PREFIX")."finance_type.name as typename";
		$count      = M("Finance")->where($where)
					->join(C("DB_PREFIX")."finance_type on ".C("DB_PREFIX")."finance.type=".C("DB_PREFIX")."finance_type.id")->count();// 查询满足要求的总记录数
		$Page       = new \Think\Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数(25)
		$show       = $Page->show();// 分页显示输出// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$list = M("Finance")->field($field)->where($where)
		->join(C("DB_PREFIX")."finance_type on ".C("DB_PREFIX")."finance.type=".C("DB_PREFIX")."finance_type.id")
		->order('finance_id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
		foreach($list as $k=>$v){
			if($v['currency_id']==0){
				$list[$k]['currency_name']="人民币";
			}else{
				$cu=M("Currency")->where("currency_id='{$v['currency_id']}'")->find();
				$list[$k]['currency_name']=$cu['currency_name'];
			}
		}
		$this->assign('list',$list);// 赋值数据集
		$this->assign('page',$show);// 赋值分页输出
	
        $this->display();
    }
    
}