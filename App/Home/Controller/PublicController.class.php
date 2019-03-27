<?php

namespace Home\Controller;

use Common\Controller\CommonController;
/**
 * 空模块，主要用于显示404页面，请不要删除
 */
class PublicController extends CommonController{
	//没有任何方法，直接执行HomeController的_empty方法
	//请不要删除该控制器
	
    //空操作
    public function _empty(){
        header("HTTP/1.0 404 Not Found");
        $this->display('Public:404');
    }

    public  function  _404(){
           $this->display();
    }
 
    
}
