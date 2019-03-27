<include file="App/Admin/View/Public/left.html"/>
<script type="text/javascript" charset="utf-8" src="__PUBLIC__/kindeditor/kindeditor.js"></script>
<script type="text/javascript" charset="utf-8" src="__PUBLIC__/kindeditor/lang/zh_CN.js"></script>
<script type="text/javascript" charset="utf-8" src="__PUBLIC__/kindeditor/plugins/prettify.js"></script>
<script>
	function checkForm(){
		editor.sync();
		var name = document.getElementById('title').value;

		if(name != ""){
			document.getElementById('myform').submit();
		}else{
			alert('请填写标题');
		}
	}
</script>

<div class="main-wrap">
  <div class="crumb-wrap">
    <div class="crumb-list"><i class="icon-font"></i><a href=":U('Index/index')}">首页</a><span class="crumb-step">&gt;</span><a class="crumb-name" href="javascript:void(0)" onclick="history.go(-1)">文章管理</a><span class="crumb-step">&gt;</span><span>新增文章</span></div>
  </div>
  <div class="result-wrap">
    <div class="result-content">
      <form action="{:U('Art/insert')}" method="post" id="myform" name="myform" enctype="multipart/form-data" >
        
        <table class="insert-tab" width="100%">
          <tbody>
            <tr>
              <th width="120"><i class="require-red">*</i>分类：</th>
              <td>
              <eq name="category[0]['parent_id']" value="6">
              	<select name="category_id" id="category_id" class="required" >
                  <volist name="category" id="vo">
                   <option value="{$vo.id}" <eq name="vo.id" value="$list.position_id">selected="selected"</eq>> {$vo.name}</option>
                  </volist>
                </select>           
                <else />
                {$category[0]['name']}
                </eq>
                </td>
            </tr>
            <input type="hidden" id="article_category_id" name="article_category_id" value="{$Think.get.article_category_id}">
            <tr>
              <th><i class="require-red">*</i>标题：</th>
              <td><input class="common-text required" id="title" name="title" size="50" value="{$list.title}" type="text"></td>
            </tr>
            <!--                          <tr>
                                <th>状态：</th>
                                <td>
                                <select name="status" id="status" class="required">
                                    <option value="1" selected="selected">显示</option>
                                    <option value="0">不显示</option>
                                </select>
                                </td>
                            </tr>-->
            <tr>
            <th>是否标红</th>
            <td>
            <label><input type="radio" name="sign" value="1"/> 是</label>
            <label><input type="radio" name="sign" value="0" checked="checked" /> 否</label>
            </td>
            </tr>
            
            <tr>
              <th>内容：</th>
              <input type="hidden" value="{$list.article_id}" name="article_id">
              <td><textarea id="content" name="content" cols="30" style="width:800px;height:300px;" rows="10">{$list.content}</textarea>
			<script>									
                    KindEditor.ready(function(K) {
                            window.editor = K.create('#content');	
                    });

            </script>
            </td>
            </tr>
            <tr>
              <th></th>
              <!--确定文章的类型-->
              
               <!--确定后台成功返回的url-->
               <eq name="category[0]['parent_id']" value="6">
               <!--<input type="hidden" name="article_category_id" value="{$article_category['id']}">-->
               <input type="hidden" name="url" value="{:U('Art/helpindex')}">
               <else />
               <input type="hidden" name="category_id" value="{$category[0]['id']}">
               <input type="hidden" name="url" value="{:U('Art/index',array('article_category_id'=>$category[0]['id']))}">
               </eq>
              <td><input class="btn btn-primary btn6 mr10" value="提交"  type="button" onclick="checkForm()" >
                <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button"></td>
            </tr>
          </tbody>
        </table>
      </form>
    </div>
  </div>
</div>
<!--/main-->

</div>
</body></html>
<script>
$(".sub-menu").eq(9).show();
$("#myform").ready(function(e) {
	var num = parseInt($("#article_category_id").val());
	switch(num){
		case 1:
			$(".sub-menu").eq(9).children("li").eq(0).addClass("on");
			break;
		case 2:
			$(".sub-menu").eq(9).children("li").eq(3).addClass("on");
			break;
		case 7:
			$(".sub-menu").eq(9).children("li").eq(2).addClass("on");
			break;
		default:
			$(".sub-menu").eq(9).children("li").eq(1).addClass("on");
		}
});
</script>
