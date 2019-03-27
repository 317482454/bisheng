<?php

namespace Admin\Controller;

use Admin\Controller\CommonController;

class CurrencyUserController extends AdminController {
	public function _empty() {
		header ( "HTTP/1.0 404 Not Found" );
		$this->display ( 'Public:404' );
	}
	
	/**
	 * 会员钱包充值地址列表
	 */
	public function MemberQianbaoChongzhiUrl(){
		
		$where=array();
		$cuid=I('cuid');
		$email=I('email');
		if(!empty($cuid)){
			$where[C("DB_PREFIX")."currency_user.currency_id"]=I("cuid");
			$this->assign("id",I("cuid"));
		}
		if(!empty($email)){
			$name=M("Member")->where("email='{$email}'")->find();
			$where[C("DB_PREFIX")."currency_user.member_id"]=$name['member_id'];
		}
		
		$count      = M("Currency_user")
					->join(C("DB_PREFIX")."member on ".C("DB_PREFIX")."currency_user.member_id=".C("DB_PREFIX")."member.member_id")
					->join(C("DB_PREFIX")."currency on ".C("DB_PREFIX")."currency_user.currency_id=".C("DB_PREFIX")."currency.currency_id")
					->where($where)->count();// 查询满足要求的总记录数
		$Page       = new \Think\Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数(25)
		//给分页传参数
		setPageParameter($Page, array('cuid'=>I("cuid"),'email'=>$name['member_id']));
		$show       = $Page->show();// 分页显示输出// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$field=C("DB_PREFIX")."currency_user.*,".C("DB_PREFIX")."member.email,".C("DB_PREFIX")."currency.currency_name";
		$list =  M("Currency_user")
		->join(C("DB_PREFIX")."member on ".C("DB_PREFIX")."currency_user.member_id=".C("DB_PREFIX")."member.member_id")
		->join(C("DB_PREFIX")."currency on ".C("DB_PREFIX")."currency_user.currency_id=".C("DB_PREFIX")."currency.currency_id")
		->field($field)
		->where($where)->order(C("DB_PREFIX")."currency_user.cu_id desc")->limit($Page->firstRow.','.$Page->listRows)->select();
		$this->assign('list',$list);// 赋值数据集
		$this->assign('page',$show);// 赋值分页输出
		

		$curr=M("Currency")->select();
		$this->assign("curr",$curr);
		$this->display();
	}
	
	/**
	 * 会员钱包提币地址列表
	 */
	public function MemberQianbaoTibiUrl(){
	
		$where=array();
		$cuid=I('cuid');
		$email=I('email');
		if(!empty($cuid)){
			$where[C("DB_PREFIX")."qianbao_address.currency_id"]=I("cuid");
			$this->assign("id",I("cuid"));
		}
		if(!empty($email)){
			$name=M("Member")->where("email='{$email}'")->find();
			$where[C("DB_PREFIX")."qianbao_address.user_id"]=$name['member_id'];
		}
		
		$count      = M("Qianbao_address")
		->join(C("DB_PREFIX")."member on ".C("DB_PREFIX")."qianbao_address.user_id=".C("DB_PREFIX")."member.member_id")
		->join(C("DB_PREFIX")."currency on ".C("DB_PREFIX")."qianbao_address.currency_id=".C("DB_PREFIX")."currency.currency_id")
		->where($where)->count();// 查询满足要求的总记录数
		$Page       = new \Think\Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数(25)
		//给分页传参数
		setPageParameter($Page, array('cuid'=>I("cuid"),'email'=>$name['member_id']));
		$show       = $Page->show();// 分页显示输出// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$field=C("DB_PREFIX")."qianbao_address.*,".C("DB_PREFIX")."member.email,".C("DB_PREFIX")."currency.currency_name";
		$list =  M("Qianbao_address")
		->join(C("DB_PREFIX")."member on ".C("DB_PREFIX")."qianbao_address.user_id=".C("DB_PREFIX")."member.member_id")
		->join(C("DB_PREFIX")."currency on ".C("DB_PREFIX")."qianbao_address.currency_id=".C("DB_PREFIX")."currency.currency_id")
		->field($field)
		->where($where)->order(C("DB_PREFIX")."qianbao_address.id desc")->limit($Page->firstRow.','.$Page->listRows)->select();
		foreach ($list as $k=>$v){
				
		}
		$this->assign('list',$list);// 赋值数据集
		$this->assign('page',$show);// 赋值分页输出
		
		
		$curr=M("Currency")->select();
		$this->assign("curr",$curr);
		$this->display();
	}
	
	
}

?>