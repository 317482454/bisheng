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
<!--header end-->
<style>
.pull-left{ float:left;}
.pull-right{ float:right;}
.link a{ color:#000;}
.link{ margin:0px auto; width:100%;}

</style>
<script type="text/javascript" src="/Public/Home/js/focus.js"></script>
<script type="text/javascript" src="/Public/Home/js/Fnc.js"></script>
<script type="text/javascript" src="/Public/Home/js/zc.js"></script>
<script type="text/javascript" src="/Public/Home/js/1.js"></script>
<script type="text/javascript" src="/Public/Home/js/bootstrap.js"></script>
<script type="text/javascript" src="/Public/Home/js/jquery.flexslider-min.js"></script>
<link rel="stylesheet" type="text/css" href="/Public/Home/css/hb_index.css">
<link rel="stylesheet" type="text/css" href="/Public/Home/css/zc.css">
<link rel="stylesheet" type="text/css" href="/Public/Home/css/flexslider.css">
<link rel="shortcut icon" href="1.ico" />
<!--banner start-->
<div style="height:360px; width:100%; position:relative; overflow:hidden; min-width:1200px;">

<div>
	<div class="flexslider">
		<ul class="slides">
			<?php if(is_array($flash)): $i = 0; $__LIST__ = $flash;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a href="http://<?php echo ((isset($vo["jump_url"]) && ($vo["jump_url"] !== ""))?($vo["jump_url"]):'#'); ?>" target="_blank"><img src="<?php echo ($vo["pic"]); ?>" alt="<?php echo ($vo["title"]); ?>" style="height:320px;"></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
		</ul>
	</div>
	<div class="ybcoin_volume">
		<div style="color:#fff;">
			<p style=" font-size:16px; margin-bottom:5px; text-align: center;">风险提示</p>
			<p style=" font-size:12px; line-height:22px;"><?php echo ($config["risk_warning"]); ?></p>
		</div>
					<div class="news_coin"><?php if(empty($member)): ?><a href="<?php echo U('Login/index');?>">立即登录</a><?php else: ?><a href="<?php echo U('User/index');?>">我的账户</a><?php endif; ?></div>
			<p class="coin_reg"><?php if(empty($member)): ?><a href="<?php echo U('Reg/reg');?>" class="left">免费注册</a><!-- <a href="<?php echo U('Oauth/index',array('type'=>'qq'));?>" class="right">QQ登录  </a> --><?php else: endif; ?><a href="<?php echo U('Dow/newcoin');?>" class="right">我要上新币</a></p>
			</div>
</div>
</div>
<!--banner end-->
<div class="ybcoin_section clearfix" style="border:0;">
    <!--币币交易开始-->
    <div id="tags_coin" class="coinarea left" style="position:relative;">
        <!--<ul id="tags" class="for_coin">
            <li class="selectTag"><a onmouseover="selectTag('tagContent0',this)">对CNY交易区</a></li>
            <li><a onmouseover="selectTag('tagContent3',this)">对TRMB交易区</a></li>
            </ul>
        -->
        <div class="bgcolor" style="display:none;"></div>
        <div style="margin-top:30px;" id="tagContent">
            <!-- 对CNY交易区 结束-->
            <div class="tagContent selectTag" id="tagContent0">
                 <p style="color:#f00; font-size:14px; margin-bottom:10px;"><?php echo ($config["friendship_tips"]); ?></p>
                <table class="coin_list coinarea" border="0" cellpadding="0" cellspacing="0">
                    <thead>
                    <tr>
                        <th>&nbsp;</th>
                        <th style="text-align:left;">币  名</th>
                        <th class="header">最新价格(CNY)</th>
                        <th class="header">24H成交量</th>
                        <th class="header">24H成交额(CNY)</th>
                        <th class="header">总市值(CNY)</th>
                        <th class="header">24H涨跌</th>
                        <th class="header">7D涨跌</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php if(is_array($currency)): $i = 0; $__LIST__ = $currency;if( count($__LIST__)==0 ) : echo "$empty" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr class="coin_num">
                            <td><a href="<?php echo U('Orders/index',array('currency'=>$vo['currency_mark']));?>"><img src="<?php echo ($vo["currency_logo"]); ?>" style="width:20px; height:20px;"></a></td>
                            <td class="coin_name"><a href="<?php echo U('Orders/index',array('currency'=>$vo['currency_mark']));?>"><?php echo ((isset($vo["currency_name"]) && ($vo["currency_name"] !== ""))?($vo["currency_name"]):'虚拟币'); echo ((isset($vo["currency_mark"]) && ($vo["currency_mark"] !== ""))?($vo["currency_mark"]):''); ?></a></td>
                            <td><?php if(($vo["new_price_status"]) == "0"): ?><a href="<?php echo U('Orders/index',array('currency'=>$vo['currency_mark']));?>" class="buy"><?php else: ?><a href="<?php echo U('Orders/index',array('currency'=>$vo['currency_mark']));?>" class="sell"><?php endif; ?>
                                <?php echo ((isset($vo["new_price"]) && ($vo["new_price"] !== ""))?($vo["new_price"]):'暂无'); if(($vo["new_price_status"]) == "0"): ?>↓<?php else: ?>↑<?php endif; ?></a></td>
                            <td><a href="<?php echo U('Orders/index',array('currency'=>$vo['currency_mark']));?>"><?php echo ((isset($vo["24H_done_num"]) && ($vo["24H_done_num"] !== ""))?($vo["24H_done_num"]):'0'); ?></a></td>
                            <td><a href="<?php echo U('Orders/index',array('currency'=>$vo['currency_mark']));?>"><?php echo ((isset($vo["24H_done_money"]) && ($vo["24H_done_money"] !== ""))?($vo["24H_done_money"]):'0'); ?></a></td>
                            <td><a href="<?php echo U('Orders/index',array('currency'=>$vo['currency_mark']));?>"><?php echo ((isset($vo["currency_all_money"]) && ($vo["currency_all_money"] !== ""))?($vo["currency_all_money"]):'0'); ?></a></td>
                            <td><?php if(($vo["24H_change"]) > "0"): ?><a href="<?php echo U('Orders/index',array('currency'=>$vo['currency_mark']));?>" class="sell"><?php else: ?><a href="<?php echo U('Orders/index',array('currency'=>$vo['currency_mark']));?>" class="buy"><?php endif; echo ((isset($vo["24H_change"]) && ($vo["24H_change"] !== ""))?($vo["24H_change"]):'0'); ?>%</a></td>
                            <td><?php if(($vo["7D_change"]) > "0"): ?><a href="<?php echo U('Orders/index',array('currency'=>$vo['currency_mark']));?>" class="sell">+<?php else: ?><a href="<?php echo U('Orders/index',array('currency'=>$vo['currency_mark']));?>" class="buy"><?php endif; echo ((isset($vo["7D_change"]) && ($vo["7D_change"] !== ""))?($vo["7D_change"]):'0'); ?>%</a></td>
                        </tr><?php endforeach; endif; else: echo "$empty" ;endif; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!--币币交易结束-->
    <div class="right coin_news">
        <div class="news_title clearfix">
            <h2 class="left">官方公告</h2>
            <a href="<?php echo U('Art/index',array('id'=>'1'));?>" class="right">更多</a>
        </div>
        <ul>
            <?php if(is_array($info_red1)): $i = 0; $__LIST__ = $info_red1;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo_red1): $mod = ($i % 2 );++$i;?><li>
                    <a href="<?php echo U('Art/details',array('id'=>$vo_red1['article_id']));?>">
                        <span class="coin_news_title left" style="color:red;font-weight:bold;"><?php echo ($vo_red1["title"]); ?></span>
                        <span class="right"><?php echo (date('m-d',$vo_red1["add_time"])); ?></span>
                    </a>
                </li><?php endforeach; endif; else: echo "" ;endif; ?>
            <?php if(is_array($info1)): $i = 0; $__LIST__ = $info1;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo1): $mod = ($i % 2 );++$i;?><li>
                    <a href="<?php echo U('Art/details',array('id'=>$vo1['article_id']));?>">
                        <span class="coin_news_title left"><?php echo ($vo1["title"]); ?></span>
                        <span class="right"><?php echo (date('m-d',$vo1["add_time"])); ?></span>
                    </a>
                </li><?php endforeach; endif; else: echo "" ;endif; ?>
        </ul>
        <div class="news_title clearfix" style="margin-top:20px;">
            <h2 class="left">市场动态</h2>
            <a href="<?php echo U('Art/index',array('id'=>'2'));?>" class="right">更多</a>
        </div>
        <ul>
        <?php if(is_array($info_red2)): $i = 0; $__LIST__ = $info_red2;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo_red2): $mod = ($i % 2 );++$i;?><li>
                <a href="<?php echo U('Art/details',array('id'=>$vo_red2['article_id']));?>">
                    <span class="coin_news_title left" style="color:red;font-weight:bold;"><?php echo ($vo_red2["title"]); ?></span>
                    <span class="right"><?php echo (date('m-d',$vo_red2["add_time"])); ?></span>
                </a>
            </li><?php endforeach; endif; else: echo "" ;endif; ?>
        </ul>
        <ul>
            <?php if(is_array($info2)): $i = 0; $__LIST__ = $info2;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo2): $mod = ($i % 2 );++$i;?><li><a href="<?php echo U('Art/details',array('id'=>$vo2['article_id']));?>"><span class="coin_news_title left"><?php echo ($vo2["title"]); ?></span><span class="right"><?php echo (date('m-d',$vo2["add_time"])); ?></span></a></li><?php endforeach; endif; else: echo "" ;endif; ?>
        </ul>
        <!--<div style="margin-top:20px;"><a href="https://www.gemwallet.com/" target="_blank"><img src="images/coin_gemwallet.jpg" alt="竞付宝"></a></div>-->
    </div>
