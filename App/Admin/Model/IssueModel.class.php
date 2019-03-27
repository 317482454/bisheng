<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 16-3-8
 * Time: 下午2:23
 */

namespace Admin\Model;
use Think\Model;

class IssueModel extends Model{

    protected $_validate = array(
//        array(验证字段1,验证规则,错误提示,[验证条件,附加规则,验证时间]),
//        array('agree','1','条款必须同意',1,'equal',1),//同意条款
    		
        array('title','require','众筹标题不能为空'),
        array('num','require','众筹发售量不能为空'),

        array('num_nosell','require','众筹保留不能为空'),
    	array('deal','require','众筹剩余量不能为空'),


        array('price','require','众筹价格不能为空'),
        array('limit','require','众筹每人限购不能为空'),
    		
    	array('remove_forzen_bili',array(0,100),'解冻比例必须在100%内',0,'between'),

        array('min_limit','require','众筹最低购买不能为空'),
        array('limit_count','require','众筹限购次数不能为空'),

        array('zhongchou_success_bili','require','众筹成功比例不能为空'),
    );

}