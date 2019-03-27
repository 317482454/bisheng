// JavaScript Document
//ajax提交表单并刷新本页面
function ajax_submit_form(form){
	var index='';
		$.ajax({
		   type:$(form).attr("method"),
		   url: $(form).attr("action"),
		   async:false,
		   data: $(form).serialize(),
		   beforeSend: function(){
			   index=	layer.msg('正在提交请稍后');
			   },
		   success: function(msg){
			   layer.msg(msg.info);
			 if(msg.status==1){
				 var url=$(form).attr("jump-url");
				 if(url){
				 	window.location.href=url;
				 }else{
					window.location.reload();
					 }
				 }else{
					 	layer.msg(msg.info);
						layer.close(index);
						//window.location.reload();
					 }
		   }
		});
		return false;
}

//加载图库
function ajax_load_tu(_this){
		//记录标识符号识别是哪个图被点击
		$(".pic-select").removeAttr("id")
		$(".pic-select-input").removeAttr("id")
		$(_this).find('img').attr("id","pic-active");
		$(_this).next(".pic-select-input").attr("id","pic-select-input-active");
		$.ajax({
		  url: "/Pic/count",
		  success: function(data){
				if(data>0){
						var initPagination = function() {
							var num_entries =data;
							// 创建分页
							$("#Pagination").pagination(num_entries, {
								num_edge_entries: 2, //边缘页数
								num_display_entries: 40, //主体页数
								callback: pageselectCallback,
								items_per_page:4 //每页显示1项
							});
						 }();
					}
		  }
		});
	}
//图库分页回调函数
function pageselectCallback(page_index, jq){
			$.ajax({
			  url: "/Pic/getPic",
			  type: "POST",
			  data:{"p":page_index},
			  success: function(data){
				$(".modal-body").empty().append(data);
			  }
		});
		return false;
	}
//图库图像选择
 function pic_select(_this){
	var src=$(_this).attr("src");
		if($("#pic-button").length>0){
		//图添加
		//增加的图片数量,如果数量不是一个，则input的name是数组
		var num=parseInt($("#pic-button").attr("data-num"));
		//隐藏表单的name
		var input_name='';
		if(num!=1){
			//多图上传name转数组
			 input_name=$("#pic-button").attr("data-input")+"[]";
			 //如果是多图上传，则提供删除功能
			 $("#pic-button").before("<div class='pic-wrp' onmouseover='show_tishi(event)'onmouseout='hide_tishi(event)' onclick='delete_pic(this)' style='display:inline-block'><img class='pic-select' width=150 height=150 src='"+src+"'/><p class='tishi'  style='display: none;'>单击删除</p><div class='wrap-zhe' style='display: none;'></div></div>");
		}else{
			input_name=$("#pic-button").attr("data-input");
			$("#pic-button").before("<div class='pic-wrp' onmouseover='show_tishi(event)'onmouseout='hide_tishi(event)' onclick='ajax_load_tu(this)' data-toggle='modal'  data-target='#pic' ><img class='pic-select' src='"+src+"'/><p class='tishi'>单击修改<p><div class='wrap-zhe'></div></div>");
		}
		//添加隐藏表单
		$("#pic-button").before("<input type='hidden' value='"+src+"' name='"+input_name+"'  class='pic-select-input'/>");
		//统计已经添加的图片数量
		var pic_count=$(".pic-select").length
		if(num>0&&pic_count>=num){
			$("#pic-button").hide();
		}
	}else{
		//图修改
		$("#pic-active").attr("src",src);
		$("#pic-select-input-active").val(src);
		}
}

//删除程序
function delet(id,_this){
	var url=$(_this).attr("data-url");
	layer.confirm('确定要删除该条记录吗？', {
		btn: ['确定','取消'] //按钮
	}, function(){
		$.ajax({
				  url: url,
				  type: "POST",
				  data:{"id":id},
				  success: function(data){
					if(data.status==1){
						layer.msg(data.info);
						window.location.reload();	
					}else{
						layer.msg(data.info);
						}
				  }
				});
	});
	return false;
}
 //重载验证码
function fleshVerify(){ 
    var time = new Date().getTime();
    $("#verify").attr('src', '/Login/verify'+'?'+time);
}
//后台左侧导航程序
function showNav(c){
	$(".nav li").removeClass("active");
	$(c).addClass("active")
}
//箭头,全选
$(document).ready(function(e) {
    /*$(".nav-second-level>li").children("a").on("click",function(){
		$(this).children("span").addClass("arrow");	
	});*/
	$("#allchk").on("click",function(){
		var isChecked = $(this).prop("checked");
    	$("input[name='id']").prop("checked", isChecked);
		/*if($("#allchk").prop("checked")){
			$("[name = id]:checkbox").attr("checked","checked");
		}else{
			$("[name = id]:checkbox").removeAttr("checked");
		}*/
	});
});
