$(function(){

	//红包JS 
	if(islogin){
		$("#mathUp,#mathDown").on("click",function(){
                $(".sel-pay-1").hide();
				$("#manjian").text("请选择...").attr("amount","0");
				$("#red_bonus").val(0);
		});
		$("#manjian").on("click",function(){
			bouns_change();
		});
		$("#payNumb").on("click",function(){
			 $(".sel-pay-1").hide();
			 $("#manjian").text("请选择...").attr("amount","0");
			 $("#red_bonus").val(0);
		});

		function bouns_change(){
			var amount =per_price*$("#payNumb").val();
			get_bonus_list(amount);
		}
		$(document).on("click",'.isnumb',function(){
                var this_ = $(this);
                var txt = this_.text();
                var thisamout = this_.attr("amount") ;
                $("#manjian").text(txt).attr("amount",thisamout);
                setTimeout(function(){
                    $(".sel-pay-1").hide();
                },500);
                var red_bonus =this_.attr('r_id');
                $("#red_bonus").val(red_bonus);
				var vals = $(this).attr("amount");
				var newvals = per_price*$("#payNumb").val()-vals ;
				$("#manjianhou").text(toThousands(newvals));
				if($('#zhifu').length){
					$("#zhifu").text(toThousands(toThousands(newvals))) ;
				}
            });
			function get_bonus_list(amount){
				 $.ajax({
						url: get_bonus_href,
						type: "post",
						data:'amount='+amount,
						dataType:'json',
						context: document.body, 
						success: function(data){
							if(data.error){
								$('.dismark .acimporttile span').html(data.title);
								$('.dismark .acimportmain p').html(data.msg);
								$(".dismark").show();
							}else{
								$("#last_amount").val(amount);
								if(data.data.length>0){
									var html='';
									if(data.data.length>4){$(".sel-pay-1").css("height","155px");}
									for(var i=0;i<data.data.length;i++){
										html +='<li class="isnumb" amount="'+(data.data[i].amount/10000)+'" r_id="'+data.data[i].red_envelope_id+'">'+data.data[i].rule_name+'</li>'; 
									}
									
								}else{
									var html='<li class="isnumb" amount ="0"  value="0">无</li>';
								}
							   $(".sel-pay-1").html(html);
                               $(".sel-pay-1").show();
							}
						},       
					  error:function(){
								$('.error_title').html('获取红包失败');
								$('.error_num').html('系统繁忙，请稍后再试');
								$("#step2").show();
							}
					});
            }
	}
//购买支付
	if(typeof(per_price) == "number"){
		var myMon = $("#myMon") ;
		var myMonint = getThousands(myMon.text()) ;
		if(islogin && myMonint<per_price){
			$("#lessMon").text("余额不足").show() ;
			$("#btnPay").attr("disabled",true) ;
		}
		
		$("#mathDown").on("click",function(){
			mathData(-1,per_price) ;
		});
		$("#mathUp").on("click",function(){
			mathData(1,per_price) ;
		});
		
		$(".txt-pay-2").on("keyup paste",function(){
			var len = $(this).val().length ;
			if(len==6){
				$("#btnPay").removeAttr("disabled") ;
			}
		});
		
		
		$(".mas-closed").on("click",function(){
			$(this).closest(".maskWin").hide().closest("#mask").hide();
			$("#payNumb").val("1") ;
			$(".mathCout").text(per_price+"元");
			$(".txt-pay-2").val("") ;
			$("#contM").val(per_price) ;
			$("#btnPay").attr("disabled",true) ;
		});	
		$("#payNumb").on("keyup",function(){
			var val = $(this).val();
			var valint = 0 ;
			if(val != "") valint = parseInt($(this).val()) ;
			if(valint){
				$(this).val(valint);				
			}else{
				$(this).val("");
				valint = 0;
			}
			var cont = valint*per_price ;
			var vals = $("#manjian").attr("amount");
			if(vals) vals = parseInt(vals) ;
			else vals = 0 ;
			cont = cont-vals;
			console.log(cont)
			var arr = cont.toString().split(".") ;
			var str;
			if(arr.length>1) str = arr[0]+"."+arr[1].substr(0,2) ;
			else str = arr[0] ;
			str = parseFloat(str) ;
			var myMon = getThousands($("#myMon").text()) ;//账户总资金
			if(str>myMon){
				$("#lessMon").text("余额不足").show() ;
				$("#btnPay").attr("disabled",true)
			}else{
				$("#lessMon").hide() ;
				$("#btnPay").removeAttr("disabled")
			}
			$(".mathCout").text(toThousands(str)+"元") ;
			$("#manjianhou").text(toThousands(str)) ;
			if($('#zhifu').length){
				$("#zhifu").text(toThousands(str)) ;
			}
		});
	}
	$("#agreement").on("click",function(){
		var agree = $("#agreement").attr("checked") ;
		if(agree && $("#lessMon").text() == "请认真查看合同协议并确认"){
			$("#lessMon").hide() ;
		}
	});
})
	function mathData(n,per_price){
		var payNumb = $("#payNumb") ;
		var mathCout = $(".mathCout") ;
		var myMon = getThousands($("#myMon").text()) ;//账户总资金
		var isval = payNumb.val() ;
		var num  ;
		if(isval == "") num = 0 + n ;
		else num = parseFloat(isval)+n ;
		if(num<=1){
			payNumb.val(1) ;num = 1 ;
		}else{
			payNumb.val(num) ;
		}
		var cont = num*per_price ;//投资总资金
		if($("#manjian").attr("amount")){
			var vals = $("#manjian").attr("amount");
			
			cont =cont-vals;
		}	
		//保留小数点后两位
		var arr = cont.toString().split(".") ;
		if(arr.length == 1){
			str = cont ;
		}else{
			var str = arr[0]+"."+arr[1].substr(0,2) ;
			str = parseFloat(str) ;
		}
		
		
		//myMon,cont两者是要传服务器存储的
		mathCout.text(toThousands(str)+"元") ;

		$("#manjianhou").text(toThousands(str)) ;
		if($('#zhifu').length){
				$("#zhifu").text(toThousands(str)) ;
			}
		$("#myMonint").val(toThousands(myMon-str));//账户剩余资金
		$("#contM").val(str);//投资了多少资金
		if(islogin && str>myMon){
			$("#lessMon").text("余额不足").show() ;
			$("#btnPay").attr("disabled",true)
		}else{
			$("#lessMon").hide() ;
			$("#btnPay").removeAttr("disabled")
		}
	}
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