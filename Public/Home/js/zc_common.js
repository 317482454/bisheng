	//千位符识别
	function getThousands(num){		
		var str = num.toString().split(",") ;
		var newnum = str.join("") ;
		return newnum ;
	}
	//千位符添加
	function toThousands(num){
		var source = String(num).split(".");//按小数点分成2部分
        source[0] = source[0].replace(new RegExp('(\\d)(?=(\\d{3})+$)','ig'),"$1,");//只将整数部分进行都好分割
		return source.join(".");//再将小数部分合并进来
	}
	//判断是否为数字
	function isNotNum(theNum){
		var arr = theNum.split(".") ;
		if(arr.length >2 ) return true ;
		if(arr[0].length>1 && arr[0] == 0) return true ;
		for(var i=0;i<arr[0].length;i++){
			var oneNum=arr[0].substring(i,i+1);
			if (oneNum<"0" || oneNum>"9") return true;
		}
		if(arr.length==2){
			if(arr[1].length >2) return true ;
			if(arr[1] !=""){
				for(var i=0;i<arr[1].length;i++){
					var oneNum2=arr[1].substring(i,i+1);
					if (oneNum2<"0" || oneNum2>"9") return true;
				}
			}
		}
		return false;
	}
	function istow(num){
		var vals = num ;
		var is = isNotNum(vals);				
		if(is || vals=="0.00"){
			return false ;
		}else return true;
	}
	function isCardNo(card){  
	   // 身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X  
	    var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/; 
		if(reg.test(card)) return true ;
		else return false ;
	} 
	function isbankCard(card){
		var regex = /^(998801|998802|622525|622526|435744|435745|483536|528020|526855|622156|622155|356869|531659|622157|627066|627067|627068|627069)d{10}$/;
		if (regex.test(card)) return true;
		return false;
	}
	function isphone(phone){
		//var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/; 
		var myreg = /^1[0-9]{10}$/; 
		if(myreg.test(phone)) return true ;
		else return false;
	}
	/*function isPhone(aPhone) {  
		var bValidate = RegExp(/^(0|86|17951)?(13[0-9]|15[012356789]|18[0-9]|14[57])[0-9]{8}$/).test(aPhone);  
		if (bValidate) {  
			return true;  
		}  
		else  
			return false;  
	} */
	function isEmail(aEmail) {  
		var bValidate = RegExp(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/).test(aEmail);  
		if (bValidate) {  
			return true;  
		}  
		else  
			return false;  
	} 
	function isPassword(sPW) {  
		if (sPW.length <= 5)  
		return false; //密码太短    
		var res = RegExp(/((?=.*\d)(?=.*\D)|(?=.*[a-zA-Z])(?=.*[^a-zA-Z]))^.{6,16}$/).test(sPW) ; 
		return res ;
	}   
	function isInteger(s) {  
		var isInteger = RegExp(/^[0-9]+$/);  
		return (isInteger.test(s));  
	}  
	function isnumber(val){
		var res = /^[0-9]*[1-9][0-9]*$/ ;
		if(RegExp(res).test(val)) return true;
		else return false;
	}
	function isCardNo(card){  
	   // 身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X  
		var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/; 
		if(reg.test(card)) return true ;
		else return false ;
	}
	function isPlaceholderSupport() {  
		return 'placeholder' in document.createElement('input');  
	}  	
	function lazyTime(oTime,obj){
		var nowday = new Date(current_time);
		var lastday = new Date(oTime);
		var nowtime = nowday.getTime() ;
		var lasttime = lastday.getTime();
		var contTime = lasttime-nowtime ;
		if(contTime > 0){
			var sI = Math.floor(contTime/1000) ;//总秒数
			var fenI = Math.floor(sI/60) ;//总分数
			var sS = sI%60;//倒计时秒
			var hourI = Math.floor(fenI/60) ;//总小时数
			var fenS = fenI%60;//倒计时分
			var hourS = hourI%24 ;//倒计时小时
			var dayI = Math.floor(hourI/24) ;
			obj.text(showTime(dayI,hourS,fenS,sS));
			obj.timer = setInterval(function(){
				if(dayI == 0 && hourS == 0 && fenS == 0 && sS == 0){
					clearInterval(obj.timer);
					window.location.reload();
					return false;
				}
				sS-- ;
				if(sS < 0) {
					sS = 59 ;
					fenS-- ;
					if(fenS < 0){
						fenS = 59 ;
						hourS -- ;
						if(hourS < 0){
							hourS = 23 ;
							dayI -- ;
						}
					}
					
				}
				
				obj.text(showTime(dayI,hourS,fenS,sS));
			},1000);
		}
	}
	function showTime(day,hour,min,s){
		var time = "" ;
		if(day>0) time = day+"天"+ hour+"时"+min+"分"+s+"秒" ;
		else{
			if(hour>0){
				time = hour+"时"+min+"分"+s+"秒"
			}else{
				if(min>0){
					time = min+"分"+s+"秒" ;
				}else{
					time = s+"秒" ;
				}
				
			}
		}
		return time ;
	}
	function setCookie(cname, cvalue, exdays) {
		var d = new Date();
		d.setTime(d.getTime() + (exdays*24*60*60*1000));
		var expires = "expires="+d.toUTCString();
		document.cookie = cname + "=" + cvalue + "; " + expires;
	}
	function getCookie(cname) {
		var name = cname + "=";
		var ca = document.cookie.split(';');
		for(var i=0; i<ca.length; i++) {
			var c = ca[i];
			while (c.charAt(0)==' ') c = c.substring(1);
			if (c.indexOf(name) != -1) return c.substring(name.length, c.length);
		}
		return "";
	}
	function clearCookie(name) {  
		setCookie(name, "", -1);  
	} 
	$(function(){
		if(!isPlaceholderSupport()){
			var obj = $("input");
			for(var i=0 ; i< obj.length ; i++){
				var _obj = $(obj[i]) ;
				var val_ = _obj.val();
				var placeholder = _obj.attr("placeholder") ;
				if(val_ == ""){
					if(placeholder && placeholder!=""){				
						var html = "<i class='ielt'>"+placeholder+"</i>" ;
						_obj.after(html);
					}
				}
			}
			$(".lritem,.tbielt,.fit,.searchbox,.pcxuantian").on("click","i",function(){
				$(this).hide().prev("input").focus();
			});
			obj.on("focus",function(){
				$(this).next(".ielt").hide();
			});
			obj.on("blur",function(){
				if($(this).val() == "")
				$(this).next(".ielt").show();
			});
		}
		$(".acprbox1").on("mouseover",function(){
			$(this).find(".addtm_box1").show();
		});
		$(".acprbox1").on("mouseout",function(){
			$(this).find(".addtm_box1").hide();
		});
		
	})	
	window.onload = function(){
		$(".pcinput4,.acinput2").val("");
		var ht = $(".openImg img").height() ;
		$(".openlist").css("height",ht+"px");
	}