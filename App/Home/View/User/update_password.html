<include file="App/Home/View/Public/header.html"/>

<style>

    .passContent .tagContent .ybc_con li label{
        float:inherit;
        padding-left: 10px;
    }
    .error{
        color: #999;
    }
</style>
<script>
    $(document).ready(function(){
        start=document.cookie.indexOf("motip=")
        if (start!=-1){
            start=start + 6
            end=start + 1
            motip = unescape(document.cookie.substring(start,end))
            if(motip == 1)
                $('#phone_top_div').show();
        }
    });
    function hidephone(){
        $('#phone_top_div').hide();
        var d=new Date()
        d.setTime(d.getTime() + 7200)
        document.cookie="motip=2;expires="+d.toUTCString()
    }
</script>
<script src="js/index.js"></script>
<div id="main">
    <div class="main_box">
        <include file="App/Home/View/Public/left.html"/>
        <div class="raise right clearfix">
            <link rel="stylesheet" href="__PUBLIC__/Home/css/layer.css">
            <h2>修改密码</h2>
            <div class="support_ybc pass_ybc">
                <ul id="pass_change">
                    <li class=""><a onclick="selectTag('tagContent0',this)" href="javascript:void(0)">修改密码</a> </li>
                    <li class="selectTag"><a onclick="selectTag('tagContent1',this)" href="javascript:void(0)">修改交易密码</a></li>
                    <div class="clear"></div>
                </ul>
                <div id="tagContent" class="passContent">
                    <div class="tagContent selectTag" id="tagContent0" style="display: none;">
                        <form method="post" id="signupForm"  jump-url="{:U('Login/index')}"   action="{:U('User/updatePassword')}">
                            <ul class="ybc_con"  style="margin-left: 150px;">
                                <li><label for="password">登录密码：</label><input name="oldpwd" id="oldpwd" type="password"></li>
                                <li><label for="newword">新密码：&nbsp;&nbsp;&nbsp;&nbsp;</label><input name="pwd" id="pwd" type="password"></li>
                                <li><label for="repeat">重复密码：</label><input name="repwd" id="repwd" type="password"></li>
                                <li><label class="buys">&nbsp;</label><input class="tijiao" value="提交"  type="submit"></li>
                            </ul>
                        </form>
                    </div>
                    <div class="tagContent" id="tagContent1" style="display: block;">
                        <script>
                            $("#signupForm").validate({
                                rules: {
                                    oldpwd:{
										required: true,
                                        rangelength:[6,20]
                                    },
                                    pwd:{
										required: true,
                                        rangelength:[6,20]
                                    },
                                    repwd:{
                                        rangelength:[6,20],
                                        equalTo: "#pwd"
                                    }

                                },
                                messages: {
                                    oldpwd:{
									 	required: "密码不能为空",
                                        rangelength:"密码长度在6-20个字符之间"
                                    },
                                    pwd:{
									 	required: "密码不能为空",
                                        rangelength:"密码长度在6-20个字符之间"
                                    },
                                    repwd:{
                                        rangelength:"密码长度在6-20个字符之间",
                                        equalTo: "两次输入不一样"
                                    }
                                },
                                submitHandler:function(form){
                                    ajax_submit_form(form)
                                    return false;
                                },
                                invalidHandler: function() {  //不通过回调
                                    return false;
                                }
                            });
                        </script>
                        <form method="post" id="PwdtradeForm" jump-url="{:U('Login/index')}"  enctype="multipart/form-data" action="{:U('User/updatePwdtrade')}">
                            <ul class="ybc_con" style=" margin-left:150px;">
                                <li><label for="password">登录密码：</label><input name="oldpwd_b" type="password"></li>
                                <li><label for="buypassword">交易密码：</label><input name="oldpwdtrade_b" type="password">
                               
                                </li>
                                <li><label for="newword">新交易密码：</label><input name="pwdtrade" id="pwdtrade" type="password"></li>
                                <li><label for="repeat">重复交易密码：</label><input name="repwdtrade"  type="password"></li>
                                <li style="margin-bottom:20px;"><label for="upload">正面身份证：</label>
                                    <input size="45" id="idcardPositive" name="pic_1" class="fileField" type="file">
                                   <!-- <button class="button left upload" onclick="return uploadIdcard1();">上传</button>-->
                                    <div class="clear"></div>
                                </li>
                                <li style="margin-bottom:10px;">
                                    <label>&nbsp;</label>
                                    <!--<img src="images/ulogodefault.jpg" id="idcard1_img" style="width:72px; height:72px;">-->
                                </li>
                                <li style="margin-bottom:20px;"><label for="upload">反面身份证：</label>
                                    <input size="45" id="idcardPositive2"  name="pic_2" class="fileField" type="file">
                                    <!-- <button class="button left upload" onclick="return uploadIdcard2();">上传</button>-->
                                    <div class="clear"></div>
                                </li>
                                <li style="margin-bottom:10px;">
                                    <label>&nbsp;</label>
                                    <!--<img src="images/ulogodefault.jpg" id="idcard2_img" style="width:72px; height:72px;">-->
                                </li>
                                <li style="margin-bottom:20px;"><label for="upload">手持身份证：</label>
                                    <input size="45" id="idcardPositive3"   name="pic_3" class="fileField" type="file">
 <!--
                                    <button class="button left upload" onclick="return uploadIdcard3();">上传</button>-->
                                    <div class="clear"></div>
                                </li>
                                <li style="margin-bottom:10px;">
                                    <label>&nbsp;</label>
                                    <!--<img src="images/ulogodefault.jpg" id="idcard3_img" style="width:72px; height:72px;">-->
                                </li>
                                <li style="margin-bottom:20px;text-align:center;">
                                    <span class="note" style="height:40px; line-height:20px;">支持.jpg .png .gif格式；小于1MB的图片</span>
                                </li>
                                <li><label class="buys">&nbsp;</label><input class="tijiao" value="提交" type="submit"></li>
                            </ul>
                        </form>
                    </div>
                </div>
            </div>
             <script>
