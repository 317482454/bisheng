    <include file="App/Admin/View/Public/left.html"/>
    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="{:U('Index/index')}">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">会员管理</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
                <form action="{:U('Member/index')}" method="post">
                    <table class="search-tab">
                        <tr>
                            <td width="70">会员账号:</td>
                            <td><input class="common-text" placeholder="关键字" name="email" type="text"></td>
                              <td width="70">会员ID:</td>
                            <td><input class="common-text" placeholder="ID" name="member_id" type="text"></td>
                            <td><input class="btn btn-primary btn2"  value="查询" type="submit"></td>
                        </tr>
                    </table>
                </form>
				
            </div>
        </div>
        <div class="result-wrap">

            <div class="result-title">
                <div class="result-list">
                    <a href="{:U('Member/addMember')}"><i class="icon-font"></i>新增会员</a>
                </div>
            </div>
            <div class="result-content">
                <table class="result-tab" width="100%">
                    <tr>
                        <th>ID</th>
                        <th>会员邮箱</th>
						<th>推荐人</th>
                        <th>会员姓名</th>
                        <th>手机号</th>
                        <th>账户余额</th>
                        <th>冻结金钱</th>
						<th>注册时间</th>
                        <th>状态</th>
                        <th>操作</th>
                    </tr>
                    <volist name='list' id='vo'>
                        <tr>
                            <td>{$vo['member_id']}</td>
                            <td>{$vo['email']}</td>
							<td>{$vo['pid']}</td>
                            <td>{$vo['name']}</td>
                            <td>{$vo['phone']}</td>
                            <td>{$vo['rmb']}</td>
                            <td>{$vo['forzen_rmb']}</td>
							<td>{$vo['reg_time']|date='Y-m-d H:i:s',###}</td>
                            <td><if condition="$vo['status'] eq 1">
									正常
								</if>
								<if condition="$vo['status'] eq 2">
									禁用
								</if>
								<if condition="$vo['status'] eq 0">
									未填写个人信息(<a href="{:U('Member/saveModify',array('member_id'=>$vo['member_id']))}">填写</a>)
								</if>
								</td>
                            <td>
                                <a class="link-del" href="{:U('Finance/index',array('member_id'=>$vo['member_id']))}">查看财务日志</a>
                                <br>
                                <a class="link-del" href="{:U('Member/show_my_invit',array('member_id'=>$vo['member_id']))}">查看邀请人员</a><br>
                                <a class="link-update" href="{:U('Member/saveMember',array('member_id'=>$vo['member_id']))}">修改|</a>
                                <a class="link-del" href="{:U('Member/delMember',array('member_id'=>$vo['member_id']))}" onclick="return confirm('确认删除吗？')">删除</a>
                                <a class="link-update" href="{:U('Member/show',array('member_id'=>$vo['member_id']))}">查看会员账户</a>
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
$(".sub-menu").eq(3).children("li").eq(0).addClass("on");
</script>