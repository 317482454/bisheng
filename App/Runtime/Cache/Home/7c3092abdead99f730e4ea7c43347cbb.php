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
<link rel="stylesheet" type="text/css" href="/Public/Home/css/kline.css">
<script src="/Public/Home/js/jquery-1.js"></script>
<script src="/Public/Home/js/highstock.js"></script>
<script>
/*chart_5m = {symbol:"<?php echo ($currency["currency_mark"]); ?>_<?php echo ($currency_trade["currency_mark"]); ?>",symbol_view:"DDD/CNY",ask:1.2,time_line:<?php echo ($kline_5m); ?>};
chart_15m = {symbol:"<?php echo ($currency["currency_mark"]); ?>_<?php echo ($currency_trade["currency_mark"]); ?>",symbol_view:"DDD/CNY",ask:1.2,time_line:<?php echo ($kline_15m); ?>};
chart_1d = {symbol:"<?php echo ($currency["currency_mark"]); ?>_<?php echo ($currency_trade["currency_mark"]); ?>",symbol_view:"DDD/CNY",ask:1.2,time_line:<?php echo ($kline_1d); ?>};
chart_1h = {symbol:"<?php echo ($currency["currency_mark"]); ?>_<?php echo ($currency_trade["currency_mark"]); ?>",symbol_view:"DDD/CNY",ask:1.2,time_line:<?php echo ($kline_1h); ?>};
chart_30m = {symbol:"<?php echo ($currency["currency_mark"]); ?>_<?php echo ($currency_trade["currency_mark"]); ?>",symbol_view:"DDD/CNY",ask:1.2,time_line:<?php echo ($kline_30m); ?>};
chart_8h = {symbol:"<?php echo ($currency["currency_mark"]); ?>_<?php echo ($currency_trade["currency_mark"]); ?>",symbol_view:"DDD/CNY",ask:1.2,time_line:<?php echo ($kline_8h); ?>};*/
$(function() {
	$.get("/Home/Orders/getOrdersKline",{"currency":$("#currency_id").val(),"time":"kline_1h"},function(orders){
        kline($("#currency_mark").html()+"2"+$("#currency_trade_mark").html(),orders.kline_1h);

	});
	
	$("#chart-control > button").click(function(){
		$(this).addClass("btn-success").siblings().removeClass("btn-success");
			 var time = $(this).attr('data-time');
			 $.get("/Home/Orders/getOrdersKline",{"currency":$("#currency_id").val(),"time":time},function(orders){
			 kline($("#currency_mark").html()+"2"+$("#currency_trade_mark").html(),orders[time]);
		});
	});
});
</script>
<script src="/Public/Home/js/kline.js"></script>

<style>
	.my_coin ul li{ font-size:12px; width:145px; height:24px; overflow:hidden;}
