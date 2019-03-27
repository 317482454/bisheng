//获取价格间隔时间
con_rmb_ajax = 10;

coin = {name:'btc', sign:'', to:'cny'};

var coinpricemsg = '此出价为1个币的价格';
var ybycoinpricemsg  = '此出价为1个币的价格';
var inchange = false;
//买入总价
function sumbuy(rate,point){
    var fee = 0;
    var point_cny = point;
    if(coin.to == 'cny'){
        point_cny = 2;
    }
    var sumprice = parseFloat(accMul(parseFloat($('#coinpricein').val()), parseFloat($('#numberin').val())));
    sumprice = formatfloat(sumprice, point_cny, 0);

    if(rate > 0){
        fee = formatfloat(accMul($('#numberin').val(), rate), 6, 0);
        $('#feebuy').html(fee);
    }
	$('#coinin_sumprice').html(sumprice);
}
//卖出总价
function sumsale(rate,point){
    var fee = 0;
    var point_cny = point;
    if(coin.to == 'cny'){
        point_cny = 2;
    }
    if(rate != 0){
        fee = formatfloat(accMul(accMul($('#coinpriceout').val(),$('#numberout').val()), rate), point, 0);
        $('#fee').html(fee);
    }
    var sumprice = parseFloat(accSub(parseFloat(accMul(parseFloat($('#coinpriceout').val()), parseFloat($('#numberout').val()))),fee));
    sumprice = formatfloat(sumprice, point_cny, 0);
	$('#coinout_sumprice').html(sumprice);
}

