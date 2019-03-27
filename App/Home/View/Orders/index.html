<include file="App/Home/View/Public/header.html"/>
<link rel="stylesheet" type="text/css" href="__PUBLIC__/Home/css/kline.css">
<script src="__PUBLIC__/Home/js/jquery-1.js"></script>
<script src="__PUBLIC__/Home/js/highstock.js"></script>
<script>
/*chart_5m = {symbol:"{$currency.currency_mark}_{$currency_trade.currency_mark}",symbol_view:"DDD/CNY",ask:1.2,time_line:{$kline_5m}};
chart_15m = {symbol:"{$currency.currency_mark}_{$currency_trade.currency_mark}",symbol_view:"DDD/CNY",ask:1.2,time_line:{$kline_15m}};
chart_1d = {symbol:"{$currency.currency_mark}_{$currency_trade.currency_mark}",symbol_view:"DDD/CNY",ask:1.2,time_line:{$kline_1d}};
chart_1h = {symbol:"{$currency.currency_mark}_{$currency_trade.currency_mark}",symbol_view:"DDD/CNY",ask:1.2,time_line:{$kline_1h}};
chart_30m = {symbol:"{$currency.currency_mark}_{$currency_trade.currency_mark}",symbol_view:"DDD/CNY",ask:1.2,time_line:{$kline_30m}};
chart_8h = {symbol:"{$currency.currency_mark}_{$currency_trade.currency_mark}",symbol_view:"DDD/CNY",ask:1.2,time_line:{$kline_8h}};*/
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
<script src="__PUBLIC__/Home/js/kline.js"></script>

<style>
	.my_coin ul li{ font-size:12px; width:145px; height:24px; overflow:hidden;}
