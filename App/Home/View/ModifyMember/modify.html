<include file="App/Home/View/Public/header.html"/>
<!--top end-->
<div class="ybc_section">
    <ul class="ybc_user_nav clearfix Font18">
        <li class="current"><span>1</span>邮箱注册</li>
        <li class="current" id="currentpwd"><span>2</span>设置交易密码</li>
        <li class="current"><span>3</span>实名认证</li>
        <li><span>4</span>注册成功</li>
    </ul>
    <div class="ybc_warn Font18">为了确保您的资金安全，请实名认证</div>
    <form id="form" method="post"  jump-url="{:U('Reg/regSuccess')}"  action="{:U('ModifyMember/modify')}">
        <div class="ybc_userarea ybc_userarea2" style="margin-bottom:50px;">
            <div class="ybc_user clearfix">
                <div class="ybc_label left"><label for="nick">昵称</label></div>
                <div class="ybc_text left"><input name="nick" id="nick" value="" type="text"></div>
                <div class="ybc_hint left"><strong class="msg_i">i</strong><span id="nickmsg"><font style="color:red">请输入您的昵称</font></span></div>
            </div>
            <div class="ybc_user clearfix">
                <div class="ybc_label left"><label for="name">真实姓名</label></div>
                <div class="ybc_text left"><input name="name" id="name" value="" onkeyup="value=value.replace(/[^\D]/g,'');" autocomplete="off" maxlength="8" type="text"></div>
                <div class="ybc_hint left"><strong class="msg_i">i</strong><span id="namemsg">真实姓名设置后不能修改，并且与提现账户名相同</span></div>
            </div>
            <div class="ybc_user clearfix">
                <div class="ybc_label left"><label for="cardtype">证件类型</label></div>
                <div class="ybc_text left">
                    <select id="cardtype" name="cardtype">
                        <option value="1" selected="selected">身份证</option>
                        <option value="2">护照</option>
                        <option value="3">军官证</option>
                        <option value="4">其它</option>
                    </select>
                </div>
            </div>
            <div class="ybc_user clearfix">
                <div class="ybc_label left"><label for="idcard">证件号码</label></div>
                <div class="ybc_text left"><input name="idcard" id="idcard" value="" type="text"></div>
                <div class="ybc_hint left"><strong class="msg_i">i</strong><span id="idcardmsg">证件号码注册后不能修改</span></div>
            </div>
            <div class="ybc_user clearfix">
                <div class="ybc_label left"><label for="mo">手机号码</label></div>
                <div class="ybc_text left" style=" line-height:30px; width:209px;">
                    <input name="phone" id="mo" value="" type="text">
                </div>
                <div class="ybc_hint left">
                    <strong class="msg_i">i</strong>
                    <span id="momsg">请输入您的手机号码</span>
                </div>
            </div>
            <div class="ybc_user clearfix">
                <div class="ybc_label left"><label for="code">验证码</label></div>
                <div class="ybc_text left"><input name="code" id="code" value="" type="text"></div>
                <div class="ybc_hint left"><input type="button" class="button" value="点击发送" id="msgt" data-key='on' onclick="sandPhone()"></div>
            </div>
            <!--<input id="avatar" name="avatar" value="/images/ulogodefault.jpg" type="hidden">-->
            <div class="ybc_user clearfix">
                <div class="ybc_label left"><label>&nbsp;</label></div>
                <div class="ybc_text left"><input value="提交" class="ybc_next" type="button" onclick="valiForms()"></div>
            </div>
        </div>
        <div style="font-size:14px; padding-left:180px; line-height:24px; color:#666; margin-bottom:30px;">
            <p>1.真实姓名经实名认证后将不能够更改，请如实填写。</p>
            <p>2.{$config.name|default='本网站'}只接受实名充值，提现时银行等姓名信息必须与您的认证姓名一致。</p>
            <p>3.{$config.name|default='本网站'}有合理的理由怀疑用户提供虚假身份信息时，有权拒绝注册或者冻结、注销已经注册的账户及资产。</p>
        </div>
    </form>
</div>
<script type="text/javascript" src="__PUBLIC__/Home/js/city.js"></script>
<script type="text/javascript">
    $("document").ready(function(){
        initProvinceCity($("#p1"),$("#c1"));
    });
