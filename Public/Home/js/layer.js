function Layer() {
    this.name = 'Layer';
    this.flag = -1;
    this.alert_flag = -1;
}

// common alert
Layer.prototype.alert = function(msg, callback) {
    $('body').append('<div class="box_bg"></div><div class="box_common"><p>'+msg+'</p><div class="box_btn"><a href="javascript:;" class="yes middle">确定</a></div><a href="javascript:;" class="box_close">X</a></div>');
    // 点击背景隐藏
    $('.box_bg').on('click', function() {
        this.alert_flag = 0;
        $('.box_bg').remove();
        $('.box_common').remove();
        if (undefined != callback) {
            return callback(this.alert_flag);
        }
    });
    // 点击关闭按钮隐藏
    $('.box_close').on('click', function() {
        this.alert_flag = 0;
        $('.box_bg').remove();
        $('.box_common').remove();
        if (undefined != callback) {
            return callback(this.alert_flag);
        }
    });
    // 点击确定按钮隐藏
    $('.yes.middle').on('click', function() {
        this.alert_flag = 1;
        $('.box_bg').remove();
        $('.box_common').remove();
        if (undefined != callback) {
            return callback(this.alert_flag);
        }
    });
}

// common confirm
Layer.prototype.confirm = function(msg, callback) {
    $('body').append('<div class="box_bg"></div><div class="box_common"><p>'+msg+'</p><div class="box_btn clearfix"><a href="javascript:;" class="no left">否</a><a href="javascript:;" class="yes right">是</a></div><a href="javascript:;" class="box_close">X</a></div>');

        // 点击背景隐藏
        $('.box_bg').on('click', function() {
            this.flag = 0;
            $('.box_bg').remove();
            $('.box_common').remove();
            if (undefined != callback) {
                return callback(this.flag);
            }
        });
        // 点击关闭按钮隐藏
        $('.box_close').on('click', function() {
            this.flag = 0;
            $('.box_bg').remove();
            $('.box_common').remove();
            if (undefined != callback) {
                return callback(this.flag);
            }
        });
        // 点击否按钮隐藏
        $('.no.left').on('click', function() {
            this.flag = 0;
            $('.box_bg').remove();
            $('.box_common').remove();
            if (undefined != callback) {
                return callback(this.flag);
            }
        });
        // 点击是按钮隐藏
        $('.yes.right').on('click', function() {
            this.flag = 1;
            $('.box_bg').remove();
            $('.box_common').remove();
            if (undefined != callback) {
                return callback(this.flag);
            }
        });

        // return callback('admin');

}


var Layer = new Layer();