<?php
namespace Home\Controller;
use Common\Controller\CommonController;
class ProjectController extends CommonController {
    //空操作
    public function _initialize(){
        parent::_initialize();
    }
    public function _empty(){
        header("HTTP/1.0 404 Not Found");
        $this->display('Public:404');
    }
	//概况
    public function index(){
   
        $this->display();
    }
	


}