<?php if (!defined('THINK_PATH')) exit();?>    <!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" >
	<meta name="renderer" content="webkit">
    <title>网站后台管理</title>
    <link rel="stylesheet" type="text/css" href="/Public/Admin/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="/Public/Admin/css/main.css"/>
    <link rel="stylesheet" type="text/css" href="/Public/Admin/iconfont/demo.css">
    <link rel="stylesheet" type="text/css" href="/Public/Admin/iconfont/iconfont.css"/>
    <script type="text/javascript" src="/Public/Admin/js/libs/modernizr.min.js"></script>
	<script type="text/javascript" src="/Public/Admin/js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="/Public/js/layer/layer.js"></script>
    <script type="text/javascript" src="/Public/js/laydate/laydate.js"></script>
    
	<link type="text/css" href="/Public/Admin/css/jquery-ui-1.8.17.custom.css" rel="stylesheet" />
    <link type="text/css" href="/Public/Admin/css/jquery-ui-timepicker-addon.css" rel="stylesheet" />
    <script type="text/javascript" src="/Public/Admin/js/jquery-ui-1.8.17.custom.min.js"></script>
    <script type="text/javascript" src="/Public/Admin/js/jquery-ui-timepicker-addon.js"></script>
    <script type="text/javascript" src="/Public/Admin/js/jquery-ui-timepicker-zh-CN.js"></script>

    <script>
(function ($) {
    // 汉化 Datepicker
    $.datepicker.regional['zh-CN'] =
    {
        clearText: '清除', clearStatus: '清除已选日期',
        closeText: '关闭', closeStatus: '不改变当前选择',
        prevText: '<上月', prevStatus: '显示上月',
        nextText: '下月>', nextStatus: '显示下月',
        currentText: '今天', currentStatus: '显示本月',
        monthNames: ['一月', '二月', '三月', '四月', '五月', '六月',
        '七月', '八月', '九月', '十月', '十一月', '十二月'],
        monthNamesShort: ['一', '二', '三', '四', '五', '六',
        '七', '八', '九', '十', '十一', '十二'],
        monthStatus: '选择月份', yearStatus: '选择年份',
        weekHeader: '周', weekStatus: '年内周次',
        dayNames: ['星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六'],
        dayNamesShort: ['周日', '周一', '周二', '周三', '周四', '周五', '周六'],
        dayNamesMin: ['日', '一', '二', '三', '四', '五', '六'],
        dayStatus: '设置 DD 为一周起始', dateStatus: '选择 m月 d日, DD',
        dateFormat: 'yy-mm-dd', firstDay: 1,
        initStatus: '请选择日期', isRTL: false
    };
    $.datepicker.setDefaults($.datepicker.regional['zh-CN']);
 
    //汉化 Timepicker
  $.timepicker.regional['zh-CN'] = {
    timeOnlyTitle: '选择时间',
    timeText: '时间',
    hourText: '小时',
    minuteText: '分钟',
    secondText: '秒钟',
    millisecText: '微秒',
    timezoneText: '时区',
    currentText: '现在时间',
    closeText: '关闭',
    timeFormat: 'hh:mm',
    amNames: ['AM', 'A'],
    pmNames: ['PM', 'P'],
    ampm: false
  };
  $.timepicker.setDefaults($.timepicker.regional['zh-CN']);
})(jQuery);
</script>
<style>
.iconfont{ padding-right:5px;}
.fsize{ font-size:15px;}
</style>
</head>
<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="index.html" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="index.html">首页</a></li>
                <li><a href="<?php echo U('Index/index');?>" target="_blank">网站首页</a></li>
                <li><a href="<?php echo U('Index/infoStatistics');?>" target="_blank">全站统计信息</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
                <li><a href="<?php echo U('Manage/index');?>">管理员</a></li>
                <li><a href="<?php echo U('Manage/pwdUpdate');?>">修改密码</a></li>
                <li><a href="<?php echo U('Login/loginout');?>">退出</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container clearfix">