</style>
<div id="main" style="background:#fbfaf8; padding-top:0;">
  <div class="total_top" style="margin-bottom: 20px;">
    <div class="price">
      <img style=" float:left; width:50px; height:50px; padding-right:10px;" src="<?php echo ($currency["currency_logo"]); ?>" />
      <div class="left coin_coin"><?php echo ((isset($currency["currency_name"]) && ($currency["currency_name"] !== ""))?($currency["currency_name"]):"虚拟币"); ?> 对<?php echo ((isset($currency_trade["currency_name"]) && ($currency_trade["currency_name"] !== ""))?($currency_trade["currency_name"]):"人民币"); ?> <br>
        <span id="currency_mark"><?php echo ((isset($currency["currency_mark"]) && ($currency["currency_mark"] !== ""))?($currency["currency_mark"]):"XNB"); ?></span> /<span id="currency_trade_mark"> <?php echo ((isset($currency_trade["currency_mark"]) && ($currency_trade["currency_mark"] !== ""))?($currency_trade["currency_mark"]):"CNY"); ?></span></div>
      <ul class="right now_price">
        <li>最新价<br>
          <span class="money" id="new_price"><?php echo ((isset($currency_message["new_price"]) && ($currency_message["new_price"] !== ""))?($currency_message["new_price"]):"0.000"); ?></span></li>
        <li>买一价 / 卖一价<br>
          <span id="24h_sell"><?php echo ((isset($currency_message["buy_one_price"]) && ($currency_message["buy_one_price"] !== ""))?($currency_message["buy_one_price"]):"0.000"); ?></span><span> / </span><span id="24h_buy"><?php echo ((isset($currency_message["sell_one_price"]) && ($currency_message["sell_one_price"] !== ""))?($currency_message["sell_one_price"]):"0.000"); ?></span></li>
        <li>最高价 / 最低价<br>
          <span id="24h_max"><?php echo ((isset($currency_message["max_price"]) && ($currency_message["max_price"] !== ""))?($currency_message["max_price"]):"0.000"); ?></span><span> / <span><span id="24h_min"><?php echo ((isset($currency_message["min_price"]) && ($currency_message["min_price"] !== ""))?($currency_message["min_price"]):"0.000"); ?></span></span></span></li>
        <li>24H成交量<br>
          <span id="24h_count"><?php echo ((isset($currency_message["24H_done_num"]) && ($currency_message["24H_done_num"] !== ""))?($currency_message["24H_done_num"]):"0.000"); ?></span></li>
      </ul>
      <div class="clear"></div>
    </div>
  </div>
  <div class="main_box"> 
    <!--普通-->
    <div class="k_img k-box" id="k-cus-box">
      <div id="graphbox" style="width:96%;height:455px;margin:0px auto;">
        <div id="container" style="height: 410px; min-width: 460px"></div>
        <div id="chart-control" data="ybc" class="btn-group centered" style="width: 98%;height: 30px;line-height: 30px; marign:0 auto;text-align:center">
          <button data-time="kline_5m" class="btn">5分钟线</button>
          <button data-time="kline_15m" class="btn">15分钟线</button>
          <button data-time="kline_30m" class="btn">30分钟线</button>
          <button data-time="kline_1h" class="btn btn-success">1小时线</button>
          <button data-time="kline_8h" class="btn">8小时线</button>
          <button data-time="kline_1d" class="btn ">日线</button>
        </div>
      </div>
    </div>
     <!--交易币种id-->
                <input value="<?php echo ($currency["currency_id"]); ?>" name="currency_id" type="hidden" id="currency_id">
                 <!--交易币种id-->
    <div class="trading left clearfix">
      <div class="my_coin"> 
        <!--登录后-->
        <?php if(!empty($session)): ?><ul>
            <li style="width: 200px; overflow: hidden; height: 24px;">我的<?php echo ((isset($currency["currency_name"]) && ($currency["currency_name"] !== ""))?($currency["currency_name"]):"虚拟币"); ?> 资产：</li>
            <li>可用：<span class="sell" id="from_over"><?php echo ((isset($user_currency_money['currency']['num']) && ($user_currency_money['currency']['num'] !== ""))?($user_currency_money['currency']['num']):0.00); ?></span></li>
            <li>冻结：<span class="buy" id="from_lock"><?php echo ((isset($user_currency_money['currency']['forzen_num']) && ($user_currency_money['currency']['forzen_num'] !== ""))?($user_currency_money['currency']['forzen_num']):0.00); ?></span></li>
            <li>总量：<span style="color:#333;" id="from_total"><?php echo ($user_currency_money['currency']['num']+$user_currency_money['currency']['forzen_num']); ?></span></li>
            <div class="clear"></div>
          </ul>
          <ul>
            <li style="width: 200px; overflow: hidden; height: 24px;">我的<?php echo ((isset($currency_trade["currency_name"]) && ($currency_trade["currency_name"] !== ""))?($currency_trade["currency_name"]):"人民币"); ?>资产：</li>
            <li>可用：<span class="sell" id="to_over"><?php echo ((isset($user_currency_money['currency_trade']['num']) && ($user_currency_money['currency_trade']['num'] !== ""))?($user_currency_money['currency_trade']['num']):0.00); ?></span></li>
            <li>冻结：<span class="buy" id="to_lock"><?php echo ((isset($user_currency_money['currency_trade']['forzen_num']) && ($user_currency_money['currency_trade']['forzen_num'] !== ""))?($user_currency_money['currency_trade']['forzen_num']):0.00); ?></span></li>
            <li>总量：<span style="color:#333;" id="to_total"><?php echo ($user_currency_money['currency_trade']['num']+$user_currency_money['currency_trade']['forzen_num']); ?></span></li>
            <div class="clear"></div>
          </ul>
          <?php else: ?>
          <p>我的资产：<a href="<?php echo U('Login/index');?>">登录</a> | <a href="<?php echo U('Reg/reg');?>">注册</a></p><?php endif; ?>
      </div>
      <div class="curve pay">
        <div class="buysell sellform">
          <div class="buyformarea left">
            <h2 class="buy">买入<?php echo ((isset($currency["currency_name"]) && ($currency["currency_name"] !== ""))?($currency["currency_name"]):"虚拟币"); ?> </h2>
            <ul class="buyform">
              <li>
                <label>最佳买价：</label>
                <h3 id="coinbuy_nice" class="buy left"><?php echo ((isset($sell_record[count($sell_record)-1]['price']) && ($sell_record[count($sell_record)-1]['price'] !== ""))?($sell_record[count($sell_record)-1]['price']):"0.000"); ?></h3>
              </li>
              <li>
                <label for="price" class="buys">买入价格：</label>
                <input value="<?php echo ((isset($currency_message["buy_one_price"]) && ($currency_message["buy_one_price"] !== ""))?($currency_message["buy_one_price"]):'0.000'); ?>" style="color:#999" name="buyprice" id="coinpricein" onkeyup="vNum(this,<?php echo ($currency["currency_digit_num"]); ?>);zuidakemai();" onclick="if(value==defaultValue){value='';}" onblur="if(value==''){value='0.000';}" type="text">
              </li>
              <li>
                <label for="num" class="buys">最大可买：</label>
                <b id="coinbuy_max"  title="点击将数值写入数量输入框"></b><span class="maxcoin">0</span> </li>
              <li>
                <label for="buynum" class="buys">买入数量：</label>
                <input style="display:none;">
                <!-- for disable autocomplete on chrome -->
                <input name="buynum" id="numberin" onkeyup="vNum(this,<?php echo ($currency["currency_digit_num"]); ?>);" autocomplete="off" type="text" value="">
              </li>
              <li>
                <label for="buyword" class="buys">交易密码：</label>
                <input style="display:none;">
                <!-- for disable autocomplete on chrome -->
                <input class="buyinput" value="" id="pwdtradein" autocomplete="off" type="password" name="buypwd">
              </li>
              <li style="margin-bottom:0;">
                <label for="num" class="buys">手续费：</label>
                <b id="feebuy">0.00</b><span>（<?php echo ((isset($currency["currency_buy_fee"]) && ($currency["currency_buy_fee"] !== ""))?($currency["currency_buy_fee"]):"0.00%"); ?>% <?php echo ((isset($currency["currency_mark"]) && ($currency["currency_mark"] !== ""))?($currency["currency_mark"]):"--"); ?>）</span></li>
              <li>
                <label for="num" class="buys">交易额：</label>
                <b id="coinin_sumprice">0.00</b> <?php echo ((isset($currency_trade["currency_mark"]) && ($currency_trade["currency_mark"] !== ""))?($currency_trade["currency_mark"]):"CNY"); ?></li>
            </ul>
            <p class="sellform">
              <input id="trustbtnin" onclick="buy()" class="submit" value="买入" type="button">
            </p>
            <p class="sellform" style="margin:15px 0;"><span id="trustmsgin" class="tishi">数字货币交易具有极高的风险，投资需谨慎！</span></p>
          </div>
          <div class="buyformarea right">
            <h2 class="sell">卖出<?php echo ((isset($currency["currency_name"]) && ($currency["currency_name"] !== ""))?($currency["currency_name"]):"虚拟币"); ?> </h2>
            <ul class="buyform sellform">
              <li>
                <label>最佳卖价：</label>
                <h3 id="coinsale_nice" class="sell left"><?php echo ((isset($buy_record[0]['price']) && ($buy_record[0]['price'] !== ""))?($buy_record[0]['price']):"0.000"); ?></h3>
              </li>
              <li>
                <label for="price" class="buys">卖出价格：</label>
                <input value="<?php echo ((isset($currency_message["buy_one_price"]) && ($currency_message["buy_one_price"] !== ""))?($currency_message["buy_one_price"]):'0.000'); ?>" style="color:#999" class="buyinput" id="coinpriceout" onkeyup="vNum2(this,<?php echo ($currency["currency_digit_num"]); ?>);" onclick="if(value==defaultValue){value='';}" onblur="if(value==''){value='0.000';}" type="text">
               
              </li>
              <li>
                <label for="num" class="buys">最大可卖：</label>
                <b id="coinsale_max" onclick="$('#numberout').val(this.innerHTML)" title="点击将数值写入数量输入框"><?php echo ((isset($sell_num) && ($sell_num !== ""))?($sell_num):0); ?></b><span></span> </li>
              <li>
                <label for="buynum" class="buys">卖出数量：</label>
                <input style="display:none;">
                <!-- for disable autocomplete on chrome -->
                <input class="buyinput" id="numberout" onkeyup="vNum2(this,<?php echo ($currency["currency_digit_num"]); ?>);" autocomplete="off" type="text">
              </li>
              <li>
                <label for="buyword" class="buys">交易密码：</label>
                <input style="display:none;">
                <!-- for disable autocomplete on chrome -->
                <input class="buyinput" id="pwdtradeout" autocomplete="off" type="password">
              </li>
              <li style="margin-bottom:0;">
                <label for="num" class="buys">手续费：</label>
                <b id="fee">0.00</b><span>（<?php echo ((isset($currency["currency_sell_fee"]) && ($currency["currency_sell_fee"] !== ""))?($currency["currency_sell_fee"]):"0.00"); ?>% <?php echo ((isset($currency_trade["currency_mark"]) && ($currency_trade["currency_mark"] !== ""))?($currency_trade["currency_mark"]):"--"); ?>）</span></li>
              <li>
                <label for="num" class="buys">交易额：</label>
                <b id="coinout_sumprice">0.00</b><?php echo ((isset($currency_trade["currency_mark"]) && ($currency_trade["currency_mark"] !== ""))?($currency_trade["currency_mark"]):"CNY"); ?></li>
            </ul>
            <p class="sellform2">
              <input class="submit" id="trustbtnout" value="卖出" onclick="sell();" type="button">
            </p>
            <p class="sellform" style="margin:15px 0;"><span id="trustmsgout" class="tishi">数字货币交易具有极高的风险，投资需谨慎！</span></p>
          </div>
          <div class="clear"></div>
        </div>
        <h2>最新成交<a href="<?php echo U('Trade/myDeal');?>" class="right my_coin_trade">我的成交</a></h2>
        <div class="buysell" style="border:1px solid #d2d2d2;">
          <ul class="record_title">
            <li>成交时间</li>
            <li>类型</li>
            <li>成交价格</li>
            <li>成交量</li>
            <li>总计</li>
          </ul>
          <div class="record">
            <table class="latest_list record_list" align="center" border="0" cellpadding="0" cellspacing="0">
              <tbody id="coinorderlist">
                <?php if(is_array($trade)): $i = 0; $__LIST__ = $trade;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
                  <td class="list_con1"><?php echo (date(' H:i:s',$vo["trade_time"])); ?></td>
                  <td class="list_con1 <?php echo ($vo["type"]); ?>"><?php if(($vo["type"]) == "sell"): ?>卖出<?php else: ?>买入<?php endif; ?></td>
                  <td class="list_con1 <?php echo ($vo["type"]); ?>"><?php echo ((isset($vo["price"]) && ($vo["price"] !== ""))?($vo["price"]):'暂无'); ?></td>
                  <td class="list_con1"><?php echo ((isset($vo["num"]) && ($vo["num"] !== ""))?($vo["num"]):'暂无'); ?></td>
                  <td class="list_con1"><?php echo ($vo['num']*$vo['price']); ?></td>
                </tr><?php endforeach; endif; else: echo "" ;endif; ?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    <div class="latest right clearfix">
      <p class="more_coin"><a href="<?php echo ((isset($currency["detail_url"]) && ($currency["detail_url"] !== ""))?($currency["detail_url"]):''); ?> " target="_blank">查看货币详情</a></p>

       <?php if(!empty($session)): ?><h2 style="margin-top:20px;">我的委托<a href="<?php echo U('Entrust/manage');?>" class="right my_coin_trade">全部委托</a></h2>
      <div style="border:1px solid #d2d2d2; color:#333;">
        <ul class="my_title">
          <li style=" width:40px;">类型</li>
          <li style=" width:65px; text-align:left; padding-left:10px;">委托价格</li>
          <li style=" width:100px; text-align:left; padding-left:10px;">委托数量</li>
          <li style=" width:52px; text-align:left; padding-left:10px;"></li>
          <li style=" width:52px; text-align:left; padding-left:10px;">操作</li>
        </ul>
        <div class="my_record">
          <table class="latest_list weituo" style=" width:291px;" align="center" border="0" cellpadding="0" cellspacing="0">
            <tbody id="mycointrustlist">
            <?php if(is_array($user_orders)): foreach($user_orders as $key=>$v): ?><tr class="list_con2">
              <td class="<?php echo ($v['type']); ?> left_sell" style="width:55px;"><?php echo (fomatOrdersType($v['type'])); ?></td>
              <td style="width:50px;"><?php echo ((isset($v["price"]) && ($v["price"] !== ""))?($v["price"]):0.00); ?></td>
              <td><?php echo ($v['num']-$v['trade_num']); ?></td>
              <td style="width:60px;"><span style="width:<?php echo setOrdersTradeNum($v['num'],$v['trade_num']); ?>%" class="<?php echo ($v['type']); ?>Span"></span></td>
              <td style="width:40px;"><a href="javascript:void(0)"  onclick="cexiao(<?php echo ($v["orders_id"]); ?>)">撤销</a></td>
            </tr><?php endforeach; endif; ?>
            </tbody>
          </table>
        </div>
      </div>
      <?php else: ?>
      <div style="border:1px solid #e2e2e2; margin:15px 0; padding:15px; color:#333; background:#fff; line-height:20px; font-size:14px; text-align:left;">
                <p style="width:278px; word-break:break-all;">交易规则：<br>
               <?php echo ($config["VAP_rule"]); ?>
                </p>
        </div><?php endif; ?>
      <div style="margin-top:0px;">
        <h2>委托信息</h2>
      </div>
      <table cellspacing="0" cellpadding="0" border="0" class="latest_list weituo" align="center" style="border:1px solid #d2d2d2;">
        <tbody id="coinsalelist">
          <?php if(is_array($sell_record)): $k = 0; $__LIST__ = $sell_record;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?><tr class="list_con2">
              <td class="sell left_sell" style="width:55px;">卖(<?php echo count($sell_record)-$k+1 ?>)</td>
              <td style="width:70px;" onclick="getsell(this)"><?php echo ((isset($vo["price"]) && ($vo["price"] !== ""))?($vo["price"]):0.00); ?></td>
              <td onclick="sellnum(this)"><?php echo ($vo['num']-$vo['trade_num']); ?></td>
              <td style="width:80px;"><span style="width:<?php echo ($vo["bili"]); ?>%" class="sellSpan"></span></td>
            </tr><?php endforeach; endif; else: echo "" ;endif; ?>
        </tbody>
      </table>
      <table cellspacing="0" cellpadding="0" border="0" class="latest_list weituo" align="center" style="border:1px solid #d2d2d2;">
        <thead>
          <tr style="height:26px;">
            <th style="height:26px; text-align:center; width:55px;" class="left_sell">卖 / 买</th>
            <th style="height:26px; width:70px;">价格</th>
            <th style="height:26px;">委托量</th>
            <th style="height:26px;">&nbsp;</th>
          </tr>
        </thead>
        <tbody id="coinbuylist">
          <?php if(is_array($buy_record)): $k = 0; $__LIST__ = $buy_record;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;?><tr class="list_con2">
              <td class="buy left_sell" style="width:55px;" onclick="getbuy(this);">买(<?php echo ($k); ?>)</td>
              <td style="width:70px;" onclick="buynum(this);"><?php echo ((isset($vo["price"]) && ($vo["price"] !== ""))?($vo["price"]):0.00); ?></td>
              <td><?php echo ($vo['num']-$vo['trade_num']); ?></td>
              <td style="width:80px;"><span style="width:<?php echo ($vo["bili"]); ?>%" class="buySpan"></span></td>
            </tr><?php endforeach; endif; else: echo "" ;endif; ?>
        </tbody>
      </table>
    </div>
  </div>
  <div class="clear"></div>
