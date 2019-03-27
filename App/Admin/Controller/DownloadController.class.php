<?php
namespace Admin\Controller;
use Admin\Controller\AdminController;
class DownloadController extends AdminController {
    public function _initialize(){
        parent::_initialize();
    }
    //空操作
    public function _empty(){
        header("HTTP/1.0 404 Not Found");
        $this->display('Public:404');
    }
    public function index(){
    	$currency=M('currency')->field('currency_id,currency_name,qianbao_url,guanwang_url')->select();
        $this->assign('list',$currency);
    	$this->display();
    }
    //处理钱包上传
    public function qianbaoDownload(){
    	if(!empty($_FILES)){
    				$upload = new \Think\Upload();// 实例化上传类
			    	$upload->maxSize   =     99999999 ;// 设置附件上传大小
			    	$upload->exts      =     array('zip', 'rar','CAB ','ISO ');// 设置附件上传类型
			    	$upload->savePath  =      './Public/Uploads/'; // 设置附件上传目录
			    	// 上传文件
			    	$info   =  $upload->upload();
			    	if(!$info) {
			    		// 上传错误提示错误信息
			    		$this->error($upload->getError());exit();
			    	}else{
			    		// 上传成功
			    		foreach ($info as $k=>$v){
			    			$url=$v['savepath'].$v['savename'];
			    			$r[]=M('Currency')->where('currency_id='.$k)->setField('qianbao_url','/Uploads'.ltrim($url,"."));
			    		}
			    		if(isset($r)){
			    			$this->success('上传成功');
			    		}else{
			    			$this->error('上传失败');
			    		}
			    	}
    			}
    }
    public function biaogeDownload(){
    	$upload = new \Think\Upload();// 实例化上传类
    	$upload->maxSize   =     3145728 ;// 设置附件上传大小
    	$upload->exts      =     array('xls', 'xlsx');// 设置附件上传类型
    	$upload->savePath  =      './Public/Uploads/'; // 设置附件上传目录
    	// 上传文件
    	$info   =  $upload->upload();
    	if(!$info) {
    		// 上传错误提示错误信息
    		$this->error($upload->getError());exit();
    	}else{
    		// 上传成功
    		foreach ($info as $k=>$v){
    			$url=$v['savepath'].$v['savename'];
    			$url='/Uploads'.ltrim($url,".");
    			$r=M('Config')->where(C("DB_PREFIX")."config.key='biaoge_url'")->setField('value',$url);
    		}
    		if(isset($r)){
    			$this->success('上传成功');
    		}else{
    			$this->error('上传失败');
    		}
    	}
    }
    public function guanwangUrl(){
    	//返回带有currency_id的一维数组
    	$arr_guanwang_url=I("post.guanwang_url");
    	foreach($arr_guanwang_url as $k=>$v){
    		$data['currency_id']=$k;
    		$data['guanwang_url']=$v;
    		$re = M("Currency")->save($data);
    		if($re===false){
    			$this->error('操作失败');
    		}
    	}
    		$this->success('操作成功');
//     	}else{
    		
    }
}