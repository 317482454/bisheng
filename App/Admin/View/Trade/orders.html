    <include file="App/Admin/View/Public/left.html"/>
    <!--/sidebar-->
    <div class="main-wrap">
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="{:U('Index/index')}">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">委托记录</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
				<div class="search-wrap">
					<div class="search-content">
						<form action="{:U('Trade/orders')}" method="post">
							<table class="search-tab">
								<tr>
                                    <th width="120">选择币种:</th>
                                    <td>
                                        <select name="currency_id" id="">
                                            <option value="0">全部</option>
                                            <volist name="currency" id="vo">
                                                <option value="{$vo['currency_id']}" >{$vo['currency_name']}</option>
                                            </volist>
                                        </select>
                                    </td>
									<th width="120">选择分类:</th>
									<td>
										<select name="status_id" id="">
                                            <option value="">全部</option>
											<option value="0">挂单</option>
                                            <option value="1">部分成交</option>
                                            <option value="2">成交</option>
										</select>
									</td>
									<th width="70">购买人:</th>
									<td><input class="common-text" placeholder="购买人email" name="email" value="" id="" type="text"></td>
									<td><input class="btn btn-primary btn2" value="查询" type="submit"></td>
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
                            <th>委托编号</th>
                            <th>用户邮箱</th>
                            <th>币种</th>
                            <th>价格</th>
                            <th>挂单数量</th>
                            <th>成交数量</th>
							<th>手续费</th>
                            <th>类型</th>
                            <th>挂单时间</th>
                            <th>成交时间</th>
                            <th>状态</th>
							 <th>操作</th>
                        </tr>
                        <volist name="list" id="vo" empty="$empty">
                        <tr>
                            <td>{$vo.orders_id}</td>
                            <td>{$vo.email}</td>
                            <td>{$vo.b_name}</td>
                            <td>{$vo.price}</td>
                            <td>{$vo.num}</td>
                            <td>{$vo.trade_num}</td>
                            <td>{$vo['num'] * $vo['fee'] * $vo['price']|number_format=###,4}</td>
                            <td>{$vo.type|getOrdersType=###}</td>
                            <td>{$vo.add_time|date="Y-m-d H:i:s",###}</td>
                            <td><empty name="vo['trade_time']">###<else/>{$vo.trade_time|date="Y-m-d H:i:s",###}</empty></td>
                            <td>{$vo.status|getOrdersStatus=###}</td>
							<td><if condition="($vo['status'] eq  2) or ($vo['status'] eq -1)">{$vo.status|getOrdersStatus=###}<else/><a href="javascript:void(0)"  onclick="cexiao({$vo.orders_id})">撤销</a></if></td>
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
	function cexiao(_this){
		layer.confirm('确定撤销委托？', {
	  btn: ['确定','取消'], //按钮
	  title: '撤销委托'
	}, function(){
	  $.post('{:U('Trade/cancel')}',{status:-1,order_id:_this},function(data){
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
$(".sub-menu").eq(7).show();
$(".sub-menu").eq(7).children("li").eq(0).addClass("on");
</script>