</script>
<script type="text/javascript" src="__PUBLIC__/Home/js/ajaxfileupload.js"></script>
<script charset="utf-8" src="__PUBLIC__/Home/js/kindeditor-min.js"></script>
<script charset="utf-8" src="__PUBLIC__/Home/js/zh_CN.js"></script>
<script src="__PUBLIC__/Home/js/form.js"></script>
<script>
    vali = {name: 0, nick: 0, idcard: 0,phone:0};
    $('#name').bind('blur', function(){
        if($(this).val().length < 2) return validateMsg('name', '请输入您的真实姓名', 0);
        return validateMsg('name', '', vali.name = 1);
    });
    $('#nick').bind('blur', function(){
        if($(this).val().length < 2) {
            vali.nick = 0;
            return validateMsg('nick', '请输入您的昵称', 0);
        }
        $.get("{:U('ModifyMember/ajaxCheckNick')}",{nick:encodeURIComponent($(this).val())}, function(d){
            validateMsg('nick', d['msg'], d['status']);
            if(d.status==1){
                vali.nick = d['status'];
            }
        }, 'json');

    });

    $('#mo').bind('blur', function(){
        if($(this).val().length != 11) {
            vali.phone = 0;
            return validateMsg('mo', '请输入手机号码', 0);
        }
        $.get("{:U('ModifyMember/ajaxCheckPhone')}" ,{phone:encodeURIComponent($(this).val())}, function(d){
            validateMsg('mo', d['msg'], d['status']);
            vali.phone = d['status'];
        }, 'json');
    });
    $('#idcard').bind('blur', function(){
        if($('#cardtype').val() == 1){
            if($(this).val().length < 15) return validateMsg('idcard', '请输入正确的身份证', 0);
        }else{
            if($(this).val().length < 7) return validateMsg('idcard', '请输入正确的护照号', 0);
        }
        return validateMsg('idcard', '', vali.idcard = 1);
    });
    function sandPhone(){
        var i=120;
        var tid2;
        tid2=setInterval(function(){
            if($("#msgt").attr("data-key")=='off'){
                $("#msgt").attr("disabled",true);
               // $("#msgt").removeClass("class");
               // $("#msgt").addClass("button again");
                i--;
                $("#msgt").val(i+"秒后可重新发送");
                if(i<=0){
				//	$("#msgt").removeClass("class");
				//	$("#msgt").addClass("button");
                    $("#msgt").removeAttr("disabled").val("重新发送验证码");
					$("#msgt").attr("data-key","on");
                }
            }
        },1000);
		var phone = $("mo").val();
        if(phone && /^1[3|4|5|8]\d{9}$/.test(phone)){
            layer.msg("请填写正确的手机号码");
        }else{
            $.post("{:U('ModifyMember/ajaxSandPhone')}",{phone:encodeURIComponent($("#mo").val())},
                    function(d){
                       layer.msg(d.info);				   
                        if(d.status==1){	
                            i=120;
                            $("#msgt").attr("data-key","off");
                        }
                    });
        }
    }
    function valiForms(){
        if(vali.nick==0){
            $('#nick').focus();
            return false;
        }
        if(vali.name==0){
            $('#name').focus();
            return false;
        }
        if(vali.idcard==0){
            $('#idcard').focus();
            return false;
        }
        if(vali.phone==0){
            $('#mo').focus();
            return false;
        }
        else{
            $('#form').submit();
        }
    }
    $("#form").validate({
        rules: {
        },
        messages: {
        },
        submitHandler:function(form){
            ajax_submit_form(form)
            return false;
        },
        invalidHandler: function() {  //不通过回调
            return false;
        }
    });
    //kind editor
    var editor;
    KindEditor.ready(function(K) {
        editor = K.create('textarea[name="description"]', {
            resizeType : 1,
            allowPreviewEmoticons : false,
            allowImageUpload : false,
            items : [
                'source', 'fontname', 'fontsize', 'forecolor','|',  'bold', 'link', '|', 'justifyleft', 'justifycenter', 'justifyright' ],
            colorTable : [
                ['#FF0000', '#E56600', '#FF9900', '#64451D', '#DFC5A4', '#FFE500'],
                ['#009900', '#006600', '#99BB00', '#B8D100', '#60D978', '#00D5FF'],
                ['#337FE5', '#003399', '#4C33E5', '#9933E5', '#CC33E5', '#EE33EE'],
                ['#FFFFFF', '#CCCCCC', '#999999', '#666666', '#333333', '#000000']
            ]
        });
    });
</script>


<!--  暂时不用 手机验证 -->
<!---<script type="text/javascript" src="__PUBLIC__/Home/js/phonecode.js"></script>-->
<!--footer start-->
<include file="App/Home/View/Public/footer.html"/>
<!--footer end-->
<script type="text/javascript" src="__PUBLIC__/Home/js/downList.js"></script>
<script type="text/javascript" src="__PUBLIC__/Home/js/sdmenu.js"></script>
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?0ab4db557b96d841137861e0740d1e0a";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>


</body></html>