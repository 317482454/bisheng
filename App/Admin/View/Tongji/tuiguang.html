    <include file="App/Admin/View/Public/left.html"/>
    <!--/sidebar-->
    <div class="main-wrap">
		

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="{:U('Index/index')}">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">第三方充值记录</span></div>
        </div>
        <!-- <div class="search-wrap">
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
							</table>
						</form> 
					</div>
				</div>
			</div>
        </div> -->
        <div class="result-wrap">
            <form name="myform" id="myform" method="post">
            </form>			
		<div class="result-tab">
				<div class="panel-actions" style="height:50px;">
                <h1 class="fl" style="line-height:50px; margin-left:20px;">
					<i class="icon-font"></i>
					推广统计状况
				</h1>
				    <form action="{:U('Tongji/tuiguang')}" method="post" class="form-inline form-search" style="fr">					
					<div class="fr" style="line-height:50px;">						
                       <input type="text" name="userid" value=""  class="form-control search-query" style="width:20%;" placeholder="会员id" title="会员id" /> 
								<input type="text" name="stime" class="stime" placeholder="开始时间：如2016-03-22" title="开始时间" readonly="" style="margin-right:20px;" onclick="laydate()">		
								<input type="text" name="etime" class="etime" placeholder="结束时间：如2016-04-21" title="结束时间" readonly="" style="margin-right:20px;" onclick="laydate()">

							<input type="submit" id="submit" class="btn btn-primary" value="搜索" data-loading="稍候..." style="margin-right:20px;">
					</div>
				  </form>
				</div>
			<div class="" style="overflow:hidden;">
				<div class="fl" style="padding-bottom:10px; width:32%; margin-left:15px;">
							<strong>					
								按选择检索条件排名
							</strong>
						<table class="table table-striped tablesorter text-center" style="width:100%; border: 1px solid #ddd;">
							<thead>
								<tr>
									<th class="text-center w-100px">序号</th>
									<th class="text-center w-180px">用户名(ID)</th>
									<th class="text-center w-180px">推荐人数</th>
								</tr>
							</thead>
							<tbody>
								<volist name="list" id="vo" key="key">
									<tr>
										<td>{$key}</td>
										<td><a href="{:U('Member/index',array('member_id'=>$vo['pid']))}">{$vo.pname}({$vo.pid})</a></td>
										<td>{$vo.num}</td>
									</tr>
								</volist>
							</tbody>
						</table>
				</div>
				<div class="fl" style="padding-bottom:10px; width:32%; margin-left:10px;">
							<strong>					
								最新周排名
							</strong>
						<table class="table table-striped tablesorter text-center" style="width:100%; border: 1px solid #ddd;">
							<thead>
								<tr>
									<th class="text-center w-100px">序号</th>
									<th class="text-center w-180px">用户名(ID)</th>
									<th class="text-center w-180px">推荐人数</th>
								</tr>
							</thead>
							<tbody>
								<volist name="tomonth" id="vo" key="key">
									<tr>
										<td>{$key}</td>
										<td><a href="{:U('Member/index',array('member_id'=>$vo['pid']))}">{$vo.pname}({$vo.pid})</a></td>
										<td>{$vo.num}</td>
									</tr>
								</volist>				
                             </tbody>
						</table>
				</div>
				<div class="fl" style="padding-bottom:10px; width:32%; margin-left:10px;">
							<strong>					
								最新月排名
							</strong>
						<table class="table table-striped tablesorter text-center" style="width:100%; border: 1px solid #ddd;">
							<thead>
								<tr>
									<th class="text-center w-100px">序号</th>
									<th class="text-center w-180px">用户名(ID)</th>
									<th class="text-center w-180px">推荐人数</th>
								</tr>
							</thead>
							<tbody>
								<volist name="week" id="vo" key="key">
									<tr>
										<td>{$key}</td>
										<td><a href="{:U('Member/index',array('member_id'=>$vo['pid']))}">{$vo.pname}({$vo.pid})</a></td>
										<td>{$vo.num}</td>
									</tr>
								</volist>	
							</tbody>
						</table>
				</div>
			</div>				
			<div>
				<div style="float:right; clear:none;" class="page form-inline">
					<div class="pagination"></div>
				</div>
			</div>
			</div>	
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
$(".sub-menu").eq(11).show();
$(".sub-menu").eq(11).children("li").eq(0).addClass("on");
</script>