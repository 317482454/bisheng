<?php
namespace Home\Controller;
use Common\Controller\CommonController;
use Think\Page;
use Think\Upload;

class DowController extends CommonController {
    //空操作
    public function _initialize(){
        parent::_initialize();
    }
    public function _empty(){
        header("HTTP/1.0 404 Not Found");
        $this->display('Public:404');
    }
	//虚拟币下载
    public function index(){
    	
    	
    	$list=M("Currency")->select();
		foreach($list as $k => $v){
    		$list[$k]['guanwang_url'] = trim(trim($v['guanwang_url'],'https://'),'http://');
    	}
    	$this->assign("list",$list);
        $this->display();
    }
	//浏览器下载
	public function two(){
      
        $this->display();
    }
	//新币上线
	public function newcoin(){
//       	$info = M('Article')->where('position_id = 126')->find();
//         $this->assign('info',$info);
      	$this->display();
    }
}