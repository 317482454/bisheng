    <include file="App/Admin/View/Public/left.html"/>
    <!--/sidebar-->
    <div class="main-wrap">
		

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="{:U('Index/index')}">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">人工充值记录管理</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
				<div class="search-wrap">
					<div class="search-content">
						<form action="{:U('Pay/payByMan')}" method="post">
							<table class="search-tab">
								<tr>
									<th width="120">选择分类:</th>
									<td>
										<select name="status" id="">
											<option value="">全部</option>
											<option value="0">未付款</option>
											<option value="1">充值成功</option>
											<option value="2">充值失败</option>
											<option value="3">已失效</option>
										</select>
									</td>
									<th width="70">汇款人:</th>
									<td><input class="common-text" placeholder="汇款人" name="member_name" value="" id="" type="text"></td>
									<td><input class="btn btn-primary btn2" name="sub" value="查询" type="submit"></td>
									</tr>
                                    <tr>   
                                    <th><i class="require-red">*</i>开始时间：</th>
                                    <td>
                            
                                    <div class="row"><div class="col-md-6">
                                                    <i class="fa fa-calendar"></i></span>
                                                    <input type="text" name="add_time" class="ui_timepicker" id="aaaaa1" placeholder="选择日期时间" value="{$list.add_time|date='Y-m-d H:i:s',###}"  />
                                                </div></div></td>
                                  <script type="text/javascript">
                                    $(function () {
                                        $("#aaaaa1").datetimepicker({
                                            //showOn: "button",
                                            //buttonImage: "./css/images/icon_calendar.gif",
                                            //buttonImageOnly: true,
                                            showSecond: true,
                                            timeFormat: 'hh:mm:ss',
                                            stepHour: 1,
                                            stepMinute: 1,
                                            stepSecond: 1
                                        })
                                            $("#aaaaa2").datetimepicker({
                                            //showOn: "button",
                                            //buttonImage: "./css/images/icon_calendar.gif",
                                            //buttonImageOnly: true,
                                            showSecond: true,
                                            timeFormat: 'hh:mm:ss',
                                            stepHour: 1,
                                            stepMinute: 1,
                                            stepSecond: 1
                                        })
                                   
                                    })
                                </script>
                                    <th><i class="require-red">*</i>截止时间：</th>
                                    <td><div class="row"><div class="col-md-6">
                                                    <i class="fa fa-calendar"></i></span>
                                                    <input type="text" name="end_time" class="ui_timepicker" id="aaaaa2" placeholder="选择日期时间" value="{$list.end_time|date='Y-m-d H:i:s',###}" / >
                                                </div></div></td>
									<td><input class="btn btn-primary btn2" name="sub" value="下载表格" type="button" onclick="download()"></td>
								</tr>
								
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
                            <th>订单号</th>
                            <th>汇款人账号</th>
                            <th>汇款人</th>
                            <th>银行卡号</th>
                            <th>充值钱数</th>
                            <th>实际打款</th>
                            <th>充值奖励</th>
                            <th>状态</th>
                            <th>时间</th>
                            <th>操作</th>
                        </tr>
                        <volist name="list" id="vo" empty="$empty">
                        <tr>
                            <td>{$vo.pay_id}</td>
                     		<td>{$vo.email}</td>
                            <td>{$vo.member_name}</td>
                            <td>{$vo.account}</td>
                            <td>{$vo.money}</td>
                            <td>{$vo.count}</td>
                            <td>{$vo.pay_reward}</td>
                            <td><eq name='vo.status' value='请付款'>未付款<else/>{$vo.status}</eq></td>
                            <td>{$vo.add_time|date="Y-m-d H:i:s",###}</td>
                            <td>
                            
                                <eq name='vo.status' value='请付款'>
									<a class="link-update"  href="javascript:void(0);" onClick="pass({$vo['pay_id']});">通过</a>
									<a class="link-del" href="javascript:void(0);" onClick="fail({$vo['pay_id']})">不通过</a>
								<else/>
									操作完成
								</eq>
                            </td>
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
function pass(id){
	layer.confirm(
	'确定通过审核', 
	{btn:['确定','取消']},
	function(){
	  $.post("{:U('Pay/payUpdate')}",{"pay_id":id,"status":1},function(data){
		  if(data.status==0){
					layer.msg(data['info']);
					setTimeout("location.reload()",2000);
				}else{
					layer.msg(data['info']);
					setTimeout("location.reload()",2000);
				}
		})
	}
	),
	function(){
		layer.msg('已取消');
	}
}

function fail(id){
	layer.confirm(
	'确定不通过审核', 
	{btn: ['确定','取消'],},
	function(){
		//href="{:U('Pay/payUpdate',array('pay_id'=>$vo['pay_id'],'status'=>1))}			
		$.post("{:U('Pay/payUpdate')}",{"pay_id":id,"status":2},function(data){
				if(data.status == 0){
					layer.msg(data['info']);
					setTimeout("location.reload()",2000);
					
				}else if(data.status == 2){
					layer.msg(data['info']);
					setTimeout("location.reload()",2000);
				}else{
					layer.msg(data['info']);
					setTimeout("location.reload()",2000);
				}
		})
		}
		),
	 function(){
		layer.msg('已取消');
	}
}
</script>
<script>
$(".sub-menu").eq(6).show();
$(".sub-menu").eq(6).children("li").eq(1).addClass("on");
</script>
<script>
function download(){
	var add_time=$('#aaaaa1').val();
	var end_time=$('#aaaaa2').val();
	var url="{:U('Pay/derivedExcel')}";
	window.location.href=url+"?add_time="+add_time+"&&end_time="+end_time;
}
</script>