<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" >
<meta name="renderer" content="webkit">
<meta name="keywords" content=""/>
<meta name="description" content=""/>
<meta property="wb:webmaster" content="8af72a3a7309f0ee">
    <title><?php if(!empty($article)): echo ($article["title"]); ?>-<?php endif; echo ((isset($config["title"]) && ($config["title"] !== ""))?($config["title"]):"虚拟币交易网站"); ?></title>
	<link rel="Shortcut Icon" type="image/x-icon" href="/favicon.ico">
    <link rel="stylesheet" type="text/css" href="/Public/Home/css/base.css">
    <link rel="stylesheet" type="text/css" href="/Public/Home/css/layout.css">
    <link rel="stylesheet" type="text/css" href="/Public/Home/css/subpage.css">
    <link rel="stylesheet" type="text/css" href="/Public/Home/css/user.css">
    <link rel="stylesheet" type="text/css" href="/Public/Home/css/coin.css">
    <link rel="stylesheet" type="text/css" href="/Public/Home/css/zcpc.css">
    <link rel="stylesheet" type="text/css" href="/Public/Home/iconfont/demo.css">
    <link rel="stylesheet" type="text/css" href="/Public/Home/iconfont/iconfont.css">
    <link rel="stylesheet" type="text/css" href="/Public/Home/css/jb_style.css">
    <script src="/Public/Home/js/hm.js">
    </script><script type="text/javascript" src="/Public/Home/js/jquery-1.js"></script>
    <script type="text/javascript" src="/Public/Home/js/downList.js"></script>


    <script type="text/javascript" src="/Public/js/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="/Public/js/jquery-2.1.1.min.js"></script>
    <script src="/Public/js/bootstrap.min.js?v=3.4.0"></script>
    <script type="text/javascript" src="/Public/js/layer/layer.js"></script>
    <script src="/Public/js/jquery.validate.min.js"></script>
    <script src="/Public/js/messages_zh.min.js"></script>
    <script src="/Public/js/base.js"></script>

</head>
<body>
<!--<div class="clearfix phone_top" id="phone_top_div" style="display:none;">
	<div class="left">
		<p class="left phone_logo"><img src="/images/phone_logo01.png"/></p>
		<p class="left phone_title">第一数字货币众筹交易平台</p>
	</div>
	<a href="javascript:hidephone();" class="phone_x">X</a>
</div>-->
<!--top start-->
<div style="background:#f9f9f9; height:30px;">
    <div style="width:1000px; margin:0 auto;">
        <ul class="qqkf left" style="line-height:30px; color:#999;">
            <li class="phone"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($config['qq1']); ?>&site=qq&menu=yes" class="qq_qq"></a><?php echo ((isset($config["qq1"]) && ($config["qq1"] !== ""))?($config["qq1"]):"暂无"); ?></li>
            <li class="phone400"><?php echo ((isset($config["tel"]) && ($config["tel"] !== ""))?($config["tel"]):"暂无"); ?></li>
            <li class="phone_email"><a href="mailto:<?php echo ($config['email']); ?>"><?php echo ((isset($config["email"]) && ($config["email"] !== ""))?($config["email"]):"暂无"); ?></a></li>
            <li>&nbsp;&nbsp;工作日:9-19时 节假日:9-18时</li>
        </ul>
            <?php if(!empty($_SESSION['USER_KEY_ID'])): ?><div class="person right">
                    <a class="left myhome" href="<?php echo U('ModifyMember/modify');?>" style=" height:30px; line-height:30px; margin-right:5px;">
                        <?php echo ($username); ?> </a>
                        
                    <div style="display: none;" class="mywallet_list"><div class="clear"><ul class="balance_list"><h4>可用余额</h4><li><a href="javascript:void(0)"><em style="margin-top: 5px;" class="deal_list_pic_cny"></em><strong>人民币：</strong><span><?php echo ($member["rmb"]); ?></span></a></li></ul><ul class="freeze_list"><h4>委托冻结</h4><li><a href="javascript:void(0)"><em style="margin-top: 5px;" class="deal_list_pic_cny"></em><strong>人民币：</strong><span><?php echo ($member["forzen_rmb"]); ?></span></a></li></ul></div><div class="mywallet_btn_box"><a href="<?php echo U('User/pay');?>">充值</a><a href="<?php echo U('User/draw');?>">提现</a><a href="<?php echo U('User/index');?>">转入</a><a href="<?php echo U('User/index');?>">转出</a><a href="<?php echo U('Entrust/manage');?>">委托管理</a><a href="<?php echo U('Trade/myDeal');?>">成交查询</a></div></div>
                    <span class="left" style="height:30px; line-height:30px; color:#999; margin-right:5px;">(UID: <?php echo (session('USER_KEY_ID')); ?> )</span>
                    <a class="left" href="<?php echo U('Login/loginOut');?>" style="height:30px; line-height:30px; margin:0 5px;">退出</a>
                    <div id="my" class="account left" href="javascript:void(0)" style="z-index:9997; margin-right:5px;">
                        <a class="user_me" href="<?php echo U('User/index');?>">我的账户</a>
                        <ul class="accountList" style="padding: 6px 0px; background: rgb(85, 85, 85) none repeat scroll 0% 0%; border-radius: 5px 0px 5px 5px; display: none;">
                            <!--<li class="accountico no"></li>-->
                            <li><a href="<?php echo U('User/index');?>">我的资产</a></li>
                            <li><a href="<?php echo U('Entrust/manage');?>">我的交易</a></li>
                            <li><a href="<?php echo U('User/zhongchou');?>">我的众筹</a></li>
                            <li style="border-top:1px solid #666;"><a href="<?php echo U('User/pay');?>">人民币充值</a></li>
                            <li><a href="<?php echo U('User/draw');?>">人民币提现</a></li>
                            <li style="border-bottom:1px solid #444;"><a href="<?php echo U('User/index');?>">充币提币</a></li>
                            <li><a href="<?php echo U('User/updatePassword');?>">修改密码</a></li>
                            <li><a href="<?php echo U('User/sysMassage');?>">系统消息<?php if($newMessageCount): ?><span class="messagenum"><?php echo ($newMessageCount); ?></span><?php endif; ?></a></li>
                        </ul>
                    </div>
                </div><?php endif; ?>
        </if>
		<?php if(empty($_SESSION['USER_KEY_ID'])): ?><div class="loginArea right" style=" margin-right:5px;">
            	<a href="<?php echo U('Login/index');?>" style="color:#f60; font-size:14px;">登录</a>
            	<span class="sep">&nbsp;|&nbsp;</span>
            	<a href="<?php echo U('Reg/reg');?>" style="color:#f60; font-size:14px;">注册</a>
        		</div><?php endif; ?>
    </div>
