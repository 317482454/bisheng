<?php
namespace Admin\Controller;
use Admin\Controller\AdminController;
use Home\Controller\PublicController;
class ZhongchouController extends AdminController {
	//空操作
	public function _initialize(){
		parent::_initialize();
	}
	public function _empty(){
		header("HTTP/1.0 404 Not Found");
		$this->display('Public:404');
	}
	Public function add(){
		if(IS_POST){
			$D_Issue=D('Issue');
			if(!$data=$D_Issue->create($_POST)){
				$this->error($D_Issue->getError());
				return;
			}
			//处理上传文件
			if($_FILES["wenjian_url"]["tmp_name"]){
				$wenjian_url=$this->wenjianDownload($_FILES["wenjian_url"]);
				$data['wenjian_url']=$wenjian_url;
			}
			//处理图片
			if($_FILES["Filedata1"]["tmp_name"]){
				$data['url1']=$this->upload($_FILES["Filedata1"]);
			}
			if($_FILES["Filedata2"]["tmp_name"]){
				$data['url2']=$this->upload($_FILES["Filedata2"]);
			}
			//dump($data);
			//处理时间
			$data['add_time']=strtotime($data['add_time'])?strtotime($data['add_time']):time();
			$data['end_time']=strtotime($data['end_time'])?strtotime($data['end_time']):time();
			$data['ctime']=time();
			//成功比例
			if(!empty($_POST['zhongchou_success_bili'])){
				$data['zhongchou_success_bili']=I('post.zhongchou_success_bili')/100;
			}
			if(!empty($_POST['id'])){
				$data['id']=I('post.id');
				$rs=M('Issue')->save($data);
			}else{
				$rs=M('Issue')->add($data);
			}
			if($rs){
				$this->success('操作成功');
			}else{
				$this->error('操作失败');
			}
		}else{
			if(!empty($_GET['id'])){
				$list=M('Issue')->where('id='.I('get.id'))->find();
				$list['zhongchou_success_bili']=$list['zhongchou_success_bili']*100;
				$this->assign('info',$list['info']);
				$this->assign('list',$list);
			}
			$list=M('Currency')->field('currency_id,currency_name')->select();
			$this->assign('currency',$list);
			$this->display();
		}
		
	}
	