</div>
<format id="price_float" data="3"></format>
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
<input type="hidden" value="<?php echo ((isset($currency["currency_name"]) && ($currency["currency_name"] !== ""))?($currency["currency_name"]):'虚拟币'); ?>"  id = "cname"/>
<script>
function sell(){
	var cname=$("#cname").val();
	if($("#coinpriceout").val()==""){
		$("#trustmsgout").text("卖出价格不能为空").fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
		return false;
	}
	if($("#numberout").val()==""){
		$("#trustmsgout").text("卖出数量不能为空").fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
		return false;
	}
	if($("#pwdtradeout").val()==""){
		$("#trustmsgout").text("交易密码不能为空").fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
		return false;
	}
	if(($("#coinpriceout").val())*($("#numberout").val())<1){
		$("#trustmsgout").text("交易额不能低于1元").fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
		return false;
	}
	layer.confirm('确定卖出?', {
		  btn: ['确定','取消'] //按钮
		}, function(index){
			layer.close(index);
			$("body").append("<div id='loading' style='z-index:19891014; background-color:#000; opacity:0.3; filter:alpha(opacity=30);top: 0;left: 0;width: 100%;height: 100%;position: fixed;_position: absolute;text-align:center;'><img src='/public/home/images/loading.gif' style='margin-top:25%;' /></div>");
			$.ajax({
				type:"post",
				url:"<?php echo U('Trade/sell');?>",
				data:{sellprice:$("#coinpriceout").val(),sellnum:$("#numberout").val(),sellpwd:$("#pwdtradeout").val(),currency_id:$("#currency_id").val()},
				async:true,
				success: function(d){
					$("#loading").remove();
					if(d.status!=1){
					$("#trustmsgout").text(d.info).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);	
					//加一个提示
					layer.msg(d.info);
					}else{
					layer.msg(d.info);
					//刷新页面
					setTimeout(window.location.reload(),2000);
					}
				}
			});
}, function(){
  layer.msg('已取消');
});

}
function buy(){
	if($("#coinpricein").val()==""){
		$("#trustmsgin").text("买入价格不能为空").fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
		return false;
	}
	if($("#numberin").val()==""){
		$("#trustmsgin").text("买入数量不能为空").fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
		return false;
	}
	if($("#pwdtradein").val()==""){
		$("#trustmsgin").text("交易密码不能为空").fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
		return false;
	}
	if(($("#coinpricein").val())*($("#numberin").val())<1){
		$("#trustmsgin").text("交易额不能低于1元").fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
		return false;
	}
	layer.confirm('确定买入?', {
	  btn: ['确定','取消'] //按钮
	}, function(index){
		layer.close(index);
		$("body").append("<div id='loading' style='z-index:19891014; background-color:#000; opacity:0.3; filter:alpha(opacity=30);top: 0;left: 0;width: 100%;height: 100%;position: fixed;_position: absolute;text-align:center;'><img src='/public/home/images/loading.gif' style='margin-top:25%;' /></div>");
		$.ajax({
			type:"post",
			url:"<?php echo U('Trade/buy');?>",
			data:{buyprice:$("#coinpricein").val(),buynum:$("#numberin").val(),buypwd:$("#pwdtradein").val(),currency_id:$("#currency_id").val()},
			async:true,
			success: function(d){
				$("#loading").remove();
				if(d.status!=1){
				$("#trustmsgin").text(d.info).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);	
				//加一个提示
				layer.msg(d.info);
				}else{
				layer.msg(d.info);
				//刷新页面
				setTimeout(window.location.reload(),2000);
				}
			}
		});
	}, function(){
  layer.msg('已取消');
});
}
function badFloat(num, size){
    if(isNaN(num)) return true;
    num += '';
    if(-1 == num.indexOf('.')) return false;
    var f_arr = num.split('.');
    if(f_arr[1].length > size){
        return true;
    }
    return false;
}
//格式化小数
//@f float 传入小数: 123; 1.1234; 1.000001;
//@size int 保留位数
//@add bool 进位: 0舍 1进
function formatfloat(f, size, add){
    f = parseFloat(f);
    if(size == 2) conf = [100,0.01];
    if(size == 3) conf = [1000,0.001];
    if(size == 4) conf = [10000,0.0001];
    if(size == 5) conf = [100000,0.00001];
    if(size == 6) conf = [1000000,0.000001];
    if(size == 7) conf = [10000000,0.0000001];
	if(size == 8) conf = [100000000,0.00000001];
    var ff = Math.floor(f * conf[0]) / conf[0];
    if(add && f > ff) ff += conf[1];
    return isNaN(ff)? 0: ff;
}
function vNum(o, len){
	if($("#coinpricein").val()!="" || $("#coinpricein").val()!="此出价为1个币的价格" && $("#numberin").val()!=""){
		if(badFloat(o.value, len))
		o.value=formatfloat(o.value,len,0);
		var fee2 = <?php echo ($currency["currency_buy_fee"]); ?> /100;
		var ci = $("#coinpricein").val()*$("#numberin").val();
		var ct2 = ci ;//+ ci * fee2;
		
		$("#feebuy").text(Math.round(ci*fee2*10000)/10000);
		$("#coinin_sumprice").text(Math.round(ct2*10000)/10000);
	}
}