</div>
<div class="top">
    <div class="wapper clearfix">
        <h1 class="left"><a href="<?php echo U('Index/index');?>"><img style=" width:280px; height:70px;" src="<?php echo ($config["logo"]); ?>" alt="虚拟币" title="虚拟币"></a></h1>
        <ul class="nav right" style="z-index:9995;">
            <li><a href="<?php echo U('Index/index');?>">首页</a></li>
            <li><a href="<?php echo U('Orders/currency_trade');?>">交易大厅</a></li>
            <li><a href="<?php echo U('Zhongchou/index');?>">认购中心<!--hr--></a></li>
            <li><a href="<?php echo U('Safe/index');?>">用户中心</a></li>
            <li><a href="<?php echo U('Help/index',array('id'=>60));?>">帮助中心</a></li>
            <li><a href="<?php echo U('Art/index',array('ramdon_id'=>'1'));?>">最新动态</a></li>
            <li><a href="<?php echo U('Market/index');?>">行情中心</a></li>
            <li><a href="<?php echo U('Dow/index');?>">下载中心</a></li>
        </ul>
    </div>
</div>
<div class="pclxfsbox"> 
		<ul> 
			<li id="opensq">
				<i class="pcicon1 iscion6" ></i>
				<div class="pcicon1box">
					<div class="iscionbox" >
						<p>在线咨询</p>
						<p><?php echo ((isset($config['worktime']) && ($config['worktime'] !== ""))?($config['worktime']):"暂无"); ?></p>
					</div>
					<i></i>
				</div>
			</li>
			<li> 
				<i class="pcicon1 iscion1"></i>
				<div class="pcicon1box">
					<div class="iscionbox">
						<p><img src="<?php echo ($config['weixin']); ?>" alt="投筹网微信公众号" width="108"></p>
						<p><?php echo ((isset($config["name"]) && ($config["name"] !== ""))?($config["name"]):"虚拟网"); ?>微信群</p>
					</div>
					<i></i>
				</div>
			</li>
			<li>
				<i class="pcicon1 iscion2"></i>
				<div class="pcicon1box">
					<div class="iscionbox">
						<p><?php echo ((isset($config['tel']) && ($config['tel'] !== ""))?($config['tel']):"暂无"); ?></p>
						<p><?php echo ((isset($config["name"]) && ($config["name"] !== ""))?($config["name"]):"虚拟网"); ?></p>
					</div>
					<i></i>
				</div>
			</li>
           <li>
				<i class="pcicon1 iscion3"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($config['qq1']); ?>&site=qq&menu=yes"></a></i>
				<div class="pcicon1box">
					<div class="iscionbox">
						<p><?php echo ((isset($config["qq1"]) && ($config["qq1"] !== ""))?($config["qq1"]):"暂无"); ?></p>
						<p><?php echo ((isset($config["name"]) && ($config["name"] !== ""))?($config["name"]):"虚拟网"); ?>QQ在线客服1</p>
					</div>
					<i></i>
				</div>
			</li>
            <li>
				<i class="pcicon1 iscion3" style="background:url(/Public/Home/images/kefu2.png) no-repeat #9b9b9b;background-position:-144px 11px;"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($config['qq2']); ?>&site=qq&menu=yes"></a></i>
				<div class="pcicon1box">
					<div class="iscionbox">
						<p><?php echo ((isset($config["qq2"]) && ($config["qq2"] !== ""))?($config["qq2"]):"暂无"); ?></p>
						<p><?php echo ((isset($config["name"]) && ($config["name"] !== ""))?($config["name"]):"虚拟网"); ?>QQ在线客服2</p>
					</div>
					<i></i>
				</div>
			</li>
            <li>
				<i class="pcicon1 iscion3" style="background:url(/Public/Home/images/kefu3.png) no-repeat #9b9b9b;background-position:-144px 11px;"><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($config['qq3']); ?>&site=qq&menu=yes"></a></i>
				<div class="pcicon1box">
					<div class="iscionbox">
						<p><?php echo ((isset($config["qq3"]) && ($config["qq3"] !== ""))?($config["qq3"]):"暂无"); ?></p>
						<p><?php echo ((isset($config["name"]) && ($config["name"] !== ""))?($config["name"]):"虚拟网"); ?>QQ在线客服3</p>
					</div>
					<i></i>
				</div>
			</li>
			
			<li>
				<i class="pcicon1 iscion4"></i>
				<div class="pcicon1box">
					<div class="iscionbox">
						<p>返回顶部</p>
					</div>
					<i></i>
				</div>
			</li>
		</ul>
	</div>
    <script type="text/javascript"> 
		$(function(){
			$(".pcicon1").on("mouseover",function(){
				$(this).addClass("lbnora").next(".pcicon1box").css({"width":"148px"});
			}).on("mouseout",function(){
				$(this).removeClass("lbnora").next(".pcicon1box").css("width","0px");
			});
			$(".iscion4").on("click",function(){
				$("html, body").animate({
					scrollTop: 0
				})
			});

			var objWin;
			$("#opensq").on("click",function(){
				var top = window.screen.height/2 - 250;
				var left = window.screen.width/2 - 390;
				var target = "http://p.qiao.baidu.com//im/index?siteid=8050707&ucid=18622305"; 
				var cans = 'width=780,height=550,left='+left+',top='+top+',toolbar=no, status=no, menubar=no, resizable=yes, scrollbars=yes' ;

				if((navigator.userAgent.indexOf('MSIE') >= 0)&&(navigator.userAgent.indexOf('Opera') < 0)){
						//objWin = window.open ('','baidubridge',cans) ; 
						if (objWin === undefined || objWin === null || objWin.closed) { 
							objWin = window.open (target,'baidubridge',cans) ; 
						}else { 
							objWin.focus();
						}
				}else{
					var win = window.open('','baidubridge',cans );
					if (win.location.href == "about:blank") {
					    //窗口不存在
					    win = window.open(target,'baidubridge',cans);
					} else {
					    win.focus();
					}
				}
				return false;

			})
		})
		
	</script>
<!--top end-->

