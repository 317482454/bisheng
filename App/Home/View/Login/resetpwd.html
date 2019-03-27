<include file="App/Home/View/Public/header.html"/>
<style>
    .loginBox .login label.error{
        float:inherit;
        padding-left: 10px;
    }
    .error{
        color: #999;
    }
</style>
<div class="mainbody">

    <div class="bigcontainer">
        <div class="left630">
            <h2 class="user">重置密码</h2>

            <div class="loginBox">
                <form method="post" id="resetPwdForm"  action="{:U('Login/resetPwd')}" jump-url="{:U('Index/index')}">
                    <ul class="login">
                        <li><label for="email">新密码：</label><input type="password" class="loginValue" id="pwd" name="pwd" value=""></li>
                        <li><label for="email">确认新密码：</label><input type="password" class="loginValue" id="repwd" name="repwd" value=""></li>
                        <li><label for="idcard">身份证号码：</label><input type="text" name="idcard" placeholder="如果账户未实名认证此项可不填"></li>
                        <li><label>验证码：</label><input class="loginValue" name="captcha" id="captcha">
                            <img id="captchaimg" src="{:U('Login/showVerify')}">
                            <a href="#" onclick="$('#captchaimg').attr('src', '{:U(\'Login/showVerify\')}?t='+Math.random())">看不清？</a></li>
                        <li style="margin-bottom:15px;"><label>&nbsp;</label><input type="submit" value="找回密码" class="tijiao" style="border:0;"></li>
                        <li><label>&nbsp;</label>已有账号&nbsp;<a href="{:U('Login/index')}">登录</a><span>没有{$config.name|default='本网站'}账号？&nbsp;<a href="{:U('Reg/reg')}" class="zhuce">注册一个</a></span></li>
                    </ul>
                    <input type="hidden" name="key" value="{$key}"/>
                </form>
            </div>

        </div>
    </div>
</div>
<script>
    $("#resetPwdForm").validate({
        rules: {
            pwd:{
                required:true,
                rangelength:[6,20]
            },
            repwd:{
                required:true,
                rangelength:[6,20],
                equalTo:"#pwd"
            },
            captcha:{
                required:true
            }

        },
        messages: {
            pwd:{
                required:"密码不能为空",
                rangelength:"密码长度在6-20个字符之间"
            },
            repwd:{
                required:"确认密码不能为空",
                rangelength:"密码长度在6-20个字符之间",
                equalTo:"必须和密码一致"
            },
            captcha:{
                required:"验证码不能为空"
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

<!--footer start-->
<include file="App/Home/View/Public/footer.html"/>
