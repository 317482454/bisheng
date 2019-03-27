<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-3-8
 * Time: 下午2:23
 */

namespace Admin\Model;
use Think\Model;

class WebsiteBankModel extends Model{

    protected $_validate = array(
//        array(验证字段1,验证规则,错误提示,[验证条件,附加规则,验证时间]),
//        array('agree','1','条款必须同意',1,'equal',1),//同意条款
    		
        array('bank_name','require','收款人不能为空'),
        array('bank_adddress','require','开户行不能为空'),

        array('bank_no','require','银行卡账号不能为空'),
    	//array('bank_no','number','请正确填写银行卡'),
    );

    protected $_auto = array(
//       array(完成字段1,完成规则,[完成条件,附加规则]),
        array('status',1), 
    );

}