	//文件下载
	private function wenjianDownload($file){
		$upload = new \Think\Upload();// 实例化上传类
		$upload->maxSize   =     3145728 ;// 设置附件上传大小
		$upload->exts      =     array('xls', 'xlsx','doc');// 设置附件上传类型
		$upload->savePath  =      './Public/Uploads/'; // 设置附件上传目录
		// 上传文件
		$info   =  $upload->uploadOne($file);
		if(!$info) {
			// 上传错误提示错误信息
			$this->error($upload->getError());exit();
		}else{
			// 上传成功
				$url=$info['savepath'].$info['savename'];
				$url='/Uploads'.ltrim($url,".");
			if(isset($url)){
				return $url;
			}else{
				$this->error('文件上传失败');exit();
			}
		}
	}
	public function index(){
		$this->checkZhongchou();
		$Issue=M('Issue');
		$count      = $Issue->count();// 查询满足要求的总记录数
		$Page       = new \Think\Page($count,25);// 实例化分页类 传入总记录数和每页显示的记录数(25)
		$show       = $Page->show();// 分页显示输出
		$list=$Issue
		->field(C("DB_PREFIX")."issue.*,".C("DB_PREFIX")."currency.currency_name as name")
		->join("left join ".C("DB_PREFIX")."currency on ".C("DB_PREFIX")."currency.currency_id=".C("DB_PREFIX")."issue.currency_id")
		->limit($Page->firstRow.','.$Page->listRows)
		->order('ctime desc')
		->select();
		foreach ($list as $k=>$v){
			$list[$k]['zhongchou_success_bili']=$v['zhongchou_success_bili']*100;
		}
		$this->assign('page',$show);// 赋值分页输出
		$this->assign('list',$list);
		$this->assign('empty','暂无数据');
		$this->display();
    }
    //删除
    public function del(){
    	if(!empty($_GET['id'])){
    		$rs=M('Issue')->where('id='.$_GET['id'])->find();
        }else{
        	$this->display('Public:404');exit();
        }
        $list=M('Issue')->where('id='.$_GET['id'])->delete();
    	if($list){
    		$this->success('删除成功');
    	}else{
    		$this->error('删除失败');
    	}
    }
    //手动结束众筹
    public function zhongchouEnd(){
    	if(empty($_GET['id'])){
        	$this->display('Public:404');exit();
    	}
    	$list=M('Issue')->where('id='.$_GET['id'])->setField('status',3);
    	M('Issue')->where('id='.$_GET['id'])->setField('end_time',time());
    	if($list){
    		$this->success('操作成功');
    	}else{
    		$this->error('操作失败');
    	}
    }
    //手动开始众筹
    public function zhongchouStart(){
    	if(empty($_GET['id'])){
    		$this->display('Public:404');exit();
    	}
    	$list=M('Issue')->where('id='.$_GET['id'])->setField('status',0);
    	M('Issue')->where('id='.$_GET['id'])->setField('add_time',time());
    	M('Issue')->where('id='.$_GET['id'])->setField('end_time',time());
    	 
    	if($list){
    		$this->success('操作成功');
    	}else{
    		$this->error('操作失败');
    	}
    }
    //解冻众筹记录
    public function jiedongById(){
    	$id=I('get.id');
    	$log=M('Issue_log')->where('id='.$id)->find();
    	if($log['status']==1){
    		$this->error('该记录已处理');
    	}
    	$list[]=M('Issue_log')->where("id=$id")->setField('deal',0);
    	$list[]=M('Issue_log')->where("id=$id")->setField('add_time',time());
    	$list[]=M('Currency_user')->where("member_id={$log['uid']} and currency_id={$log['cid']}")->setInc('num',$log['deal']);
    	$list[]=M('Currency_user')->where("member_id={$log['uid']} and currency_id={$log['cid']}")->setDec('forzen_num',$log['deal']);
    	$list[]=M('Issue_log')->where("id=$id")->setField('status',1);
    	if($list){
    		$this->success('操作成功');
    	}else{
    		$this->error('操作失败');
    	}
    }
    //解冻众筹全部冻结
    public function jiedongByIid(){
    	$id=I('post.iid');
    	$log=M('Issue_log')->where('iid='.$id)->select();
    	foreach ($log as $k=>$v){
    		if($v['status']==1){
    			continue;
    		}
    		$list[]=M('Issue_log')->where("id={$v['id']}")->setField('deal',0);
    		$list[]=M('Issue_log')->where("id={$v['id']}")->setField('add_time',time());
    		$list[]=M('Currency_user')->where("member_id={$v['uid']} and currency_id={$v['cid']}")->setInc('num',$v['deal']);
    		$list[]=M('Currency_user')->where("member_id={$v['uid']} and currency_id={$v['cid']}")->setDec('forzen_num',$v['deal']);
    		$list[]=M('Issue_log')->where("id={$v['id']}")->setField('status',1);
    	}
    	if($list){
    		$this->success('操作成功');
    	}else{
    		$this->error('操作失败');
    	}
    }