<script>
$(".myhome").hover(function(){
	$(".mywallet_list").show();	
},function(){
	$(".mywallet_list").hover(function(){
		$(".mywallet_list").show();	
	},function(){
		$(".mywallet_list").hide();	
	});
	$(".mywallet_list").hide();
});
</script>
<div id="main">
	<div class="main_box">
		<div id="my_menu" class="sdmenu left">
		<div>
			<p><i class="iconfont">&#xe61e;</i>&nbsp;我的资产</p>
						<a href="<?php echo U('User/index');?>" class="menu"><b class="ic-uc"></b><i class="iconfont">&#xe6f6;</i>&nbsp;&nbsp;账户资产</a>
                        <a href="<?php echo U('Finance/index');?>" class="menu13"><b class="ic-uc"></b><i class="iconfont">&#xe93e;</i>&nbsp;&nbsp;财务日志</a>
						<a href="<?php echo U('FillByBank/index');?>" class="menu15"><b class="ic-uc"></b><i class="iconfont">&#xe602;</i>&nbsp;&nbsp;在线网银支付</a>
                        <a href="<?php echo U('Fill/index');?>" class="menu138"><b class="ic-uc"></b><i class="iconfont">&#xe93e;</i>&nbsp;&nbsp;网银支付日志</a>
					</div>
		<div style="position:relative;">
			<p><i class="iconfont">&#xe643;</i>&nbsp;我的交易</p>
						<a href="<?php echo U('Entrust/manage');?>" class="menu2"><b class="ic-uc"></b><i class="iconfont">&#xe616;</i>&nbsp;&nbsp;委托管理</a>
						<a href="<?php echo U('Trade/myDeal');?>" class="menu3"><b class="ic-uc"></b><i class="iconfont">&#xe65b;</i>&nbsp;&nbsp;我的成交</a>
						<a href="<?php echo U('Entrust/history');?>" class="menu4"><b class="ic-uc"></b><i class="iconfont">&#xe62d;</i>&nbsp;&nbsp;委托历史</a>
						
						<a href="<?php echo U('User/zhongchou');?>" class="menu6"><b class="ic-uc"></b><i class="iconfont">&#xe60b;</i>&nbsp;&nbsp;我的众筹</a>
					</div>
                    <div>
			<p><i class="iconfont">&#xe60e;</i>&nbsp;安全中心</p>
            		
						<!--<a href="<?php echo U('Safe/index');?>" class="menu11"><b class="ic-uc"></b><i class="iconfont">&#xe649;</i>&nbsp;&nbsp;安全中心</a>-->
                        <a href="<?php echo U('User/updatePassword');?>" class="menu8"><b class="ic-uc"></b><i class="iconfont">&#xe638;</i>&nbsp;&nbsp;修改密码</a>
                        <a href="<?php echo U('User/updateMassage');?>" class="menu7"><b class="ic-uc"></b><i class="iconfont">&#xe649;</i>&nbsp;&nbsp;个人信息</a>
						<!--<a href="<?php echo U('Safe/mobilebind');?>" class="menu12"><b class="ic-uc"></b><i class="iconfont">&#xe609;</i>&nbsp;&nbsp;手机绑定</a>-->
					  </div>
				  <div>
			<p><i class="iconfont">&#xe611;</i>&nbsp;账户中心</p>
			            <a href="<?php echo U('User/pay');?>" class="menu12"><b class="ic-uc"></b><i class="iconfont">&#xe620;</i>&nbsp;&nbsp;人民币充值</a>
			            <a href="<?php echo U('User/draw');?>" class="menu14"><b class="ic-uc"></b><i class="iconfont">&#xe6f0;</i>&nbsp;&nbsp;人民币提现</a>
            		    <a href="<?php echo U('Safe/index');?>" class="menu11"><b class="ic-uc"></b><i class="iconfont">&#xe660;</i>&nbsp;&nbsp;用户中心</a>
						<a href="<?php echo U('User/invit');?>" class="menu9"><b class="ic-uc"></b><i class="iconfont">&#xe602;</i>&nbsp;&nbsp;邀请好友</a>
						<a href="<?php echo U('User/sysMassage');?>" class="menu10"><b class="ic-uc"></b><i class="iconfont">&#xe664;</i>&nbsp;&nbsp;系统消息<?php if($newMessageCount): ?><span class="messagenum"><?php echo ($newMessageCount); ?></span><?php endif; ?></a>



					  </div>
		</div>
		<div class="raise right clearfix">
            <link rel="stylesheet" href="/Public/Home/css/layer.css">
