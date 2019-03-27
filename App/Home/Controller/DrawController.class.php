<?php
namespace Home\Controller;
use Home\Controller\HomeController;
use Think\Page;
use Think\Upload;

class DrawController extends HomeController {
    //空操作
    public function _initialize(){
        parent::_initialize();
    }
    public function _empty(){
        header("HTTP/1.0 404 Not Found");
        $this->display('Public:404');
    }
    public function index(){
      
        $this->display();
    }
}