    //开始解冻方法  修改所有未解冻账号时间为0，使解冻程序运行
    public function jiedong_start(){	
    	$id=I('post.iid');
    	$log=M('Issue_log')->where('num=deal and iid='.$id)->select();
    	//echo M('Issue_log')->_sql();dump($log);
    	if(!$log){
    		$data['status']=0;
    		$data['info']='无对应记录';
    		$this->ajaxReturn($data);
    	}
    	foreach ($log as $k=>$v){
    		$list=$this->getIssueRemoveForzenBiLiByIssueId($v['iid']);
    		$v['remove_forzen_bili'] = $list['remove_forzen_bili']/100;
    		$v['remove_forzen_cycle'] = $list['remove_forzen_cycle'];
    		$r=M('Issue_log')->where("id={$v['id']}")->setDec('deal',$v['num']*$v['remove_forzen_bili']);
    		$r=M('Issue_log')->where("id={$v['id']}")->setField('add_time',time());
    		$r=M('Currency_user')->where("member_id={$v['uid']} and currency_id={$v['cid']}")->setInc('num',$v['num']*$v['remove_forzen_bili']);
    		$r=M('Currency_user')->where("member_id={$v['uid']} and currency_id={$v['cid']}")->setDec('forzen_num',$v['num']*$v['remove_forzen_bili']);
    	}
    	if($r){
    		$data['status']=1;
    		$data['info']='操作成功';
    		$this->ajaxReturn($data);
    	}else{
    		$data['status']=0;
    		$data['info']='无记录';
    		$this->ajaxReturn($data);
    	}
    }
    /**
     * 根据认筹id查找解冻比例
     * @param int $id Issue Id
     * @return 解冻比例
     */
    private function getIssueRemoveForzenBiLiByIssueId($id){
    	$list =  M('Issue')->field('is_forzen,remove_forzen_bili')->where("id = $id")->find();
    	//echo M('Issue')->_sql();
    	//dump($list);
    	if($list['is_forzen']==0){
    		return $list;
    	}else{
    		return 0;
    	}
    }
    //众筹记录
    public function log(){
    	$iid=I('iid');
    	$name=I('name');
    	$uid=I('uid');
    	$email=I('email');
    	if(!empty($iid)){
    		$where[C("DB_PREFIX")."issue_log.iid"]=$iid;
    	}
    	if(!empty($uid)){
    		$where['yang_issue_log.uid']=$uid;
    	}
    	if(!empty($name)){
    		$uid=M('Member')->where("name like '%{$name}%'")->select();
			foreach($uid as $k=>$v){
				$arr[]=$uid[$k]['member_id'];
			}
    		$where[C("DB_PREFIX")."issue_log.uid"]=array('in',$arr);
    	}
    	if(!empty($email)){
    		$uid=M('Member')->where("email like '%{$email}%'")->select();
    		foreach($uid as $k=>$v){
    			$arr[]=$uid[$k]['member_id'];
    		}
    		$where['yang_issue_log.uid']=array('in',$arr);
    	}
    	$count      = M('Issue_log')->count();// 查询满足要求的总记录数
    	$Page       = new \Think\Page($count,25);// 实例化分页类 传入总记录数和每页显示的记录数(25)
    	//给分页传参数
    	setPageParameter($Page, array('iid'=>$iid,'uid'=>$uid,'name'=>$name,'email'=>$email));
    	
    	$show       = $Page->show();// 分页显示输出
    	$log=M('Issue_log')
    	->field(C("DB_PREFIX")."issue_log.*,".C("DB_PREFIX")."member.name,".C("DB_PREFIX")."issue.title,".C("DB_PREFIX")."issue_log.num*".C("DB_PREFIX")."issue_log.price as count")
    	->join("left join ".C("DB_PREFIX")."member on ".C("DB_PREFIX")."member.member_id=".C("DB_PREFIX")."issue_log.uid")
    	->join("left join ".C("DB_PREFIX")."issue on ".C("DB_PREFIX")."issue.id=".C("DB_PREFIX")."issue_log.iid")
    	->order('add_time desc')
    	->limit($Page->firstRow.','.$Page->listRows)
    	->where($where)->select();
        foreach ($log as $key=>$vo) {
            $log[$key]['buy_name'] = $vo['buy_currency_id']==0?"人民币":M('Currency')->where("currency_id='{$vo['buy_currency_id']}'")->find()['currency_name'];
        }


        $this->assign('log',$log);
    	$this->assign('page',$show);
    	$issue=M('Issue')->field('id,title')->select();
    	$this->assign('issue',$issue);
    	$this->assign('empty','暂无数据');
    	$this->display();
    }

	/**
	 * 众筹推荐奖励管理
	 */
	public function awards(){
		$id = I('id','','intval');
		//获取表单
		if(IS_POST){
			if(empty($_POST['zc_awards_currency_id'])){
				$this->error('请填写币种');
				return;
			}
			if(!isset($_POST['zc_awards_one_ratio'])){
				$this->error('请填写一级比例');
				return;
			}
			if(!isset($_POST['zc_awards_two_ratio'])){
				$this->error('请填写二级比例');
				return;
			}
			if(!isset($_POST['zc_awards_status'])){
				$this->error('请填写是否开启状态');
				return;
			}
			if($_POST['zc_awards_one_ratio']>100 || $_POST['zc_awards_two_ratio'] > 100){
				$this->error('比例不能大于100%');
				return;
			}
			$r =  M('Issue')->where("id=$id")->save($_POST);
			//处理数据动态插入
// 			foreach ($_POST as $key=>$vo) {
// 				$r[] = M('Issue')->where(array('key'=>$key))->setField('value',$vo);
// 			}
			//判断成功
			if($r){
				$this->success('保存成功');
			}else{
				$this->error('保存失败');
			}
		}
		else{
			//获取币种
			$currency = M('Currency')->field('currency_id,currency_name')->select();
			$list = M('Issue')
					->field('id,zc_awards_currency_id,zc_awards_one_ratio,zc_awards_two_ratio,zc_awards_status')
					->where("id =$id")
					->find();
			$this->assign('list',$list);
			$this->assign('currency',$currency);
			$this->display();
		}
	}

	public function awardsList(){
		$count      = M('Finance')->where("type = 12 ")->count();// 查询满足要求的总记录数
		$Page       = new \Think\Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数(25)
		$show       = $Page->show();// 分页显示输出
		$list=M('Finance')
			->order('add_time desc')
			->limit($Page->firstRow.','.$Page->listRows)
			->where("type = 12 ")->select();
		$this->assign('list',$list);
		$this->assign('page',$show);
		$this->assign('empty','暂无数据');
		$this->display();
	}
}