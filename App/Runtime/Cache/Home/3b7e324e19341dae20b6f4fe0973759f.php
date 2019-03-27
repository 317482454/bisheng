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
<!--top end-->

<style type="text/css">
.ybc_header {
    width: 1000px;
    height: 70px;
    margin: 10px auto;
}
.main{ width:100%; background-color:#fff; min-height:550px; _height:550px;font-size:12px; color:#666; font-family:"微软雅黑";}
.main_box{ width:1000px; margin:0 auto;
    min-height: 400px;
	padding:30px;
	padding-top:0;
	border: 1px solid #e1e1df;
	background-color: #fbfaf8;
	margin-left: 100px;}
.warning {
    line-height: 24px;
    margin-bottom: 10px;
    color: #333;
    font-size: 14px;
    word-break: break-all;
	margin-top:0px;

 
}
.warning h2{  height:60px; line-height:60px; border-bottom:1px solid #e1e1df; width:100%; text-align:center; margin-bottom:20px;color:#333; font-weight:normal;}
.warning h3{  height:40px;  line-height:40px;width:100%; margin-top:20px;color:#333;font-weight:normal;}

.ybc_label{ width:380px; height:30px; line-height:30px; text-align:right; padding-right:5px;}
.ybc_user2 {
    margin-bottom: 20px;
    margin-top: 50px;
	height:20px;

}
.ybc_user1 {
    margin-bottom: 20px;
    margin-top: 30px;

	height:40px;

}

.left {
    float: left;
}
.ybc_text .ybc_next {
    width: 204px;
    text-align: center;
    height: 40px;
    line-height: 40px;
    background: #f70;
    color: #fff;
    font-size: 16px;
    font-family: 'Microsoft Yahei';
    border: 0;
    padding: 0;
    cursor: pointer;
}
.clearfix {
    zoom: 1;
}
.ybc_hint1 {
    height: 30px;
    line-height: 30px;
    color: #999;
	margin-left:15px;
}
.tycolor {
color: #2471cb; 
    text-decoration: underline;
}
</style>
<div class="main" id="reg-prev">
	<div class="main_box">
		<div class="warning">
			<h2>风险警示</h2>
			<?php echo ($config["reg_risk_warning"]); ?>
		</div>
		<div class="ybc_user2 clearfix">
			<div class="ybc_text left"><input name="agree" id="tongyi" type="checkbox" onclick="xuanzhong()"></div>
			<div class="ybc_hint left"><label for="tongyi">我已经认真阅读以上风险提示，并已同意<?php echo ($config["name"]); ?> <a href="<?php echo U('Reg/terms');?>" id="agreement" class="tycolor">服务条款</a>，同意在自担风险，自担损失的情况下参与交易
</label></div>
			<div class="ybc_hint left"><span id="agree"></span></div>
		</div>
		<div class="ybc_user1 clearfix">
			<div class="ybc_label left"><label>&nbsp;</label></div>
			<div class="ybc_text left"><input value="继续注册" id="next-btn" class="ybc_next" style="background-color:#e1e1e1; " type="submit"></div>
			<div class="ybc_hint1 left"><span id="agree"> <a href="<?php echo U('Index/index');?>" class="tycolor">取消</a></span></div>
		</div>
	</div>
</div>

<div class="ybc_section" id="reg-now" style="display:none;">
    <ul class="ybc_user_nav clearfix Font18">
        <li class="current"><span>1</span>邮箱注册</li>
        <li id="currentpwd"><span>2</span>设置交易密码</li>
        <li><span>3</span>实名认证</li>
        <li><span>4</span>注册成功</li>
    </ul>
    <form class="ybc_userarea" id="ttttform" method="post" jump-url="<?php echo U('Reg/regSuccess');?>" action="<?php echo U('Reg/addReg');?>" onsubmit="return step2();">
        <div id="step1">
            <!--<div class="ybc_user clearfix">
                <div class="ybc_label left"><label for="pid">邀请码</label></div>
                <div class="ybc_text left"><input type='text' name='pid' value="0"></div>
            </div>-->
            <div class="ybc_user clearfix">
                <div class="ybc_label left"><label for="email">电子邮箱</label></div>
                <div class="ybc_text left"><input name="email" id="email" type="text"></div>
                <div class="ybc_hint left"><strong class="msg_i" id="email_msg">i</strong><span id="emailmsg">请输入您的电子邮箱，用于登录和找回密码</span></div><!--默认 i class="msg_i"  正确class="msg_error"  错误class="msg_ok"-->
            </div>
            <div class="ybc_user clearfix">
                <div class="ybc_label left"><label for="pwd">登录密码</label></div>
                <div class="ybc_text left"><input id="pwd" name="pwd" type="password"></div>
                <div class="ybc_hint left"><strong class="msg_i" id="pwd_msg">i</strong><span id="pwdmsg">密码长度6-20位</span></div>
            </div>
            <div class="ybc_user clearfix">
                <div class="ybc_label left"><label for="repwd">重复密码</label></div>
                <div class="ybc_text left"><input id="repwd" name="repwd" type="password"></div>
                <div class="ybc_hint left"><strong class="msg_i" id="repwd_msg">i</strong><span id="repwdmsg">重复输入密码，两次需要一致</span></div>
            </div>
            <div class="ybc_user clearfix">
                <div class="ybc_label left"><label for="pid">邀请码</label></div>
                <div class="ybc_text left"><input name="pid" <?php if($pid): ?>value="<?php echo ($pid); ?>" readonly="readonly"<?php endif; ?>  type="text"></div>
                <div class="left" style="color:#f00; line-height:30px;">选填项</div>
            </div>
            <div class="ybc_user clearfix">
                <div class="ybc_label left"><label>&nbsp;</label></div>
                <div class="ybc_text left"></div>
               
                <div class="ybc_hint left"><span id="agree"></span></div>
            </div>
            <div class="ybc_user clearfix">
                <div class="ybc_label left"><label>&nbsp;</label></div>
                <div class="ybc_text left"><input value="下一步" class="ybc_next" onclick="step1()" type="button"></div>
            </div>
        </div>
        <div id="step2" style="display:none">
            <div class="ybc_warn Font16" style="background:none; margin:-40px 0 60px 0;"><span class="msg_warn">！</span>为保障您的资金安全，请设置交易密码。				<br>对账户资产进行投资、交易、转出时，需用到交易密码，请务必牢记。</div>
            <div class="ybc_user clearfix">
                <div class="ybc_label left"><label for="pwdtrade">交易密码</label></div>
                <div class="ybc_text left"><input id="pwdtrade" name="pwdtrade" type="password"></div>
                <div class="ybc_hint left"><strong class="msg_i" id="pwdtrade_msg">i</strong><span id="pwdtrademsg">请输入交易密码，不能与登录密码相同</span></div>
            </div>
            <div class="ybc_user clearfix">
                <div class="ybc_label left"><label for="repwdtrade">重复交易密码</label></div>
                <div class="ybc_text left"><input id="repwdtrade" name="repwdtrade" type="password"></div>
                <div class="ybc_hint left"><strong class="msg_i" id="repwdtrade_msg">i</strong><span id="repwdtrademsg">重复输入交易密码，两次需要一致</span></div>
            </div>
            <div class="ybc_user clearfix">
                <div class="ybc_label left"><label>&nbsp;</label></div>
                <div class="ybc_text left"><input value="下一步" class="ybc_next" type="submit"></div>
            </div>
        </div>
    </form>
</div>
<script src="/Public/Home/js/form.js"></script>
<script type="text/javascript">
    vali = {email: 0, pwd: 0, repwd: 0,tongyi:1};
    valistep2 = {pwdtrade: 0, repwdtrade: 0}
    $('#email').bind('blur', function(){
        var path_Email = "<?php echo U('Reg/ajaxCheckEmail');?>";
        $.get(path_Email,{email:encodeURIComponent($(this).val())}, function(d){
            if(d['status'] == 1){
                $('#email_msg').html("√");
                $('#email_msg').css('msg_ok');
            }else{
                $('#email_msg').html("×");
                $('#email_msg').css('msg_error');
            }
            validateMsg('email', d['msg'], d['status']);
            vali.email = d['status'];
        }, 'json');
    });

    $('#pwd').bind('blur', function(){
        var pLen = $(this).val().length;
        if(pLen < 6 || pLen > 20) {
            $('#pwd_msg').html("×");
            $('#pwd_msg').css('msg_error');
            return validateMsg('pwd', '密码长度在6-20个字符之间', 0);
        }
        $('#pwd_msg').html("√");
        $('#pwd_msg').css('msg_ok');
        return validateMsg('pwd', '', vali.pwd = 1);
    });
    $('#repwd').bind('blur', function(){
        var pLen = $(this).val().length;
        if(pLen < 6 || pLen > 20){
            $('#repwd_msg').html("×");
            $('#repwd_msg').css('msg_error');
            return validateMsg('repwd', '密码长度在6-20个字符之间', 0);
        }
        if($('#pwd').val() != $('#repwd').val()){
            $('#repwd_msg').html("×");
            $('#repwd_msg').css('msg_error');
            return validateMsg('repwd', '密码不一致，请重新输入。', 0);
        }
        $('#repwd_msg').html("√");
        $('#repwd_msg').css('msg_ok');
        return validateMsg('repwd', '', vali.repwd = 1);
    });
    $('#pwdtrade').bind('blur', function(){
        var pLen = $(this).val().length;
        var repLen = $('#repwdtrade').val().length;
        if(pLen < 6 || pLen > 20) {
            $('#pwdtrade_msg').html("×");
            $('#pwdtrade_msg').css('msg_error');
            return validateMsg('pwdtrade', '密码长度在6-20个字符之间', 0);
        }
        if($('#pwdtrade').val() == $('#pwd').val()){
            $('#pwdtrade_msg').html("×");
            $('#pwdtrade_msg').css('msg_error');
            return validateMsg('pwdtrade', '交易密码不能与登录密码一致哦', 0);
        }
        if(repLen>1){
            if($('#pwdtrade').val() != $('#repwdtrade').val()){
                $('#repwdtrade_msg').html("×");
                $('#repwdtrade_msg').css('msg_error');
                return validateMsg('repwdtrade', '再次输入的交易密码不一致', 0);
            }
        }
        $('#pwdtrade_msg').html("√");
        $('#pwdtrade_msg').css('msg_ok');
        return validateMsg('pwdtrade', '', valistep2.pwdtrade = 1);
    });
    $('#repwdtrade').bind('blur', function(){
        var pLen = $(this).val().length;
        if(pLen < 6 || pLen > 20){
            $('#repwdtrade_msg').html("×");
            $('#repwdtrade_msg').css('msg_error');
            return validateMsg('repwdtrade', '密码长度在6-20个字符之间', 0);
        }
        if($('#repwdtrade').val() != $('#pwdtrade').val()){
            $('#repwdtrade_msg').html("×");
            $('#repwdtrade_msg').css('msg_error');
            return validateMsg('repwdtrade', '密码不一致，请重新输入。', 0);
        }
        $('#repwdtrade_msg').html("√");
        $('#repwdtrade_msg').css('msg_ok');
        return validateMsg('repwdtrade', '', valistep2.repwdtrade = 1);
    });
    $("#tongyi").bind('click',function(){
        if($(this).val() == 1)
            $(this).val(0);
        else
            $(this).val(1);
        if($(this).val() == 0){
            return validateMsg('agreemsg', '需同意本网站服务条款方可进行下一步', vali.tongyi = 0);
        }else{
            return validateMsg('agreemsg', '', vali.tongyi = 1);
        }
    });

    function step1(){
        //检查第一步是否有问题
        for(var i in vali){
            if(!vali[i]) {
                event.preventDefault();
                return false;
            }
        }
        $('#step1').hide()
        $('#step2').show();
        $('#currentpwd').addClass('current');

    }
    function step2()
    {
        if(valistep2.pwdtrade==0 || valistep2.repwdtrade==0){
            return false;
        }else{
            return true;
        }
    }
</script>


<script>
    $("#ttttform").validate({
        submitHandler:function(form){
            ajax_submit_form(form)
            return false;
        },
        invalidHandler: function() {  //不通过回调
            return false;
        }
    });
</script>
<script>
   	$('#tongyi').click(function() {
		var isAgree = $(this).attr('checked');
		if(isAgree) {
			$(this).removeAttr('checked');
			$('#next-btn').css({'background':'#e1e1e1'});
		} else {
			$(this).attr("checked",'true');
			$('#next-btn').css({'background':'#f60'});
		}
		
	});
	$('#next-btn').click(function() {
		var isAgree = $('#tongyi').attr('checked');
		if(isAgree) {
			$('#reg-prev').hide();
			$('#reg-now').show();
		}
	});
</script>

<!--footer start-->
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
<!--footer end-->