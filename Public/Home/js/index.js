btc_rmb_ajax = 10;
var coin = {name:'00001', type:''};

var pricemsg = '此出价为1股的价格';

//坏数字
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
//验证价格
function vNum(o, len){
	if(badFloat(o.value, len))
		o.value=formatfloat(o.value, len, 0);
}

//验证数量
function vNum2(o, len){
    if(o.value <1)
        o.value = 1;
    if(badFloat(o.value, len))
        o.value=formatfloat(o.value, len, 0);
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
    if(size == 5) conf = [100000,0.00001]
    if(size == 6) conf = [1000000,0.000001]
    if(size == 7) conf = [10000000,0.0000001]
    if(size == 8) conf = [100000000,0.00000001]
	var ff = Math.round(f * conf[0]) / conf[0];
	if(add && f > ff) ff += conf[1];
	return FormatAfterDotNumber(ff,size);
}
//查询所有股票信息
function liststocks(type) {
    var current = type ==1?'ybc':'btc';
    var rmcurrent = type ==2?'ybc':'btc';
    $('#'+rmcurrent+'_current').removeClass('current');
    $('#'+current+'_current').addClass('current');
    $.get('/Stocks/liststock?type='+type+'&t=' + Math.random(), function(d) {

        var html = "";
        var flag = "";
        for (var i = 0; i <d.data.length; ++i) {
            flag = 'index';
				if(d.data[i].nowprice!='0YBC'){
				if(i%2==0)
					html +="<tr class = 'list_con2'>";
				else{
					html +="<tr class = 'list_con1'>";
				}
				html +="<td><a href=\"/security/"+d.data[i].name+"/"+current+"/\">"+d.data[i].display+"</a></td>";
				html +="<td><a href=\"/security/"+d.data[i].name+"/"+current+"/\">"+d.data[i].name.toUpperCase()+"</a></td>";
				html += "<td><a href=\"/security/"+d.data[i].name+"/"+current+"/\">"+parseFloat(d.data[i].stock_floating)+"</a></td>";
				//html += "<td><a href=\"/security/"+d.data[i].name+"/"+current+"/\">"+d.data[i].current+"</a></td>";
				html += "<td><a href=\"/security/"+d.data[i].name+"/"+current+"/\">"+d.data[i].nowprice+"</a></td>";
				html += "<td><a href=\"/security/"+d.data[i].name+"/"+current+"/\">"+d.data[i].total+"</a></td>";
				html += "<td><a href=\"/security/"+d.data[i].name+"/"+current+"/\">"+d.data[i].status+"</a></td></tr>";
            }
        }
        $('#allstocks').html(html);
    }, 'json');
        allorder(10,type);
}