</div>
<div class="index_box_2 slogan" style="width:1200px; margin:0px auto; margin-top:30px;">

    <div class="slogan_title">选择<?php echo ((isset($config["name"]) && ($config["name"] !== ""))?($config["name"]):'虚拟网'); ?>,安全可信赖</div>
        <div class="slogan_tis">累计交易额:<span id="yi"><span><?php echo ((isset($sum_money) && ($sum_money !== ""))?($sum_money):'0'); ?></span></div>
        <div id="cumulative">
          <div class="number_box">
             <?php if(is_array($arr)): $key = 0; $__LIST__ = $arr;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($key % 2 );++$key;?><div <?php if( $key%3 == 0 && $key%12 == 0 ): ?>class="unit add_f"
                        <?php elseif( $key%3 == 0 ): ?>class="unit add_w"
                        <?php else: ?>class="unit"<?php endif; ?> >
                     <div class="top"><span><?php echo ($vo); ?></span></div>
                     <div style="" class="top"><span><?php echo ($vo); ?></span></div>
                     <div class="btm"><span><?php echo ($vo); ?></span></div>
                     <div style="transform: rotateX(0deg);" class="btm"><span><?php echo ($vo); ?></span></div>
                 </div><?php endforeach; endif; else: echo "" ;endif; ?>



        <!--<div class="unit add_f">-->
        <!--<div class="top"><span>3</span></div>-->
        <!--<div style="" class="top"><span>3</span></div>-->
        <!--<div class="btm"><span>3</span></div>-->
        <!--<div style="transform: rotateX(0deg);" class="btm"><span>3</span></div>-->
        <!--</div>-->
        <!--<div class="unit ">-->
        <!--<div class="top"><span>6</span></div>-->
        <!--<div style="" class="top"><span>6</span></div>-->
        <!--<div class="btm"><span>6</span></div>-->
        <!--<div style="transform: rotateX(0deg);" class="btm"><span>6</span></div>-->
        <!--</div>-->
        <!--<div class="unit ">-->
        <!--<div class="top"><span>8</span></div>-->
        <!--<div style="" class="top"><span>8</span></div>-->
        <!--<div class="btm"><span>8</span></div>-->
        <!--<div style="transform: rotateX(0deg);" class="btm"><span>8</span></div>-->
        <!--</div>-->
        <!--<div class="unit add_w">-->
        <!--<div class="top"><span>7</span></div>-->
        <!--<div style="" class="top"><span>7</span></div>-->
        <!--<div class="btm"><span>7</span></div>-->
        <!--<div style="transform: rotateX(0deg);" class="btm"><span>7</span></div>-->
        <!--</div>-->
        <!--<div class="unit ">-->
        <!--<div class="top"><span>4</span></div>-->
        <!--<div style="" class="top"><span>4</span></div>-->
        <!--<div class="btm"><span>4</span></div>-->
        <!--<div style="transform: rotateX(0deg);" class="btm"><span>4</span></div>-->
        <!--</div>-->
        <!--<div class="unit ">-->
        <!--<div class="top"><span>7</span></div>-->
        <!--<div style="" class="top"><span>7</span></div>-->
        <!--<div class="btm"><span>7</span></div>-->
        <!--<div style="transform: rotateX(0deg);" class="btm"><span>7</span></div>-->
        <!--</div>-->
        <!--<div class="unit add_w">-->
        <!--<div class="top"><span>9</span></div>-->
        <!--<div style="" class="top"><span>9</span></div>-->
        <!--<div class="btm"><span>9</span></div>-->
        <!--<div style="transform: rotateX(0deg);" class="btm"><span>9</span></div>-->
        <!--</div>-->
        <!--<div class="unit ">-->
        <!--<div class="top"><span>9</span></div>-->
        <!--<div style="" class="top"><span>9</span></div>-->
        <!--<div class="btm"><span>9</span></div>-->
        <!--<div style="transform: rotateX(0deg);" class="btm"><span>9</span></div>-->
        <!--</div>-->
        <!--<div class="unit ">-->
        <!--<div class="top"><span>5</span></div>-->
        <!--<div style="" class="top"><span>5</span></div>-->
        <!--<div class="btm"><span>5</span></div>-->
        <!--<div style="transform: rotateX(0deg);" class="btm"><span>5</span></div>-->
        <!--</div>-->

        <!--<div class="unit add_w">-->
        <!--<div class="top"><span>3</span></div>-->
        <!--<div style="" class="top"><span>3</span></div>-->
        <!--<div class="btm"><span>3</span></div>-->
        <!--<div style="transform: rotateX(0deg);" class="btm"><span>3</span></div>-->
        <!--</div>-->
        <!--<div class="unit ">-->
        <!--<div class="top"><span>5</span></div>-->
        <!--<div style="" class="top"><span>5</span></div>-->
        <!--<div class="btm"><span>5</span></div>-->
        <!--<div style="transform: rotateX(0deg);" class="btm"><span>5</span></div>-->
        <!--</div>-->
        <!--<div class="unit ">-->
        <!--<div class="top"><span>8</span></div>-->
        <!--<div style="" class="top"><span>8</span></div>-->
        <!--<div class="btm"><span>8</span></div>-->
        <!--<div style="transform: rotateX(0deg);" class="btm"><span>8</span></div>-->
        <!--</div>-->



    </div>
