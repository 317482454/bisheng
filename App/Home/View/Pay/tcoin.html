<include file="App/Home/View/Public/header.html"/>
    <!--top end-->
<script src="./元宝网｜第一数字资产交易平台_files/index.js"></script>
<div id="main">
	<div class="main_box">
		<include file="App/Home/View/Public/left.html"/>
		<div class="raise right clearfix">
            <script type="text/javascript" src="./元宝网｜第一数字资产交易平台_files/ajax.js"></script>
<script type="text/javascript" src="./元宝网｜第一数字资产交易平台_files/Fnc.js"></script>
<div class="ybc_list">
	<div class="ybcoin">
		<h2 class="left">{$cuid.currency_name}提币</h2>
		<div class="clear"></div>
	</div>
</div>
<json id="json" ></json>
        <div class="support_ybc pass_ybc" id="verifyon">
        <div id="tagContent" class="passContent">
        <div class="tagContent selectTag" id="tagContent0">
                    <div class="choose_one clearfix">
		<h2 class="left">选择一个提币地址<span style="float:right;margin-right:50px;"><strong id="coinout_showtips"></strong></span></h2>
		<p class="right" style="font-size:12px; margin-top:8px;">如果您新添加的地址为【未认证】，请联系官方客服QQ（{$config.qq1}）审核。</p>
	    </div>
	    <table cellpadding="0" cellspacing="0" border="0" class="my_add">
		<thead>
			<tr align="center">
				<th style="width:143px">选择</th>
				<th style="width:221px">地址标签</th>
				<th style="width:300px;">提币地址</th>
				<th style="width:100px">状态</th>
				<th style="width:144px">操作</th>
			</tr>
		</thead>
     
		<tbody>
            <form class="form-horizontal m-t" id="address" jump-url="{:U('Pay/tcoin',array('currency_id'=>$cuid['currency_id']))}" method="post" action="{:U('Pay/add_qianbao_address')}">
            			<tr style="display:none;" id="coinout_newaddr" align="center">
				<td>新地址</td>
				<td><input class="sum" id="new_label"  type="text" name="name" placeholder="例如：张三的地址"></td>
				<td><input class="sum" id="wallet_address" style="width:300px;"  type="text" name="address" placeholder="例如：yja67fGc8UBXLWtjwvHFkjrmYhTFGH9PTs" ></td>				
				<input type="hidden" name="currency_id" value="{$cuid['currency_id']}" />
				<td>&nbsp;</td>
				<td><input class="verify"  id="yes_add2" value="确认" type="submit"></td>
			</tr>
			</form>
			<!--<tr style="display:none;" id="phone_alert2" align="right">
				<td colspan="5"><span style="color:#f00;">系统已拨打您的手机告知验证码，请输入验证码</span> <input class="verify_text" id="phone_code_wallet" type="text"><input class="verify" value="确认" onclick="coinOut.finaddAddress()" type="button"></td>
			</tr>-->
			
			<empty name="list">
			<tr align="center" id="addAddress_tr">
				<td colspan="5"><a href="javascript:coinOut.addNewAddr();" id="addNewAddress">点击添加一个新的提币地址</a></td>
                
			</tr>
			<else/>
			<tr align="center">
				<td>地址</td>
				<td><input class="sum" id="new_label"  type="text" name="name" value="{$list.name|default=''}" disabled="disabled"></td>
				<td><input class="sum" id="wallet_address" style="width:300px;"  type="text" name="address" disabled="dosabled"  value="{$list.qianbao_url|default=''}"></td>
				<td>可用</td>
				
				<td><a href="{:U('Pay/del_address',array('id'=>$list['id'],'cuid'=>$cuid['currency_id']))}">删除</a></td>
			</tr>
			</empty>
		</tbody>
	    </table>
		  <script>	
           $("#address").validate({			   
                rules: {
                    name: {
                        required: true,
                    },
                    address: {
                        required: true,
                    }
                },
                messages: {
                  name: {
                        required: "姓名不能为空",
                    },
                    cardnum: {
                        required: '地址不能为空',
                    }
                },
				submitHandler:function(form){
					ajax_submit_form(form)
					return false;
				},
				invalidHandler: function() {  //不通过回调 
					  return false; 
				  },
		   
            });
			</script> 
			
	    <h2 class="choose_one">输入要提币的数额<span>(可用余额：<strong>{$cuser.num} {$cuid.currency_mark}</strong>)</span><span style="float:right;margin-right:20px;"><strong id="coinout2_showtips"></strong></span></h2>
	    <table cellpadding="0" cellspacing="0" border="0" class="my_add">
		<form class="form-horizontal m-t" id="tibi" jump-url="{:U('Pay/tcoin',array('currency_id'=>$cuid['currency_id']))}" method="post" action="{:U('Pay/ti_bi')}">
		<tbody>      
        
			<tr>
	    	  <input type="hidden" name="currency_id" value="{$cuid.currency_id}">
				<td style="position:relative; padding-left:90px;">提币数量<input type="text" class="sum" id="coin_rmb" name="num" ></td>
				<td>实际到帐 <input type="text" class="sum" id="true_coin" disabled=""> <span style="color:#f60;">(手续费{$config.tcoin_fee|mb_substr=0,4,"utf-8"}%)</span></td>
			</tr>
            <tr>
               <td style=" padding-left:90px;">交易密码 <input type="password" class="sum" name="paypwd" ></td>
               <td>验证码
                    <input style="display:none" type="password">
                    <!-- for disable autocomplete on chrome -->
                    <input class="sum" name="code" id="code" autocomplete="off" type="password">
                    <input class="confirm"  value="点击发送" type="button" id="msgt" data-key='off' onclick="sandPhone()"></td>
            </tr>
            <tr>
              <td colspan="4"><input style=" float:right; margin-right:103px;" type="submit" class="confirm" value="确认提币"></td>
            </tr>
		</tbody>
        	</form>
	    </table>
        	    <h2 class="choose_one">转出{$cuid.currency_name}说明</h2>
        <div class="turns">
            <p>1. 提币手续费为{$config.tcoin_fee|mb_substr=0,4,"utf-8"}%，请仔细确认后再操作。</p>
            <p>2. 每笔转出最大限额{$cuid.currency_all_tibi|default="0"}个币。</p>
            	                <input type="hidden" id="sell_fee" value="{$config.tcoin_fee}">
            <input type="hidden" id="min_coin" value="5.0000">
        </div>
        </div>
        <div class="tagContent" id="tagContent1">
       
        	    <h2 class="choose_one">转出{$cuid.currency_name}说明</h2>
        <div class="turns">
            <p>1.提币手续费为{$cuid.currency_sell_fee|mb_substr=0,4,"utf-8"}%，请仔细确认后再操作。</p>
            <p>2.每笔转出最大限额2000个币。</p>
        </div>
        </div>
        </div>
    </div>
	<div class="ybc_list">
    <div class="ybcoin">
        <h2 class="left">转出记录</h2>
        <div class="clear"></div>
    </div>
	<table cellspacing="0" cellpadding="0" border="0" class="raise_list" align="center" style="border:1px solid #e1e1df;">
		<thead>
		<tr>
			<th>记录ID</th>
			<th>转入钱包地址</th>
			<th>转出数量</th>
			<th>实际到账</th>
			<th>操作时间</th>
			<th>状态</th>
		</tr>
		</thead>
		<tbody>
		<volist name="tibi_list" id='vo'>
		<tr id="btc_box" class="btc_new">
			<td id="btc_id">{$vo.id}</td>
			<td id="btc_wallet">{$vo.url}</td>
			<td id="btc_number">{$vo.num}</td>
			<td id="btc_fee">{$vo.actual}</td>
			<td id="btc_created">{$vo.add_time|date="Y-m-d H:i:s",###}</td>
			<td class="tableEnd" id="btc_status"><eq name="vo.status" value = '0'>等待转出<else/>已经到账</eq></td>
		</tr>
				
		</volist>
				</tbody>
	</table>
	</div>
	</div>
	    <script>	
           $("#tibi").validate({			   
                rules: {
                    num: {
                        required: true,
                    },
                    paypwd: {
                        required: true,
                    },
					code:{
						required: true,
					}
                },
                messages: {
                  num: {
                        required: "金额不能为空",
                    },
                    paypwd: {
                        required: "请填写支付密码",
                    },
					code: {
                        required: "请填写验证码",
                    }
                },
				submitHandler:function(form){
					ajax_submit_form(form)
					return false;
				},
				invalidHandler: function() {  //不通过回调 
					  return false; 
				  },
		   
            });
			</script> 
<style>.btc_new,.btc_new td {background: #DDFFDD !important;}#cb_msg_box{background:#B50000;color:#FFF;display:none;text-align:center;padding:0px;}</style>

<script src="__PUBLIC__/Home/js/coinout.js"></script>
<script>
$('#coin_rmb').bind('input propertychange', function() {
	var num=$("#coin_rmb").val();
	if(isNaN(num)){
	 alert("请输入数字类型");
	}else{
	
	var fee=$("#sell_fee").val()/100;
	var shiji=num*(1-fee);
	$("#true_coin").val(shiji.toFixed(2));
	}
}); 
 function sandPhone(){
        var phone="{$member.phone}";
		
		var i=120;
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
        
            $.post("{:U('Common/ajaxSandPhone')}",{'phone':phone},
                    function(d){
                       layer.msg(d.info);
                        if(d.status==1){
                            i=120;
                            $("#msgt").attr("data-key","off");
            	 }
            });
    }
</script>
		</div>
		<div class="clear"></div>
	</div>
    
<!--footer start-->
<include file="App/Home/View/Public/footer.html"/>