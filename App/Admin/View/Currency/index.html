    <include file="App/Admin/View/Public/left.html"/>
    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="{:U('Index/index')}">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">币种管理</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
            </div>
        </div>
        <div class="result-wrap">
          
                <div class="result-title">
                    <div class="result-list">
                        <a href="{:U('Currency/add')}"><i class="icon-font"></i>新增币种</a>
                    </div>
                </div>
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                        	<th>排序</th>
                            <th>货币LOGO</th>
                            <th>上线状态</th>
                            <th>交易状态</th>
                            <th>货币名称</th>
                            <th>英文标识</th>
							<th>钱包余额</th>
                            <th>买入手续费</th>
                            <th>卖出手续费</th>
                            <th>最新价</th>
                            <th>涨停价格</th>
                            <th>跌停价格</th>
                            <th>修改时间</th>
                            <th>操作</th>
                        </tr>
                        <volist name="list" id="vo" empty="$empty">
                        <tr> 
                        	<td>{$vo.sort}</td>
                            <td><notempty name="vo.currency_logo"><img  style="height:100px;"src='{$vo.currency_logo}' /><else/>暂无图片数据</notempty></td>
                            <td><eq name='vo.is_line' value='0'>未上线<else/>已上线</eq></td>
                            <td><eq name='vo.is_lock' value='0'>已开启<else/>未开启</eq></td>
                            <td>{$vo.currency_name}</td>
                            <td>{$vo.currency_mark}</td>
							<td>{$vo.qianbao_balance}</td>
                            <td>{$vo.currency_buy_fee}%</td>
                            <td>{$vo.currency_sell_fee}%</td>
                            <td>{$vo['new_price']|default="0.000"}</td>
                            <td>{$vo['price_up']|default="0.000"}</td>
                            <td>{$vo['price_down']|default="0.000"}</td>
                            <td>{$vo.add_time|date="Y-m-d",###}</td>
                            <td>
                                <a class="link-update" href="{:U('Trade/trade',array('currency_id'=>$vo['currency_id']))}">查看交易记录</a></br> <a class="link-limit" href="javascript:void(0);" onclick="limit({$vo['currency_id']},{$vo['price_up']},{$vo['price_down']})">设置交易限额</a><br>
                                <a class="link-update" href="{:U('Trade/orders',array('currency_id'=>$vo['currency_id']))}">查看委托记录</a><br>
                                <a class="link-del" href="{:U('Currency/set_member_currencyForQianbao',array('cuid'=>$vo['currency_id']))}">向会员钱包转账</a><br>
                                <a class="link-update" href="{:U('Currency/add',array('currency_id'=>$vo['currency_id']))}">修改</a><br>
                                <a class="link-del" href="{:U('Currency/del',array('currency_id'=>$vo['currency_id']))}">删除</a><br>
								 
                               
                            </td>
                        </tr>
                        </volist>
                    </table>
                </div>
         
        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>
<script>
$(".sub-menu").eq(8).show();
$(".sub-menu").eq(8).children("li").eq(0).addClass("on");

function limit(id,price_up,price_down){
	var lid = id;
	var price_up = price_up;
	var price_down = price_down;
	layer.open({
	  title: '设置交易限额',
	  type: 1,
	  skin: 'layui-layer-demo', //样式类名
	  closeBtn: 1, //不显示关闭按钮
	  shift: 2,
	  area: ['300px', '170px'], 
	  shadeClose: true, //开启遮罩关闭
	  content: '<div style="margin-top:15px;text-align:center;"><span>设置交易上限</span><input type="text" name="price_up" value="'+price_up+'" id="price_up"/></div><div style="margin-top:15px;text-align:center;"><span>设置交易下限</span><input type="text" value='+price_down+' name="price_down" id="price_down"/></div><div style="text-align:center;margin-top:15px;"><input type="button" value="确定" onclick="setlimit('+lid+');" style="padding:3px 10px;" /></div>'
	});

};
function setlimit(id){
	$.post("{:U('Currency/savePrice')}",{id:id,price_up:$("#price_up").val(),price_down:$("#price_down").val()},function(data){
		 if(data<0){
			layer.msg(data.info);
		 }else{
			layer.msg(data.info);
			setTimeout("location.reload()",2000);
		 }
	});
}
</script>