<script src="/Public/Home/js/base64.js"></script>
<script src="/Public/Home/js/Fnc.js"></script>
<style>
.zzzn a{ display:block; float:right; margin:20px; padding:8px 20px; color:#fff; background:#82b52d; font-size: 20px; border-radius:30px; text-decoration:none;}
.zzzn a:hover{ background:#90c13e;}
.ul_recharge_padding{padding:20px 0 0px 160px;}
.recharge_tips{color:#f00; line-height:40px; margin:0;}
.recharge_left_input{margin-left:16px;}
.help_link{ line-height:40px; color:#2471cb; text-decoration:underline; font-size:14px;}
.help_link:hover{ color:#f30;}
.help_link1{ color:#;}
.ebank_pay{font-family: Arial,"微软雅黑"; width:260px; height:40px; color:#fff; font-size:16px; line-height: 40px; text-align: center; margin:0 auto; background:#f60; display: block; text-decoration: none; border: 0;}
.ebank_pay:hover{ background: #f70; color:#fff; text-decoration: none; cursor: pointer;}

.box_close{ height:24px; line-height:24px; width:24px; text-align:center; font-size:14px; color:#999; border-radius:20px; position:absolute; top:10px; right:10px; text-decoration:none; font-family:Arial;}
.box_close:hover{ color:#fff; background:#f00; text-decoration:none;}
.choice_ebank .note1{ width:100px; text-align:right; display:block; float:left; margin-right:5px; line-height:40px;}
.layui-layer-content{text-align:center; margin-top:80px;font-size: 20px;color: #666;text-align: center;}
.layui-layer-content .yes {
    width: 160px;
    height: 40px;
	margin-top:80px;
    text-align: center;
    line-height: 40px;
    font-size: 14px;
	background: #4b7100;
    color: #fff;
	border:none;
    text-decoration: none;}
.fkbtn{
    width: 80px;
    height: 30px;
    color: #f60;
	border:1px #f60 solid;
    border-radius: 3px;
    font-size: 12px;
    display: inline-block;
    line-height: 30px;
    text-align: center;
}
.fkbtn:hover{ color:#f60 !important;}

</style>
	<name id="realname" data="<?php echo ((isset($member['name']) && ($member['name'] !== ""))?($member['name']):'暂无'); ?>"></name>
<div class="ybc_list">
    <div class="ybcoin clearfix">
        <h2 class="left">充值人民币CNY[<span style="color:red">谨防诈骗</span>]</h2>
        <p class="right recharge_tips" style="margin-bottom:0;"><a href="<?php echo U('Help/index',array('article_id'=>'59'));?>" class="help_link">银行卡汇款帮助？</a></p>
    </div>
    <div class="support_ybc pass_ybc ybc_optimize" id="verifyon">
<!--        <ul id="pass_change">-->
<!--            <li class="selectTag ebank_change"><a onclick="selectTag('tagContent0',this);Ebank.platform('bank');" href="javascript:void(0)" class="">银行卡汇款</a></li>-->
<!--             <li class="ebank_change"><a onclick="selectTag('tagContent0',this);Ebank.platform('alipay');" href="javascript:void(0)" class="middle" class="ebank_pay">支付宝汇款</a></li>-->
<!--            <li class="note ebank_change"><a onclick="selectTag('tagContent1',this)" href="javascript:void(0)" class="">从元宝理财转账</a></li>-->
<!--            <div class="clear"></div>-->
<!--        </ul>-->

        <div id="tagContent" class="passContent">

            <!-- bank/alipay -->
            <div class="tagContent selectTag" id="tagContent0">
               <ul class="ybc_optimize_con ul_recharge_padding" id="rollout2" style="margin-top:30px;">
                   <!--  <li class="clearfix">
                        <span class="note1" style="color:#333;font-size:12px; margin-left: 30px;">选择汇款额度</span>
                        <input type="radio" name="bank" id="choice_money_upper" onclick="Ebank.choiceMoney(1)" checked="checked" style="vertical-align:bottom; height:40px;">
                        <label for="choice_money_upper" class="tibi_l" onclick="Ebank.choiceMoney(1)" style="font-size:16px; line-height:40px;">大于等于5000元&nbsp;&nbsp;</label>
                        <input type="radio" name="bank" id="choice_money_lower" onclick="Ebank.choiceMoney(0)" style="vertical-align:bottom; height:40px;">
                        <label for="choice_money_lower" class="tibi_l" onclick="Ebank.choiceMoney(0)" style="font-size:16px; line-height:40px;">小于5000元</label>
                    </li> -->
                    <li style="margin-top:0; position:relative;" class="choice_ebank">
                        <span class="note1" style="color:#333;font-size:12px;">金额</span>
                        <input name="number" id="over_num" class="money num_three" onkeyup="value=value.replace(/[^\d]/g,'');notfee();" autocomplete="off" maxlength="10" type="text">
                        <span class="note" style="margin-left: 5px;">最小充值金额<?php echo ((isset($config['pay_min_money']) && ($config['pay_min_money'] !== ""))?($config['pay_min_money']):'0'); ?>元。</span>
                        <input id="rand_num" value="0" type="hidden">
                    </li>
                    <li class="num_money choice_ebank" style="margin-left:105px; position:relative;">
                        <span class="left">汇款金额：</span>
                        <font id="ure" class="left" color="red"></font>
                        <span class="note" style="position:absolute; top:0; right:-270px; color:#f00; font-size:14px; line-height:20px;">请严格按照汇款金额汇款，汇款金额的后<br>3位是为了保证即时到账系统自动分配的。</span>
                    </li>

                    <li style="margin-top:10px; position:relative;" class="choice_ebank">
                        <span class="note1" style="color:#333;font-size:12px;" id="recharge_name">汇款人姓名</span>
						<input id="recharge_name_yes" class="money num_three" value="<?php echo ((isset($member['name']) && ($member['name'] !== ""))?($member['name']):'暂无'); ?>" autocomplete="off" readonly="readonly" type="text">
                        <span class="note" style="margin-left: 5px;">系统只接受您实名账户充值</span>
                    </li>

                    <li style="margin-top:10px; position:relative;" class="choice_ebank">
                        <span class="note1 recharge_left_input" style="color:#333;font-size:12px; margin-left:0;" id="recharge_account">汇出银行</span>
                        <select class="money num_three" id="bankOut" name="bankOut" style="width:259px; height:40px;" >
                            <option selected="selected" value="请选择银行">请选择银行</option>
                            <option value="支付宝">支付宝</option>
                            <option value="招商银行">招商银行</option>
                            <option value="中信银行">中信银行</option>
                            <option value="光大银行">光大银行</option>
                            <option value="兴业银行">兴业银行</option>
                            <option value="平安银行">平安银行</option>
                            <option value="华夏银行">华夏银行</option>
                            <option value="邮政储蓄">邮政储蓄</option>
                            <option value="广发银行">广发银行</option>
                            <option value="浦发银行">浦发银行</option>
                            <option value="北京银行">北京银行</option>
                            <option value="上海银行">上海银行</option>
                            <option value="杭州银行">杭州银行</option>
                            <option value="宁波银行">宁波银行</option>
                            <option value="民生银行">民生银行</option>
                            <option value="工商银行">工商银行</option>
                            <option value="农业银行">农业银行</option>
                            <option value="建设银行">建设银行</option>
                            <option value="交通银行">交通银行</option>
                            <option value="中国银行">中国银行</option>
                            <option value="其它银行">其它银行</option>
                        </select>
                        <span class="note" style="position:absolute; top:0; color:#f00; font-size:13px; line-height:20px;">请注意：部分银行周末汇款，不能及时到账。支付宝转账请备注ID号，否则无法及时到账。</span>
                    </li>

                    <li style="margin-top:10px; position:relative;" class="choice_ebank">
                        <span class="note1 recharge_left_input" style="color:#333;font-size:12px; margin-left:0;" id="recharge_account">汇款银行账号</span>
                        <input id="recharge_account_yes" class="money num_three"  type="text">
                        <span class="note" style="position:absolute; top:0; right:38px; line-height:20px;">请准确填写汇款银行账号，否则不能到账，<br>需要人工联系客服排队处理，时间无法保证。</span>
                    </li>

                    <li style="color:#f00; font-size:16px; margin-top:20px; margin-left:99px;" class="choice_ebank"></li>

                    <li>
                    <a href="javascript:void(0);" onclick="recharge()" class="btn_turn" id="choice_submit" style="margin-left:105px;">生成汇款订单</a></li>
                </ul>

                <div class="turns truns_upper">
                    <h2><?php echo ($art['title']); ?></h2>
                <?php echo ($art["content"]); ?> </div>
               <!--  <div class="turns turns_lower" style="display: none;">
                    <h2 style="margin-top:80px;">充值必看步骤</h2>
                    <p style="margin-bottom:0; color:#f00; font-size:14px;">1. 元宝理财和元宝网账户互通，请直接登录，使用第三方支付渠道（连连支付、宝付）进行充值。</p>
                    <p style="color:#f00; font-size:14px;">2. 在元宝理财充值成功后，请返回元宝网，并选择“从元宝理财提现”，将资金转入元宝网即可正常使用。</p>
                </div> -->
              <!--/* <div style=" width:750px; margin-left:30px;color:#f00; font-size:14px;">
				汇款成功后，请及时将汇款信息（进盟网账号、
				手机号码、
				汇款人姓名、
				汇款时间、
				汇款金额、
				汇款成功截图证明、）发送邮件到cz@jmcoin.net，进盟客服人员将会在48小时之内尽快手工处理到账，请耐心等待。
				</div>*/-->
               <!--  <div style=" width:750px; margin-left:50px; color:#f60;">
				汇款成功后，请及时将汇款信息（
                <br>进盟网账号:
				<br>手机号码:
				<br>汇款人姓名:
				<br>汇款时间:
				<br>汇款金额:
				<br>汇款成功截图证明:
                <br>）发送邮件到cz@jmcoin.net，进盟客服人员将会在48小时之内尽快手工处理到账，请耐心等待。
				</div>-->
            </div>

            <!-- licai -->
            <div class="tagContent selectTag" id="tagContent1" style="display:none;">
                <form class="form-horizontal" onsubmit="return false;" onkeydown="if (event.keyCode == 13) {return false;}">
                    <ul class="ybc_con" id="rollout" style="padding:20px 0 0 160px;">
                        <li>
                            <label style="width:100px;"><span class="redstar">*&nbsp;</span>转账金额：</label>
                            <input style="display:none;"><!-- for disable autocomplete on chrome -->
                            <input name="number" onkeyup="value=value.replace(/[^\d.]/g,'')" value="0" autocomplete="off" style="width:260px;" type="text">
                            <span class="note">不能小于10元</span>
                        </li>
                        <li>
                            <label style="width:100px;"><span class="redstar">*&nbsp;</span>交易密码：</label>
                            <input style="display:none;"><!-- for disable autocomplete on chrome -->
                            <input name="pwdtrade" autocomplete="off" style="width:260px;" type="password">
                            <span class="note">请输入交易密码</span> </li>
                        <li>
                            <label style="width:100px;">&nbsp;</label>
                            <input class="queding" id="submit_recharge" value="确定" style="border:0; height:42px; line-height:40px; width:262px; font-family:'Microsoft Yahei';" onclick="Ebank.fromDai();" type="submit">
                        </li>
                    </ul>
                </form>
                <div class="turns">
                    <h2>使用说明</h2>
                    <p style="margin-bottom:0;">1. 从元宝理财同名账户提现到元宝网。</p>
                    <p style="margin-bottom:0;">2. 即时到账。</p>
					<p>3. 通过元宝理财“第三方支付”充值CNY更便捷，多家银行即时到账；可提现到元宝网使用。</p>
                </div>
            </div>

        </div>
    </div>
</div>

<!-- exchange_cny list start-->

<div class="ybc_list">
    <div class="ybcoin ">
        <h2 class="left">充值记录</h2>
        <p class="right" style="font-size:14px; color:#f00; line-height:40px; margin-bottom:0;">超过3个小时的汇款订单将失效，请重新生成汇款订单并汇款。<a href="<?php echo U('Help/index?id=62');?>" class="help_link">充值不到账如何处理？</a></p>
        <div class="clear"></div>
    </div>
</div>
<table class="raise_list" style="border:1px solid #e1e1df;" align="center" border="0" cellpadding="0" cellspacing="0">
    <thead>
        <tr>
            <th>记录ID</th>
            <th>转入渠道</th>
            <th>数量</th>
            <th>发送时间</th>
            <th>状态</th>
        </tr>
    </thead>
    <tbody>
		<?php if(is_array($list)): $key = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($key % 2 );++$key;?><tr>
			<td><?php echo ($key); ?></td>
			<td><?php if(($vo["type"]) == "1"): ?>人工充值<?php else: ?>网银充值<?php endif; ?></td>
			<td><?php echo ((isset($vo["count"]) && ($vo["count"] !== ""))?($vo["count"]):0); ?></td>
			<td><?php echo (date('Y-m-d H:i:s',$vo["add_time"])); ?></td>
			<td><?php if(($vo["status"]) == "请付款"): ?><a class="fkbtn" onclick='showPay(<?php echo ((isset($vo["count"]) && ($vo["count"] !== ""))?($vo["count"]):0); ?>)'><?php else: ?><a class="fkbtn"><?php endif; echo ((isset($vo["status"]) && ($vo["status"] !== ""))?($vo["status"]):0); ?></a></td>
			</tr><?php endforeach; endif; else: echo "" ;endif; ?>
    </tbody>
</table>
<div class="page" style=" min-width:200px !important; float:right;">
                    <?php echo ($page); ?>
              </div>
<!-- exchange_cny list end -->

<!-- recharge alert start -->
<style type="text/css">
.ybc_chongzhi_tc{width: 810px; height: 520px; border:1px #ddd solid;z-index:9999; position: fixed;left: 50%; top: 50%; margin: -300px 0 0 -405px; background: #fff; z-index: 9999;}
.ybc_chongzhi_tc_tittle{width: 770px; height: 80px;padding: 0 20px 0 20px; text-align: center; }
.ybc_chongzhi_tc_tittle h2{ color:#666; text-align:left; font-size:24px; height:80px; line-height:80px; }
.ybc_chongzhi_tc_main{width: 810px;height: 200px; background-color:#ffffc9; padding: 30px 0px; }
.ybc_chongzhi_tc_tittle_img{margin-top: 26px;width: 28px; height:28px;background: url("/images/close.png") left bottom no-repeat;}
.ybc_chongzhi_tc_tittle_img:hover{margin-top: 26px;width: 28px; height:28px;background: url("/images/close.png") left top no-repeat;cursor:pointer}
.ybc_chongzhi_tc_main h3{ color:#333; text-align:center; font-size:20px;  line-height:30px; }
.ybc_chongzhi_tc_main .hs{ color:#ff0000; text-align:center; font-size:20px; line-height:30px; }
.ybc_chongzhi_tc_main li span{/*width: 300px; text-align: right;*/ float: left; color:#333;font-size:16px;}
.ybc_chongzhi_tc_main li{ font-size:14px; color:#333; height:30px; line-height:30px;}
.ybc_chongzhi_tc_tishi h3{color:#ff0000; text-align:center; font-size:25px; ; line-height:60px;}
.ybc_chongzhi_tc_tishi p{color:#ff0000; text-align:left; font-size:16px; ; line-height:24px; padding-left: 130px;}
.ybc_chongzhi_tc_tishi_bz{width: 770px; height: 80px;padding: 0 20px 0 20px; line-height: 80px; font-size:18px; color: #666;}
.ybc_chongzhi_tc_tishi span{width: 1px;padding: 0px 2px; border-right: 1px #ddd solid; height: 18px; margin-right: 8px;}
.box_bg2{  width: 100%;  height: 100%;  background: #000; filter: Alpha(opacity=60); -moz-opacity: 0.6; -khtml-opacity: 0.6; opacity: 0.6; position: absolute;  z-index: 9998;  position: fixed;  left: 0; top: 0;}

.special_note{ width:480px; height:320px; background:#ffffca; border:1px solid #fbd163; position:fixed; top:50%; margin-top:-161px; left:50%; margin-left:-241px; z-index:9999;}
.special_note h2{ color:#f60; font-size:24px; text-align:center; height:60px; line-height:60px;}
.special_note p{ font-size:16px; line-height:28px; padding:0 40px; margin-bottom:10px; text-indent:2em; color:#333;}
.special_note .yes_no .yes,.special_note .yes_no .no{ width:160px; height:40px; border:0; margin:10px 20px; cursor:pointer; color:#fff; font-family:'Microsoft Yahei'; font-size:14px;}
.special_note .yes_no{ width:400px; margin:0 auto;}
.special_note .yes_no .yes{ background:#690; color:#fff;}
.special_note .yes_no .yes:hover{ background:#4b7100;}
.special_note .yes_no .no{ background:#f00; color:#fff;}
.special_note .yes_no .no:hover{ background:#ba0000;}
.ybc_chongzhi_tc_tittle_img {
    margin-top: 26px;
    width: 28px;
    height: 28px;
    background: url("/Public/Home/images/close.png") left bottom no-repeat;
}
.wid{ width:170px; overflow:hidden;}
.pad{ padding-left:38px;}
</style>

<div id="recharge_alert_bank" style="display:none;">
<div class="box_bg2"></div>
<div class="ybc_chongzhi_tc">
    <div class="ybc_chongzhi_tc_tittle">
        <h2 class="left clearfix" id="recharge_alert_title"></h2>
        <div id="recharge_alert_bank_close"><a class="ybc_chongzhi_tc_tittle_img  right clearfix "></a></div>
    </div>
	
    <div class="ybc_chongzhi_tc_main">
		
        <h3 style=" padding-bottom:15px;">请您打开你的<span class="hs phone_bank_and_net"></span><br>按照汇款金额<span class="hs recharge_html_num"></span></h3>
        <div style=" margin:0 auto;">
        <ul style=" width:640px; height:120px; margin-left:100px;">
            <?php if(empty($bank[1]['bank_adddress'])): ?><!--居中-->
            <div style=" float:left; margin-left:180px !important;">
            <li class="pad"><span>向<?php echo ((isset($bank[0]['bank_name']) && ($bank[0]['bank_name'] !== ""))?($bank[0]['bank_name']):'暂无'); ?>汇款</li>
            <li class="pad"><span>收款人：</span><?php echo ((isset($bank[0]['bank_name']) && ($bank[0]['bank_name'] !== ""))?($bank[0]['bank_name']):'暂无'); ?></li>
            <li class="pad"><span>收款人账号：</span><?php echo ((isset($bank[0]['bank_no']) && ($bank[0]['bank_no'] !== ""))?($bank[0]['bank_no']):'暂无'); ?></li>
            <li class="pad"><span>收款人开户行：</span><span class="wid"><?php echo ((isset($bank[0]['bank_adddress']) && ($bank[0]['bank_adddress'] !== ""))?($bank[0]['bank_adddress']):'暂无'); ?></span></li>	
            </div><?php endif; ?>
            <!--居中-->
        	<?php if(!empty($bank[1]['bank_adddress'])): ?><div style=" float:left;">
            <li class="pad"><span>向<?php echo ((isset($bank[0]['bank_name']) && ($bank[0]['bank_name'] !== ""))?($bank[0]['bank_name']):'暂无'); ?>汇款</li>
            <li class="pad"><span>收款人：</span><?php echo ((isset($bank[0]['bank_name']) && ($bank[0]['bank_name'] !== ""))?($bank[0]['bank_name']):'暂无'); ?></li>
            <li class="pad"><span>收款人账号：</span><?php echo ((isset($bank[0]['bank_no']) && ($bank[0]['bank_no'] !== ""))?($bank[0]['bank_no']):'暂无'); ?></li>
            <li class="pad"><span>收款人开户行：</span><span class="wid"><?php echo ((isset($bank[0]['bank_adddress']) && ($bank[0]['bank_adddress'] !== ""))?($bank[0]['bank_adddress']):'暂无'); ?></span></li>	
            <!--<div style="border-bottom:1px #ccc dashed;"></div>		-->
            </div>	
          
            <div style=" float:left;">
          	<li class="pad"><span>向<?php echo ((isset($bank[1]['bank_name']) && ($bank[1]['bank_name'] !== ""))?($bank[1]['bank_name']):'暂无'); ?>汇款</li>
            <li class="pad"><span>收款人：</span><?php echo ((isset($bank[1]['bank_name']) && ($bank[1]['bank_name'] !== ""))?($bank[1]['bank_name']):'暂无'); ?></li>
            <li class="pad"><span>收款人账号：</span><?php echo ((isset($bank[1]['bank_no']) && ($bank[1]['bank_no'] !== ""))?($bank[1]['bank_no']):'暂无'); ?></li>
            <li class="pad"><span>收款人开户行：</span><span class="wid"><?php echo ((isset($bank[1]['bank_adddress']) && ($bank[1]['bank_adddress'] !== ""))?($bank[1]['bank_adddress']):'暂无'); ?></span></li>	
            <!--<div style="border-bottom:1px #ccc dashed;"></div>		-->
            </div><?php endif; ?>
            <div class="clear"></div>
            <li style="font-size:14px; color:#f00; padding-left:5px;"><span style="font-size:18px;">汇款金额：</span><strong style="font-size:18px;" class="recharge_html_num"></strong>（汇款时请严格按照此金额转账，支付宝转账请备注ID号，否则不能到账）</li>
        </ul>
        </div>
    </div>
	
    <div class="ybc_chongzhi_tc_tishi">
        <h3 style="text-align: left; margin-left: 100px;">注意</h3>
        <p>1、本系统非自动扣款，请通过您的<font class="phone_bank_and_net"></font>汇款！<br>
            2、如您已向<?php echo ((isset($bank[0]['bank_name']) && ($bank[0]['bank_name'] !== ""))?($bank[0]['bank_name']):'暂无'); if(!empty($bank[1]['bank_name'])): ?>或<?php echo ((isset($bank[1]['bank_name']) && ($bank[1]['bank_name'] !== ""))?($bank[1]['bank_name']):'暂无'); endif; ?>汇款<font class="recharge_html_num"></font>"，系统在收到汇款后20分钟内入账。</p>
        <div class="ybc_chongzhi_tc_tishi_bz">
            <div class="left clearfix"><a href="<?php echo U('Help/index',array('article_id'=>'59'));?>" target="_blank" class="help_link">银行卡汇款帮助</a></div>
            <div class="right clearfix"><a href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($config['qq1']); ?>&site=qq&menu=yes" class="qq_qq help_link">联系客服QQ</a></div>
        </div>
    </div>
</div>
</div>
<!-- recharge alert end -->

<div>
    <!-- <button class="ebank_pay" onclick="Ebank.licai()" style="margin-top:160px;">去元宝理财充值</button> -->
    <div class="ebank_box_common" style=" width:100%; height:100%; background:#000; filter: Alpha(opacity=60); -moz-opacity: 0.6; -khtml-opacity: 0.6; opacity: 0.6; position:absolute; z-index:9998; position:fixed; left:0; top:0; z-index: 9998;  display:none;">
	</div>
</div>

<script type="text/javascript" src="/Public/Home/js/tab2.js"></script>
<script src="/Public/Home/js/layer.js"></script>
		</div>
		<div class="clear"></div>
	</div>
</div>   
<script>

	function closewin(){
		$(".layui-layer-shade").remove();
		$(".layui-layer").remove();
	}
	function notfee(){
		if($("#over_num").val()!=""){
			$("#ure").text((parseInt($("#over_num").val(),10)+<?php echo ($fee); ?>).toFixed(3));
		}else{
			$("#ure").text("");
		}
	}
function recharge() {
    var min_num=<?php echo ($config["pay_min_money"]); ?>;
    var max_num=<?php echo ($config["pay_max_money"]); ?>;
	var fee = <?php echo ($fee); ?>;
	if (this.choice_money == 0) {
        // window.open("http://yuanbao.com/user_ebank");
        $('.ebank_box_common').show();
        return false;
    }

    // 姓名
    //var recharge_name_yes = $('#recharge_name_yes').val();
    var recharge_name_yes = $('#realname').attr('data');

    if (!(/[\u4E00-\u9FA5]{2,5}(?:·[\u4E00-\u9FA5]{2,5})*/).test(recharge_name_yes)) {
    //if (!(/^[\u4e00-\u9fa5]{2,10}$/).test(recharge_name_yes)) {

        //Layer.alert('请输入正确的汇款人姓名');
		layer.open({
			type: 1,
			skin: 'layui-layer-demo', //样式类名
			closeBtn: 0, //不显示关闭按钮
			shift: 2,
			shadeClose: true, //开启遮罩关闭
			content: '<div>请输入正确的汇款人姓名</div><div style="text-align:center"><button type="button" class="yes" onclick="closewin()">确定</button>',
			area: ['420px', '280px'], //宽高
		});
        return false;

    }

    // 银行卡号
    var recharge_account_yes = $('#recharge_account_yes').val();
	//alert(recharge_account_yes.length);
	
    if (recharge_account_yes == '' || recharge_account_yes.length < 11 ||  recharge_account_yes.length > 20) {

        //Layer.alert('请输入正确的汇款银行账号');
		layer.open({
			type: 1,
			title: false,
			skin: 'layui-layer-demo', //样式类名
			closeBtn: 0, //不显示关闭按钮
			shift: 2,
			shadeClose: true, //开启遮罩关闭
			content: '<div>请输入正确的汇款银行账号12-20位字符</div><div><button type="button" class="yes" onclick="closewin()">确定</button>',
			area: ['420px', '280px'], //宽高
		});

        return false;

    }
	
	// 汇出银行
	var bankName = $('#bankOut').val();
	if(bankName == '请选择银行'){
		layer.open({
			type: 1,
			title: false,
			skin: 'layui-layer-demo', //样式类名
			closeBtn: 0, //不显示关闭按钮
			shift: 2,
			shadeClose: true, //开启遮罩关闭
			content: '<div>请选择汇出银行</div><div><button type="button" class="yes" onclick="closewin()">确定</button>',
			area: ['420px', '280px'], //宽高
		});

		return false;
	}
	
    // 充值金额
    var over_num = $('#over_num').val();
    var number = over_num ? over_num: 0;
	var rand_num = $('#rand_num').val();
    rand_num = rand_num ? rand_num: 0;
	
    var num = parseInt(number) + parseFloat(rand_num);
    if(num < min_num) {
	   layer.open({
			type: 1,
			title: false,
			skin: 'layui-layer-demo', //样式类名
			closeBtn: 0, //不显示关闭按钮
			shift: 2,
			shadeClose: true, //开启遮罩关闭
			content: '<div>充值金额不能小于'+min_num+'元</div><div><button type="button" class="yes" onclick="closewin()">确定</button>',
			area: ['420px', '280px'], //宽高
		});
        return false;
    }

    if (num >= max_num) {
		layer.open({
			type: 1,
			title: false,
			skin: 'layui-layer-demo', //样式类名
			closeBtn: 0, //不显示关闭按钮
			shift: 2,
			shadeClose: true, //开启遮罩关闭
			content: '<div>转账金额不能大于'+max_num+'</div><div><button type="button" class="yes" onclick="closewin()">确定</button>',
			area: ['420px', '280px'], //宽高
		});
        return false;
    }
    $.post("<?php echo U('Pay/rechargeByMan');?>", {'money':number, 'account': recharge_account_yes, 'count':parseInt($("#over_num").val(),10)+fee,'type':1,'member_name': recharge_name_yes},
		function(data) {
            if (data.status == 0) {
				layer.open({
					type: 1,
					title: false,
					skin: 'layui-layer-demo', //样式类名
					closeBtn: 0, //不显示关闭按钮
					shift: 2,
					shadeClose: true, //开启遮罩关闭
					content: '<div>'+data.info+'</div><div><button type="button" class="yes" onclick="closewin()">确定</button>',
					area: ['420px', '280px'], //宽高
				});
            } else {
				$('#recharge_alert_bank').show();
                $('#recharge_alert_bank_close').click(function(){$('#recharge_alert_bank').hide(); location.reload();});
                $('.recharge_html_num').html(data.num);
                $('#recharge_alert_title').html('银行卡汇款信息');
                $('.phone_bank_and_net').html('“手机银行”或“网上银行”'); 
            }
        }
    );

    return false;
	
};
function showPay(num){
	$('#recharge_alert_bank').show();
	$('#recharge_alert_bank_close').click(function(){$('#recharge_alert_bank').hide(); location.reload();});
	$('.recharge_html_num').html(num);
	$('#recharge_alert_title').html('银行卡汇款信息');
	$('.phone_bank_and_net').html('“手机银行”或“网上银行”'); 
}
</script>
<script>
    $(".menu12").addClass("uc-current");

    function showTips(id,msg){
        var tips = layer.tips(msg, id, {
            tips: [1, '#fff8db'],
            area: ['400px', '35px']
        });
        $(id).on('mouseout', function(){
            layer.close(tips);
        });
    }
</script>
<style>
.rightwidth{ width:340px;}
</style>
<!--footer start-->

<div class="coin_footer" style="position:relative;">
	<div class="coin_hint">

		<h2><?php echo ((isset($info_one4["title"]) && ($info_one4["title"] !== ""))?($info_one4["title"]):"风险提示"); ?></h2>
		<p><?php echo ($config["risk_warning"]); ?></p>
	</div>
	<div class="coin_footerbar">
		<div class="coin_footer_nav clearfix">
			<div class="coin_nav coin_copy left">
				<p><a href="<?php echo U('Index/index');?>"><img style=" height:55px;" src="<?php echo ($config["logo"]); ?>"></a></p>
			</div>
			<div class="coin_nav left">
				<h2><?php echo ((isset($config["name"]) && ($config["name"] !== ""))?($config["name"]):"虚拟币"); ?>团队</h2>
				<ul>
					<li><a href="<?php echo U('Index/index');?>"><?php echo ((isset($config["name"]) && ($config["name"] !== ""))?($config["name"]):"虚拟币"); ?></a></li>
				<?php if(is_array($team)): $i = 0; $__LIST__ = $team;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo U('Art/details',array('team_id'=>$vo['article_id']));?>" target="_blank" class="left"><?php echo ($vo["title"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
				</ul>
			</div>
			<div class="coin_nav left">
				<h2>帮助中心</h2>
				<ul>
                <?php if(is_array($help)): $i = 0; $__LIST__ = $help;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="<?php echo U('Help/index',array('id'=>$vo['id']));?>" target="_blank" class="left"><?php echo ($vo["name"]); ?></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
				</ul>
			</div>
			<div class="coin_nav coin_nav02 left">
				<h2 class="clearfix"><span class="left">联系我们</span><a href="http://weibo.com/<?php echo ($config["weibo"]); ?>" target="_blank" class="coin_sina left"></a><!--<a href="#" id="coin_weixin" class="coin_wei left"></a>--></h2>
				<ul>
					<li>客服电话：<?php echo ((isset($config["tel"]) && ($config["tel"] !== ""))?($config["tel"]):"暂无"); ?></li>
					<li>客服QQ：<?php echo ((isset($config["qq1"]) && ($config["qq1"] !== ""))?($config["qq1"]):"暂无"); ?></li>
					<li><a href="mailto:<?php echo ($config['email']); ?>">客服邮箱：<?php echo ((isset($config["email"]) && ($config["email"] !== ""))?($config["email"]):"暂无"); ?></a></li>
					<li><a href="mailto:<?php echo ($config['business_email']); ?>">业务合作：<?php echo ((isset($config["business_email"]) && ($config["business_email"] !== ""))?($config["business_email"]):"暂无"); ?></a></li>
				</ul>
			</div>
			<div class="coin_nav coin_nav02 left rightwidth" style="position:relative;">
              <div style="float:left; padding-top:25px; padding-left:10px;"><img style=" width:100px;" src="<?php echo ($config['weixin']); ?>"/></div>
              <div style=" float:left; padding-left:10px;">
				<p class="coin_phone400"><?php echo ((isset($config["tel"]) && ($config["tel"] !== ""))?($config["tel"]):"暂无"); ?></p>
				<p class="coin_phoneqq"><a href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($config['qq1']); ?>&site=qq&menu=yes" target="_blank">在线客服</a></p>
				<p>工作日:9-19时 节假日:9-18时</p>
               </div>
				<div class="group" style="left:12px;margin-top: 40px">
					<ul class="qq_all" style="    margin-left: 10px;">
						<li><a style="flont:left; " href="javascript:void(0)"><?php echo ((isset($config["name"]) && ($config["name"] !== ""))?($config["name"]):"虚拟币"); ?>官方群<img style="margin-top:5px;" src="/Public/Home/images/xiala.png"></a>
							<ul style="margin-left: 105px;">
								<li><?php echo ((isset($config["name"]) && ($config["name"] !== ""))?($config["name"]):"虚拟币"); ?>官方1群 <?php echo ((isset($config["qqqun1"]) && ($config["qqqun1"] !== ""))?($config["qqqun1"]):"暂无"); ?></li>
								<li><?php echo ((isset($config["name"]) && ($config["name"] !== ""))?($config["name"]):"虚拟币"); ?>官方2群 <?php echo ((isset($config["qqqun2"]) && ($config["qqqun2"] !== ""))?($config["qqqun2"]):"暂无"); ?></li>
								<li><?php echo ((isset($config["name"]) && ($config["name"] !== ""))?($config["name"]):"虚拟币"); ?>官方3群 <?php echo ((isset($config["qqqun3"]) && ($config["qqqun3"] !== ""))?($config["qqqun3"]):"暂无"); ?></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
<div class="footer_aq">
	<p><?php echo ((isset($config["copyright"]) && ($config["copyright"] !== ""))?($config["copyright"]):"暂无"); ?></p>
	<p><?php echo ((isset($config["record"]) && ($config["record"] !== ""))?($config["record"]):"暂无"); ?></p>
	<ul class="footerSafety clearfix">
        <li class="safety02"><a href="http://net.china.com.cn/" target="_blank"></a></li>
        <li class="safety03"><a href="http://webscan.360.cn/index/checkwebsite/?url=<?php echo ($config['localhost']); ?>" target="_blank"></a></li>
        <li class="safety04"><a href="http://www.cyberpolice.cn/wfjb/" target="_blank"></a></li>
    </ul>
</div>
<div id="weixin" style="position:absolute; bottom:88px; left:50%; margin-left:170px; display:block;"><!--<img src="<?php echo ($config["logo"]); ?>">--></div>
<script>
	$('#coin_weixin').mouseover(function(){
		$('#weixin').show();
	}).mouseout(function(){
		$('#weixin').hide();
	});
</script>
<!--footer end-->
<script type="text/javascript" src="/Public/Home/js/gotop.js"></script>
<script type="text/javascript" src="/Public/Home/js/link.js"></script>
<script type="text/javascript" src="/Public/Home/js/slides.js"></script>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?0ab4db557b96d841137861e0740d1e0a";
  var s = document.getElementsByTagName("script")[0];
  s.parentNode.insertBefore(hm, s);
})();
</script>



</div></body></html>