    <include file="App/Admin/View/Public/left.html"/>
    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="/jscss/admin">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">消息管理</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
                <form action="{:U('Message/index')}" method="post">
                    <table class="search-tab">
                        <tr>
                            <th width="70">消息标题:</th>
                            <td><input class="common-text" placeholder="关键字" name="title" type="text"></td>
                            <td><input class="btn btn-primary btn2"  value="查询" type="submit"></td>
                        </tr>
                    </table>
                </form>
				
            </div>
        </div>
        <div class="result-wrap">

            <div class="result-title">
                <div class="result-list">
                    <a href="{:U('Message/addMessage')}"><i class="icon-font"></i>新增消息</a>
                </div>
            </div>
            <div class="result-content">
                <table class="result-tab" width="100%">
                    <tr>
                        <th>ID</th>
						<th>消息类型</th>
                        <th>消息标题</th>
						<th>消息内容</th>
                        <th>添加时间</th>
                        <th>发送人员</th>
                        <th>操作</th>
                    </tr>
                    <volist name='list' id='vo'>
                        <tr>
                            <td>{$vo['id']}</td>
                            <td><if condition="$vo['type'] eq -1 "><span style="color:#FF0000">【{$vo['type_name']}】</span>
							<else/>【{$vo['type_name']}】
							</if></td>
							<td>{$vo['title']||mb_substr=0,9,"utf-8"}</td>
                            <td>{$vo['content']|mb_substr=0,20,"utf-8"}</td>
                            <td>{$vo['add_time']|date="Y-m-d H:i:s",###}</td>
                            <td><if condition="$vo['u_id'] eq -1">
									群发
								<else/>
									发送至个人ID为({$vo['u_id']})
								</if>
								 
								</td>
                            <td>
                                <a class="link-update" href="{:U('Message/addMessage',array('id'=>$vo['id']))}">查看</a>
                                <a class="link-del" href="{:U('Message/delMessage',array('id'=>$vo['id']))}" onclick="return confirm('确确认删除吗？')">删除</a>
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
$(".sub-menu").eq(3).show();
$(".sub-menu").eq(3).children("li").eq(2).addClass("on");
</script>