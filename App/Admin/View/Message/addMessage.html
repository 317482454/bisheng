<include file="App/Admin/View/Public/left.html"/>

    <script type="text/javascript" src="__PUBLIC__/js/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="__PUBLIC__/js/jquery-2.1.1.min.js"></script>
    <script src="__PUBLIC__/js/bootstrap.min.js?v=3.4.0"></script>
    <script type="text/javascript" src="__PUBLIC__/js/layer/layer.js"></script>
    <script src="__PUBLIC__/js/jquery.validate.min.js"></script>
    <script src="__PUBLIC__/js/messages_zh.min.js"></script>
    <script src="__PUBLIC__/js/base.js"></script>
	
	<script type="text/javascript" charset="utf-8" src="__PUBLIC__/kindeditor/kindeditor.js"></script>
<script type="text/javascript" charset="utf-8" src="__PUBLIC__/kindeditor/lang/zh_CN.js"></script>
<script type="text/javascript" charset="utf-8" src="__PUBLIC__/kindeditor/plugins/prettify.js"></script>

 <script>
						$(function(){
						if($("#all").change()){
							　$('#show').hide();
						}
						 
						　　$("#one").change(function(){
						　　　　$('#show').show();
						　　});
							$("#all").change(function(){
						　　　　$('#show').hide();
						　　});
						});  
						</script>
<!--/sidebar-->
<div class="main-wrap">
    <div class="crumb-wrap">
        <div class="crumb-list"><i class="icon-font"></i><a href="/think/admin">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">会员管理</span></div>
    </div>
    <div class="result-wrap">
        <form action="{:U('Message/addMessage')}" method="post" id="subform" jump-url="{:U('Message/index')}" >
            <div class="config-items">
                <div class="config-title">
                    <h1><i class="icon-font">&#xe00a;</i>会员用户添加</h1>
                </div>
                <div class="result-content">
                    <table width="100%" class="insert-tab">
                        <tbody>
						
						 <tr>
                            <th width="15%"><i class="require-red">*</i>类型</th>
                            <td>
							<select name="type">
								<volist name="type" id="row">
								<option value="{$row['id']}" <eq name="row.id" value="$list['type']"> selected="selected" </eq>>{$row['name']}</option>
								</volist>
							</select>
							</td>
                        </tr>
                        <tr>
                            <th width="15%"><i class="require-red">*</i>标题</th>
                            <td><input  style=" width:300px;" name="title" id="title" value="{$list['title']}" type="text"><span id="showBug" style=" margin-left:10px;color:#FF0000"></span></td>
                        </tr>
											
						<tr>
                            <th width="15%"><i class="require-red">*</i>内容</th>
                            <td>
 
								<textarea id="content" name="content" cols="30" style="width:800px;height:300px;" rows="10">{$list['content']}</textarea>
			<script>									
                    KindEditor.ready(function(K) {
                            window.editor = K.create('#content');	
                    });

            </script>
							</td>
                        </tr>
 						<tr>
                            <th width="15%"><i class="require-red">*</i>发送人员</th>
                            <td>
							<if condition="$list['u_id'] ">
								 <input type="radio"  name="radios" value="all" id="all" <if condition="$list['u_id'] eq -1 ">checked="checked"</if> />群发
								 <input type="radio"  name="radios" value="one" id="one"    <if condition="$list['u_id'] neq -1 ">checked="checked"</if> />个人
								 <else/>
								 <input type="radio"  name="radios" value="all" id="all" checked="checked" />群发
								 <input type="radio"  name="radios" value="one" id="one" />个人
							</if>
 
							</td>
                        </tr>	
						<tr id="show" style="display:none">
                            <th width="15%"><i class="require-red">*</i>请输入个人ID</th>
                            <td>
								 <input type="text"  name="u_id" value="{$list['u_id']}" />
							</td>
                        </tr>	
						<if condition="$list['add_time']">
						 <tr>
                           <th width="15%"><i class="require-red">*</i>添加时间</th>
                            <td><input style=" width:200px;" name="add_time" readonly="readonly" value="{$list['add_time']|date="Y-m-d H:i:s",###}"  /></td>
                        </tr>
						</if>
                        <tr>
                            <th></th>
 
                            <td>
							<if condition="empty($list['id'])">
								<input type="submit"  value="提交" class="btn btn-primary btn6 mr10">
							</if>
                                <a href="{:U('Message/index')}"><input type="button" value="返回"  class="btn btn6"></a>
                            </td>
                        </tr>
                        </tbody></table>
                </div>
            </div>
        </form>
    </div>
</div>
<script>

$("#subform").validate({			   
                rules: {
                    title: {
                        required: true,
                    },
					 content: {
                        required: true,
                    }
                },
                messages: {
                    title: {
                        required: "标题不能为空",
                    },
					 content: {
                        required: "内容不能为空",
                    }
                },
				submitHandler:function(form){
					editor.sync();
					form.submit();
					return false;
				},
				invalidHandler: function() {  //不通过回调 
					  return false; 
				  },
            });
			
</script>



<!--/main-->
</div>
</body>
</html>
<script>
$(".sub-menu").eq(3).show();
$(".sub-menu").eq(3).children("li").eq(2).addClass("on");
</script>