function vNum2(o, len){
	if($("#coinpriceout").val()!="" || $("#coinpriceout").val()!="此出价为1个币的价格" && $("#numberout").val()!=""){
	if(badFloat(o.value, len))
		o.value=formatfloat(o.value, len, 0);
	var nt = $("#coinpriceout").val()*$("#numberout").val();
	var fee = <?php echo ($currency["currency_sell_fee"]); ?> /100;
	var ct = nt;// - nt * fee;
	
	$("#fee").text(Math.round(nt*fee*10000)/10000);
	$("#coinout_sumprice").text(Math.round(ct*10000)/10000);
	}
	
}
//5秒自动刷新挂单记录
setInterval(function(){
	$.post('/Home/Orders/getOrders',{"type":'sell',"currency_id":$("#currency_id").val()},function(data){
		$("#coinsalelist").empty();
		var length=parseInt(data.length)
		for(var i=0;i<data.length;i++){
			$("#coinsalelist").append(
				"<tr class='list_con2'><td class='sell left_sell' style='width:55px;'>卖("+(length-i)+")</td><td style='width:70px;cursor:pointer;' onclick='getsell(this)'>"+data[i]['price']+"</td><td onclick='sellnum(this);'>"+parseFloat(data[i]['num']-data[i]['trade_num'])+"</td><td style='width:80px;'><span style='width:"+data[i]['bili']+"%' class='sellSpan'></span></td></tr>"
			);
		}
	});
		$.post('/Home/Orders/getOrders',{"type":'buy',"currency_id":$("#currency_id").val()},function(data){
		$("#coinbuylist").empty();
		var length=parseInt(data.length)
		for(var i=0;i<data.length;i++){
			$("#coinbuylist").append(
				"<tr class='list_con2'><td class='buy left_sell' style='width:55px;'>买("+(parseInt(i)+1)+")</td><td style='width:70px;cursor:pointer;' onclick='sellnum(this);'>"+data[i]['price']+"</td><td onclick='buynum(this);'>"+parseFloat(data[i]['num']-data[i]['trade_num'])+"</td><td style='width:80px;'><span style='width:"+data[i]['bili']+"%' class='buySpan'></span></td></tr>"
			);
		}
	})		
},5000);


