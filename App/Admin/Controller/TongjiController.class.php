<?php
namespace Admin\Controller;
use Admin\Controller\AdminController;
use Think\Page;

class TongjiController extends AdminController {
	//空操作
	public function _empty(){
		header("HTTP/1.0 404 Not Found");
		$this->display('Public:404');
	}
	
     //人工充值审核页面
    public function tuiguang(){
    	$memberid=I('userid');
    	$stime=strtotime(I('stime'));
    	$etime=strtotime(I('etime'));
    	if(!empty($memberid)){
    		$where['pid']=$memberid;
    	}
    	if(!empty($stime)){
    		$where['reg_time']=array('gt',$stime);
    	}
    	if(!empty($etime)){
    		$where['reg_time']=array('lt',$stime);
    	}
    	if(!empty($etime)&&!empty($stime)){
    		$where['reg_time']=array('between',$stime.','.$etime);
    	}
    	if(empty($memberid)){
    		$where['pid']=array('neq','');
    	}
       	$list=$this->getMemberTuijianPaiming($where);
		//获取本月第一天/最后一天的时间戳
       	$year = date("Y");
       	$month = date("m");
       	$allday = date("t");
       	$strat_time = strtotime($year."-".$month."-1");
       	$end_time = strtotime($year."-".$month."-".$allday);
       	
       	$monthWhere['reg_time']=array('between',$strat_time.','.$end_time);
    	$monthWhere['pid']=array('neq','');
       	$toMonth=$this->getMemberTuijianPaiming($monthWhere);
       	
       	//获取本周第一天/最后一天的时间戳
       	$year = date("Y");
       	$month = date("m");
       	$day = date('w');
       	$nowMonthDay = date("t");
       	$firstday = date('d') - $day;
       	if(substr($firstday,0,1) == "-"){
       		$firstMonth = $month - 1;
       		$lastMonthDay = date("t",$firstMonth);
       		$firstday = $lastMonthDay - substr($firstday,1);
       		$time_1 = strtotime($year."-".$firstMonth."-".$firstday);
       	}else{
       		$time_1 = strtotime($year."-".$month."-".$firstday);
       	}
       	
       	$lastday = date('d') + (7 - $day);
       	if($lastday > $nowMonthDay){
       		$lastday = $lastday - $nowMonthDay;
       		$lastMonth = $month + 1;
       		$time_2 = strtotime($year."-".$lastMonth."-".$lastday);
       	}else{
       		$time_2 = strtotime($year."-".$month."-".$lastday);
       	}
       	$weekWhere['reg_time']=array('between',$time_1.','.$time_2);
    	$weekWhere['pid']=array('neq','');
       	$week=$this->getMemberTuijianPaiming($weekWhere);
       	$this->assign('list',$list);
       	$this->assign('tomonth',$toMonth);
       	$this->assign('week',$week);
     	$this->display();
     }
    public function shuju(){
    	$memberid=I('userid');
    	$stime=strtotime(I('stime'));
    	$etime=strtotime(I('etime'));
    	if(!empty($memberid)){
    		$where['member_id']=$memberid;
    	}
    	if(!empty($stime)){
    		$where['add_time']=array('gt',$stime);
    	}
    	if(!empty($etime)){
    		$where['add_time']=array('lt',$stime);
    	}
    	if(!empty($etime)&&!empty($stime)){
    		$where['add_time']=array('between',$stime.','.$etime);
    	}
    	$list=M('Currency')->select();
    	foreach ($list as $k=>$v){
    		$alltj[$k]['currency_name']=$v['currency_name'];
    		$alltj[$k]['currency_id']=$v['currency_id'];
    		$alltj[$k]['currency_mark']=$v['currency_mark'];
    		$alltj[$k]['paytj']=$this->getCurrencyPayTongjiByCurrencyId($v['currency_id'],$where);
    		$alltj[$k]['tibitj']=$this->getCurrencyTibiTongjiByCurrencyId($v['currency_id'],$where);
    	}
    	$order=$this->getCurrencyOrderTongji($where);
    	$trade=$this->getCurrencyTradeTongji($where);
       	$this->assign('alltj',$alltj);
       	$this->assign('order',$order);
       	$this->assign('trade',$trade);
     	$this->display();
     }
    public function xiangxi(){
    	$memberid=I('userid');
    	$stime=strtotime(I('stime'));
    	$etime=strtotime(I('etime'));
    	if(!empty($memberid)){
    		$where['member_id']=$memberid;
    		$wherepaytj['member_id']=$memberid;
    	}
    	if(!empty($stime)){
    		$where['reg_time']=array('gt',$stime);
    	}
    	if(!empty($etime)){
    		$where['add_time']=array('lt',$stime);
    	}
    	if(!empty($etime)&&!empty($stime)){
    		$where['add_time']=array('between',$stime.','.$etime);
    	}
    	if(empty($memberid)){
    		$where['pid']=array('neq','');
    	}
    	$list=M('Currency')->select();
    	foreach ($list as $k=>$v){
    		$alltj[$k]['paytj']=$this->getCurrencyNumByCurrencyId($v['currency_id'],$wherepaytj);
    		$alltj[$k]['membertj']=$this->getCurrencyMemberNumByCurrencyId($v['currency_id'],$wherepaytj);
    		$alltj[$k]['cztxtj']=$this->getCurrencyTibiByCurrencyId($v['currency_id'],$where);
    		$where['currency_id']=$v['currency_id'];
	    	$order[]=$this->getCurrencyOrderTongji($where);
	    	$trade[]=$this->getCurrencyTradeTongji($where);
	    	$list[$k]['currency']=$this->getCurrencynameById($v['currency_id']);
	    	$list[$k]['trade_currency']=$this->getCurrencynameById($v['trade_currency_id']);
    	}
       	$this->assign('list',$list);
       	$this->assign('order',$order);
       	$this->assign('trade',$trade);
       	$this->assign('alltj',$alltj);
     	$this->display();
     }
    public function yue(){
    	$currencylist=M('Currency')->select();
    	$currency=I('currency_id')?I('currency_id'):'26';
    	$cur=$this->getCurrencynameById($currency);
    	$cur['currency_id']=$currency;
    	$list=$this->getMemberCurrencyPmByCurrencyId($currency);
    	$this->assign('currencylist',$currencylist);
    	$this->assign('cur',$cur);
    	$this->assign('list',$list);
     	$this->display();
     }
   private function getMemberTuijianPaiming($where){
	   	$list=M('Member')
	   	->field('count(member_id) as num,pid')
	   	->order('num desc')
	   	->where($where)
	   	->group('pid')
	   	->select();
	   	foreach ($list as $k=>$v){
	  	 	$list[$k]['pname']=$this->getMemberEailByMemberId($v['pid']);
	   	}
	   	return $list;
   }
   private function getMemberEailByMemberId($id){
   		$where['memner_id']=$id;
	   	$list=M('Member')
	   	->field('email')
	   	->where($where)
	   	->find();
	   	return $list['email'];
   }
   private function getMemberCurrencyPmByCurrencyId($currency,$where){
   		$where['currency_id']=$currency;
	   	$list=M('Currency_user')
	   	->field('')
	   	->order('num desc')
	   	->limit('0,200')
	   	->where($where)
	   	->select();
	   	foreach ($list as $k=>$v){
	   		$list[$k]['member']=$this->getMemberAllbyMemberId($v['member_id']);
	   		$list[$k]['allmoney']=$v['num']+$v['forzen_num'];
	   	}
	   	return $list;
   }
   private function getMemberAllbyMemberId($memberid){
   	return M('Member')->where('member_id='.$memberid)->find();
   	
   }
   private function getCurrencyPayTongjiByCurrencyId($currency,$where=''){
    	$where['currency_id']=$currency;
	   	$list=M('Pay')
	   	->field('count(pay_id) as allnum,sum(money) as allmoney')
	   	->group('currency_id')
	   	->where($where)
	   	->find();
	   	return $list;
   }
   private function getCurrencyTibiByCurrencyId($currency,$where=''){
    	$where['currency_id']=$currency;
    	$list['currency']=$this->getCurrencynameById($currency);
    	$where['status']=1;
    	if(!empty($where['member_id'])){
    		$where['user_id']=$where['member_id'];
    	}
	   	$list['txmoney']=M('Tibi')
	   	->field('sum(num) as txmoney')
	   	->group('currency_id')
	   	->where($where)
	   	->find();
	   	$where['status']=3;
	   	$list['czmoney']=M('Tibi')
	   	->field('sum(num) as czmoney')
	   	->group('currency_id')
	   	->where($where)
	   	->find();
	   	$where['status']=0;
	   	$list['jymoney']=M('Trade')
	   	->field('sum(num) as jymoney')
	   	->where($where)
	   	->find();
	   	return $list;
   }
   private function getCurrencyNumByCurrencyId($currency,$where=''){
    	$where['currency_id']=$currency;
	   	$list=M('Currency_user')
	   	->field('sum(num) as allnum,sum(forzen_num) as allcoldnum')
	   	->group('currency_id')
	   	->where($where)
	   	->find();
	   	$list['currency']=$this->getCurrencynameById($currency);
	   	return $list;
   }
   private function getCurrencyMemberNumByCurrencyId($currency,$where=''){
    	$where['currency_id']=$currency;
	   	$list=M('Currency_user')
	   	->field('sum(num) as allnum,sum(forzen_num) as allcoldnum')
	   	->group('currency_id')
	   	->where($where)
	   	->find();
	   	$list['currency']=$this->getCurrencynameById($currency);
	   	return $list;
   }
   private function getCurrencyTibiTongjiByCurrencyId($currency,$where=''){
    	$where['currency_id']=$currency;
	   	$list=M('tibi')
	   	->field('count(id) as allnum,sum(num) as allmoney')
	   	->group('currency_id')
	   	->where($where)
	   	->find();
	   	return $list;
   }
   private function getCurrencyOrderTongji($where=''){
	   	$list=M('orders')
	   	->field('count(orders_id) as num,sum(num*price) as jiaoyiprice,sum(num) as jiaoyinum,currency_trade_id,currency_id')
	   	->group('currency_id')
	   	->where($where)
	   	->select();
	   	foreach ($list as $k=>$v){
	   		$list[$k]['currency_trade_name']=$this->getCurrencynameById($v['currency_trade_id']);
	   		$list[$k]['currency_name']=$this->getCurrencynameById($v['currency_id']);
	   		$list[$k]['allmoney']+=$v['jiaoyiprice'];
	   	}
	   	return $list;
   }
   private function getCurrencyTradeTongji($where=''){
   		$where['type']='sell';
	   	$list=M('Trade')
	   	->field('count(trade_id) as num,sum(num*price) as jiaoyiprice,sum(num) as jiaoyinum,currency_trade_id,currency_id')
	   	->group('currency_id')
	   	->where($where)
	   	->select();
	   	foreach ($list as $k=>$v){
	   		$list[$k]['currency_trade_name']=$this->getCurrencynameById($v['currency_trade_id']);
	   		$list[$k]['currency_name']=$this->getCurrencynameById($v['currency_id']);
	   		$list[$k]['allmoney']+=$v['jiaoyiprice'];
	   	}
	   	return $list;
   }
}