//委托
function coinsum(limit){
	$.get('/json/'+coin.name+'_sum?t=' + Math.random(), function(data){
        if(!data || "fail" == data.msg){
            return false;
        }
        coininfo = coin.name.split("2");
        b4width = 0.0001;
        if(coininfo[0] == 'btc'){
            b4width = 1;
        }else if(coininfo[0] == 'ltc'){
            b4width = 0.026;
        }else if(coininfo[0] == 'ybc'){
            b4width = 0.026;
        }else if(coininfo[0] == 'doge'){
            b4width = 0.00001;
        }else if(coininfo[0] == 'yby'){
            b4width = 0.00001;
        }else if(coininfo[0] == 'fct'){
            b4width = 0.08;
        }else if(coininfo[0] == 'vap'){
            b4width = 0.08;
        }else if(coininfo[0] == 'axf'){
            b4width = 0.008;
        }else if(coininfo[0] == 'irc'){
            b4width = 0.08;
        }else if(coininfo[0] == 'vpn'){
            b4width = 0.0001;
        }else if(coininfo[0] == 'trmb'){
            b4width = 0.0016;
        }else if(coininfo[0] == 'abc'){
            b4width = 0.008;
        }else if(coininfo[0] == 'cic'){
            b4width = 0.0001;
        }else if(coininfo[0] == 'smc'){
            b4width = 0.00008;
        }else if(coininfo[0] == 'mc'){
            b4width = 0.0001;
        }else if(coininfo[0] == 'xsi'){
            b4width = 0.001;
        }else if(coininfo[0] == 'rhc'){
            b4width = 0.001;
        }else if(coininfo[0] == 'gooc'){
            b4width = 0.0002;
        }else if(coininfo[0] == 'tmc'){
            b4width = 0.01;
        }else if(coininfo[0] == 'ozc'){
            b4width = 0.04;
        }
	    rmbprice = coininfo[1]=='ybc'?ybcprice:btcprice;
		var buy_niceprice = (data['sale'].length==0)?((data['buy'].length==0)?0:data['buy'][0].p):data['sale'][0].p;
        var sale_niceprice = (data['buy'].length==0)?((data['sale'].length==0)?0:data['sale'][0].p):data['buy'][0].p;
		$('#24h_buy').html(buy_niceprice);
		$('#24h_sell').html(sale_niceprice);
		$('#coinsale_nice').html(sale_niceprice);
		$('#rmbsale_nice').html(getNum(accMul(sale_niceprice*rmbprice,1)));
        $('#coinbuy_nice').html(buy_niceprice);
		$('#rmbbuy_nice').html(getNum(accMul(buy_niceprice*rmbprice,1)));
		for(var type in data){
			var d = data[type];
			var html = '';
			var idhtml = '';
			if(type == 'sale'){
				var dsort = [];
				var dmax = d.length > limit? limit: d.length;
				for(var j = dmax; j > 0; j--) dsort[limit - j] = d[j - 1];
				d = dsort;
			}
			for(var i in d){
				if(limit && i == limit) break;
				var num = parseFloat(d[i].n), width = num*b4width>80?80:num*b4width;
				i = parseInt(i);
				var cls = (i%2==0)?'list_con1':'list_con2';
				if(type == 'buy'){
					idhtml = '<td class="buy left_sell" style="width:55px;">买(' + (i+1) + ')</td>';
				}else{
					idhtml = '<td class="sell left_sell" style="width:55px;">卖(' + (dmax--) + ')</td>';
				}
				html += '<tr class='+cls+'>' + idhtml + '<td style="width:70px;">' + d[i].p + '</td><td>' + coin.sign + d[i].n + '</td>';
				html += '<td style="width:80px;"><span style="width:'+width+'px" class="'+(type=='buy'?'sell':'buy')+'Span"></span></td>';
				html += '</tr>';
			}
			$('#coin' + type + 'list').html(html);
			$('#coin_' + type + 'one').html(typeof d[0] == 'undefined'? 0: parseFloat(d[0].p));
		}
		msg = (coininfo[0] == 'yby')?ybycoinpricemsg:coinpricemsg;
		if($('#coinpricein').val() == msg) {
			$('#coinpricein').val(buy_niceprice);
            coinbuy_max(buy_niceprice,0,coininfo[1]);
		}
		if($('#coinpriceout').val()== msg)
			$('#coinpriceout').val(sale_niceprice);
	}, 'json');
	setTimeout("coinsum(" + limit + ")", 4800);
}
//个人委单
function mycointrust(circ) {
	$.get('/ajax/querycointrust/coinname/'+coin.name, function(d){
		var html = "";
		for (var i = 0; i < d.data.length; i++) {	
			if (i % 2 == 0) {
				html += "<tr class='list_con1'>";
 			} else {
				html += "<tr class='list_con2'>";
			}
			if (d.data[i].flag == 'buy') html += "<td class=\"buy buy60\">买</td>";
			else html += "<td class=\"sell buy60\">卖</td>";
			html += "<td class=\"buy80\" id=\"t_s_"+d.data[i].id+"\">" + accMul(d.data[i].price, 1)+"</td>";
			html += "<td class=\"buy80\" id=\"t_n_o_" + d.data[i].id +"\">" + d.data[i].numberover + "</td>";
			html += "<td class=\"tableEnd cost buy40\" id=\"t_opt_" + d.data[i].id + "\">";
			if (d.data[i].status == 0 || d.data[i].status == 1) {
                        	html += "<a class=\"remove\" href=\"javascript:void(0);\" onclick=\"trustcoincancel(" + d.data[i].id + ",'"+coin.name+"')\">撤销</a>";
                        }
            html += "</td></tr>";
		}
		$('#mycointrustlist').html(html);	
	}, 'json');
	if(circ)
		setTimeout('mycointrust(true)', 5000);
}
//取消委托
function trustcoincancel(id,coinname){
	$('#t_opt_' + id).html('撤销中');
	$.get('/ajax/cointrustcancel/id/' + id+'/coin/'+coinname, function(d){
		if(d.status){
			coininfo = coinname.split("2");
			$('#t_n_o_' + id).html('0.000');
			$('#t_s_' + id).html('已撤消');
			//$('#t_s_' + id).attr('class', 'buy cancel');
			$('#t_opt_' + id).html('');
			//更新用户的最大可买可卖
            $('#coinsale_max').html(formatfloat(d.data[coininfo[0]+'_over'],4,0));
            $('#coinsale_max').html(coinsale_max(formatfloat(d.data[coininfo[0]+'_over'],4,0), coininfo[0]));
			$('#from_over').html(formatfloat(d.data[coininfo[0]+'_over'],4,0));
            $('#from_lock').html(formatfloat(d.data[coininfo[0]+'_lock'],4,0));
			$('#to_over').html(formatfloat(d.data[coininfo[1]+'_over'],4,0));
            $('#to_lock').html(formatfloat(d.data[coininfo[1]+'_lock'],4,0));
            nice_price = $('#coinpricein').val();
			var bcoinum = d.data[coininfo[1]+'_over'];
	        if(bcoinum > 0 && nice_price > 0){
                $('#coinbuy_max').html(formatfloat(bcoinum / nice_price, 4, 0));
	        }      
		}
	}, 'json');
}
//最大可买
function coinbuy_max(price,fcoin,bcoin){
	price = formatfloat(price, 8, 0);
	for(var i in user){
		if(i == bcoin+'_over')
		var bcoinum = user[i];
	}
	if(bcoinum > 0 && price > 0){
        if(fcoin == 'btc'){
            bcoinum = formatfloat(bcoinum*0.999, 4, 0);
        }
        var buy_max = formatfloat(bcoinum / price, 2, 0);
		$('#coinbuy_max').html(buy_max);
	}
}
//最大可卖
function coinsale_max(number, coin)
{
    return number;
}


