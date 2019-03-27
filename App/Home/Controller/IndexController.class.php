<?php
namespace Home\Controller;
use Common\Controller\CommonController;
class IndexController extends CommonController {
 	public function _initialize(){
 		parent::_initialize();
 	}
	//空操作
	public function _empty(){
		header("HTTP/1.0 404 Not Found");
		$this->display('Public:404');
	}
	public function index(){
		//页面右方公告，提示，资信
		$art_model = D('Article');
		$info1 = $art_model->info(1);
		$info_red1 = $art_model->info_red(1);//标红
		$info2 = $art_model->info(2);		 //非标红
		$info_red2 = $art_model->info_red(2);//标红
		$this->assign('info1',$info1);		 //非标红
		$this->assign('info_red1',$info_red1);
		$this->assign('info2',$info2);
		$this->assign('info_red2',$info_red2);

		//幻灯
		$flash=M('Flash')->order('sort')->limit(6)->select();
		$this->assign('flash',$flash);
		//币种
		$currency=$this->currency();
		foreach ($currency as $k=>$v){
			$list=$this->getCurrencyMessageById($v['currency_id']);
			$currency[$k]=array_merge($list,$currency[$k]);
			$list['new_price']?$list['new_price']:0;
			$currency[$k]['currency_all_money'] = floatval($v['currency_all_num'])*$list['new_price'];
		}
        //*********选择进盟币,安全可信赖begin*******
        $all_money = M('Trade')->sum('money');
        $all_money = $this->config['transaction_false']+$all_money;
//        $all_money = 212315984125.123;
        $all_money = (string)round($all_money);
        for($i=0;$i<strlen($all_money);$i++){
            $arr[strlen($all_money)-1-$i] = $all_money[$i];
//            $arr[$i] = $all_money[$i];
        }
        $this->assign('arr',$arr);
        //*********选择进盟币,安全可信赖end*******
        $link = M('Link');
        $link_info =$link->select();
        //截断友情链接url头，统一写法
        foreach($link_info as $k => $v){
        	$url="";
        	$url = trim($v['url'],'https://');
        	$link_info[$k]['url'] = trim($url,'http://');
        }
        //*******众筹begin*******/////
        $issue_list=M('Issue')
            ->field(C("DB_PREFIX")."issue.*,".C("DB_PREFIX")."currency.currency_name as name")
            ->join("left join ".C("DB_PREFIX")."currency on ".C("DB_PREFIX")."currency.currency_id=".C("DB_PREFIX")."issue.currency_id")
            ->order(' id desc ')->select();
        $this->assign('issue_list',$issue_list);
        //*******众筹end*******/////
        $sum_money = num_format($all_money);
        $this->assign('link_info',$link_info);
        $this->assign('sum_money',$sum_money);
		$this->assign('currency',$currency);
		$this->assign('empty','暂无数据');
        $this->display();
     }

}