</script>
<script>
function zuidakemai(){
	if($("#coinpricein").val()!="" && $("#coinpricein").val()!=0){
		var m = <?php echo ((isset($user_currency_money["currency_trade"]["num"]) && ($user_currency_money["currency_trade"]["num"] !== ""))?($user_currency_money["currency_trade"]["num"]):0); ?>;
		var fee=<?php echo ($currency["currency_buy_fee"]); ?>/100;
		m=m*(1-fee);
		var n = parseFloat($("#coinpricein").val());
		
		$(".maxcoin").text(Math.round(m/n*10000)/10000);
	}else{
		$(".maxcoin").text(0);
	}
}
</script>
<script>
	function cexiao(_this){
		layer.confirm('确定撤销委托？', {
	  btn: ['确定','取消'], //按钮
	  title: '撤销委托'
	}, function(){
	  $.post('<?php echo U('Entrust/cancel');?>',{status:-1,order_id:_this},function(data){
				   if(data['status'] == 1){
					   layer.msg(data['info']);
					   setTimeout(window.location.reload(),1000);
				   }else{
					   layer.msg(data['info']);
				   }
			})
	}, function(){
	  layer.msg('已取消');
	});

	}
	
	function getsell(_this){
		$("#coinpricein").val($(_this).text());
		zuidakemai();
	}
	function sellnum(_this){
		$("#numberin").val($(_this).text());
	}
	function getbuy(_this){
		$("#coinpriceout").val($(_this).text());
	}
	function buynum(_this){
		$("#numberout").val($(_this).text());
	}

</script>