//委托提交
function tcoinSubmit(coinname, type){
	$('#trustbtn'+type).attr('class', 'submit').attr('onclick', '');
	$.post("/ajax/trustcoin/",{type:type, coin: coinname, price:$('#coinprice'+type).val(), number: $('#number'+type).val(), pwdtrade: encodeURIComponent($('#pwdtrade'+type).val()), hotp: encodeURIComponent($('#hotp'+type).val())},
		function(d){
			$('#trustbtn'+type).attr('class', 'submit').attr('onclick', 'tcoinSubmit("'+coinname+'","'+type+'")');
			if(d.status) for(var i in d.data) user[i] = d.data[i];
			coininfo = coinname.split("2");
            $('#coinsale_max').html(coinsale_max(user[coininfo[0]+'_over'], coininfo[0]));
			$('#from_over').html(formatfloat(user[coininfo[0]+'_over'],4,0));
            $('#from_lock').html(formatfloat(user[coininfo[0]+'_lock'],4,0));
			$('#to_over').html(formatfloat(user[coininfo[1]+'_over'],4,0));
            $('#to_lock').html(formatfloat(user[coininfo[1]+'_lock'],4,0));
			coin_price = $('#coinprice'+type).val();
			var bcoinum = user[coininfo[1]+'_over'];
	        if(bcoinum > 0 && coin_price > 0){
                $('#coinbuy_max').html(formatfloat(bcoinum / coin_price, 4, 0));
	        }      
			$('#trustmsg'+type).html(d.msg).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
		}, 'json');
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
function accSub(arg1,arg2){
    var r1,r2,m,n;
    try{r1=arg1.toString().split(".")[1].length}catch(e){r1=0}
    try{r2=arg2.toString().split(".")[1].length}catch(e){r2=0}
    m=Math.pow(10,Math.max(r1,r2));
    //last modify by deeka
    //动态控制精度长度
    n=(r1>=r2)?r1:r2;
    return ((arg1*m-arg2*m)/m).toFixed(n);
}
function accMul(arg1,arg2) { 
    var m=0,s1=arg1.toString(),s2=arg2.toString(); 
    try{m+=s1.split(".")[1].length}catch(e){} 
    try{m+=s2.split(".")[1].length}catch(e){} 
    return Number(s1.replace(".",""))*Number(s2.replace(".",""))/Math.pow(10,m) 
} 
function getNum(s)
{
    var str = Math.round(s*10000)/10000;
    return str;
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

function FormatAfterDotNumber( ValueString, nAfterDotNum )
{
   var ValueString,nAfterDotNum ;
　　var resultStr,nTen;
　　ValueString = ""+ValueString+"";
　　strLen = ValueString.length;
　　dotPos = ValueString.indexOf(".",0);
　　if (dotPos == -1)
        {
　　　　resultStr = ValueString+".";
　　　　for (i=0;i<nAfterDotNum ;i++)
                {
　　　　　　resultStr = resultStr+"0";
　　        }
　　　　return resultStr;
　　}
　　else
        {
　　　　if ((strLen - dotPos - 1) >= nAfterDotNum ){
　　　　　　nAfter = dotPos + nAfterDotNum  + 1;
　　　　　　nTen =1;
　　　　　　for(j=0;j<nAfterDotNum ;j++){
　　　　　　　　nTen = nTen*10;
　　　　　　}
　　　　　　resultStr = Math.round(parseFloat(ValueString)*nTen)/nTen;
　　　　　　return resultStr;
　　　　}
　　　　else{
　　　　　　resultStr = ValueString;
　　　　　　for (i=0;i<(nAfterDotNum  - strLen + dotPos + 1);i++){
　　　　　　　　resultStr = resultStr+"0";
　　　　　　}
　　　　　　return resultStr;
　　　　}
　　}
} 
function forceDecimal(x, point)
{
    var s_x = x.toString();
    var pos_decimal = s_x.indexOf('.');
    if (pos_decimal < 0) {
        pos_decimal = s_x.length;
        s_x += '.';
    }
    while (s_x.length <= pos_decimal + point) {
        s_x += '0';
    }
    return s_x;
}

//Dom
function Dom(o){
    return document.getElementById(o);
}
//验证价格
function vNum(o, len){
	if(badFloat(o.value, len))
		o.value=formatfloat(o.value, len, 0);
}

function vNum1(o,len)
{
	if(o.value <1)
		o.value = 1;
}
//SHOW GA PW
function showGA(v){
	$.get('/ajax_user/gaExist/email/'+v, function(d){
		$('#ga_pwd').attr('style', 'display:'+(d.status==1?'block':'none'));
		if(d.msg) alert(d.msg)
	}, 'json')
}

//返回时间戳
function gettime(nS)
{
	return new Date(parseInt(nS) * 1000).toLocaleString().substr(0,17);
}

//更新币交易页的挂单
function allcoinorder(limit){
	$.get('/json/allcoin_orders?t=' + Math.random(), function(d){
		$('#cny_sum').html(d.cny + ' CNY');
		$('#btc_sum').html(d.btc + ' BTC');
		$('#ybc_sum').html(d.ybc + ' YBC');
		$('#coin_sum').html(d.sum);
	}, 'json');
	setTimeout("allcoinorder(" + limit + ")",60000);
}
function getLocalTime(nS) {     
	   return new Date(parseInt(nS) * 1000).toLocaleString().replace(/:\d{1,2}$/,' '); 
} 
/**
 * 成交记录
 */
function currentcoinorder(limit, point, display) {
    if(coin.to == 'cny'){
        point = 2;
    }
	$.get('/json/'+coin.name+'_order?t=' + Math.random(), function(d){
        if(!d || "fail" == d.msg){
            return false;
        }
		var html = '';
		for(var i in d.d){
			var cls = (i%2==0)?'list_con1':'list_con2';
			if(limit && i >= limit) break;
			if(50 == limit){
				html += '<tr><td class='+cls+'>' + d.d[i].t + '</td><td class="' + cls + '"><font color="'+(d.d[i].s=='buy'?'#e00':'#690')+'">' + (d.d[i].s == 'buy'? '买入': '卖出') +

					'</font></td><td class="' + cls + '"><font color="'+(d.d[i].s=='buy'?'#e00':'#690')+'">' + d.d[i].p + '</font></td><td class='+cls+'>' + coin.sign + d.d[i].n + '</td>' +
					'<td class='+cls+'>' + forceDecimal(Math.floor(d.d[i].n * d.d[i].p * Math.pow(10,point))/Math.pow(10,point), 2) + '</td></tr>';
			}else{

				html += '<tr><td>' + d.d[i].t + '</td><td class="' + d.d[i].s + '"><font color="'+(d.d[i].s=='buy'?'#e00':'#690')+'">' + (d.d[i].s == 'buy'? '买入': '卖出') +
					'</font></td><td class="' + d.d[i].s + '"><font color="'+(d.d[i].s=='buy'?'#e00':'#690')+'">' + d.d[i].p + '</font></td><td class="tableEnd">' + coin.sign + d.d[i].n+ '</td>' +
					'<td class="tableEnd">' + Math.round(d.d[i].n * d.d[i].p*10000)/10000+ '</td></tr>';
			}
		}
		$('#coinorderlist').html(html);
		// 更新价格
		if(typeof d.d[0] == 'undefined'){
			d.d[0] = {"p": '0.0'}
		}
		d.d[0].p = d.d[0].p + '';
		var price = d.d[0].p.split('.');
		btc_rmb = d.d[0].p;
		if(price.length == 1)price[1] = '000';
		//if(price[0]<=0) price[0]=btc_rmb;
		//$('#nowprice').val(formatfloat(price[0],3));
		//var ups = d.price>0?(d.d[0].p-d.price)/d.price:0;
		$('#24h_ups').html(Math.round(d.up24*100*100)/100+'%');
		$('#new_price').html(d.d[0].p);
		$('#24h_max').html(d.max);
		$('#24h_min').html(d.min);
		$('#24h_count').html(d.count);
		$('#24h_sum').html(d.sum);
        //document.title = "元宝网｜第一数字货币众筹交易平台";
        document.title = display+d.d[0].p+" | 元宝网｜第一数字资产交易平台";
	}, 'json');
	setTimeout("currentcoinorder(" + limit + "," + point + ",'" + display + "')", 3800);
}
function ua_refresh(coinname){
	coininfo = coinname.split("2");
	coinfrom = coininfo[0];
	cointo = coininfo[1];
	$.get('/ajax/getUserinfo', function(d){
        userinfo = eval(d.data);
        from_over.innerHTML = formatfloat(userinfo[coinfrom+'_over'],5, 0);
        from_lock.innerHTML = formatfloat(userinfo[coinfrom+'_lock'],5, 0);
        from_total.innerHTML = formatfloat(parseFloat(userinfo[coinfrom+'_over'])+parseFloat(userinfo[coinfrom+'_lock']),5,0); 
        to_over.innerHTML = userinfo[cointo+'_over'];
        to_lock.innerHTML = userinfo[cointo+'_lock'];	
        to_total.innerHTML = formatfloat(parseFloat(userinfo[cointo+'_over'])+parseFloat(userinfo[cointo+'_lock']),5,0); 
	}, 'json');
	setTimeout("ua_refresh('" + coinname + "')", 5000);
}
$(function(){
	//单币价格提示
	var coininfo = coin.name.split("2");
	if(coininfo.length > 1){
		var coin_from = coininfo[0];
		var coin_to   = coininfo[1];
	}
	function pricemsgfn(){
		if($(this).val()==coinpricemsg) {$(this).attr('style', 'color:#000');$(this).val('');}
	}
    $('#coinpricein').val(coinpricemsg); $('#coinpricein').attr('style', 'color:#999'); $('#coinpricein').bind('click', pricemsgfn);
    $('#coinpriceout').val(coinpricemsg);$('#coinpriceout').attr('style', 'color:#999');$('#coinpriceout').bind('click', pricemsgfn);
});
