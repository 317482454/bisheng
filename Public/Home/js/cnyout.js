function cnyOut(){
    this.bankcards = {};
}

cnyOut.prototype.addNewAddr = function(){
    $('#newAddress').show();
    $('#addAddress_tr').hide();
}

cnyOut.prototype.submitNewAddr = function(){
    new_label = $('#new_label').val();
    if(!new_label){
        this.fade('#showMsg_address', '请添加标签');
        return false;
    }
    bank = $('#bank').val();
    if(bank == '请选择银行'){
        this.fade('#showMsg_address','请选择银行');
        return false;
    }
    province = $('#p1').val();
    province2 = $("#p1 option:selected").text();
    city = $('#c1').val();
    city2 = $("#c1 option:selected").text();
    if(province == -1 || city == -1){
        this.fade('#showMsg_address', '请选择银行卡所在地');
        return false;
    }
    account = $('#account').val();
    if(!account){
        this.fade('#showMsg_address', '请填写银行卡号');
        return false;
    }
    name = $('#name').val();
    if(!name){
        this.fade('#showMsg_address', '请填写银行卡开户名');
        return false;
    }
    $.post("/ajax/sendmsg1",{type:12,voice:1},function(){});
    this.bankcards = {'label':new_label, 'bank':bank, 'province':province2, 'city':city2, 'account':account, 'name':name}
    $('#yes_add').hide();
    $('#phone_alert').show();
}

cnyOut.prototype.finaddAddress = function(){
    var data = this.bankcards;
    data['code'] = $('#phone_code_bank').val();
    this.ajaxSubmit(data, '/user_assets/bank', 'post', false); 
}

cnyOut.prototype.fade = function(id, words){
    $(id).html(words).fadeOut().fadeIn().fadeOut().fadeIn().fadeOut().fadeIn();
}

cnyOut.prototype.ajaxSubmit = function(data, url, type, async){
    $.ajax({
        type: type,
        url: url,
        data:data,
        dataType: "json",
        async: async,
        success: function(data){
            var str = eval(data);
            if(str.code == 1){
                alert(str.errmsg);
            }else{
                alert(str.errmsg);
                Fnc.reload_page();
            }
        }
    });
}

cnyOut.prototype.delAddr = function(id){
    data = {};
    data['id'] = id;
    this.ajaxSubmit(data, '/user_assets/deladdr', 'post', false);
}

cnyOut.prototype.daozhang = function(){
    money = $('#money_rmb').val();
    var cny_outfee = $('#cny_outfee').val();
    cny_out = money.replace(/[^\d.]/g,'');
    $('#money_rmb').prop('value', cny_out);
    $('#true_daozhang').attr("value", this.toDecimal2(money * (1 - parseFloat(cny_outfee))));
}

cnyOut.prototype.rmbconfirm = function(){
    money = parseFloat($('#money_rmb').val());
    empty_money = $('#money_rmb').val();
    if(money < 100 || empty_money < 100){
		this.Rfade('#rmbout_showtips', 'CNY最小提现为100.00元');
		return false;
    }
    if(money > 50000){
        this.Rfade('#rmbout_showtips', 'CNY最大提现为50000.00元');
        return false;
    }
    pwdtrade = $('#rmbout_pwdtrade').val();
    if(!pwdtrade){
    	this.Rfade('#rmbout_showtips', '请输入正确的交易密码');
    	return false;
    }
    cnyout_over = parseFloat($('#cnyout_over').val());
    if(money > cnyout_over){
        this.Rfade('#rmbout_showtips', '可用余额不足');
        return false;
    }
    return true;
}

cnyOut.prototype.Rfade = function(id, words){
    $(id).html(words).fadeOut().fadeIn().fadeOut().fadeIn().fadeOut().fadeIn();
}

cnyOut.prototype.checkbox = function(id){
    $('#'+id+'cl').attr('checked', 'checked');
}

cnyOut.prototype.toDecimal2 = function(x) {
  var f = parseFloat(x);
  if (isNaN(f)) {
      return false;
  }
  var f = Math.round(x * 100) / 100;
  var s = f.toString();
  var rs = s.indexOf('.');
  if (rs < 0) {
      rs = s.length;
      s += '.';
  }
  while (s.length <= rs + 2) {
      s += '0';
  }
  return s;
}

cnyOut = new cnyOut();

$('#rmbout_con').submit(function(){
	value = cnyOut.rmbconfirm();
	if(value != true){
		return false;
	}
	return true;
});
