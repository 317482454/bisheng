    <include file="App/Admin/View/Public/left.html"/>
    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="{:U('Index/index')}">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">银行卡管理</span></div>
        </div>
        <div class="search-wrap">
            
        </div>
        <div class="result-wrap">

            <div class="result-title">
                <div class="result-list">
                    <a href="{:U('Websitebank/addBank')}"><i class="icon-font"></i>新增银行卡</a>
                </div>
            </div>
            <div class="result-content">
                <table class="result-tab" width="100%">
                    <tr>
                       
                        <th>收款人</th>
						<th>收款人账号</th>
                        <th>收款人开户行</th>
                        <th>状态</th>
                        <th>操作</th>
                    </tr>
                    <volist name='list' id='vo'>
                        <tr>
                            <td>{$vo['bank_name']}</td>
                            <td>{$vo['bank_no']}</td>
							<td>{$vo['bank_adddress']}</td>
                            <td><if condition="$vo['status'] eq 1">
									开通
								</if>
								<if condition="$vo['status'] eq 2">
									关闭
								</if>
							
								</td>
                            <td>
                                <a class="link-update" href="{:U('Websitebank/saveBank',array('bank_id'=>$vo['bank_id']))}">修改|</a>
                               <!-- <a class="link-del" href="{:U('Websitebank/delBank',array('bank_id'=>$vo['bank_id']))}" onclick="return confirm('确认删除吗？')">删除</a>-->
								<a href="javascript:void(0)" class="link-del" onclick="cexiao({$vo.bank_id})">删除</a>
                            </td>
                        </tr>
                    </volist>

                </table>
                <div class="list-page"> <ul>{$page}</ul></div>
            </div>

        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>
<script>
	function cexiao(_this){
		layer.confirm('确定删除银行卡？', {
	  btn: ['确定','取消'], //按钮
	  title: '撤销删除银行卡'
	}, function(){
	  $.post('{:U('Websitebank/delBank')}',{bank_id:_this},function(data){
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
$(".sub-menu").eq(1).show();
$(".sub-menu").eq(1).children("li").eq(0).addClass("on");
</script>