<?php
/**
 */

namespace Home\Controller;

use Common\Controller\CommonController;

class MarketController extends CommonController {
    /**
     * 查看行情
     */
  public function index(){
  	
  		if(!empty($_GET['coin'])){
  			$whereMark['currency_mark'] = I('get.coin');
  		}
  		
  		$whereMark['is_line']=1;
  		$liCurrency = M('Currency')->field('currency_id,currency_name,currency_logo,currency_mark')->where($whereMark)->order('sort')->find();
  		
  		//判断 有没有 可以交易的币种
  	 	if(empty($liCurrency)){
  	 		$this -> error('交易币种正在紧张筹备中！敬请期待',U('Index/index'));
  	 	}
  	 	
  	 	$wheretrade['currency_id'] = $liCurrency['currency_id'] ;
  	 	//获取成交最大值
  	 	$liCurrency['maxPrice'] = M('Trade') ->where($wheretrade)->max('price');
  	 	//获取成交最小值
  	 	$liCurrency['minPrice'] = M('Trade') ->where($wheretrade)->min('price');
  	 	// 获取交易量
  	 	$liCurrency['countNum'] = M('Trade') ->where($wheretrade)->sum('num');
  	 	//最新价格
  	 	$liCurrency['newPrice'] = $this -> getNewPriceByCurrencyid($liCurrency['currency_id']);
  	 	$buyOrder['type'] = "buy";
  	 	//获取买一价
  	 $liCurrency['buyPrice']=$this->getOneOrdersByPrice($liCurrency['currency_id'], 'buy');
  	 	//获取卖一价
  	 	 $liCurrency['sellPrice']=$this->getOneOrdersByPrice($liCurrency['currency_id'], 'sell');
  	 	//成交盘
  	 	$Deal = M('Trade')->where($wheretrade)->order('add_time desc')->limit(30)->select();
  	 	
  	 
  	 	//买卖盘   买
  		 $sell=$this->getOrdersByType($liCurrency['currency_id'], 'buy', 20, 'desc');
  		 // 页面显示 成交量背景 比例
  	 	 foreach ($sell as $k=>$v){
			$sell[$k]['bili']=100-intval(($v['trade_num']/$v['num'])*100)."%";
		 }
  	 
  	 	//买卖盘   卖
  		 $buy =$this->getOrdersByType($liCurrency['currency_id'], 'sell', 20, 'asc');
  		 $buy=  array_reverse($buy);
  		 // 页面显示 成交量背景 比例
  	 	 foreach ($buy as $k=>$v){
  	 		$buy[$k]['bili']=100-intval(($v['trade_num']/$v['num'])*100)."%";
  	 	 }
  	 	
  	 	//查询其他交易币  去掉当前 币种
  	 	$where['currency_id'] =  array('NEQ',$liCurrency['currency_id']);
  	 	$where['is_line']=1;
  	 	$listCurrency = M('Currency')->field('currency_id,currency_name,currency_logo,currency_mark')->where($where)->select();
  	 	foreach($listCurrency as $k =>$v){
  	 		$listCurrency[$k]['newPrice'] = $this -> getNewPriceByCurrencyid($v['currency_id']);
  	 	}
  	 	
  	 	$this ->assign('count',max(count($sell),count($buy)));
  	 	$this ->assign('deal',$Deal);
  	 	$this ->assign('sell',$sell);
  	 	$this ->assign('buy',$buy);
  	 	$this ->assign('listCurrency',$listCurrency);
  	 	$this ->assign('liCurrency',$liCurrency);
  		$this->display();
  }
  
  /**
   *  获取最新交易价格
   * @param unknown $type    币种id
   * @return unknown|number  
   */
  public function getNewPriceByCurrencyid($currency_id){
  		$where['currency_id'] =$currency_id;
  		$list = M('Orders')->where($where)->field('price')->order('add_time desc')->find();
  		
  		if(!empty($list)){
  			return $list['price'];
  		}else{
  			return  0;
  		}
  }
  
  public function getMarket(){
      $where['status']=array('in',array(0,1));
      $list=M('Orders')->field('price')->where($where)->group('price')->select();
      $price_arr=array();
      $buy_arr=array();
      $sell_arr=array();
      foreach ($list as $k=>$v){
            $sell=M('Orders')->field('sum(num) as num')->where($where)->where("type='sell' and price='{$v['price']}'")->select();
            $buy=M('Orders')->field('sum(num) as num')->where($where)->where("type='buy' and price='{$v['price']}'")->select();
            $list[$k]['sell']=!empty($sell[0]['num'])?$sell[0]['num']:0;
            $list[$k]['buy']=!empty($buy[0]['num'])?$buy[0]['num']:0;
      }
      foreach ($list as $k=>$v){
          $price_arr[]=floatval($v['price']);
          $sell_arr[]=floatval($v['sell']);
          $buy_arr[]=floatval($v['buy']);
      }
      $data['price']=$price_arr;
      $data['sell']=$sell_arr;
      $data['buy']=$buy_arr;
     $this->ajaxReturn($data);
  }
  
  
  //获取买卖单分补
  private function getOrdersMarket($type,$currency_id){
       $where['currency_id']=$currency_id;
       $where['type']=$type;
      $max_pirce=M('Orders')->where($where)->max('price');
      $min_price=M('Orders')->where($where)->min('price');
      $units=intval(($max_pirce-$min_price)/10);
      for ($i=0;$i<10;$i++){
            $arr_price[]=$min_price+$units*$i;  
      }
      $start=$min_price;
      $end=$min_price+$units;
      
  }
  
  
}  