</div>
</div>
<script type="text/javascript" src="/Public/Home/js/coinindex.js"></script>
<script type="text/javascript" src="/Public/Home/js/tab.js"></script>
<script type="text/javascript" src="/Public/Home/js/slide.js"></script>
<script type="text/javascript" src="/Public/Home/js/hb_lang.js"></script>
<script type="text/javascript" src="/Public/Home/js/hb_sea.js"></script>
<script type="text/javascript" src="/Public/Home/js/hb_hm.js"></script>
<script src="%EF%BF%A52717.80%20_%20%E3%80%90%E7%81%AB%E5%B8%81%E3%80%91%E8%99%9A%E6%8B%9F%E8%B4%A7%E5%B8%81%E4%BA%A4%E6%98%93_%E6%AF%94%E7%89%B9%E5%B8%81%E4%BA%A4%E6%98%93%E5%B9%B3%E5%8F%B0_%E8%99%9A%E6%8B%9F%E5%B8%81%E8%8E%B1%E7%89%B9%E5%B8%81_%E6%AF%94%E7%89%B9%E5%B8%81%E5%AE%98%E7%BD%91_files/page_glb_var.js"></script>
<script>
    seajs.use("dist/page_index");
    /**/
    function change_vcode(e) {
        e.src = "/account/captcha?" + Math.random();
    }
    /**/

