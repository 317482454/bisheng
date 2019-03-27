$("document").ready(function(){
		$('#but').click(function(){
			if($('#mo').val().length == 11){
				if($('#msgt').html() != ''){
					return;
				}
				$('#msgt').addClass('again');
				$.post("/ajax/sendmsg",{mo:$('#mo').val(),type:1},function(data){
					var msg = eval('(' + data + ')');
					if(msg.err == 1){
				        $('#binding').show();
						$('#but').addClass('again1');
						time($('#msgt'));
						return;
					}else{
						$('#momsg').html('转出货币功能需绑定手机后才能操作！');
						$('#binding').hide();
						alert(msg.msg);
					}
				}) 
			}else
				alert('手机号有误');
		});
		$('#subv').click(function(){
            $('#subv').unbind('click').css({'color':'#999999'});
			if($('#mo').val().length == 11){
				$.post("/ajax/sendmsg",{mo:$('#mo').val(),type:1,voice:1},function(data){
					var msg = eval('(' + data + ')');
					if(msg.err == 1){
						time2($('#subv'));
						return;
					}else{
						alert(msg.msg);
					}
				}) 
			}else
				alert('手机号有误');
		});
		$('#msgt').click(function(){
			if($(this).html() != '重新获取验证码' && $(this).html() != '获取语音验证码' ){
				return;
			}
			$('#msgt').addClass('again');
			if($('#mo').val().length == 11){
				$.post("/ajax/sendmsg",{mo:$('#mo').val(),type:1},function(data){
					var msg = eval('(' + data + ')');
					if(msg.err == 1){
						time($('#msgt'));
						return;
					}else{
						alert(msg.msg);
					}
				}) 
			}else
				alert('手机号有误');
		});
		$('#sub').click(function(){
			if($('#mo').val().length == 11){
				var mo = $('#mo').val();
				$.post("/user_info/mo",{mo:mo,code:$('#code').val()},function(data){
					var msg = eval('(' + data + ')');
					if(msg.err){
						$('#binding').hide();$('#but').hide();
						$('#mo').replaceWith(mo.substr(0,3)+'******'+mo.substr(-2,2));
						$('#momsg').html('（如需修改手机号，请联系客服人员）');
						//$('#mo').attr("readonly","readonly");
						alert(msg.msg);
					}else{
						alert(msg.msg);
					}
				}) 
			}else
				alert('手机号有误');
		});
		var wait = 60;
		function time(obj) {
			if (wait == 0) {
				$(obj).removeClass('again');
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
        var wait2 = 60;
        function time2(obj) {
            if (wait2 == 0) {
                $(obj).css({'color':'#FF6600'});
                $(obj).html("重新获取验证码");
                wait2= 60;
            } else {
                $(obj).html("重新发送(" + wait2 +")");
                wait2--;
                setTimeout(function(){
                    time2(obj);
                },1000)
            }
        }
	}); 
