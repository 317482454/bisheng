
<include file="App/Home/View/Public/header.html"/>
<!--top end-->
<style>
    .uploadify-button {text-align:center;}
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

<div id="main">
    <div class="main_box">

        <include file="App/Home/View/Public/left.html"/>
        <div class="raise right clearfix">
            <h2 style="border-bottom:1px solid #e1e1df;">修改账户信息</h2>
            <form method="post" id="signupForm" action="{:U('User/updateMassage')}" jump-url="{:U('User/updateMassage')}" >
                <ul class="apply">
                    <li style="margin-bottom:0px;"><label class="youxiang">用户ID： </label>{$list['member_id']}</li>
                    <li style="margin-bottom:10px;"><label for="email" class="youxiang">邮箱：</label>{$list['email']}</li>
                    <li style="margin-bottom:10px;"><label for="job" class="youxiang">昵称：</label>
                        <input type="text" name="nick" id="nick" class="" value="{$list['nick']}">
                        <span class="note" id="nickmsg">请填写昵称，会优先显示，不能包含“元宝”字样</span>
                    </li>
                    <li style="margin-bottom:10px;"><label for="realname" class="youxiang">真实姓名：</label>{$list['name']|mb_substr=0,1,"utf-8"}*<span class="note">（如需修改姓名，请联系客服人员）</span></li>
                    <li style="margin-bottom:15px;"><label for="idcard" class="youxiang">身份证号：</label>{$list['idcard']|substr=0,3}****{$list['idcard']|substr=15,3}<span class="note">（如需修改证件号，请联系客服人员）</span></li>
                    <li style="margin-bottom:10px;"><label for="mo" class="youxiang"><span class="redstar"></span>手机号：</label>
                        {$list['phone']|substr=0,3}****{$list['phone']|substr=9,2}<span class="note" id="momsg"><!--<a class="voices" href="/user_phone/update">修改手机号码</a>--></span><div class="clear"></div>
                    </li>
                    <li><label>所在城市：</label>
                        <select name="province" class="area" id="area">
                            <option value="0">请选择</option>
                            <volist name="areas" id='row'>
                                <option value="{$row['area_id']}" <eq name="row.area_id" value="$list.province">selected="selected"</eq>>{$row['area_name']}
                                </option>
                            </volist>
                        </select>
                        <select name="city" class="city" id="city">
                            <option value="{$list['city']}">{$list['area_name_city']}</option>
                        </select>
                        <script>
                            $("#area").change(function(){
                                $.post("{:U('User/getcity')}",{'id':$("#area").val()},function(data){
                                    $("#city").empty();
                                    var area=new Option("请选择","");
                                    $("#city").append(area);
                                    if(data.length>0){
                                        for(var i=0;i<data.length;i++){
                                            var option = new Option(data[i]["area_name"], data[i]["area_id"]);
                                            $("#city").append(option);
                                        }
                                    }else{
                                        $("#city").append("<option value='0'>没有相应城市信息</option>");
                                    }
                                });
                            });
                        </script>
                        <span class="note" id="promsg"></span>
                    </li>
                    <li><label for="job" class="youxiang">职位/头衔：</label>
                        <input type="text" name="job" id="job" class="" value="{$list['job']}">
                    </li>
                    <li style="margin-bottom:20px;">

                        <label for="upload">上传头像：</label>
                        <input type="file" size="45" id="file_upload1" name="file_upload1" class="fileField left" style="text-align:center;" multiple/>
                        <!--<button class="button left upload" onclick="return ulogoUpload();">上传</button>-->
                        <span class="note left" style="height:40px; line-height:20px;">尺寸需大于120*120像素；支持.jpg .png .gif格式；<br>小于1MB的图片</span>
                        <div id="fileQueue1"></div>
                        <div class="clear"></div>
                    </li>
                    <!--                <li style="margin-bottom:10px;"><label>&nbsp;</label><img src="--><!--" id="logo" style="width:72px; height:72px;"/></li>-->
                    <li style="margin-bottom:10px;"><label>&nbsp;</label>
                        <img name="head"
                        <if condition="$list['head']">src="{$list['head']}"
                            <else/>src="__PUBLIC__/Home/images/ulogodefault.jpg"
                        </if>
                        id="logo" style="width:72px; height:72px;"></li>

                    <input type="hidden" name="head" id="head_hidden"
                    <if condition="$list['head']">value="{$list['head']}"
                        <else/>value="__PUBLIC__/Home/images/ulogodefault.jpg"
                    </if>
                    >

                    <li style="margin-bottom:10px;"><label for="jianjie">个人简介：</label>
                        <textarea id="jianjie" rows="5" cols="60" name="profile">{$list['profile']}</textarea>
                        <span class="note" style=" margin-left:110px;">3000字以内</span>
                    </li>
                    <input type="hidden" name="member_id" value="{$list['member_id']}"/>
                    <li><label class="youxiang">&nbsp;</label><input type="submit" class="queding" value="确定"></li>
                </ul>
            </form>
        </div>
        <div class="clear"></div>
    </div>
</div>
<link href="__PUBLIC__/js/uploadify/uploadify.css">
<script type="text/javascript" src="__PUBLIC__/js/uploadify/jquery.uploadify.min.js"></script>
<script type="text/javascript">
    $(function () {

        $("#file_upload1").uploadify({
            //指定swf文件
            'swf': '/Public/js/uploadify/uploadify.swf',
            //后台处理的页面
            'uploader': "{:U('User/addPicForAjax')}",
            //按钮显示的文字
            'buttonText': '点击上传',
            //显示的高度和宽度，默认 height 30；width 120
            'height': 30,
            'width': 330,
            //上传文件的类型  默认为所有文件    'All Files'  ;  '*.*'
            //在浏览窗口底部的文件类型下拉菜单中显示的文本
            'fileTypeDesc': 'Image Files',
            //允许上传的文件后缀
            'fileTypeExts': '*.gif; *.jpg; *.png',
            //发送给后台的其他参数通过formData指定
            //'formData': { 'someKey': 'someValue', 'someOtherKey': 1 },
            //上传文件页面中，你想要用来作为文件队列的元素的id, 默认为false  自动生成,  不带#
            'queueID': 'fileQueue1',
            //选择文件后自动上传
            'auto': true,
            //设置为true将允许多文件上传
            'multi': false,
            'onUploadSuccess':function(file,data,response){
                var r=jQuery.parseJSON(data);
                $("#pic1").val(r['info']);
                //$("#uploadedpic").empty();
                $("#logo").attr("src",r['info']);
                $("#head_hidden").attr("value",r['info']);
                //$(".uploadedpic").append("<img src='"+r['info']+"' class='mt10'>");
            }
        });
    });
</script>

<script>
    $("#signupForm").validate({
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
</script>
<script>
    $(".menu7").addClass("uc-current");
</script>
<include file="App/Home/View/Public/footer.html"/>