</script>

<script type="text/javascript">
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?18784dd00dc1c9774528d08ae7943072";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
<!-- 成功案例 -->
<!--<div class="success-project">
    <div class="page-view">
         <div class="row">
           <p class="sp-title">众筹</p>
        </div>
        <div class="row" style="overflow: hidden;position: relative;">
            <span class="sp-prev"><img src="/Public/Home/images/suc_left_arrow.png"></span>
            <span class="sp-next"><img src="/Public/Home/images/suc_right_arrow.png"></span>

            <div class="sp-view">
            <?php if(is_array($issue_list)): $i = 0; $__LIST__ = $issue_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div style="width: 400px;" class="sp-wrap">
                    <div class="sp-box">
                        <a href="<?php echo U('Zhongchou/details',array('id'=>$vo['id']));?>" target="_blank">
                            <div class="sp-info">
                                <div class="pull-right pull-right1">
                                    <h4 style="font-weight: normal;font-size: 16px"><?php echo (mb_substr($vo['title'],0,8,'utf-8')); ?></h4>

                                    <p style="font-size: 12px;"><?php echo ($vo['name']); ?></p>
                                </div>
                                <img src="<?php echo ($vo['url1']); ?>" style="width: 82px;height: 82px;">
                                <!--                                    <img src="--><!--" style="width: 82px;height: 82px;">-->
                   <!-- </div> 
                        </a>

                        <div class="sp-step">
                            <div class="pull-left sp-time">
                                <p><span><?php echo (date("Y-m-d",$vo['end_time'])); ?></span></p>
                                <p><span><?php echo (date("Y-m-d",$vo['add_time'])); ?></span></p>
                                <p><span><?php echo (date("Y-m-d",$vo['ctime'])); ?></span></p>
                            </div>
                            <div class="pull-right">
                                <p>众筹完成</p>
                                <p>众筹开始</p>
                                <p>初创项目</p>
                            </div>
                        </div>
                    </div>
                </div><?php endforeach; endif; else: echo "" ;endif; ?>
                <!--<div style="width: 400px;" class="sp-wrap">-->
                    <!--<div class="sp-box">-->
                        <!--<a href="https://www.yuanbaohui.com/project_index/?id=209" target="_blank">-->
                            <!--<div class="sp-info">-->
                                <!--<div class="pull-right pull-right1">-->
                                    <!--<h4 style="font-weight: normal;font-size: 16px">第二次元宝币与太一股认...</h4>-->

                                    <!--<p style="font-size: 12px;">元宝币兑换太一股</p>-->
                                <!--</div>-->
                                <!--<img src="/Public/Home/images/c3aa0c2605711db444b4fbf2fd235b4a.png" style="width: 82px;height: 82px;">-->
                                <!--&lt;!&ndash;                                    <img src="&ndash;&gt;&lt;!&ndash;" style="width: 82px;height: 82px;">&ndash;&gt;-->
                            <!--</div>-->
                        <!--</a>-->

                        <!--<div class="sp-step">-->
                            <!--<div class="pull-left sp-time">-->
                                <!--<p><span>2015-08-12</span></p>-->
                                <!--<p><span>2015-08-10</span></p>-->
                                <!--<p><span>2015-07-30</span></p>-->
                            <!--</div>-->
                            <!--<div class="pull-right">-->
                                <!--<p>众筹完成</p>-->
                                <!--<p>众筹开始</p>-->
                                <!--<p>初创项目</p>-->
                            <!--</div>-->
                        <!--</div>-->
                    <!--</div>-->
                <!--</div>-->
                <!---->
                <!--<div style="width: 400px;" class="sp-wrap">-->
                    <!--<div class="sp-box">-->
                        <!--<a href="https://www.yuanbaohui.com/project_index/?id=201" target="_blank">-->
                            <!--<div class="sp-info">-->
                                <!--<div class="pull-right pull-right1">-->
                                    <!--<h4 style="font-weight: normal;font-size: 16px">首次元宝币与太一股（A...</h4>-->

                                    <!--<p style="font-size: 12px;">测试兑换</p>-->
                                <!--</div>-->
                                <!--<img src="/Public/Home/images/d5b42c5e728e4f80623198daa636fb73.png" style="width: 82px;height: 82px;">-->
                                <!--&lt;!&ndash;                                    <img src="&ndash;&gt;&lt;!&ndash;" style="width: 82px;height: 82px;">&ndash;&gt;-->
                            <!--</div>-->
                        <!--</a>-->

                        <!--<div class="sp-step">-->
                            <!--<div class="pull-left sp-time">-->
                                <!--<p><span>2015-06-23</span></p>-->
                                <!--<p><span>2015-06-18</span></p>-->
                                <!--<p><span>2015-06-17</span></p>-->
                            <!--</div>-->
                            <!--<div class="pull-right">-->
                                <!--<p>众筹完成</p>-->
                                <!--<p>众筹开始</p>-->
                                <!--<p>初创项目</p>-->
                            <!--</div>-->
                        <!--</div>-->
                    <!--</div>-->
                <!--</div>-->
                <!--<div style="width: 400px;" class="sp-wrap">-->
                    <!--<div class="sp-box">-->
                        <!--<a href="https://www.yuanbaohui.com/project_index/?id=191" target="_blank">-->
                            <!--<div class="sp-info">-->
                                <!--<div class="pull-right">-->
                                    <!--<h4 style="font-weight: normal;font-size: 16px">OKDICE数学概率二...</h4>-->

                                    <!--<p style="font-size: 12px;">OKDICE是纯数学随机数的骰子游戏</p>-->
                                <!--</div>-->
                                <!--<img src="/Public/Home/images/b0548d0ea80e93784d36e03a004ba09e.png" style="width: 82px;height: 82px;">-->
                                <!--&lt;!&ndash;                                    <img src="&ndash;&gt;&lt;!&ndash;" style="width: 82px;height: 82px;">&ndash;&gt;-->
                            <!--</div>-->
                        <!--</a>-->

                        <!--<div class="sp-step">-->
                            <!--<div class="pull-left sp-time">-->
                                <!--<p><span>2015-05-18</span></p>-->
                                <!--<p><span>2015-04-30</span></p>-->
                                <!--<p><span>2015-04-27</span></p>-->
                            <!--</div>-->
                            <!--<div class="pull-right">-->
                                <!--<p>众筹完成</p>-->
                                <!--<p>众筹开始</p>-->
                                <!--<p>初创项目</p>-->
                            <!--</div>-->
                        <!--</div>-->
                    <!--</div>-->
                <!--</div>-->
                <!--<div style="width: 400px;" class="sp-wrap">-->
                    <!--<div class="sp-box">-->
                        <!--<a href="https://www.yuanbaohui.com/project_index/?id=9" target="_blank">-->
                            <!--<div class="sp-info">-->
                                <!--<div class="pull-right">-->
                                    <!--<h4 style="font-weight: normal;font-size: 16px">元宝汇</h4>-->

                                    <!--<p style="font-size: 12px;">元宝网，第一数字货币众筹交易平台</p>-->
                                <!--</div>-->
                                <!--<img src="/Public/Home/images/917bbfbcc932a39eca211ec8e89d09d7.png" style="width: 82px;height: 82px;">-->
                                <!--&lt;!&ndash;                                    <img src="&ndash;&gt;&lt;!&ndash;" style="width: 82px;height: 82px;">&ndash;&gt;-->
                            <!--</div>-->
                        <!--</a>-->

                        <!--<div class="sp-step">-->
                            <!--<div class="pull-left sp-time">-->
                                <!--<p><span>2014-06-01</span></p>-->
                                <!--<p><span>2014-05-01</span></p>-->
                                <!--<p><span>2014-04-13</span></p>-->
                            <!--</div>-->
                            <!--<div class="pull-right">-->
                                <!--<p>众筹完成</p>-->
                                <!--<p>众筹开始</p>-->
                                <!--<p>初创项目</p>-->
                            <!--</div>-->
                        <!--</div>-->
                    <!--</div>-->
                <!--</div>-->
                <!--<div style="width: 400px;" class="sp-wrap">-->
                    <!--<div class="sp-box">-->
                        <!--<a href="https://www.yuanbaohui.com/project_index/?id=48" target="_blank">-->
                            <!--<div class="sp-info">-->
                                <!--<div class="pull-right">-->
                                    <!--<h4 style="font-weight: normal;font-size: 16px">币涨投资基金</h4>-->

                                    <!--<p style="font-size: 12px;">实时监测元宝汇、btctrade、比特时代等涉及元宝币交易的正规平台交易行情</p>-->
                                <!--</div>-->
                                <!--<img src="/Public/Home/images/06df42e485da1f44cee4c8886ac2ed95.png" style="width: 82px;height: 82px;">-->
                                <!--&lt;!&ndash;                                    <img src="&ndash;&gt;&lt;!&ndash;" style="width: 82px;height: 82px;">&ndash;&gt;-->
                            <!--</div>-->
                        <!--</a>-->

                        <!--<div class="sp-step">-->
                            <!--<div class="pull-left sp-time">-->
                                <!--<p><span>2014-08-21</span></p>-->
                                <!--<p><span>2014-07-21</span></p>-->
                                <!--<p><span>2014-04-24</span></p>-->
                            <!--</div>-->
                            <!--<div class="pull-right">-->
                                <!--<p>众筹完成</p>-->
                                <!--<p>众筹开始</p>-->
                                <!--<p>初创项目</p>-->
                            <!--</div>-->
                        <!--</div>-->
                    <!--</div>-->
                <!--</div>-->
                <!--<div style="width: 400px;" class="sp-wrap">-->
                    <!--<div class="sp-box">-->
                        <!--<a href="https://www.yuanbaohui.com/project_index/?id=187" target="_blank">-->
                            <!--<div class="sp-info">-->
                                <!--<div class="pull-right">-->
                                    <!--<h4 style="font-weight: normal;font-size: 16px">免费VPN币分发投资</h4>-->

                                    <!--<p style="font-size: 12px;">免费机会仅此一次</p>-->
                                <!--</div>-->
                                <!--<img src="/Public/Home/images/d09a0420c556744cc948a0cbc7cf21bd.png" style="width: 82px;height: 82px;">-->
                                <!--&lt;!&ndash;                                    <img src="&ndash;&gt;&lt;!&ndash;" style="width: 82px;height: 82px;">&ndash;&gt;-->
                            <!--</div>-->
                        <!--</a>-->

                        <!--<div class="sp-step">-->
                            <!--<div class="pull-left sp-time">-->
                                <!--<p><span>2015-04-17</span></p>-->
                                <!--<p><span>2015-04-13</span></p>-->
                                <!--<p><span>2015-04-12</span></p>-->
                            <!--</div>-->
                            <!--<div class="pull-right">-->
                                <!--<p>众筹完成</p>-->
                                <!--<p>众筹开始</p>-->
                                <!--<p>初创项目</p>-->
                            <!--</div>-->
                        <!--</div>-->
                    <!--</div>-->
                <!--</div>-->
           <!-- </div>
        </div>
    </div>
