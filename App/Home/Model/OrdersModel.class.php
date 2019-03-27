<?php
namespace Home\Model;
use Think\Model;
class OrdersModel extends Model{
    protected $_auto = array (          
        array('status','0'),  
        array('add_time','time',1,'function'),
        array('trade_time','time',2,'function'),
    );
}

?>