"use strict";

function Level() {
    this.name = 'Level';
}

Level.prototype.upgrade = function() {
    Layer.confirm('是否确认升级?', function(flag) {
        if (1 == flag) {
            $.post("/user_level/upgrade", {},
                function(object) {
                    if (object.code == 0) {
                        Layer.alert(object.msg + ', 金元宝vip客户群 481795797', function(flag) {
                            location.reload();
                        });

                    } else if (object.code == 102) {
                        Layer.alert(object.msg, function(flag) {
                            if (1 == flag) {
                                self.location.href='/user/login?url=%2Fuser_level';
                            }
                        });
                    } else if (object.code == 107) {
                        Layer.confirm(object.msg, function(flag) {
                            if (1 == flag) {
                                self.location.href="/trade/abc2cny";
                            }
                        });
                    } else {
                        Layer.alert(object.msg);
                    }
                }
            );
        }
    });
}

var Level = new Level();