<div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>菜单</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                 <?php if(!empty($sys_nav)): ?><li>
                    <a href="#"><i class="iconfont">&#xe614;</i><span class="fsize">系统管理</span></a>
                    <ul class="sub-menu">
                        
                        	<?php if(is_array($sys_nav)): $i = 0; $__LIST__ = $sys_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["nav_url"]); ?>"><i class="iconfont"><?php echo ($vo["nav_e"]); ?></i>&nbsp;<?php echo ($vo["nav_name"]); ?></a></li>
                            <!--<li><a href="system.html"><i class="icon-font">&#xe037;</i>清理缓存</a></li>
                            <li><a href="system.html"><i class="icon-font">&#xe046;</i>数据备份</a></li>
                            <li><a href="system.html"><i class="icon-font">&#xe045;</i>数据还原</a></li>--><?php endforeach; endif; else: echo "" ;endif; ?>
                        
                    </ul>
                </li><?php endif; ?>
			   
			   <?php if(!empty($bank_nav)): ?><li>
                    <a href="#"><i class="iconfont">&#xe635;</i><span class="fsize">银行管理</span></a>
                    <ul class="sub-menu">
                        	<?php if(is_array($bank_nav)): $i = 0; $__LIST__ = $bank_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["nav_url"]); ?>"><i class="iconfont"><?php echo ($vo["nav_e"]); ?></i>&nbsp;<?php echo ($vo["nav_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                    </ul>
                </li><?php endif; ?>
				
               <?php if(!empty($common_nav)): ?><li>
                    <a href="#"><i class="iconfont">&#xe635;</i><span class="fsize">常用操作</span></a>
                    <ul class="sub-menu">
                        	<?php if(is_array($common_nav)): $i = 0; $__LIST__ = $common_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["nav_url"]); ?>"><i class="iconfont"><?php echo ($vo["nav_e"]); ?></i>&nbsp;<?php echo ($vo["nav_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                    </ul>
                </li><?php endif; ?>
                
                <?php if(!empty($user_nav)): ?><li>
                    <a href="#"><i class="iconfont">&#xe64d;</i><span class="fsize">会员管理</span></a>
                    <ul class="sub-menu">
                    
                        	<?php if(is_array($user_nav)): $i = 0; $__LIST__ = $user_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["nav_url"]); ?>"><i class="iconfont"><?php echo ($vo["nav_e"]); ?></i>&nbsp;<?php echo ($vo["nav_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                    </ul>
                </li><?php endif; ?>
				
                 <?php if(!empty($bonus_nav)): ?><li>
                    <a href="#"><i class="icon-font">&#xe018;</i><span class="fsize">分红管理</span></a>
                    <ul class="sub-menu">
                    
                        	<?php if(is_array($bonus_nav)): $i = 0; $__LIST__ = $bonus_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["nav_url"]); ?>"><i class="icon-font">&#xe017;</i><?php echo ($vo["nav_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                    </ul>
                </li><?php endif; ?>
				
                <?php if(!empty($zhongchou_nav)): ?><li>
                    <a href="#"><i class="iconfont">&#xe650;</i><span class="fsize">众筹管理</span></a>
                     <ul class="sub-menu">
                     
                        	<?php if(is_array($zhongchou_nav)): $i = 0; $__LIST__ = $zhongchou_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["nav_url"]); ?>"><i class="iconfont"><?php echo ($vo["nav_e"]); ?></i>&nbsp;<?php echo ($vo["nav_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                    </ul>
                </li><?php endif; ?>
                
                <?php if(!empty($finance_nav)): ?><li>
                    <a href="#"><i class="iconfont">&#xe6c8;</i><span class="fsize">财务管理</span></a>
                     <ul class="sub-menu">
                     
                        	<?php if(is_array($finance_nav)): $i = 0; $__LIST__ = $finance_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["nav_url"]); ?>"><i class="iconfont"><?php echo ($vo["nav_e"]); ?></i>&nbsp;<?php echo ($vo["nav_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                    </ul>
                </li><?php endif; ?>

                <?php if(!empty($trade_nav)): ?><li>
                        <a href="#"><i class="iconfont">&#xe631;</i><span class="fsize">交易管理</span></a>
                        <ul class="sub-menu">
                            <?php if(is_array($trade_nav)): $i = 0; $__LIST__ = $trade_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["nav_url"]); ?>"><i class="iconfont"><?php echo ($vo["nav_e"]); ?></i>&nbsp;<?php echo ($vo["nav_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                            <!--<li><a href="<?php echo U('Trade/trade');?>"><i class="icon-font">&#xe017;</i>交易记录</a></li>-->
                            <!--<li><a href="<?php echo U('Trade/orders');?>"><i class="icon-font">&#xe017;</i>委托记录</a></li>-->
                        </ul>
                    </li><?php endif; ?>
                
                <?php if(!empty($wallet_nav)): ?><li>
                        <a href="#"><i class="iconfont">&#xe631;</i><span class="fsize">钱包币种管理</span></a>
                        <ul class="sub-menu">
                            <?php if(is_array($wallet_nav)): $i = 0; $__LIST__ = $wallet_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["nav_url"]); ?>"><i class="iconfont"><?php echo ($vo["nav_e"]); ?></i>&nbsp;<?php echo ($vo["nav_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                            <!--<li><a href="<?php echo U('Trade/trade');?>"><i class="icon-font">&#xe017;</i>交易记录</a></li>-->
                            <!--<li><a href="<?php echo U('Trade/orders');?>"><i class="icon-font">&#xe017;</i>委托记录</a></li>-->
                        </ul>
                    </li><?php endif; ?>
                
                  <?php if(!empty($article_nav)): ?><li>
                        <a href="#"><i class="iconfont">&#xe6f7;</i><span class="fsize">文章管理</span></a>
                        <ul class="sub-menu">
                            <?php if(is_array($article_nav)): $i = 0; $__LIST__ = $article_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["nav_url"]); ?>"><i class="iconfont"><?php echo ($vo["nav_e"]); ?></i>&nbsp;<?php echo ($vo["nav_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                            <!--<li><a href="<?php echo U('Trade/trade');?>"><i class="icon-font">&#xe017;</i>交易记录</a></li>-->
                            <!--<li><a href="<?php echo U('Trade/orders');?>"><i class="icon-font">&#xe017;</i>委托记录</a></li>-->
                        </ul>
                    </li><?php endif; ?>
                
                <?php if(!empty($admin_nav)): ?><li>
                        <a href="#"><i class="iconfont">&#xe64d;</i><span class="fsize">管理员管理</span></a>
                        <ul class="sub-menu">
                            <?php if(is_array($admin_nav)): $i = 0; $__LIST__ = $admin_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["nav_url"]); ?>"><i class="iconfont"><?php echo ($vo["nav_e"]); ?></i>&nbsp;<?php echo ($vo["nav_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                            <!--<li><a href="<?php echo U('Trade/trade');?>"><i class="icon-font">&#xe017;</i>交易记录</a></li>-->
                            <!--<li><a href="<?php echo U('Trade/orders');?>"><i class="icon-font">&#xe017;</i>委托记录</a></li>-->
                        </ul>
                    </li><?php endif; ?>
                <?php if(!empty($tongji_nav)): ?><li>
                        <a href="#"><i class="iconfont">&#xe64d;</i><span class="fsize">统计</span></a>
                        <ul class="sub-menu">
                            <?php if(is_array($tongji_nav)): $i = 0; $__LIST__ = $tongji_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo ($vo["nav_url"]); ?>"><i class="iconfont"><?php echo ($vo["nav_e"]); ?></i>&nbsp;<?php echo ($vo["nav_name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
                            <!--<li><a href="<?php echo U('Trade/trade');?>"><i class="icon-font">&#xe017;</i>交易记录</a></li>-->
                            <!--<li><a href="<?php echo U('Trade/orders');?>"><i class="icon-font">&#xe017;</i>委托记录</a></li>-->
                        </ul>
                    </li><?php endif; ?>
            </ul>
        </div>
    </div>
