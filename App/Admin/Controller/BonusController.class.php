<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-3-8
 * Time: 下午12:28
 */

namespace Admin\Controller;
use Admin\Controller\AdminController;
class BonusController extends AdminController {
    public function _initialize(){
        parent::_initialize();
    }
    /**
     * 发红添加
     */
    public function index(){
    	$type = M('Currency')->field('currency_id,currency_name')->where('status = 0')->select();
    	foreach($type as $k=>$v){
    		$money = $this ->getSumMoneyByCurrencyId(10,$v['currency_id']);
    		$sumMoney = $this->getSumMoneyByCurrencyId(11,$v['currency_id']);
    		$list[$k]['sumMoney'] = $sumMoney[0]['money'];
    		$list[$k]['money'] = $money[0]['money'];
    		$list[$k]['currency_id'] = $v['currency_id'];
    	}
    
    	$this->assign('list',$list);
        $this->assign('currency',$type);// 赋值数据集    
        $this->display(); // 输出模板
    }
    
    public function bonusList(){
    	$where['type'] = '10';
    	$finance = M('Finance');
    	
    	$count      = $finance->where($where)->count();// 查询满足要求的总记录数
    	$Page       = new \Think\Page($count,15);// 实例化分页类 传入总记录数和每页显示的记录数(25)
    	//给分页传参数
    	$show       = $Page->show();// 分页显示输出
    	// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
    	
    	$list = $finance
    	->where($where)
    	->limit($Page->firstRow.','.$Page->listRows)->select();
    	$this->assign('list',$list);// 赋值数据集
    	$this->assign('page',$show);// 赋值分页输出
    	$this->display(); // 输出模板
    }
    
//     /**
//      * 添加分红
//      */
//     public function addBonus(){
//         if(IS_POST){
//         	if(empty($_POST['num'])){
//         		$this->error('分红数值不能为空');
//         	}
//         	if(empty($_POST['currency_id'])){
//         		$this->error('分红币种不能为空');
//         	}
//         	if(empty($_POST['text'])){
//         		$this->error('消息提醒不能为空');
//         	}
//         	if(!is_numeric($_POST['num'])){
//         		$this->error('分红数值不正确');
//         	}
//         	$num = $_POST['num']; //分红的份额
//         	$text = $_POST['text']; //分红说明
//         	$where['currency_id']  = $_POST['currency_id'] ;
//         	$where['num'] = array('gt',0);
//         	//设置分红只有在账号正常情况下才可以分红  status  =1 位正常情况
//         	$member=M("Member")->where("status = 1")->select();
//         	if(empty($member)){
//         		$this->error('没有需要分红的人数');
//         	}
//         	foreach ($member as $v){
//         		$item[]=$v['member_id'];
//         	}
//         	$where['member_id']=array("in",$item);
//         	$list = M('Currency_user')->where($where)->field('currency_id,cu_id,member_id,num')->select();
//         	$count = M('Currency_user')-> where($where)->sum('num');
// 			if(empty($list)){
// 				$this->error('没有需要分红的人数');
// 			}
//         	foreach ($list as $k => $v){
//         		$currency_num = $num * ( $v['num'] / $count );
//         		$currency_num = round($currency_num,4);
//         		$this->updateMemberRmb($v['member_id'],$currency_num);
// //         	  	$this -> updateCurrencyNum($v['currency_id'],$v['member_id'], $currency_num);
//         		addFinanceLog($v['member_id'], 10, $text, $currency_num,1, $v['currency_id']);
//         		$this -> addMessage_all($v['member_id'],-2,'分红奖励',$text);
//         	}
//         	$this ->success("分红成功");
//         }
//     }

    
    
    /**
     * 添加分红
     */
    public function addBonus(){
    	if(IS_POST){
    		if(empty($_POST['num'])){
    			$this->error('分红数值不能为空');
    		}
    		if(empty($_POST['currency_id'])){
    			$this->error('分红币种不能为空');
    		}
    		 
    		if(empty($_POST['text'])){
    			$this->error('消息提醒不能为空');
    		}
    		if(!is_numeric($_POST['num'])){
    			$this->error('分红数值不正确');
    		}
    		if(!isset($_POST['set_currency_id'])){
    			$this->error('分红基数不正确');
    		}
    		 
    		$num = $_POST['num']; //分红的份额
    		$text = $_POST['text']; //分红说明
    		$where['currency_id']  = $_POST['currency_id'] ;
    		$where['num'] = array('gt',0);
    		//设置分红只有在账号正常情况下才可以分红  status  =1 位正常情况
    		$member=M("Member")->where("status = 1")->select();
    		if(empty($member)){
    			$this->error('没有需要分红的人数');
    		}
    		foreach ($member as $v){
    			$item[]=$v['member_id'];
    		}
    		$where['member_id']=array("in",$item);
    		$list = M('Currency_user')->where($where)->field('currency_id,cu_id,member_id,num')->select();
    		 
    		$count = M('Currency_user')-> where($where)->sum('num');
    			
    		if(empty($list)){
    			$this->error('没有需要分红的人数');
    		}
    		foreach ($list as $k => $v){
    			$currency_num = $num * ( $v['num'] / $count );
    			$currency_num = round($currency_num,4);
    			if($_POST['set_currency_id'] == 0){
    				$this -> updateMemberRmb($v['member_id'], $currency_num);
    				addFinanceLog($v['member_id'], 10, $text, $currency_num,1, 0);
    			}else{
    				$this -> updateCurrencyNum($_POST['set_currency_id'],$v['member_id'], $currency_num);
    				addFinanceLog($v['member_id'], 10, $text, $currency_num,1, $v['currency_id']);
    			}
    
    			$this -> addMessage_all($v['member_id'],-2,'分红奖励',$text);
    		}
    		$this ->success("分红成功");
    	}
    }
    
    
    /**
     *  添加 分红奖励(虚拟币)
     * @param unknown  Int  $currency_id   币种 id
     * @param unknown  Int  $member_id      用户 id
     * @param unknown  float  $currency_num	    分红数量
     * @return boolean
     */
    private function updateCurrencyNum($currency_id,$member_id,$currency_num){
    	$where['currency_id']= $currency_id;
    	$where['member_id']= $member_id;
    	$re = M('Currency_user')-> where($where)->setInc('num',$currency_num);
    	if($re){
    		return  true;
    	}else{
    		return false;
    	}
    }
   
    /**
     *  添加 分红奖励 (人民币)
     * @param unknown  Int  $currency_id   币种 id
     * @param unknown  Int  $member_id      用户 id
     * @param unknown  float  $currency_num	    分红数量
     * @return boolean
     */
    private function updateMemberRmb($member_id,$currency_num){
    	$where['member_id']= $member_id;
    	$re = M('Member')-> where($where)->setInc('rmb',$currency_num);
    	if($re){
    		return  true;
    	}else{
    		return false;
    	}
    }
    
    
    /**
     *  在日志表里 统计分红 按照日志 type 
     * @param unknown $type          日志表type
     * @param unknown $currency_id   货币id
     */
    private  function getSumMoneyByCurrencyId($type,$currency_id){
    	if(!empty($currency_id)){
    		$currency_id = "currency_id  = ".$currency_id;
    	}
    	
    	$sql = "SELECT SUM(money)AS money,currency_id  from  ".C("DB_PREFIX")."finance  where type = ".$type." 
    			and ".$currency_id." GROUP BY  currency_id ";
    	$list = M()->query($sql);
    	return $list;
    }
}