function sendmsg(obj,type,voice){
	if($(obj).attr('class') == 'button'){
		$(".button").addClass('again');
		$.post("/ajax/sendmsg1",{type:type,voice:voice},function(data){
			var data =  eval('(' + data + ')');
			if(data.err == 1){
				time(obj);
				return;
			}
			if(data.err == 0){
				alert(data.msg);
			}
		})
	}
	return;
}
var wait=60;
function time(obj) {
	if (wait == 0) {
		$(".button").removeClass('again');
		$(obj).html("重新获取验证码");
		wait = 60;
	} else {
		$(obj).html("重新发送(" + wait + ")");
		wait--;
		setTimeout(function() {
			time(obj)
		},
		1000)
	}
}
/**
 * coin 币的类型
 * t 转出方式,1手机,2google
 */
function exchange(coin,t){
//	alert('暂停转出请稍等!');
	var num = $('#num'+t).val();
	var pwdtrade = $('#pwdtrade'+t).val();
	var wallet = $('#wallet'+t).val();
	$('#num'+t).val('');
	$('#pwdtrade'+t).val('');
    //$('#wallet'+t).val('');
	if(t == 1){
        alert('非法操作');
        return false;
	}else{
		var hotps = $('#hotp').val();
		$('#hotp').val('');
		var data = {coinname:coin,num: num, pwdtrade: pwdtrade,hotp:hotps};
	}
	if(num < 0.001){
		alert('转出数量不得小于0.002个,请重新提交');
		return ;
	}
	$.post('/ajax_exchange/coinout/mk/' + wallet,data,
			function(d){
				if(d.status){
					location.href='/user_exchange/coinout/coinname/'+coin+'/page/wait';
				}else{
					alert(d.msg);
				}
			}, 'json');
}