</div> -->
<!-- 客服信息 -->
<div class="autobox">
    <ul class="web_service clear pl30">
        <li class="w265"><a id="BizQQWPA" href="http://wpa.qq.com/msgrd?v=3&uin=<?php echo ($config['qq1']); ?>&site=qq&menu=yes"><div class="web_service_pic service_1"></div><div class="web_service_pic_num"><p><?php echo ((isset($config["qq1"]) && ($config["qq1"] !== ""))?($config["qq1"]):"暂无"); ?></p><div class="qqsecvice">在线QQ客服</div></div></a></li>
        <li class="w245"><div class="web_service_pic service_2"></div><div class="web_service_pic_num"><p><?php echo ((isset($config["tel"]) && ($config["tel"] !== ""))?($config["tel"]):"暂无"); ?></p><div>工作日:9-19时 节假日:9-18时</div></div></li>
        <li class="w265"><a href="http://weibo.com/<?php echo ($config['weibo']); ?>" target="_blank"><div class="web_service_pic service_3"></div><div class="web_service_pic_num"><p><?php echo ((isset($config['weibo']) && ($config['weibo'] !== ""))?($config['weibo']):"暂无"); ?></p><div>新浪官方微博</div></div></a></li>
        <li><div class="web_service_pic service_4"></div><div class="web_service_pic_num"><p>2群：<?php echo ((isset($config['qqqun2']) && ($config['qqqun2'] !== ""))?($config['qqqun2']):"暂无"); ?></p><div class="h_underl">交流QQ群<!--  <a href="javascript:;" class="orange">查看更多</a>   --></div></div></li>
    </ul>
