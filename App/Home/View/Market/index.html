<include file="App/Home/View/Public/header.html"/>

<style>
.greenfont{ color:#039904;}
.coin_footer{ clear:both; padding-top:20px;}
</style>

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
<div class="bg_w" style="width: 100%; height: 86px;">
<div class="autobox">
         <div class="all_coin_price">
            <div class="all_coin_show"><a href=""><img src="{$liCurrency.currency_logo}" style="float:left; width:50px;  margin-right:5px;" /><span>{$liCurrency['currency_name']}({$liCurrency['currency_mark']})</span><em></em></a></div>
            <div class="all_coin_list"><div class="all_coin_box"><ul id="all_coin">
			<foreach name="listCurrency" item="vo">
			<li><a href="{:U('Market/index',array('coin'=>$vo['currency_mark']))}"><img src="{$vo.currency_logo}" style="float:left; width:50px; margin-right:5px;" /><div class="all_coin_name"><p>{$vo.currency_name}({$vo['currency_mark']})</p><span>￥{$vo.newPrice}</span></div></a></li>
			</foreach>
			</ul></div></div>
        </div>
        <dl class="all_coin_info">
            <dt id="market-price">{$liCurrency['newPrice']|default =0}</dt>
            <dd><p class="orange" id="market-vrc">{$liCurrency['maxPrice']|default =0}</p>最高价</dd>
            <dd><p class="greenfont" id="market-min" style="color:#039904">{$liCurrency['minPrice']|default =0}</p>最低价</dd>
            <dd><p id="market-buy">{$liCurrency['sellPrice']|default =0}</p>买一价</dd>
            <dd><p id="market-sell">{$liCurrency['buyPrice']|default =0}</p>卖一价</dd>
            <dd class="w150"><p id="market-sum">{$liCurrency['countNum']|default =0}</p>成交量</dd>
        </dl>
    </div>
</div>
</div>
<div class="list-tab-box">
    <ul class="list-tab">
        <!--<li style="margin:0;"><i class="arrow-tab"></i><a href="javascript:void(0);">交易维理币</a></li>-->
        <li class="on"><a href="javascript:void(0);"><i class="arrow-tab"></i>{$liCurrency['currency_name']}行情</a></li>
        <!--<li><a href="javascript:void(0);"><i class="arrow-tab"></i>了解维理币</a></li>
        <li><a href="javascript:void(0);"><i class="arrow-tab"></i>评价维理币</a></li>-->
    </ul>
</div>
<!--头部结束-->
<div id="chart-control" data="vrc" class="tradeinfo" style="">
    <div class="autobox mt20 clear" id="Kline-change" style="margin-top:20px; "></div>
        <!--<div data-highcharts-chart="0" style="background-color: #fff;border:1px solid #ebebeb;padding:30px 20px 20px 10px;margin-bottom:20px;" id="graphbox"><div style="position: relative; overflow: hidden; width: 968px; height: 400px; text-align: left; line-height: normal; z-index: 0; left: 0.5px; top: 0px;" id="highcharts-0" class="highcharts-container"></div></div>-->
        <div class="autobox">
        <div class="left w690" style="position:relative; float:left; ">

            <!--行情图-->
            <script>
                document.write('<s'+'cript src="/js/depth.js?t='+Math.random()+'"></scr'+'ipt>');
            </script><script src="__PUBLIC__/Home/js/depth.js"></script>
            <!--行情图结束-->
            <div class="clear">
                <h3>买卖盘</h3>
                <div style="border:1px solid #ebebeb;overflow: hidden;">
                    <table class="infotable first" style="float:left;width: 6%;" cellpadding="0" cellspacing="0">
                        <thead>
                        <tr>
                            <th>&nbsp;&nbsp;&nbsp;&nbsp;</th>
                        </tr>
                        </thead>
                        <tbody id="infolist">
						
						<for start="0" end="$count">
							<tr><td>{$i+1}</td></tr>
						</for>
						
						
					
						</tbody>
                    </table>
                    <table class="infotable market" cellpadding="0" cellspacing="0">
                        <thead>
                        <tr>
                            <th width="30%">折合(￥)</th>
                            <th width="30%">买入量</th>
                            <th width="30%">买入价(￥)</th>
                        </tr>
                        </thead>
                        <tbody id="infobuylist"> 
						<!-- {$vo.bili} 是百分比 需要的那个值 写的时候直接写入就可以了 带符号% 循环中需要的-->
						<foreach name="sell" item="vo" >
						<tr><td><span>{$vo['price'] * $vo['num']}<i style="font-style:normal;color:#999;"></i></span></td><td><span style="color:#e55600;">{$vo.num}</span></td> <td> <span>{$vo.price}</span><span data-count="504.461" class="deepbar buy" style="margin-top:-10px; width: {$vo.bili};"></span></td>  </tr>
						</foreach >
						</tbody>

                    </table>
                    <table class="infotable market last" cellpadding="0" cellspacing="0">
                        <thead>
                        <tr>
                            <th width="33.3333%">卖出价(￥)</th>
                            <th width="33.3333%">卖出量</th>
                            <th width="33.3333%">折合(￥)</th>
                        </tr>
                        </thead>
                        <tbody id="infoselllist">
						<!-- {$vo.bili} 是百分比 需要的那个值 写的时候直接写入就可以了 带符号%  下面foreach 循环中需要的-->
						<foreach name="buy" item="vo">
                        <tr><td><span>{$vo.price}</span></td><td><span style="color:#690;">{$vo.num}</span></td> <td><span>{$vo['price'] * $vo['num']}<i style="font-style:normal;color:#999;"></i></span><span data-count="1000" class="deepbar sell" style="margin-top:-10px; width: {$vo.bili};"></span></td> </tr>
						</foreach >
                    
                        </tbody>

                    </table>
                </div>

            </div>
        </div>

        <div class="right w290" style="float:right;">
            <h3>最新成交</h3>
            <table class="infotable turnover" cellpadding="0" cellspacing="0">
                <thead>
                <tr>
                    <th width="33.33333%">时间</th> 
                    <th width="33.33333%">价格</th>
                    <th width="33.33333%">数量</th>
                </tr>
                </thead>
                <tbody id="turnover">
				<foreach name="deal" item="vo">
				<tr><td>{$vo.add_time|date="H:i:s",###}</td><eq name="vo['type']" value="sell"> <td class="red"><else/><td class="greenfont"></eq>{$vo.price}</td><td>{$vo.num}</td></tr>
				</foreach>
				</tbody>

            </table>
        </div>
        </div>



    <!--联系方式-->
    
</div>
<script>

$(function () {
	$.get('/Home/Market/getMarket',function(data){
		 $('#Kline-change').highcharts({
        chart: {
            type: 'areaspline'
        },
        title: {
            text: ''
        },
        legend: {
            layout: 'vertical',
            align: 'left',
            verticalAlign: 'top',
            x: 150,
            y: 100,
            floating: true,
            borderWidth: 1,
            backgroundColor: '#FFFFFF'
        },
        xAxis: {
            categories: data['price'],
        
        },
        yAxis: {
            title: {
                text: '{$liCurrency['currency_mark']}'
            }
        },
        tooltip: {
            shared: true,
            valueSuffix: ' CNY'
        },
        credits: {
            enabled: false
        },
        plotOptions: {
            areaspline: {
                fillOpacity: 0.5
            }
        },
        series: [{
            name: '买单',
            data: data['buy']
        }, {
            name: '卖单',
            data: data['sell']
        }]
    });
		
	})
   
});
</script>
    
<!--footer start-->
<include file="App/Home/View/Public/footer.html"/>
<!--footer end-->
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
<script>
$(".all_coin_show").hover(function(){
	$(".all_coin_list").show();	
},function(){
	$(".all_coin_list").hover(function(){
		$(".all_coin_list").show();	
	},function(){
		$(".all_coin_list").hide();	
	});
	$(".all_coin_list").hide();
});
</script>