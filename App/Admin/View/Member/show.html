    <include file="App/Admin/View/Public/left.html"/>
    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="{:U('Index/index')}">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">查看个人账户</span></div>
        </div>
        <div class="result-wrap">
          <table class="result-tab" width="100%">
                <tr>
                    <th>ID</th>
                    <th>会员姓名</th>
                    <th>会员邮箱</th>
                    <th>会员电话</th>     
                </tr>
                    <tr>
                        <td>{$member_info['member_id']}</td>
                        <td>{$member_info['name']}</td>
                        <td>{$member_info['email']}</td>
                        <td>{$member_info['phone']}</td>
                    </tr>
          </table>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <table class="result-tab" width="100%">
                    <tr>
                        <th>币种名称</th>
                        <th>持有数量</th>
						<th>冻结数量</th>   
						<th>操作</th>   
                    </tr>
                    <volist name='info' id='vo'>
                        <tr>
                            <td>{$vo['currency_name']}</td>
                            <td><input  value="{$vo['num']}" type="text" id="num{$vo['currency_id']}"/></td>
							<td><input value="{$vo['forzen_num']}" type="text" id="forzen_num{$vo['currency_id']}"/></td>
                            <td><a onclick="update({$vo['currency_id']},num{$vo['currency_id']})">修改</a></td>
                        </tr>
                    </volist>

                </table>
                <div class="list-page"> <ul>{$page}</ul></div>
            </div>

        </div> 
        <div style="margin: 0 auto; text-align:center; "><br />
        	<input type="button" value="返回" onclick="history.go(-1)" class="btn btn6">
		</div>
    <!--/main-->
</div>
</body>
</html>
<script>
	function update(_this,a){
		layer.confirm('确定修改？', {
	  btn: ['确定','取消'], //按钮
	  title: '修改'
	}, function(){
		var member_id="{$info[0]['member_id']}";
		var num=$("#num"+_this).val();
		var forzen_num=$("#forzen_num"+_this).val();
	  $.post("{:U('Member/updateMemberMoney')}",{currency_id:_this,member_id:member_id,num:num,forzen_num:forzen_num},function(data){
				   if(data['status'] == 1){
					   layer.msg(data['info']);
					   setTimeout(function(){location.reload();},1000);
				   }else{
					   layer.msg(data['info']);
				   }
			})
	}, function(){
	  layer.msg('已取消');
	});

	}
</script>
<script>
$(".sub-menu").eq(3).show();
$(".sub-menu").eq(3).children("li").eq(0).addClass("on");
</script>