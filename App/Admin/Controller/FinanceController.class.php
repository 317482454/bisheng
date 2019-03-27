<?php
namespace Admin\Controller;
use Admin\Controller\AdminController;
use Think\Page;
class FinanceController extends AdminController{
    //空操作
    public function _empty(){
        header("HTTP/1.0 404 Not Found");
        $this->display('Public:404');
    }
    //财务日志
	public function index(){
		$type_id=I('type_id');
		$name=I('name');
		$member_id=I('member_id');
		if(!empty($type_id)){
			$where['type']=$type_id;
		}
		if(!empty($name)){
			$uid=M('Member')->where("name like '%{$name}%'")->find();
			$where[C("DB_PREFIX")."member.member_id"]=$uid['member_id'];
		}
        if(!empty($member_id)){
            $where[C("DB_PREFIX")."member.member_id"]=$member_id;
        }
		//筛选
        $type=M('Finance_type')->select();
        $this->assign('type',$type);
		//显示日志
        $count = M('Finance')
        ->field(C("DB_PREFIX")."finance.*,".C("DB_PREFIX")."member.name as username,".C("DB_PREFIX")."currency.currency_name,".C("DB_PREFIX")."finance_type.name as typename")
        ->join("left join ".C("DB_PREFIX")."member on ".C("DB_PREFIX")."member.member_id=".C("DB_PREFIX")."finance.member_id")
        ->join("left join ".C("DB_PREFIX")."finance_type on ".C("DB_PREFIX")."finance_type.id=".C("DB_PREFIX")."finance.type")
        ->join("left join ".C("DB_PREFIX")."currency on ".C("DB_PREFIX")."currency.currency_id=".C("DB_PREFIX")."finance.currency_id")
        ->where ( $where )->count (); // 查询满足要求的总记录数
        $Page = new Page ( $count, 25 ); // 实例化分页类 传入总记录数和每页显示的记录数(25)
        //给分页传参数
        setPageParameter($Page, array('type_id'=>$type_id,'name'=>$name,'member_id'=>$member_id));
        
        $show = $Page->show (); // 分页显示输出
        		
		$list=M('Finance')
		->field(C("DB_PREFIX")."finance.*,".C("DB_PREFIX")."member.name as username,".C("DB_PREFIX")."currency.currency_name,".C("DB_PREFIX")."finance_type.name as typename")
		->join("left join ".C("DB_PREFIX")."member on ".C("DB_PREFIX")."member.member_id=".C("DB_PREFIX")."finance.member_id")
		->join("left join ".C("DB_PREFIX")."finance_type on ".C("DB_PREFIX")."finance_type.id=".C("DB_PREFIX")."finance.type")
		->join("left join ".C("DB_PREFIX")."currency on ".C("DB_PREFIX")."currency.currency_id=".C("DB_PREFIX")."finance.currency_id")
		->limit($Page->firstRow.','.$Page->listRows)
		->where($where)
		->order('add_time desc')
		->select();
		//echo M('Finance')->_sql();
		foreach ($list as $k=>$v){
			if($v['currency_id']==0){
				$list[$k]['currency_name']='人民币';
			}
		}
		$this->assign('empty','暂未查询到数据');
		$this->assign('list',$list);
		$this->assign ( 'page', $show ); // 赋值分页输出
        $this->display();
     }
    //财务明细
    public function count(){
    	$pay=$this->getFinenceByType(array('6'),1);
    	$this->assign('pay',$pay);
    	$pay_admin=$this->getFinenceByType(array('3','13'),0);
    	$this->assign('pay_admin',$pay_admin);
    	$draw=$this->getFinenceByType(array('23'),1);
    	$this->assign('draw',$draw);
    	//统计人民币总额
    	$rmb_count=M('Member')->sum('rmb');
    	$forzen_rmb_count=M('Member')->sum('forzen_rmb');
    	$rmb=$rmb_count+$forzen_rmb_count;
    	$this->assign('rmb',$rmb);
    	//分币种统计
    	$currency=M('Currency')->field('currency_id,currency_name')->select();
    	foreach ($currency as $k=>$v){
    		$currency_user[$k]['num']=M('Currency_user')->where('currency_id='.$v['currency_id'])->sum('num');
    		$currency_user[$k]['forzen_num']=M('Currency_user')->where('currency_id='.$v['currency_id'])->sum('forzen_num');
    		$currency_user[$k]['name']=$v['currency_name'];
    	}
    	$this->assign('currency_user',$currency_user);
    	$this->display();
    }
    private function getFinenceByType($type,$currency=1){
		if($currency==0){
			$where['currency_id']=0;
		}
    	$where['type']=array('in',$type);
    	$rs=M('Finance')->where($where)->sum('money');
    	return $rs;
    }
    /**
     * 导出excel文件
     */
    public function derivedExcel(){
    	//时间筛选
    	$add_time=I('get.add_time');
    	$end_time=I('get.end_time');
    	$add_time=empty($add_time)?0:strtotime($add_time);
    	$end_time=empty($end_time)?0:strtotime($end_time);
    	$where[C("DB_PREFIX").'finance.add_time'] = array('lt',$end_time);
    	$list= M('Finance')
    	->field(C("DB_PREFIX")."finance.finance_id,"
    			.C("DB_PREFIX")."member.name as uesrname,"
    			.C("DB_PREFIX")."finance_type.name as typename,"
    			.C("DB_PREFIX")."finance.content,"
    			.C("DB_PREFIX")."finance.money,"
    			.C("DB_PREFIX")."currency.currency_name,"
    			.C("DB_PREFIX")."finance.money_type,"
    			.C("DB_PREFIX")."finance.add_time")
    			->join("left join ".C("DB_PREFIX")."member on ".C("DB_PREFIX")."member.member_id=".C("DB_PREFIX")."finance.member_id")
    			->join("left join ".C("DB_PREFIX")."finance_type on ".C("DB_PREFIX")."finance_type.id=".C("DB_PREFIX")."finance.type")
    			->join("left join ".C("DB_PREFIX")."currency on ".C("DB_PREFIX")."currency.currency_id=".C("DB_PREFIX")."finance.currency_id")
    			->limit($Page->firstRow.','.$Page->listRows)
    			->order('add_time desc')
    			->where($where)
    			->where(C("DB_PREFIX").'finance.add_time>'.$add_time)		
    			->select();
    	//     	echo M("Pay")->getLastSql();die;
    	//echo M('Finance')->_sql();die;
    	foreach ($list as $k=>$v){
    		if($list[$k]['money_type']==1){
    			$list[$k]['money_type']='支出';
    		}else{
    			$list[$k]['money_type']='收入';
    		}
    		if($list[$k]['currency_id']==0)$list[$k]['currency_name']='人民币';
    		$list[$k]['add_time']=date('Y-m-d H:i:s',$list[$k]['add_time']);
    	}
    	$title = array(
    			'日志编号',
    			'所属',
    			'财务类型',
    			'内容',
    			'金额',
    			'币种',
    			'收入/支出',
    			'时间',
    	);
    	$filename= $this->config['name']."财务日志-".date('Y-m-d',time());
    	$r = exportexcel($list,$title,$filename);
    }
    
}