</div>



<div class="safety_tips">
    <div style="border-top:#d8d8d8 dotted 1px;width: 1000px; margin: 0 auto; margin-bottom: 20px;"></div>
    <h3>专业的安全保障</h3>
    <div class="autobox">
        <ul class="safety_tips_ul clear">
            <li>
                <img src="/Public/Home/images/safe_1.jpg" alt="" height="70" width="70">
                <h4>系统可靠</h4>
                <p>银行级用户数据加密、动态身份验证，多级风险识别控制，保障交易安全</p>
            </li>
            <li>
                <img src="/Public/Home/images/safe_2.jpg" alt="" height="70" width="70">
                <h4>资金安全</h4>
                <p>钱包多层加密，离线存储于银行保险柜，资金第三方托管，确保安全</p>
            </li>
            <li>
                <img src="/Public/Home/images/safe_3.jpg" alt="" height="70" width="70">
                <h4>快捷方便</h4>
                <p>充值即时、提现迅速，每秒万单的高性能交易引擎，保证一切快捷方便</p>
            </li>
            <li>
                <img src="/Public/Home/images/safe_4.jpg" alt="" height="70" width="70">
                <h4>服务专业</h4>
                <p>专业的客服团队，400电话和24小时在线QQ，VIP一对一专业服务</p>
            </li>
        </ul>
    </div>
</div>
<!--友情链接-->
<div class="link">
    <div class="linkbox">
        <h4>友情链接</h4>
        <ul>
            <?php if(is_array($link_info)): $i = 0; $__LIST__ = $link_info;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><li><a target="_blank" href="http://<?php echo ($vo['url']); ?>" style=" font-size:16px;"><?php echo ($vo["name"]); ?></a> </li><?php endforeach; endif; else: echo "" ;endif; ?>

        </ul>
    </div>
</div>

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
<script>
$(function() { 
    $(".flexslider").flexslider({
		directionNav: true,
		pauseOnAction: false
});
});

</script>