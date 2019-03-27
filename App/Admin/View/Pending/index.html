   <include file="App/Admin/View/Public/left.html"/>
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="{:U('Index/index')}">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">提现审核</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
                <form action="{:U('Pending/index')}" method="get">
                    <table class="search-tab">
                        <tr>
                            <th width="120">选择分类:</th>
                            <td>
                                <select name="status" id="">
                                  <option value="0">全部</option>
                                  <option value="1">未通过</option>
                                  <option value="2">通过</option>
                                  <option value="3">审核中</option>
                                </select>
                            </td>
                            <th width="70">提现人:</th>
                            <td><input class="common-text" placeholder="提现人" name="keyname" value="{$inquire}" id="keyname" type="text"></td>					
                  
                            <td><input class="btn btn-primary btn2" value="查询" type="submit"></td>
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
        <div class="result-wrap">
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                            <th>ID</th>               
                            <th>提现人</th>
                            <th>会员ID</th>
                            <th>银行</th>
                            <th>银行账号</th>
                            <th>银行开户地</th>
                            <th>开户支行</th>
                            <th>提现金额</th>
                            <th>手续费（{$config.fee}%）</th>
                            <th>实际金额</th>
                            <th>订单号</th>
                            <th>提交时间</th>
                            <th>状态</th>
                            <th>操作</th>
                        </tr>
  						<volist name='info' id='vo'>
                        <tr>
                            <td>{$vo.withdraw_id}</td>
                            <td>{$vo.cardname}</td>
                            <td>{$vo.uid}</td>
                            <td>{$vo.bankname}</td>
                            <td>{$vo.cardnum}</td>
                            <td>{$vo.aarea_name}&nbsp;&nbsp;{$vo.barea_name}</td>
                            <td>{$vo.bank_branch|default="暂未填写"}</td>
                            <td>{$vo.all_money}</td>
                            <td>{$vo.withdraw_fee}</td>
                            <td>{$vo.money}</td>
                            <td>{$vo.order_num}</td>
                            <td>{$vo.add_time|date='Y-m-d H:i:s',###}</td>
                            <td><eq name="vo.status" value="1">未通过<else/><eq name="vo.status" value="2">通过<else/>审核中</eq></eq></td>
                            <td>	
                            	<eq name="vo.status" value="3">										
                                <a class="link-update" href="javascript:void(0);" onclick="pass({$vo.withdraw_id});">通过</a>
                                &nbsp;&nbsp;
                                <a class="link-del" href="javascript:void(0);"onclick="fail({$vo.withdraw_id})">不通过</a>
                                <else /> 操作成功</eq>	
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
$(".sub-menu").eq(6).show();
$(".sub-menu").eq(6).children("li").eq(0).addClass("on");
function pass(id){
	layer.confirm('确定通过审核', {
	  btn: ['确定','取消'], //按钮
	}, function(){
		//location.href = '{:U('Pending/successByid',array('id'=>$vo['withdraw_id']))}';
		$.post("{:U('Pending/successByid')}",{"id":id},function(datas){
				if(datas.status == 0){
					layer.msg(datas['info']);
					setTimeout("location.reload()",2000);
				}else{
					layer.msg(datas['info']);
					setTimeout("location.reload()",2000);
				}
			});
	  //layer.msg('');
	}, function(){
		layer.msg('已取消');
	});
}
function fail(id){
	layer.confirm('确定不通过审核', {
	  btn: ['确定','取消'], //按钮
	}, function(){		
	//	location.href = '{:U('Pending/falseByid', array('id'=>$vo['withdraw_id']))}';
		$.post("{:U('Pending/falseByid')}",{"id":id},function(datas){
				if(datas.status == 0){
					layer.msg(datas['info']);
					setTimeout("location.reload()",2000);
				}else if(datas.status == 2){
					layer.msg(datas['info']);
					setTimeout("location.reload()",2000);
				}else{
					layer.msg(datas['info']);
					setTimeout("location.reload()",2000);
				}
		});
	  //layer.msg('');
	}, function(){
		layer.msg('已取消');
	});
}
</script>

<script>
function download(){
	var add_time=$('#aaaaa1').val();
	var end_time=$('#aaaaa2').val();
	var url="{:U('Pending/derivedExcel')}";
	window.location.href=url+"?add_time="+add_time+"&&end_time="+end_time;
}
</script>