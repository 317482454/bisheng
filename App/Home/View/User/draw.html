 <include file="App/Home/View/Public/header.html"/>
 <style>
 .pass_ybc{ min-height:400px !important;}
 .my_add{ margin-bottom:0px !important;}
 </style>
<div id="main">
  <div class="main_box"> <include file="App/Home/View/Public/left.html"/>
    <div class="raise right clearfix"> 
      <script type="text/javascript" src="js/ajax.js"></script> 
      <script type="text/javascript" src="js/Fnc.js"></script> 
      <script type="text/javascript" src="js/inputFormat.js"></script>
      <div class="ybc_list">
        <div class="ybcoin">
          <h2 class="left">CNY提现</h2>
          <!-- <p class="right" style=" margin-top:10px; color:#333;">您可以设置多个提款地址，这样您提款到不同的银行卡、钱包或其它平台时就会更方便。</p> -->
          <div class="clear"></div>
        </div>
      </div>
      <div class="support_ybc pass_ybc" id="verifyon"> 
        <!--<ul id="pass_change">
		<li class="selectTag"><a onClick="selectTag('tagContent0',this)" href="javascript:void(0)">提现到银行卡</a> </li>
		<li class="note"><a onClick="selectTag('tagContent1',this)" href="javascript:void(0)">提现到元宝理财</a></li>
		<div class="clear"></div>
        </ul>-->
        <div id="tagContent" class="passContent">
          <div class="tagContent selectTag" id="tagContent0">
            <h2 class="choose_one">选择一个提款地址 
              <!-- <a href="/news/detail/?id=736" style="float: right;margin-right:30px; color: red;" target="_blank">提现银行卡暂不支持邮政储蓄银行</a> --> 
            </h2>
            <table class="my_add" border="0" cellpadding="0" cellspacing="0">
              <thead>
                <tr align="center">
                  <th>选择</th>
                  <th>地址标签</th>
                  <th>提款地址</th>
                  <th>操作</th>
                </tr>
              </thead>
              <volist name="bank_info" id="vo">
              <thead>
              	  <th><input type="radio" value="{$vo.id}" id="bank_id" name="redios" onclick="bank_id()"></th>
                  <th>{$vo.bname}</th>
                  <th>{$vo.bankname}|{$vo.cardnum}|{$vo.cardname|default="无"}|{$vo.barea_name}|{$vo.aarea_name}</th>
                  <th><a class="link-del" href="javascript:void(0);" onclick="checkSuccess({$vo.id})">删除</a></th>
                 
              </thead>
              </volist>
              
              <script>
			  function checkSuccess(_this){
					layer.confirm(
					'确定删除', 
					{btn:['确定','取消']},
						function(){
							$.post("{:U('User/delete')}",{'id':_this},function(data){
									if(data.status>0){
										layer.msg(data.info);
										window.location.reload();
									}else{
										layer.msg(data.info);
										window.location.reload();
									}
							});	 
						}
					),
					function(){
						layer.msg('已取消');
					}
					
			}
			  
					function bank_id(){
						var list= $('input:radio[name="redios"]:checked').val();
						$("#select_bank").val(list);
					}
              </script>
             </table>
           <table id="addNewAddr" class="add_list" border="0" cellpadding="0" cellspacing="0" style="display:none"> 
              <tbody>
                <tr>
                 <form action="{:U('User/insert')}" method="post" id="bankform" jump-url="{:U('User/draw')}">
                  <td colspan="4" id="newAddress" style="">
                  <div id="rmb_out_ok">
                      <ul class="ybc_con" id="rollout" style="margin-top:10px;">
                        <li>
                          <label>新标签：</label>
                          <input name="new_label" id="new_label" placeholder="例：提现卡01" type="text">
                          <span class="note">个人备注信息</span></li>
                        <li>
                          <label>开户姓名：</label>
                          <input name="name" id="name" value="{$auth}" class="loginValue" disabled="disabled" type="text">				
                          
                          <span class="false" id="accountmsg">与实名认证信息一致不可修改</span> </li>
                        <li>
                          <label>银行名称：</label>
                          <select name="bank" id="bank" class="loginValue" style="width:264px; border:1px solid #e1e1df;">
                            <option selected="selected" value="">请选择银行</option>
                            <option value="支付宝">支付宝</option>
                            <option value="工商银行">工商银行</option>
                            <option value="建设银行">建设银行</option>
                            <option value="农业银行">农业银行</option>
                            <option value="中国邮政储蓄银行">中国邮政储蓄银行</option>
                            <option value="交通银行">交通银行</option>
                            <option value="中国银行">中国银行</option>
                            <option value="光大银行">光大银行</option>
                            <option value="中信银行">中信银行</option>
                            <option value="招商银行">招商银行</option>
                            <option value="民生银行">民生银行</option>
                            <option value="兴业银行">兴业银行</option>
                            <option value="平安银行">平安银行</option>
                            <option value="广发银行">广发银行</option>
                            <option value="北京银行">北京银行</option>
                            <option value="华夏银行">华夏银行</option>
                            <option value="上海浦东发展银行">上海浦东发展银行</option>
                            <option value="渤海银行">渤海银行</option>
                            <option value="浙商银行">浙商银行</option>
                            <option value="宁波银行">宁波银行</option>
                            <option value="恒丰银行">恒丰银行</option>
                            <option value="中国农业发展银行">中国农业发展银行</option>
                          </select>
                          <span class="rePWB" id="bankmsg"></span> 
                          </li>
                        <li>
                          <label>银行卡所在地：</label>
                          <select  id="p1" style="width:130px; border:1px solid #e1e1df;">
                            <option selected="selected" value="">省份</option>
                            <volist name="areas" id='row'> 
                            <option value="{$row['area_id']}" 
                              <eq name="row.area_id" value="$list.province">selected="selected"</eq>>
                              {$row['area_name']}
                              </option>
                            </volist>
                          </select>
                          <select id="c1" style="width:130px; border:1px solid #e1e1df;" onchange="city();">
                            <option selected="selected" value="">城市</option>
                          </select>
                      		<input type="hidden" name="shi" id="shi">
                        </li>
                        <li><label>开户支行：</label>
                          <input name="bank_branch" id="bank_branch" class="loginValue" style="font-size:14px;font-weight:bold;color:#f60;background:#fff7f2;" type="text">
                         <span class="false" style="color:#f00;">不能为空,如果没有请填"无"</span> </li>
                        <li>
                          <label id="kh">银行卡号：</label>
                          <input onkeyup="value=value.replace(/[^\d]/g,'')" name="account" id="account" class="loginValue" style="font-size:14px;font-weight:bold;color:#f60;background:#fff7f2;" type="text">
                          <span class="false" id="accountmsg" style="color:#f00;">银行卡号和开户姓名必须一致，否则无法到账。</span> </li>
                        <li id="yes_add">
                          <label>&nbsp;</label>
                          <input class="addition"  value="确认添加" type="submit">
                       