</style>
<div id="main" style="background:#fbfaf8; padding-top:0;">
  <div class="total_top" style="margin-bottom: 20px;">
    <div class="price">
      <img style=" float:left; width:50px; height:50px; padding-right:10px;" src="{$currency.currency_logo}" />
      <div class="left coin_coin">{$currency.currency_name|default="虚拟币"} 对{$currency_trade.currency_name|default="人民币"} <br>
        <span id="currency_mark">{$currency.currency_mark|default="XNB"}</span> /<span id="currency_trade_mark"> {$currency_trade.currency_mark|default="CNY"}</span></div>
      <ul class="right now_price">
        <li>最新价<br>
          <span class="money" id="new_price">{$currency_message.new_price|default="0.000"}</span></li>
        <li>买一价 / 卖一价<br>
          <span id="24h_sell">{$currency_message.buy_one_price|default="0.000"}</span><span> / </span><span id="24h_buy">{$currency_message.sell_one_price|default="0.000"}</span></li>
        <li>最高价 / 最低价<br>
          <span id="24h_max">{$currency_message.max_price|default="0.000"}</span><span> / <span><span id="24h_min">{$currency_message.min_price|default="0.000"}</span></span></span></li>
        <li>24H成交量<br>
          <span id="24h_count">{$currency_message.24H_done_num|default="0.000"}</span></li>
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
                <input value="{$currency.currency_id}" name="currency_id" type="hidden" id="currency_id">
                 <!--交易币种id-->
    <div class="trading left clearfix">
      <div class="my_coin"> 
        <!--登录后-->
        <notempty name="session">
          <ul>
            <li style="width: 200px; overflow: hidden; height: 24px;">我的{$currency.currency_name|default="虚拟币"} 资产：</li>
            <li>可用：<span class="sell" id="from_over">{$user_currency_money['currency']['num']|default=0.00}</span></li>
            <li>冻结：<span class="buy" id="from_lock">{$user_currency_money['currency']['forzen_num']|default=0.00}</span></li>
            <li>总量：<span style="color:#333;" id="from_total">{$user_currency_money['currency']['num']+$user_currency_money['currency']['forzen_num']}</span></li>
            <div class="clear"></div>
          </ul>
          <ul>
            <li style="width: 200px; overflow: hidden; height: 24px;">我的{$currency_trade.currency_name|default="人民币"}资产：</li>
            <li>可用：<span class="sell" id="to_over">{$user_currency_money['currency_trade']['num']|default=0.00}</span></li>
            <li>冻结：<span class="buy" id="to_lock">{$user_currency_money['currency_trade']['forzen_num']|default=0.00}</span></li>
            <li>总量：<span style="color:#333;" id="to_total">{$user_currency_money['currency_trade']['num']+$user_currency_money['currency_trade']['forzen_num']}</span></li>
            <div class="clear"></div>
          </ul>
          <else/>
          <p>我的资产：<a href="{:U('Login/index')}">登录</a> | <a href="{:U('Reg/reg')}">注册</a></p>
        </notempty>
      </div>
      <div class="curve pay">
        <div class="buysell sellform">
          <div class="buyformarea left">
            <h2 class="buy">买入{$currency.currency_name|default="虚拟币"} </h2>
            <ul class="buyform">
              <li>
                <label>最佳买价：</label>
                <h3 id="coinbuy_nice" class="buy left">{$sell_record[count($sell_record)-1]['price']|default="0.000"}</h3>
              </li>
              <li>
                <label for="price" class="buys">买入价格：</label>
                <input value="{$currency_message.buy_one_price|default='0.000'}" style="color:#999" name="buyprice" id="coinpricein" onkeyup="vNum(this,{$currency.currency_digit_num});zuidakemai();" onclick="if(value==defaultValue){value='';}" onblur="if(value==''){value='0.000';}" type="text">
              </li>
              <li>
                <label for="num" class="buys">最大可买：</label>
                <b id="coinbuy_max"  title="点击将数值写入数量输入框"></b><span class="maxcoin">0</span> </li>
              <li>
                <label for="buynum" class="buys">买入数量：</label>
                <input style="display:none;">
                <!-- for disable autocomplete on chrome -->
                <input name="buynum" id="numberin" onkeyup="vNum(this,{$currency.currency_digit_num});" autocomplete="off" type="text" value="">
              </li>
              <li>
                <label for="buyword" class="buys">交易密码：</label>
                <input style="display:none;">
                <!-- for disable autocomplete on chrome -->
                <input class="buyinput" value="" id="pwdtradein" autocomplete="off" type="password" name="buypwd">
              </li>
              <li style="margin-bottom:0;">
                <label for="num" class="buys">手续费：</label>
                <b id="feebuy">0.00</b><span>（{$currency.currency_buy_fee|default="0.00%"}% {$currency.currency_mark|default="--"}）</span></li>
              <li>
                <label for="num" class="buys">交易额：</label>
                <b id="coinin_sumprice">0.00</b> {$currency_trade.currency_mark|default="CNY"}</li>
            </ul>
            <p class="sellform">
              <input id="trustbtnin" onclick="buy()" class="submit" value="买入" type="button">
            </p>
            <p class="sellform" style="margin:15px 0;"><span id="trustmsgin" class="tishi">数字货币交易具有极高的风险，投资需谨慎！</span></p>
          </div>
          <div class="buyformarea right">
            <h2 class="sell">卖出{$currency.currency_name|default="虚拟币"} </h2>
            <ul class="buyform sellform">
              <li>
                <label>最佳卖价：</label>
                <h3 id="coinsale_nice" class="sell left">{$buy_record[0]['price']|default="0.000"}</h3>
              </li>
              <li>
                <label for="price" class="buys">卖出价格：</label>
                <input value="{$currency_message.buy_one_price|default='0.000'}" style="color:#999" class="buyinput" id="coinpriceout" onkeyup="vNum2(this,{$currency.currency_digit_num});" onclick="if(value==defaultValue){value='';}" onblur="if(value==''){value='0.000';}" type="text">
               
              </li>
              <li>
                <label for="num" class="buys">最大可卖：</label>
                <b id="coinsale_max" onclick="$('#numberout').val(this.innerHTML)" title="点击将数值写入数量输入框">{$sell_num|default=0}</b><span></span> </li>
              <li>
                <label for="buynum" class="buys">卖出数量：</label>
                <input style="display:none;">
                <!-- for disable autocomplete on chrome -->
                <input class="buyinput" id="numberout" onkeyup="vNum2(this,{$currency.currency_digit_num});" autocomplete="off" type="text">
              </li>
              <li>
                <label for="buyword" class="buys">交易密码：</label>
                <input style="display:none;">
                <!-- for disable autocomplete on chrome -->
                <input class="buyinput" id="pwdtradeout" autocomplete="off" type="password">
              </li>
              <li style="margin-bottom:0;">
                <label for="num" class="buys">手续费：</label>
                <b id="fee">0.00</b><span>（{$currency.currency_sell_fee|default="0.00"}% {$currency_trade.currency_mark|default="--"}）</span></li>
              <li>
                <label for="num" class="buys">交易额：</label>
                <b id="coinout_sumprice">0.00</b>{$currency_trade.currency_mark|default="CNY"}</li>
            </ul>
            <p class="sellform2">
              <input class="submit" id="trustbtnout" value="卖出" onclick="sell();" type="button">
            </p>
            <p class="sellform" style="margin:15px 0;"><span id="trustmsgout" class="tishi">数字货币交易具有极高的风险，投资需谨慎！</span></p>
          </div>
          <div class="clear"></div>
        </div>
        <h2>最新成交<a href="{:U('Trade/myDeal')}" class="right my_coin_trade">我的成交</a></h2>
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
                <volist name='trade' id='vo'>
                <tr>
                  <td class="list_con1">{$vo.trade_time|date=' H:i:s',###}</td>
                  <td class="list_con1 {$vo.type}"><eq name='vo.type' value='sell'>卖出<else/>买入</eq></td>
                  <td class="list_con1 {$vo.type}">{$vo.price|default='暂无'}</td>
                  <td class="list_con1">{$vo.num|default='暂无'}</td>
                  <td class="list_con1">{$vo['num']*$vo['price']}</td>
                </tr>
                </volist>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    <div class="latest right clearfix">
      <p class="more_coin"><a href="{$currency.detail_url|default=''} " target="_blank">查看货币详情</a></p>

       <notempty name="session">

      <h2 style="margin-top:20px;">我的委托<a href="{:U('Entrust/manage')}" class="right my_coin_trade">全部委托</a></h2>
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
            <foreach name='user_orders' item='v'>
             <tr class="list_con2">
              <td class="{$v['type']} left_sell" style="width:55px;">{$v['type']|fomatOrdersType=###}</td>
              <td style="width:50px;">{$v.price|default=0.00}</td>
              <td>{$v['num']-$v['trade_num']}</td>
              <td style="width:60px;"><span style="width:<php>echo setOrdersTradeNum($v['num'],$v['trade_num']);</php>%" class="{$v['type']}Span"></span></td>
              <td style="width:40px;"><a href="javascript:void(0)"  onclick="cexiao({$v.orders_id})">撤销</a></td>
            </tr>
            </foreach>
            </tbody>
          </table>
        </div>
      </div>
      <else/>
      <div style="border:1px solid #e2e2e2; margin:15px 0; padding:15px; color:#333; background:#fff; line-height:20px; font-size:14px; text-align:left;">
                <p style="width:278px; word-break:break-all;">交易规则：<br>
               {$config.VAP_rule}
                </p>
        </div>
      </notempty>
      <div style="margin-top:0px;">
        <h2>委托信息</h2>
      </div>
      <table cellspacing="0" cellpadding="0" border="0" class="latest_list weituo" align="center" style="border:1px solid #d2d2d2;">
        <tbody id="coinsalelist">
          <volist name='sell_record' key='k' id='vo'>
            <tr class="list_con2">
              <td class="sell left_sell" style="width:55px;">卖(<php>echo count($sell_record)-$k+1</php>)</td>
              <td style="width:70px;" onclick="getsell(this)">{$vo.price|default=0.00}</td>
              <td onclick="sellnum(this)">{$vo['num']-$vo['trade_num']}</td>
              <td style="width:80px;"><span style="width:{$vo.bili}%" class="sellSpan"></span></td>
            </tr>
          </volist>
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
          <volist name='buy_record' key='k' id='vo'>
            <tr class="list_con2">
              <td class="buy left_sell" style="width:55px;" onclick="getbuy(this);">买({$k})</td>
              <td style="width:70px;" onclick="buynum(this);">{$vo.price|default=0.00}</td>
              <td>{$vo['num']-$vo['trade_num']}</td>
              <td style="width:80px;"><span style="width:{$vo.bili}%" class="buySpan"></span></td>
            </tr>
          </volist>
        </tbody>
      </table>
    </div>
  </div>
  <div class="clear"></div>
</div>
<format id="price_float" data="3"></format>
<!--footer start--> 
<include file="App/Home/View/Public/footer.html"/> 
<!--footer end--> 
<input type="hidden" value="{$currency.currency_name|default='虚拟币'}"  id = "cname"/>
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
				url:"{:U('Trade/sell')}",
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
			url:"{:U('Trade/buy')}",
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
		var fee2 = {$currency.currency_buy_fee} /100;
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
	var fee = {$currency.currency_sell_fee} /100;
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
		var m = {$user_currency_money.currency_trade.num|default=0};
		var fee={$currency.currency_buy_fee}/100;
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
	  $.post('{:U('Entrust/cancel')}',{status:-1,order_id:_this},function(data){
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