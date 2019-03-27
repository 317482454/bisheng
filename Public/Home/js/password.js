"use strict";

function Password() {
    this.name = 'Password';
};

Password.prototype.loginPwd = function() {

    var oldpwd = $("#tagContent0 input[name='oldpwd']").val();
    var pwd = $("#tagContent0 input[name='pwd']").val();
    var repwd = $("#tagContent0 input[name='repwd']").val();

    if (oldpwd.length < 6) {
        Layer.alert('请输入正确的登录密码');
        return false;
    }

    if (pwd.length < 6) {
        Layer.alert('密码长度在6-20个字符之间');
        return false;
    }

    if (pwd != repwd) {
        Layer.alert('两次密码不一致，请重新输入');
        return false;
    }

    $.post("/user_index/pwd", {'oldpwd': oldpwd, 'pwd': pwd, 'repwd': repwd}, function(data) {
        if (data.code == 1) {
            Layer.alert(data.msg);
            return false;
        } else {
            Layer.alert(data.msg + ', 需重新登录', function(flag) {
                self.location="/user/logout";
            });
        }
    });

    return false;

};

Password.prototype.tradePwd = function() {

    var oldpwd = $("#tagContent1 input[name='oldpwd']").val();
    var oldpwdtrade = $("#tagContent1 input[name='oldpwdtrade']").val();
    var pwd = $("#tagContent1 input[name='pwd']").val();
    var repwd = $("#tagContent1 input[name='repwd']").val();
	var idcard1 = $("#idcard1_hide").val();
	var idcard2 = $("#idcard2_hide").val();
	var idcard3 = $("#idcard3_hide").val();

    if (oldpwd.length < 6) {
        Layer.alert('请输入正确的登录密码');
        return false;
    }

    if (oldpwdtrade.length < 6) {
        Layer.alert('请输入正确的交易密码');
        return false;
    }

    if (pwd != repwd) {
        Layer.alert('两次密码不一致，请重新输入');
        return false;
    }

    if (pwd.length < 6) {
        Layer.alert('密码长度在6-20个字符之间');
        return false;
    }

	if (!idcard1) {
        Layer.alert('请上传您的身份证正面照片');
        return false;
	}

	if (!idcard2) {
        Layer.alert('请上传您的身份证反面照片');
        return false;
	}

	if (!idcard3) {
        Layer.alert('请上传您的手持身份证照片');
        return false;
	}

    $.post('/user_index/pwdtrade', {'oldpwd': oldpwd, 'oldpwdtrade': oldpwdtrade, 'pwd': pwd, 'repwd': repwd, 'idcard1': idcard1, 'idcard2': idcard2, 'idcard3':idcard3}, function(data) {

        if (data.code == 1) {
            Layer.alert(data.msg);
        } else if(data.code == 3) {
			Layer.alert(data.msg, function() {
				self.location = "/user/logout";
			});
		} else {
            Layer.alert(data.msg + ', 需重新登录', function() {
                self.location = "/user/logout";
            });
        }

    });

    return false;

};

Password.prototype.resetTradePwd = function() {

    var login_pwd = $('#login_pwd').val();
    if (!login_pwd) {
        Layer.alert('请输入正确的登录密码');
        return false;
    }

    var phone_code = $('#phone_code').val();
    if (!phone_code) {
        Layer.alert('请输入正确的验证码');
        return false;
    }

    var new_tradepwd = $('#new_tradepwd').val();
    if (!new_tradepwd) {
        Layer.alert('请输入新的交易密码');
        return false;

    }
    if (new_tradepwd.length < 6 || new_tradepwd.length > 20) {
        Layer.alert('密码长度在6-20个字符之间');
        return false;
    }

    var renew_tradepwd = $('#renew_tradepwd').val();
    if (!renew_tradepwd) {
        Layer.alert('请再次输入交易密码');
        return false;
    }

    if (new_tradepwd != renew_tradepwd) {
        Layer.alert('两次密码不一致，请重新输入');
        return false;
    }

	var idcard1 = $("#idcard1_hide").val();
	var idcard2 = $("#idcard2_hide").val();
	var idcard3 = $("#idcard3_hide").val();
	if (!idcard1) {
        Layer.alert('请上传您的身份证正面照片');
        return false;
	}

	if (!idcard2) {
        Layer.alert('请上传您的身份证反面照片');
        return false;
	}

	if (!idcard3) {
        Layer.alert('请上传您的手持身份证照片');
        return false;
	}

    var idcard = $('#idcard').val();

    var json = {'oldpwd': login_pwd, 'code': phone_code, 'pwd': new_tradepwd, 'repwd': renew_tradepwd, 'idcard': idcard, 'idcard1': idcard1, 'idcard2': idcard2, 'idcard3':idcard3};

    $.post('/user_index/repwdtrade', json, function(flag) {

        if (flag.code == 1) {
            Layer.alert(flag.msg);
            return false;
        } else if(flag.code == 3) {
			Layer.alert(flag.msg, function() {
				self.location = "/user/logout";
			});
		} else {
            Layer.alert(flag.msg + ', 需重新登录', function() {
                self.location = "/user/logout";
            });
        }

    });

    return false;
};

Password.prototype.getcode = function() {
    $('#trade_get_code').hide();
    $('#trade_get_code2').show();
    $.post("/ajax/sendmsg1", {type:104,voice:1}, function(){});
}


Password.prototype.modifyIdcard = function() {

	var id = $("#id_hide").val();
	var idcard1 = $("#idcard1_hide").val();
	var idcard2 = $("#idcard2_hide").val();
	var idcard3 = $("#idcard3_hide").val();
	if (!idcard1) {
        Layer.alert('请上传您的身份证正面照片');
        return false;
	}

	if (!idcard2) {
        Layer.alert('请上传您的身份证反面照片');
        return false;
	}

	if (!idcard3) {
        Layer.alert('请上传您的手持身份证照片');
        return false;
	}

    $.post('/user_index/modifyIdcard', {'id': id, 'idcard1': idcard1, 'idcard2': idcard2, 'idcard3':idcard3}, function(data) {
        Layer.alert(data.msg);
    });

    return false;
};

var Password = new Password();