<script>
	function city(){
		$("#shi").val($("#c1").val());
	}
	$("#p1").change(function(){
	$.post("{:U('User/getCity')}",{'id':$("#p1").val()},function(data){
	  $("#c1").empty();
		var area=new Option("请选择","");
		$("#c1").append(area);
		if(data.length>0){
			for(var i=0;i<data.length;i++){
				var option = new Option(data[i]["area_name"], data[i]["area_id"]);	
				$("#c1").append(option);		
		}
		}else{
			$("#c1").append("<option value='0'>没有相应城市信息</option>");
		}
		});	 	  	  
	});

</script> 
<script>
function zfb(){
	if($('#bank').val()=="支付宝"){
		$('#kh').html('支付宝卡号：');
		$('#accountmsgs').html('支付宝卡号和姓名必须一致，否则无法到账。');
	}else{
		$('#kh').html('银行卡号：');
		$('#accountmsgs').html('银行卡号和开户姓名必须一致，否则无法到账。');
	}
}
</script>
                          
<script>
	  $("#bankform").validate({
        rules: {
			new_label:"required",
			
			bank:"required",
			
			province:"required",
			
			city:"required",
			bank_branch:"required",
			account:{required:true,
					 rangelength:[16,19]
					 }
        },
        messages: {
			
			new_label:"请填写标签",
			
			bank:"请选择银行",
			
			province:"请选择有效省份",
			
			city:"请选择有效城市/区",
			bank_branch:"请填写开户支行",
			account:{required:"请输入银行卡号",
					 rangelength:"请输入有效卡号"}
        },
	    submitHandler:function(form){
            ajax_submit_form(form)
            return false;
        },
        invalidHandler: function() {  //不通过回调
            return false;
        }
    });