//最新成交
function allorder(limit,type){
    $.get('/json/all_orders?t=' + Math.random(), function(d){
        var html = '';
		if(type!='undefined'){
            var symbol = type==1?'Ф':'฿';
            var data = type==1?d.d_ybc:d.d_btc;
            var cointype = type==1?'ybc':'btc';
        }
        else {
            var symbol='Ф';
            var data = d.d_ybc;
            var cointype = 'ybc';
        }
        for(var i in data){
            if(limit && i > limit) break;
            html += ' <tr><td><a href="/security/'+data[i].goodname+'/'+cointype+'" style="text-decoration:none;">'+data[i].t+'</a></td><td class="cost"><a href="/security/'+data[i].goodname+'/'+cointype+'" style="text-decoration:none;">'+ data[i].goodname.toUpperCase() +
                '</a></td><td><a href="/security/'+data[i].goodname+'/'+cointype+'" style="text-decoration:none;"><font color="'+(data[i].s=='buy'?'#e00':'#690')+'">'+(data[i].s=='buy'?'买入':'卖出')+'</font></a></td><td style="text-align:left;"><a href="/security/'+data[i].goodname+'/'+cointype+'" style="text-decoration:none;"><font color="'+(data[i].s=='buy'?'#e00':'#690')+'">'+symbol+data[i].p+'</font></a></td><td style="text-align:left;"><a href="/security/'+data[i].goodname+'/'+cointype+'" style="text-decoration:none;">' + data[i].n + '</a></td><td style="text-align:left;"><a href="/security/'+data[i].goodname+'/'+cointype+'" style="text-decoration:none;">'+symbol +
                data[i].total +'</a></td></tr>';
        }
        $('#allorder').html(html);
    }, 'json');
    setTimeout("allorder(" + limit + ","+type+")",105000);
}
//总价
function sumprice(type){
	if(type==undefined) {
		Dom('ipo_sumprice').innerHTML = formatfloat(formatfloat(Dom('ipo_price').innerHTML, 2) * formatfloat(Dom('number').value, 3), 5);
		return;
	}
	var inputtype = type=='buy'?'in':'out';
    var digit = coin.type == 1?4:5;
    var sumprice = formatfloat($('#price'+inputtype).val() * $('#number'+inputtype).val() , digit,1);
    var rate = formatfloat(sumprice*0.004 , 4);
    $('#'+type+'_sumprice').html(sumprice);
	$('#'+type+'_rate').html(rate);
}
//委托提交处理
function tbtcSubmit(coinname,pid, type){
	if (coinname == '00008') {
		$('#trustmsg'+type).html('已暂停交易').fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
		return false;
	}
    var btn = type=='in'?'denglu':'sellbtn';
	$.post("/ajax/trustGood/",{type:type,flag:coin.type,pid:pid, coin: coinname, price:parseFloat($('#price'+type).val()), number: parseFloat($('#number'+type).val()), pwdtrade: encodeURIComponent($('#pwdtrade'+type).val()), hotp: encodeURIComponent($('#hotp'+type).val())},
		function(d){
			$('#trustbtn'+type).attr('class', btn).attr('onclick', 'tbtcSubmit("'+coinname+'","'+pid+'","'+type+'")');
			if(d.status) for(var i in d.data) user[i] = d.data[i];
			$('#trustmsg'+type).html(d.msg).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
		}, 'json');
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
//个人股全部委单
function mytrust(circ) {
	$.get('/ajax/querytrust/coinname/'+coin.name+'/type/'+coin.type, function(d){
		var html = "";
	    var symbol = coin.type ==1?'Ф':'฿';
		for (var i = 0; i < d.data.length; i++) {
			if (i % 2 == 0) {
				html += "<tr> ";
 			} else {
				html += "<tr>";
			}

			if (d.data[i].flag == 'buy') html += "<td class=\"ttbtn buy\">买</td>";
			else html += "<td class=\"trbtn sell\">卖</td>";
			html += "<td>"+symbol + d.data[i].price +"</td>";
			html += "<td id=\"t_n_o_" + d.data[i].id +"\">" + d.data[i].numberover + "</td>";
			html += "<td class=\"tableEnd cost\" id=\"t_opt_" + d.data[i].id + "\">";
			if (d.data[i].status == 0 || d.data[i].status == 1) {
                        	html += "<a class=\"remove\" href=\"javascript:void(0)\" onclick=\"trustcancel(" + d.data[i].id + ")\">撤销</a>";
                        }
                        html += "</td></tr>";
		}
		$('#mytrustlist').html(html);
	}, 'json');
	if(circ)
		setTimeout('mytrust(true)', 5000);
}

//最新交易
function currentstockorder(limit) {
	var symbol = coin.type ==1?'Ф':'฿';
	var digit = coin.type == 1?4:5;
	$.get('/json/'+coin.name+'_order?t=' + Math.random(), function(d){
		var html = '';
		var ybc = d.d_ybc[0].p;
        var btc = d.d_btc[0].p;
		var ybc_price = ybc<0?0:ybc;
		var btc_price = btc<0?0:btc;
		$('#stock_'+coin.name+'_box').html("<b>" + ybc_price + "YBC/" + btc_price + "BTC</b>");
		var datas = (coin.type == 1)?d.d_ybc:d.d_btc;
		for(var i in datas){
			if(limit && i >= limit) break;
			if(30 == limit){
				html += '<tr><td>' + datas[i].t + '</td><td class="' + datas[i].s + '">' + (datas[i].s == 'buy'? '买入': '卖出') +
					'</td><td class="' + datas[i].s + '">'+symbol + formatfloat(datas[i].p, digit) + '</td><td style="text-align:left; padding-left:10px;">' + formatfloat(datas[i].n, 3) + '</td>' +
					'<td class="tableEnd" style="text-align:left; padding-left:10px;">'+symbol + formatfloat(datas[i].n * datas[i].p, digit) + '</td></tr>';
			}else{

				html += '<tr><td>' + datas[i].t + '</td><td class="' + datas[i].s + '">'+(datas[i].s == 'buy'? '买入': '卖出') +
					'</td><td class="' + datas[i].s + '">'+symbol + formatfloat(datas[i].p, digit) + '</td><td class="tableEnd" style="text-align:left; padding-left:10px;">' + formatfloat(datas[i].n, 3)+ '</td>' +
					'<td class="tableEnd" style="text-align:left; padding-left:10px;">'+symbol + formatfloat(datas[i].n * datas[i].p, digit) + '</td></tr>';
			}
		}
		$('#currentorderlist').html(html);
	}, 'json');
	setTimeout("currentstockorder(" + limit + ")", 5000);
}

//股票委托
function stocksum(limit){
    var buycoin = coin.type == 1?'ybc':'btc';
	var symbol = coin.type ==1?'Ф':'฿';
	var digit = coin.type == 1?4:5;
	$.get('/json/'+coin.name+'_sum?t=' + Math.random(), function(data){

	   $('#sale_nice').html(data[buycoin+'_buy'].length==0?data[buycoin+'_sale'][0].p:data[buycoin+'_buy'][0].p);
	   $('#buy_nice').html(data[buycoin+'_sale'].length==0?data[buycoin+'_buy'][0].p:data[buycoin+'_sale'][0].p);
		for(var type in data){
            var types = type.split('_');
            var d = data[buycoin+'_'+types[1]];
			var html = '';
			var idhtml = '';
			if(limit == 5 && type == buycoin+'_sale'){
				var dsort = [];
				var dmax = d.length > limit? limit: d.length;
				for(var j = dmax; j > 0; j--) dsort[limit - j] = d[j - 1];
				d = dsort;
			}
			//判断买入和卖出委托是否为空
			for(var i in d){
				if(limit && i == limit) break;
				var num = parseFloat(d[i].n);
				i = parseInt(i);
				if(type == buycoin+'_buy'){
					idhtml = '<td class="buy">买(' + (i + 1) + ')</td>';
				}else{
					idhtml = '<td class="sell">卖(' + (limit == 5? dmax--: i + 1) + ')</td>';

				}
				html += '<tr bgcolor="' +(i%2 == 0?'':'') +'">' + idhtml + '<td>'+symbol + formatfloat(d[i].p,digit) + '</td><td>'
                +  num + '</td></tr>';
			}

			$('#' + type + 'list').html(html);
			$('#btc_' + type + 'one').html(typeof d[0] == 'undefined'? 0: formatfloat(d[0].p, formatfloat));
		}
		if($('#pricein').val() == pricemsg) {
			$('#pricein').val(data[buycoin+'_sale'].length==0?data[buycoin+'_buy'][0].p:data[buycoin+'_sale'][0].p);
			buy_max(data[buycoin+'_sale'].length==0?data[buycoin+'_buy'][0].p:data[buycoin+'_sale'][0].p);
		}

		if($('#priceout').val()==pricemsg)
			$('#priceout').val(data[buycoin+'_buy'].length==0?data[buycoin+'_sale'][0].p:data[buycoin+'_buy'][0].p);
	}, 'json');
	setTimeout("stocksum(" + limit + ")", 5000);
}
//取消委托
function trustcancel(id){
    $.get('/ajax/trustcancel/id/' + id, function(d){
        alert(d.msg);
        if(d.status){
            $('#t_n_o_' + id).html('0.000');
            $('#t_s_' + id).html('已撤消');
            $('#t_s_' + id).attr('class', 'buy cancel');
            $('#t_opt_' + id).html('');
        }
    }, 'json');
}
//最大可买
function buy_max(price){
	price = formatfloat(price, 4);
    var banlance = coin.type==1?user.ybc_over:user.btc_over;
	if(banlance >0 && price > 0){
		$('#buy_max').html(parseInt(banlance / price));
	}
}
//操作股票
function changestockstatus(stockid,name,status) {
   /* if (inchange) {
        $('#stockmsg').html("正在处理中，请耐心等待").fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
        return;
    }
    $('#stockmsg').html("正在处理中，请耐心等待").fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
    inchange = true;*/
    $.post("/ajax/changestockstatus/",{id:stockid, status:status,name:name},
        function(d){
            if(d.status) $('#stockstatus_'+stockid).html(d.data.status);
            inchange = false;
            alert(d.msg);

        }, 'json');
}

//分红
function doshare(stockname) {
    $.post("/user_index/generatebonus/",{id:stockname, number:$('#sharenumber').val(),coin:$('#coin').val()},
        function(d){
            inchange = false;
            $('#stockmsg').html(d.msg).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
			location.reload();
        }, 'json');
}
//操作分红
function dodividend(id) {
    if (inchange) {
        $('#stockmsg2').html("正在处理中，请耐心等待").fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
        return;
    }
   var  inchange = true;
    $.post("/user_index/dividend/",{id:id},function(d) {
            inchange = false;
            if(d.status) {
                $('#stockmsg2').html(d.msg).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
				location.reload();
			}
        }, 'json');
}

//撤销分红
function canceldividend(id) {
    if (inchange) {
        $('#stockmsg2').html("正在处理中，请耐心等待").fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
        return;
    }
   var  inchange = true;
    $.post("/user_index/canceldividend",{id:id},function(d) {
            inchange = false;
            if(d.status){
				 $('#stockmsg2').html(d.msg).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
				 location.reload();
			}
        }, 'json');
}
$(function(){
    //单币价格提示
    function pricemsgfn(){if($(this).val()==pricemsg) {$(this).attr('style', 'color:#000');$(this).val('');}}
    $('#pricein').val(pricemsg); $('#pricein').attr('style', 'color:#999'); $('#pricein').bind('click', pricemsgfn);
    $('#priceout').val(pricemsg);$('#priceout').attr('style', 'color:#999');$('#priceout').bind('click', pricemsgfn);
});
