    <include file="App/Admin/View/Public/left.html"/>
    <!--/sidebar-->
    <div class="main-wrap">
		

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="{:U('Index/index')}">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">众筹个人记录</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
				<div class="search-wrap">
					<div class="search-content">
						<form action="{:U('Zhongchou/log')}" method="post">
							<table class="search-tab">
								<tr>
									<th width="120">选择分类:</th>
									<td>
										<select name="iid" >
											<option value="0">全部</option>
											<volist name='issue' id='vo'>
											<option value="{$vo.id}">{$vo.title}</option>
											</volist>
										</select>
									</td>
									<th width="70">用户姓名:</th>
									<td><input class="common-text" placeholder="用户姓名" name="name" value="" id="" type="text"></td>
                                    <th width="70">用户ID:</th>
									<td><input class="common-text" placeholder="用户ID" name="uid" value="" id="" type="text"></td>
                                    <th width="70">用户邮箱:</th>
									<td><input class="common-text" placeholder="用户邮箱" name="email" value="" id="" type="text"></td>
									<td><input class="btn btn-primary btn2" name="sub" value="查询" type="submit"></td>
								</tr>
							</table>
						</form>
                        <form action="{:U('Zhongchou/jiedongByIid')}" method="post">
							<table class="search-tab">
								<tr>
									<th width="120">选择分类:</th>
									<td>
										<select name="iid" id="zhongchouid">
											<option value="0">全部</option>
											<volist name='issue' id='vo'>
											<option value="{$vo.id}">{$vo.title}</option>
											</volist>
										</select>
									</td>
									<td><input class="btn btn-primary btn2" name="sub" value="开始解冻" type="button" onclick="kaishijiedong()">（按照比例开始第一次解冻）</td>
									<td><input class="btn btn-primary btn2" name="sub" value="解冻该众筹" type="submit">（解冻当前选择众筹全部币种）</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
        </div>
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                            <th>众筹编号</th>
                            <th>众筹名称</th>
                            <th>购买人</th>
                            <th>购买数量</th>
                            <th>冻结数量</th>
                            <th>单价</th>
                            <th>购买总额</th>
                            <th>时间</th>
                            <th>购买花费币种类型</th>
                            <th>操作</th>
                        </tr>
                        <volist name="log" id="vo" empty="$empty">
                        <tr>
                            <td>{$vo.iid}</td>
                            <td>{$vo.title}</td>
                            <td>{$vo.name}</td>
                            <td>{$vo.num}</td>
                             <td>{$vo.deal}</td>
                            <td>{$vo.price}</td>
                            <td>{$vo.count}</td>
                            <td>{$vo.add_time|date="Y-m-d H:i:s",###}</td>
                            <td>[{$vo.buy_name}]</td>
                            <td><a href="{:U('Zhongchou/jiedongById',array('id'=>$vo['id']))}">解冻</a></td>
                        </tr>
                        </volist>
                    </table>
					 <div class="list-page"> <ul>{$page}</ul></div>
                </div>
            </form>
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>
<script>
	function kaishijiedong(){
		layer.confirm('确定开始解冻？', {
	  btn: ['确定','取消'], //按钮
	  title: '开始解冻'
	}, function(){
	  $.post("{:U('Zhongchou/jiedong_start')}",{iid:$('#zhongchouid').val()},function(data){
				   if(data['status'] == 2){
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
$(".sub-menu").eq(5).show();
$(".sub-menu").eq(5).children("li").eq(1).addClass("on");
</script>
