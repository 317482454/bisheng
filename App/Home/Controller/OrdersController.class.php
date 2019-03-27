<?php
namespace Home\Controller;
use Common\Controller\CommonController;
class OrdersController extends CommonController{
    public function _initialize(){
        parent::_initialize();
    }
    //交易页面显示
    public function index(){
        if(empty($_GET['currency'])){
            $this->display('Public:b_stop');
            return;
        }        
        $currency_id=I('get.currency');
        $currency=M('Currency')->where("currency_mark='$currency_id' and is_line=1")->find();
        if(empty($currency)){
            $this->display('Public:b_stop');
            return;
        }
        $currency['currency_digit_num']=$currency['currency_digit_num']?$currency['currency_digit_num']:4;//设置限制位数
        //显示委托记录
        $buy_record=$this->getOrdersByType($currency['currency_id'],'buy', 10, 'desc');
        $sell_record=$this->getOrdersByType($currency['currency_id'],'sell', 10, 'asc');
        $this->assign('buy_record',$buy_record);
        $this->assign('sell_record',$sell_record);
        //格式化手续费
        $currency['currency_sell_fee']=floatval($currency['currency_sell_fee']);
        $currency['currency_buy_fee']=floatval($currency['currency_buy_fee']);
        //币种信息
        $currency_message=$this->getCurrencyMessageById($currency['currency_id']);
        $currency_trade=$this->getCurrencynameById($currency['trade_currency_id']);
        $this->assign('currency_message',$currency_message);
        $this->assign('currency_trade',$currency_trade);
        //个人账户资产
        if (!empty($_SESSION['USER_KEY_ID'])){
            $user_currency_money['currency']['num']=$this->getUserMoney($currency['currency_id'], 'num');
            $user_currency_money['currency']['forzen_num']=$this->getUserMoney($currency['currency_id'], 'forzen_num');
            $user_currency_money['currency_trade']['num']=$this->getUserMoney($currency['trade_currency_id'], 'num');
            $user_currency_money['currency_trade']['forzen_num']=$this->getUserMoney($currency['trade_currency_id'], 'forzen_num');
            if($currency['trade_currency_id']==0){
                $user_currency_money['currency_trade']['num']=$this->member['rmb'];
                $user_currency_money['currency_trade']['forzen_num']=$this->member['forzen_rmb'];
            }
            $this->assign('user_currency_money',$user_currency_money);
            //个人挂单记录
            $this->assign('user_orders',$this->getOrdersByUser(5,$currency['currency_id']));
            //最大可买
            if (!empty($sell_record)){
            		  $buy_num=sprintf('%.4f',$user_currency_money['currency_trade']['num']/$sell_record[0]['price']);
            }else {
                $buy_num=0;
            }
            $this->assign('buy_num',$buy_num);
            //最大可卖
            $sell_num=sprintf('%.4f',$user_currency_money['currency']['num']);
            $this->assign('sell_num',$sell_num);
        }
        $this->assign('session',$_SESSION['USER_KEY_ID']);
        $this->assign('currency',$currency);
        //成交记录
        $trade=$this->getOrdersByStatus(2, 20, $currency['currency_id']);
        $this->assign('trade',$trade);
        $this->display();
    }
    //交易大厅
    public function currency_trade(){
        $count = M('Currency')->where('is_line=1')->count();//根据分类查找数据数量
        $page = new \Think\Page($count,10);//实例化分页类，传入总记录数和每页显示数
        $show = $page->show();//分页显示输出性
        $currency = M('Currency')->where('is_line=1')->order('sort')->limit($page->firstRow.','.$page->listRows)->select();//时间降序排列，越接近当前时间越高
        foreach ($currency as $k=>$v){
            $list=$this->getCurrencyMessageById($v['currency_id']);
            $currency[$k]=array_merge($list,$currency[$k]);
            $list['new_price']?$list['new_price']:0;
            $currency[$k]['currency_all_money'] = floatval($v['currency_all_num'])*$list['new_price'];
        }
        $this->assign('page',$show);
        $this->assign('currency',$currency);
        $this->display();
    }
    
    //获取挂单记录
    public function getOrders(){
        switch (I('post.type')){
          case 'buy':  $this->ajaxReturn($this->getOrdersByType(I('post.currency_id'),'buy', 10, 'desc'));
          break;
          case 'sell':$this->ajaxReturn($this->getOrdersByType(I('post.currency_id'),'sell', 10, 'asc'));
          break;
        }
    }
    //获取k线
    public function getOrdersKline(){
        if(empty($_GET['currency'])){
            return;
        }
        $currency_id=I('get.currency');
        //K线
        $char=!empty($_GET['time'])?I('get.time'):'kline_1h';
        switch ($char){
            case 'kline_5m':$time=5;break;
            case 'kline_15m':$time=15;break;
            case 'kline_30m':$time=30;break;
            case 'kline_1h':$time=60;break;
            case 'kline_8h':$time=480;break;
            case 'kline_1d':$time=24*60;break;
            default:$time=60;
        }
        $data[$char]=$this->getKline($time,$currency_id);
        $this->ajaxReturn($data);
    }
    //获取K线
    private function getKline($base_time,$currency_id){
            $time=time()-$base_time*60*60;
            for ($i=0;$i<60;$i++){
             $start= $time+$base_time*60*$i;
             $end=$start+$base_time*60;
            //时间
            $item[$i][]=$start*1000+8*3600*1000;
            $where['currency_id']=$currency_id;
            $where['type']='buy';
            $where['add_time']=array('between',array($start,$end));
     
            //交易量
          $num=M('Trade')->where($where)->sum('num');
          $item[$i][]=!empty($num)?floatval($num):0;
            //开盘
            $where_price['currency_id']=$currency_id;
            $where_price['type']='buy';
            $where_price['add_time']=array('elt',$end);
          
            $order_k=M('Trade')->field('price')->where($where_price)->order('add_time desc')->find();
            $item[$i][]=!empty($order_k['price'])?floatval($order_k['price']):0;
            //最高
           $max=M('Trade')->where($where)->max('price');
           $max=!empty($max)?floatval($max):$order_k['price'];
           $max=!empty($max)?$max:0;
           $item[$i][]=$max;
            //最低
            $min=M('Trade')->where($where)->min('price');
            $min=!empty($min)?floatval($min):$order_k['price'];
            $item[$i][]=!empty($min)?$min:0;
            //收盘
            $order_s=M('Trade')->field('price')->where($where)->order('add_time asc')->find();
            $order_s=!empty($order_s['price'])?floatval($order_s['price']):$order_k['price'];
            $item[$i][]=!empty($order_s)?$order_s:0;
        }
       // $item=json_encode($item,true);
        return $item;
    }
}