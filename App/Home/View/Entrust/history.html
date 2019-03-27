<include file="App/Home/View/Public/header.html"/>
<style>

.filtrate{
border: 1px solid #e55600;
color:#e55600;
border-radius: 3px;
width: 60px;
height: 28px;
margin: 5px;
cursor: pointer;
}
.filtrate:hover{
border: 1px solid #e55600;
border-radius: 3px;
width: 60px;
height: 28px;
margin: 5px;
cursor: pointer;
color:#FFF;
background-color:#e55600;
}

</style>
    <!--top end-->
<div id="main">
	<div class="main_box">
		<include file="App/Home/View/Public/left.html"/>
		<div class="raise right clearfix">
            <script src="js/coinindex.js"></script>
<div class="ybc_list">
	<div class="ybcoin clearfix">
		<h2 class="left">委托历史</h2> 
		<div class="right">
			<form action="{:U('Entrust/history')}" method="post">
                <select id="coninname" name="currency">
                    <volist name="culist" id="vo">		    
                    <option value="{$vo['currency_id']|default=""}">{$vo['currency_id']|getCurrencynameByCurrency=###}对{$vo['trade_currency_id']|getCurrencynameByCurrency=###}</option>
                    </volist>    
                </select>
                <select id="status" style="margin-left:0; width:80px;" name="status">
                    
                     <option value="2">已成交</option>
                     <option value="-1">已撤销</option>
                     <option value="2,-1" selected="selected">全部</option>
                </select>
                <input value="提交" class="filtrate" type="submit">
			</form>
        </div>
	</div>
		<table class="raise_list" style="border:1px solid #e1e1df;" align="center" border="0" cellpadding="0" cellspacing="0">
	 		<thead>
				<tr>
					<th>委托时间</th>
					<th>币种</th>
					<th>类型</th>
					<th>委托数量</th>
					<th>委托价格</th>
					<th>成交数量</th>
					<th>尚未成交</th>
					<th>状态</th>
			
				</tr>
				</thead>
				<tbody>
				<foreach name="list" item="vo">
					<tr >
						<td c >{$vo.add_time|date='Y-m-d H:i:s',###}</th>
						<td  >{$vo.currency_id|getCurrencynameByCurrency=###}</td>
						<eq name="vo['type']" value="sell"> <td class="red"><else/><td style="color:#039904;"></eq>{$vo.type|fomatOrdersType=###}</td>
						<td>{$vo.num|floatval=###}</td>
						<td>{$vo.price|floatval=###}</td>
						<td>{$vo.trade_num|floatval=###}</td>
						<td>{$vo['num']- $vo['trade_num']|floatval=###}</td>
						<td>{$vo.status|formatOrdersStatus=###}</td>
					</tr>
				</foreach>
				</tbody>
              </table>
              <div class="page" style=" min-width:200px !important; float:right;">
                    {$page}
              </div>
                            
</div>
<script>
function cointrust()
{
	var coinname = $('#coninname').val();
	var status  = $('#status').val();
	location.href='/user_exchange/cointrustold/coinname/'+coinname+'/status/'+status;
}
</script>
		</div>
		<div class="clear"></div>
	</div>
</div>  
<script>
$(".menu4").addClass("uc-current");
</script>  
<include file="App/Home/View/Public/footer.html"/>