//                  $("#PwdtradeForm").validate({
//                      rules: {
//                          oldpwd_b:{
//						  required: true,
//                              rangelength:[6,20]
//                          },
//                          oldpwdtrade_b:{
//						  required: true,
//                              rangelength:[6,20]
//                          },
//                          pwdtrade:{
//						  required: true,
//                              rangelength:[6,20]
//                          },
//                          repwdtrade:{
//                              rangelength:[6,20],
//                              equalTo: "#pwdtrade"
//                          }
//
//                      },
//                      messages: {
//                          oldpwd_b:{
//						   		required: "密码不能为空",
//                              rangelength:"登录密码长度在6-20个字符之间"
//                          },
//                          oldpwdtrade_b:{
//						   required: "密码不能为空",
//                              rangelength:"交易密码长度在6-20个字符之间"
//                          },
//                          pwdtrade:{
//						   required: "密码不能为空",
//                              rangelength:"新交易密码长度在6-20个字符之间"
//                          },
//                          repwdtrade:{
//                              rangelength:"新交易密码长度在6-20个字符之间",
//                              equalTo: "两次输入不一样"
//                          }
//                      },
//                      submitHandler:function(form){
//                          ajax_submit_form(form)
//                          return false;
//                      },
//                      invalidHandler: function() {  //不通过回调
//                          return false;
//                      }
//                  });
            </script>
            <script type="text/javascript" src="__PUBLIC__/Home/js/tab2.js"></script>
            <script src="__PUBLIC__/Home/js/layer.js"></script>
            <script src="__PUBLIC__/Home/js/password.js"></script>
            <script type="text/javascript" src="__PUBLIC__/Home/js/ajaxfileupload.js"></script>
        </div>
        <div class="clear"></div>
    </div>
</div>
<script type="text/javascript" src="__PUBLIC__/js/uploadify/jquery.uploadify.min.js"></script>

<script type="text/javascript" src="__PUBLIC__/Home/js/tab2.js"></script>
<script src="__PUBLIC__/Home/js/layer.js"></script>
<script src="__PUBLIC__/Home/js/password.js"></script>
<script type="text/javascript" src="__PUBLIC__/Home/js/ajaxfileupload.js"></script>
		</div>
		<div class="clear"></div>
	</div>
</div>
<script>
$(".menu8").addClass("uc-current");
</script>
<include file="App/Home/View/Public/footer.html"/>