function coinOut(){
    this.address = {};
    //action
    this.action = JSON.parse($('#json').attr('data'));
}

coinOut.addNewAddr = function(){
    $('#coinout_newaddr').show();
    $('#addAddress_tr').hide();
}

/*coinOut.prototype.addNewAddr = function(){
    $('#coinout_newaddr').show();
    $('#addAddress_tr').hide();
}*/

coinOut.prototype.submitNewAddr = function(){
    new_label = $('#new_label').val();
    if(!new_label){
        this.fade('#coinout_showtips', '请添加标签');
        return false;
    }
    wallet_address = $('#wallet_address').val();
    if(!wallet_address){
        this.fade('#coinout_showtips', '请填写钱包地址');
        return false;
    }
    coins_what = $('#coins_what').val();
    judge = 0;
    $.ajax({type: 'post',url: '/user_assets/isWallet',data:{'coin':coins_what, 'wallet':wallet_address},dataType: "json",async: false,
        success: function(data){
            var str = eval(data);
            if(str.code == 1){
                alert(str.errmsg);
                judge = 1;
                return false;
            }else{
                alert(str.errmsg);
            }
        }
    });
    if(judge == 1){
        return false;
    }
    $.post("/ajax/sendmsg1",{type:this.action[coins_what],voice:1},function(){});
    this.address = {'new_label':new_label, 'wallet':wallet_address}
    $('#yes_add2').hide();
    $('#phone_alert2').show();
}

coinOut.prototype.fade = function(id, words){
    $(id).html(words).fadeOut().fadeIn().fadeOut().fadeIn().fadeOut().fadeIn();
}

coinOut.prototype.finaddAddress = function(){
    var data = this.address;
    data['coin'] = $('#coins_what').val();
    data['code'] = $('#phone_code_wallet').val();
    this.ajaxSubmit(data, '/user_assets/wallet', 'post', false);
}

coinOut.prototype.ajaxSubmit = function(data, url, type, async){
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

coinOut.prototype.delAddr = function(id){
    data = {};
    data['id'] = id;
    this.ajaxSubmit(data, '/user_assets/deladdr2', 'post', false);
}

coinOut.prototype.daozhang = function(){
    coin = $('#coin_rmb').val();
    coin_out = coin.replace(/[^\d.]/g,'');
    $('#coin_rmb').prop('value', coin_out);
    fee = ($('#fee_coin').val())/100;
    $('#true_coin').attr("value", this.toDecimal4(coin*(1-fee)));
}

coinOut.prototype.coinconfirm = function(){
    coin = parseFloat($('#coin_rmb').val());
    min_coin = parseFloat($('#min_coin').val());
    max_coin = parseFloat($('#max_coin').val());
    empty_coin = $('#coin_rmb').val();
    if(coin < min_coin || empty_coin < min_coin){
        this.Rfade('#coinout2_showtips', '最小提现为'+min_coin);
        return false;
    }
    if(coin > max_coin){
        this.Rfade('#coinout2_showtips', '最大提现为'+max_coin);
        return false;
    }
    pwdtrade = $('#pwdtrade').val();
    if(!pwdtrade){
        this.Rfade('#coinout2_showtips', '请输入正确的交易密码');
        return false;
    }
    coin_over = parseFloat($('#coin_over').val());
    if(coin > coin_over){
        this.Rfade('#coinout2_showtips', '可用余额不足');
        return false;
    }
    return true;
}

coinOut.prototype.Rfade = function(id, words){
    $(id).html(words).fadeOut().fadeIn().fadeOut().fadeIn().fadeOut().fadeIn();
}

coinOut.prototype.checkbox = function(id){
    $('#'+id+'cl').attr('checked', 'checked');
}

coinOut.prototype.toDecimal4 = function(x) {
  var f = parseFloat(x);
  if (isNaN(f)) {
      return NaN;
  }
  var f = Math.round(x * 100000000) / 100000000;
  var s = f.toString();
  var rs = s.indexOf('.');
  if (rs < 0) {
      rs = s.length;
      s += '.';
  }
  while (s.length <= rs + 8) {
      s += '0';
  }
  return s;
}

coinOut = new coinOut();

$('#coinout_con').submit(function(){
    value = coinOut.coinconfirm();
    if(value != true){
        return false;
    }
    return true;
});