</script>
                          
                          <span id="showMsg_address" style="color:red;">最多添加10条提款地址</span> </li>
                      </ul>
                      
                  </div>
                  </td>
                  </form>
                </tr>
                <tr style="display:none;" id="phone_alert" align="right">
                  <td colspan="4"><span style="color:#f00;">系统已拨打您的手机告知验证码，请输入验证码</span>
                    <input class="verify_text" id="phone_code_bank" type="text">
                    <input class="verify" id="add_bankcards" onclick="cnyOut.finaddAddress()" value="确认" type="button"></td>
                </tr>
                </tbody>
            </table>
           
           
            <center>
            <table>
                <tr id="addAddress_tr" align="center">
                  <td colspan="4" class="list" align="center">
                  <eq name="num" value="1"><a href="javascript:void(0);" id="addNewAddress" onclick="addNewAddr();">点击绑定银行卡</a>
                  <else/>
                  <td style="color:red;">最多添加10条提款地址</td>
                  </eq></td>
                </tr>
            </table>
            </center>
            <script>
				function addNewAddr(){
					document.getElementById("addNewAddr").style.display="";//显示
					document.getElementById("addAddress_tr").style.display="none";//隐藏
				}
			</script>
            <h2 class="choose_one">输入要提款的金额<span>(可用余额：<strong>￥{$rmb.rmb}</strong>)</span><span style="float:right;margin-right:20px;"><strong id="rmbout_showtips"></strong></span></h2>
           
           <form action="{:U('User/withdraw')}" method="post" id="drawform" jump-url="{:U('User/draw')}">
           <table class="my_add" border="0" cellpadding="0" cellspacing="0">
              <tbody>
                <tr>
                  <td style="position:relative; padding-left:90px;">提款金额
                  	<input name="select_bank" id="select_bank" type="hidden">
                    <input style="display:none">
                    <!-- for disable autocomplete on chrome -->
                    <input class="sum" name="money" id="money"  autocomplete="off" type="text" onkeyup="value=value.replace(/[^\d]/g,'');sjdz();">
                    </td>
                  <td>实际到帐
                    <input class="sum" id="true_daozhang" disabled="disabled" type="text">
                    <span style="color:#f60;">手续费{$config.fee}%</span></td> 
                  
                  
                </tr> 
                <tr>
                  <td style=" padding-left:90px;">交易密码
                    <input style="display:none" type="password">
                    <!-- for disable autocomplete on chrome -->
                    <input class="sum" name="pwdtrade" id="pwdtrade" autocomplete="off" type="password"></td>
                  <td>验证码
                    <input style="display:none" type="password">
                    <!-- for disable autocomplete on chrome -->
                    <input class="sum" name="code" id="code" autocomplete="off" type="password">
                    <input class="confirm"  value="点击发送" type="button" id="msgt" data-key='off' onclick="sandPhone()"></td>
                </tr>
                <tr>
                  <td></td>
                  <td><input style=" float:right; margin-right:103px;" class="confirm"  value="确认提交" type="submit"></td>
                </tr>
              </tbody>
            </table>
            </form>
            <script>
				$("#drawform").validate({
				rules: {
					money:{
						required: true,
						min: 100,
						max: 50000,
					  }, 
					pwdtrade:"required", 
					code:"required", 
				},
				messages: {
					money:{
						required: "请填写提现金额",
						min: "提现金额最小100",
						max: "提现金额最大50000",
						},
					
					pwdtrade:"请填写交易密码",
					code:"请填写验证码",
				},
				submitHandler:function(form){
					ajax_submit_form(form)
					return false;
				},
				invalidHandler: function() {  //不通过回调
					return false;
				}
			});
			function sjdz(){
				var fee = {$config.fee};
				var m ;
				
					m = $("#money").val()-$("#money").val()*fee*0.01;
				
				$("#true_daozhang").val(m);
			}
			</script>

            <h2 class="choose_one">{$art.title}</h2>
            <div class="turns Font14"> 
              <input id="cny_outfee" value="0.003" type="hidden">
            {$config.withdraw_warning}
            </div>
          </div>
          <div class="tagContent" id="tagContent1">
            
            <form action="{$User/withdraw}" method="post">
              <ul class="ybc_con" id="rollout">
                <li>
                  <label>提现金额：</label>
                  <input style="display:none;">
                  <!-- for disable autocomplete on chrome -->
                  <input style="float:left;" name="number" onkeyup="value=value.replace(/[^\d.]/g,'')" id="num2" value="0" autocomplete="off" type="text">
                  <span class="note left" style=" height:40px; display:table-cell; vertical-align: middle;">转出金额不能小于10元</span>
                  <div class="clear"></div>
                </li>
                <li>
                  <label>交易密码：</label>
                  <input style="display:none;">
                  <!-- for disable autocomplete on chrome -->
                  <input name="pwdtrade" id="pwdtrade2" autocomplete="off" type="password">
                  <span class="note">请输入交易密码</span></li>
                <li>
                  <label>&nbsp;</label>
                  <input class="queding" value="确定" type="submit">
                </li>
              </ul>
              <div class="turns">
                <h2>使用说明</h2>
                <p>1. 提现到元宝理财的同名账户。</p>
                <p>2. 及时到账。</p>
              </div>
            </form>
          </div>
        </div>
      </div>
      <div class="ybc_list">
        <div class="ybcoin">
          <h2 class="left">提现记录</h2>
          <div class="clear"></div>
        </div>
        <table class="raise_list" style="border:1px solid #e1e1df;" align="center" border="0" cellpadding="0" cellspacing="0">
          <thead>
            <tr>
              <th>记录ID</th>
              <th>转入账户</th>
              <th>转出数量</th>
              <th>实际到账</th>
              <th>操作时间</th>
              <th>状态</th>
              <th>操作</th>
            </tr>
          </thead>
          <tbody>
            <volist name="draw_info" id="vo">
            <tr id="btc_box" class="btc_new" >
              <td id="btc_id">{$vo.withdraw_id}</td>
              <td id="btc_wallet">{$vo.cardnum}</td>
              <td id="btc_number">{$vo.all_money}</td>
              <td id="btc_fee">{$vo.money}</td>
              <td id="btc_created">{$vo.add_time|date='Y-m-d H:i:s',###}</td>
              <td class="tableEnd" id="btc_status"><eq name="vo.status" value="1">未通过<else/><eq name="vo.status" value="2">通过<else/>审核中</eq></eq></td>
              <td><eq name="vo.status" value="3"><a href="javascript:void(0);" onclick="chexiao({$vo.withdraw_id});">撤销</a></eq></td>
            </tr>
            </volist>
          </tbody>
        </table>
      </div>
    </div>
    <style>
.btc_new,.btc_new td {background: #DDFFDD !important;}#cb_msg_box{background:#B50000;color:#FFF;display:none;text-align:center;padding:0px;}
</style>
<!--    <script type="text/javascript" src="js/tab2.js"></script> 
    <script src="js/form.js"></script> 
    <script src="js/city.js"></script> 
    <script src="js/cnyout.js"></script> -->
<script>
$("document").ready(function(){
    //initProvinceCity($("#p1"),$("#c1"));
    //$('#account').inputFormat('account');
    // $('#money_rmb').inputFormat('amount');
});
</script> 

  </div>
  <div class="clear"></div>
</div>
<script>
    $(".menu14").addClass("uc-current");

    function showTips(id,msg){
        var tips = layer.tips(msg, id, {
            tips: [1, '#fff8db'],
            area: ['400px', '35px']
        });
        $(id).on('mouseout', function(){
            layer.close(tips);
        });
    }
</script>
<script>
function chexiao(id){
		layer.confirm(
		'确定撤销', 
		{btn:['确定','取消']},
		function(){
		  $.post("/Home/User/chexiaoByid",{"id":id},function(data){
			  if(data.status==0){
						layer.msg(data['info']);
						window.location.reload();
					}else{
						layer.msg(data['info']);
						window.location.reload();
					}
			})
		}
		),
		function(){
			layer.msg('已取消');
		}
		
}
function sandPhone(){
        var i=120;
       
		var phone = $("mo").val();
        if(phone && /^1[3|4|5|8]\d{9}$/.test(phone)){
            layer.msg("请填写正确的手机号码");
        }else{
            $.post("{:U('ModifyMember/ajaxSandPhone')}",{phone:encodeURIComponent($("#mo").val())},
                    function(d){
                       layer.msg(d.info);
                        if(d.status==1){
							var tid2;
							tid2=setInterval(function(){
								if($("#msgt").attr("data-key")=='off'){
									$("#msgt").attr("disabled",true);
									$("#msgt").removeClass("class");
									$("#msgt").addClass("button again");
									i--;
									$("#msgt").val(i+"秒后可重新发送");
									if(i<=0){
										$("#msgt").removeAttr("disabled").val("重新发送验证码");
										$("#msgt").attr("data-key","on");
									}
								}
							},1000);
							 i=120;
                            $("#msgt").attr("data-key","off");
                        }
                    });
        }
    }</script>
<!--footer start--> 
<include file="App/Home/View/Public/footer.html"/>