<script>
$(".sidebar-list li").children("a").on("click",function(){
	$(this).next(".sub-menu").toggle();
});
</script>

    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="<?php echo U('Index/index');?>">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">币种管理</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
            </div>
        </div>
        <div class="result-wrap">
          
                <div class="result-title">
                    <div class="result-list">
                        <a href="<?php echo U('Currency/add');?>"><i class="icon-font"></i>新增币种</a>
                    </div>
                </div>
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                        	<th>排序</th>
                            <th>货币LOGO</th>
                            <th>上线状态</th>
                            <th>交易状态</th>
                            <th>货币名称</th>
                            <th>英文标识</th>
							<th>钱包余额</th>
                            <th>买入手续费</th>
                            <th>卖出手续费</th>
                            <th>最新价</th>
                            <th>涨停价格</th>
                            <th>跌停价格</th>
                            <th>修改时间</th>
                            <th>操作</th>
                        </tr>
                        <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "$empty" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr> 
                        	<td><?php echo ($vo["sort"]); ?></td>
                            <td><?php if(!empty($vo["currency_logo"])): ?><img  style="height:100px;"src='<?php echo ($vo["currency_logo"]); ?>' /><?php else: ?>暂无图片数据<?php endif; ?></td>
                            <td><?php if(($vo["is_line"]) == "0"): ?>未上线<?php else: ?>已上线<?php endif; ?></td>
                            <td><?php if(($vo["is_lock"]) == "0"): ?>已开启<?php else: ?>未开启<?php endif; ?></td>
                            <td><?php echo ($vo["currency_name"]); ?></td>
                            <td><?php echo ($vo["currency_mark"]); ?></td>
							<td><?php echo ($vo["qianbao_balance"]); ?></td>
                            <td><?php echo ($vo["currency_buy_fee"]); ?>%</td>
                            <td><?php echo ($vo["currency_sell_fee"]); ?>%</td>
                            <td><?php echo ((isset($vo['new_price']) && ($vo['new_price'] !== ""))?($vo['new_price']):"0.000"); ?></td>
                            <td><?php echo ((isset($vo['price_up']) && ($vo['price_up'] !== ""))?($vo['price_up']):"0.000"); ?></td>
                            <td><?php echo ((isset($vo['price_down']) && ($vo['price_down'] !== ""))?($vo['price_down']):"0.000"); ?></td>
                            <td><?php echo (date("Y-m-d",$vo["add_time"])); ?></td>
                            <td>
                                <a class="link-update" href="<?php echo U('Trade/trade',array('currency_id'=>$vo['currency_id']));?>">查看交易记录</a></br> <a class="link-limit" href="javascript:void(0);" onclick="limit(<?php echo ($vo['currency_id']); ?>,<?php echo ($vo['price_up']); ?>,<?php echo ($vo['price_down']); ?>)">设置交易限额</a><br>
                                <a class="link-update" href="<?php echo U('Trade/orders',array('currency_id'=>$vo['currency_id']));?>">查看委托记录</a><br>
                                <a class="link-del" href="<?php echo U('Currency/set_member_currencyForQianbao',array('cuid'=>$vo['currency_id']));?>">向会员钱包转账</a><br>
                                <a class="link-update" href="<?php echo U('Currency/add',array('currency_id'=>$vo['currency_id']));?>">修改</a><br>
                                <a class="link-del" href="<?php echo U('Currency/del',array('currency_id'=>$vo['currency_id']));?>">删除</a><br>
								 
                               
                            </td>
                        </tr><?php endforeach; endif; else: echo "$empty" ;endif; ?>
                    </table>
                </div>
         
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>
<script>
$(".sub-menu").eq(8).show();
$(".sub-menu").eq(8).children("li").eq(0).addClass("on");

function limit(id,price_up,price_down){
	var lid = id;
	var price_up = price_up;
	var price_down = price_down;
	layer.open({
	  title: '设置交易限额',
	  type: 1,
	  skin: 'layui-layer-demo', //样式类名
	  closeBtn: 1, //不显示关闭按钮
	  shift: 2,
	  area: ['300px', '170px'], 
	  shadeClose: true, //开启遮罩关闭
	  content: '<div style="margin-top:15px;text-align:center;"><span>设置交易上限</span><input type="text" name="price_up" value="'+price_up+'" id="price_up"/></div><div style="margin-top:15px;text-align:center;"><span>设置交易下限</span><input type="text" value='+price_down+' name="price_down" id="price_down"/></div><div style="text-align:center;margin-top:15px;"><input type="button" value="确定" onclick="setlimit('+lid+');" style="padding:3px 10px;" /></div>'
	});

};
function setlimit(id){
	$.post("<?php echo U('Currency/savePrice');?>",{id:id,price_up:$("#price_up").val(),price_down:$("#price_down").val()},function(data){
		 if(data<0){
			layer.msg(data.info);
		 }else{
			layer.msg(data.info);
			setTimeout("location.reload()",2000);
		 }
	});
}
</script>