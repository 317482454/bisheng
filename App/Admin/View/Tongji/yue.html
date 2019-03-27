    <include file="App/Admin/View/Public/left.html"/>
    <!--/sidebar-->
    <div class="main-wrap">
		

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="{:U('Index/index')}">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">第三方充值记录</span></div>
        </div>
       <div class="search-wrap">
            <div class="search-content">
				<div class="search-wrap">
					<div class="search-content">
						<form action="{:U('Tongji/yue')}" method="post">
							<table class="search-tab">
								<tr>
									<th width="120">选择分类:</th>
									<td>
										<select name="currency_id" id="">
                        				<volist name="currencylist" id="vo" empty="$empty">
											<option value="{$vo['currency_id']}" <eq name='cur.currency_id' value="$vo.currency_id">selected</eq>>{$vo['currency_mark']}</option>
                      					  </volist>
										</select>
									</td>
									<td><input class="btn btn-primary btn2" name="sub" value="查询" type="submit"></td>
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
                            <th>编号</th>
                            <th>用户名(ID)</th>
                            <th>昵称</th>
                            <th>可用资产({$cur.currency_name})</th>
                            <th>冻结资产({$cur.currency_name})</th>
                            <th>总资产({$cur.currency_name})</th>
                        </tr>
                        <volist name="list" id="vo" empty="$empty" key="key">
                        <tr>
                            <td>{$key}</td>
                     		<td>{$vo.member.member_id}</td>
                     		<td>{$vo.member.name}</td>
                     		<td>{$vo.num}</td>
                     		<td>{$vo.forzen_num}</td>
                     		<td>{$vo.allmoney}</td>
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
$(".sub-menu").eq(11).show();
$(".sub-menu").eq(11).children("li").eq(3).addClass("on");
</script>