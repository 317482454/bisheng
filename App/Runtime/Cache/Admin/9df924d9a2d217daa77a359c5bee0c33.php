<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
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
        <div class="crumb-list"><i class="icon-font"></i>首页</div>
    </div>
    <div class="result-wrap">
        <div class="result-title">
            <h1>快捷操作</h1>
        </div>
        <div class="result-content">
            <div class="short-wrap">
                <li>当前登录管理员：<?php echo ((isset($admin_user["name"]) && ($admin_user["name"] !== ""))?($admin_user["name"]):'admin'); ?></li>
            </div>
        </div>
    </div>
    <!--<div class="result-wrap">-->
        <!--<div class="result-title">-->
            <!--<h1>当前币种信息</h1>-->
        <!--</div>-->
        <!--<div class="result-content">-->
            <!--<table class="result-tab" width="100%">-->
                <!--<tr>-->
                    <!--<th>货币LOGO</th>-->
                    <!--<th>货币名称</th>-->
                    <!--<th>英文标识</th>-->
                    <!--<th>总市值</th>-->
                    <!--<th>钱包余额</th>-->
                    <!--<th>最新价格</th>-->
                    <!--<th>昨日价格</th>-->
                    <!--<th>24H交易量</th>-->
                    <!--<th>全站交易量</th>-->
                    <!--<th>操作</th>-->
                <!--</tr>-->
                <!--<?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "$empty" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>-->
                    <!--<tr>-->
                        <!--<td><?php if(!empty($vo["currency_logo"])): ?><img  style="height:40px;"src='<?php echo ($vo["currency_logo"]); ?>' /><?php else: ?>暂无图片数据<?php endif; ?></td>-->
                        <!--<td><?php echo ((isset($vo["currency_name"]) && ($vo["currency_name"] !== ""))?($vo["currency_name"]):'暂无'); ?></td>-->
                        <!--<td><?php echo ((isset($vo["currency_mark"]) && ($vo["currency_mark"] !== ""))?($vo["currency_mark"]):'暂无'); ?></td>-->
                        <!--<td>￥<?php echo ((isset($vo["currency_all_money"]) && ($vo["currency_all_money"] !== ""))?($vo["currency_all_money"]):'0.00'); ?></td>-->
                        <!--<td><?php echo ((isset($vo["balance"]) && ($vo["balance"] !== ""))?($vo["balance"]):'0.00'); ?></td>-->
                        <!--<td><?php echo ((isset($vo["new_price"]) && ($vo["new_price"] !== ""))?($vo["new_price"]):'0.00'); ?></td>-->
                        <!--<td><?php echo ((isset($vo["old_price"]) && ($vo["old_price"] !== ""))?($vo["old_price"]):'0.00'); ?></td>-->
                        <!--<td><?php echo ((isset($vo["24H_done_num"]) && ($vo["24H_done_num"] !== ""))?($vo["24H_done_num"]):'0.00'); ?></td>-->
                        <!--<td><?php echo ((isset($vo["all_done_num"]) && ($vo["all_done_num"] !== ""))?($vo["all_done_num"]):'0.00'); ?></td>-->
                        <!--<td>-->
                            <!--<a class="link-update" href="<?php echo U('Currency/add',array('currency_id'=>$vo['currency_id']));?>">查看币种信息</a><br>-->
                            <!--<a class="link-update" href="<?php echo U('Trade/trade',array('currency_id'=>$vo['currency_id']));?>">查看交易记录</a><br>-->
                            <!--<a class="link-update" href="<?php echo U('Trade/orders',array('currency_id'=>$vo['currency_id']));?>">查看委托记录</a>-->
                        <!--</td>-->
                    <!--</tr>-->
                <!--<?php endforeach; endif; else: echo "$empty" ;endif; ?>-->
            <!--</table>-->
        <!--</div>-->
    <!--</div>-->
    <!--<div class="result-wrap">-->
        <!--<div class="result-title">-->
            <!--<h1>全站统计信息</h1>-->
        <!--</div>-->
        <!--<div class="result-content">-->
            <!--<table class="result-tab" width="100%">-->
                <!--<tr>-->
                    <!--<td>网站总收入</td>-->
                    <!--<td><?php echo ((isset($a) && ($a !== ""))?($a):'0'); ?></td>-->
                    <!--<td>网站总支出</td>-->
                    <!--<td><?php echo ((isset($a) && ($a !== ""))?($a):'0'); ?></td>-->
                <!--</tr>-->
                <!--<tr>-->
                    <!--<td>会员总人数</td>-->
                    <!--<td><?php echo ((isset($member) && ($member !== ""))?($member):'0'); ?>人</td>-->
                    <!--<td>众筹总数量</td>-->
                    <!--<td><?php echo ((isset($a) && ($a !== ""))?($a):'0'); ?></td>-->
                <!--</tr>-->
                <!--<tr>-->
                    <!--<td>人民币收入</td>-->
                    <!--<td>￥<?php echo ((isset($a) && ($a !== ""))?($a):'0'); ?></td>-->
                    <!--<td>人民币支出</td>-->
                    <!--<td>￥<?php echo ((isset($a) && ($a !== ""))?($a):'0'); ?></td>-->
                <!--</tr>-->
                <!--<tr>-->
                    <!--<td><?php echo ($config["xnb"]); ?>收入</td>-->
                    <!--<td><?php echo ((isset($a) && ($a !== ""))?($a):'0'); ?></td>-->
                    <!--<td><?php echo ($config["xnb"]); ?>支出</td>-->
                    <!--<td><?php echo ((isset($a) && ($a !== ""))?($a):'0'); ?></td>-->
                <!--</tr>-->
                <!--<tr>-->
                    <!--<td>充值数量</td>-->
                    <!--<td><?php echo ((isset($a) && ($a !== ""))?($a):'0'); ?></td>-->
                    <!--<td>提现数量</td>-->
                    <!--<td><?php echo ((isset($a) && ($a !== ""))?($a):'0'); ?></td>-->
                <!--</tr>-->
            <!--</table>-->
        <!--</div>-->
    <!--</div>-->
    <div class="result-wrap">
        <div class="result-title">
            <h1>服务器信息</h1>
        </div>
        <div class="result-content">
            <table class="result-tab" width="100%">
                <tr>
                    <td width="20%">系统版本</td>
                    <td width="20%"><?php echo php_uname('r');?></td>
                    <td width="20%">服务器操作系统</td>
                    <td width="40%"><?php echo php_uname('s');?></td>
                </tr>
                <tr>
                    <td>运行环境</td>
                    <td><?php echo php_sapi_name();?></td>
                    <td>PHP版本</td>
                    <td><?php echo PHP_VERSION;?></td>
                </tr>
                <tr>
                    <td>MySql版本</td>
                    <td><?php echo mysqlnd;?></td>
                    <td>服务器IP</td>
                    <td><?php echo GetHostByName($_SERVER['SERVER_NAME']);?></td>
                </tr>
                <tr>
                    <td>你的IP</td>
                    <td><?php echo $_SERVER['REMOTE_ADDR'];?></td>
                    <td>服务器端口</td>
                    <td><?php echo $_SERVER['SERVER_PORT'];?></td>
                </tr>
                <tr>
                    <td>绝对路径</td>
                    <td><?php echo $_SERVER['DOCUMENT_ROOT'];?></td>
                    <td>网站域名</td>
                    <td><?php echo $_SERVER['SERVER_NAME'];?></td>
                </tr>
                <tr>
                    <td>清理缓存</td>
                    <td><input type="button" id="button" value="清理缓存"/></td>
                    <input type="hidden" id="type" value="Runtime-Cache"/>
                    <td>网站开发</td>
                    <td><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=275043418&site=qq&menu=yes"><img border="0" src="/Public/Admin/images/QQ.png" alt="点击这里给我发消息" title="点击这里给我发消息"/></a></td>
                </tr>
                <tr>
                    <td>官网地址</td>
                    <td><?php echo $_SERVER['SERVER_NAME'];?></td>
                    <td>版权所有</td>
                    <td><?php echo $config['copyright'];?></td>
                </tr>
            </table>
        </div>
    </div>
    <script>
        $(function(){
            $('#button').click(function(){
                if(confirm("确认要清除缓存？")){
                    var $type=$('#type').val();
                    $.post("<?php echo U('Index/cache');?>",{type:$type},function(data){
                        alert("缓存清理成功");
                    });
                }else{
                    return false;
                }});
        });
    </script>
</div>
<!--/main-->
</div>
</body>
</html>