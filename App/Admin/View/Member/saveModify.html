<include file="App/Admin/View/Public/left.html"/>
<!--/sidebar-->
<div class="main-wrap">
    <div class="crumb-wrap">
        <div class="crumb-list"><i class="icon-font"></i><a href="{:U('Index/index')}">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">会员管理</span></div>
    </div>
    <div class="result-wrap">
        <form action="{:U('Member/saveModify')}" method="post" id="myform" name="myform" enctype="multipart/form-data">
            <div class="config-items">
                <div class="config-title">
                    <h1><i class="icon-font">&#xe00a;</i>会员用户添加</h1>
                </div>
                <div class="result-content">
                    <table width="100%" class="insert-tab">
                        <tbody>
						<input type="hidden" name="member_id" value="{$list['member_id']}"/>
                        <tr>
                            <th width="15%"><i class="require-red">*</i>电子邮件：</th>
                            <td>{$list['email']}</td>
                        </tr>
                        <!-- 修改时显示下方 -->
                            <tr>
                                <th><i class="require-red">*</i>昵称：</th>
                                <td><input name="nick" id="nick" value="" type="text">
								<span id="showBug" style=" margin-left:10px;color:#FF0000"></span></td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>真实姓名：</th>
                                <td><input name="name" id="name" value="" onkeyup="value=value.replace(/[^\D]/g,'');" autocomplete="off" maxlength="8" type="text"></td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>证件类型：</th>
                                <td>
                                    <select id="cardtype" name="cardtype">
                                        <option value="1" selected="selected">身份证</option>
                                        <!--  <option value="2">护照</option>-->
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>证件号码：</th>
                                <td><input name="idcard" id="idcard" value="" type="text"></td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>手机号码：</th>
                                <td><input name="phone" id="phone" value="" type="text">
								<span id="moshowBug" style=" margin-left:10px;color:#FF0000"></span></td>
                            </tr>
                        <tr>
                            <th></th>
                            <td>
                                <input type="button" onclick="subform()" value="提交" class="btn btn-primary btn6 mr10">
                                <a href="{:U('Member/index')}"><input type="button" value="返回"  class="btn btn6"></a>
                            </td>
                        </tr>
                        </tbody></table>
                </div>
            </div>
        </form>
    </div>
</div>
<script>
cknick = 0;
ckphone = 0;
$('#nick').blur(function(){
	var path = "{:U('Member/ajaxCheckNick')}";
	$.ajax({
		type:"get",
		dataType:"json",
		data:{nick:$('#nick').val()},
		url:path,
		success:function(d){
				if(d['status']==0){
					$('#showBug').html(d['msg']);
					$('#nick').focus();
					return false;
				}else{
					$('#showBug').html(d['msg']);
					return cknick = 1 ;
				}
			},
		});
});
$('#phone').blur(function(){
	var path = "{:U('Member/ajaxCheckPhone')}";
	$.ajax({
		type:"get",
		dataType:"json",
		data:{phone:$('#phone').val()},
		url:path,
		success:function(d){
				if(d['status']==0){
					$('#moshowBug').html(d['msg']);
					$('#phone').focus();
					return false;
				}else{
					$('#moshowBug').html(d['msg']);
					return ckphone = 1 ;
				}
			},
		});
});

function subform(){
	if(cknick==1 && ckphone==1){
		$('#myform').submit();
	}else{
		alert('请填写完整信息');
	}
}
</script>
 
<!--/main-->
</div>
</body>
</html>