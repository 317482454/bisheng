var Fnc = {
	getViewSize: function() {
	    var de=document.documentElement;
	    var db=document.body;
	    var viewW=de.clientWidth==0 ?  db.clientWidth : de.clientWidth;
	    var viewH=de.clientHeight==0 ?  db.clientHeight : de.clientHeight;
	    return Array(viewW ,viewH);
	},
	strRev: function(text) {
	    return text.split('').reverse().join('');
	},
	openWindow: function(url,windowName,width,height) {
	    var x = parseInt(screen.width / 2.0) - (width / 2.0);
	    var y = parseInt(screen.height / 2.0) - (height / 2.0);
	    var isMSIE= (navigator.appName == "Microsoft Internet Explorer");
	    if (isMSIE) {
	        var p = "resizable=1,location=no,scrollbars=no,width=";
	        p = p+width;
	           p = p+",height=";
	           p = p+height;
	        p = p+",left=";
	        p = p+x;
	        p = p+",top=";
	        p = p+y;
	        retval = window.open(url, windowName, p);
	    } else {
	        var win = window.open(url, "ZyiisPopup", "top=" + y + ",left=" + x + ",scrollbars=" + scrollbars + ",dialog=yes,modal=yes,width=" + width + ",height=" + height + ",resizable=no" );
	        eval("try { win.resizeTo(width, height); } catch(e) { }");
	        win.focus();
	    }
	},
	dateFormat: function(format) {	//yyyy-MM-dd hh:mm:ss
		Date.prototype.format = function(format){
		    var o = {
		        "M+" : this.getMonth()+1, //month
		        "d+" : this.getDate(),    //day
		        "h+" : this.getHours(),   //hour
		        "m+" : this.getMinutes(), //minute
		        "s+" : this.getSeconds(), //second
		        "q+" : Math.floor((this.getMonth()+3)/3),  //quarter
		        "S" : this.getMilliseconds() //millisecond
		    };
		    if(/(y+)/.test(format)) format=format.replace(RegExp.$1,
		(this.getFullYear()+"").substr(4 - RegExp.$1.length));
		    for(var k in o){
		        if(new RegExp("("+ k +")").test(format))
		            format = format.replace(RegExp.$1,RegExp.$1.length==1 ? o[k] :("00"+ o[k]).substr((""+ o[k]).length));
		    }
		    return format;
		}
		return new Date().format(format);
	},
	currentPageUrl: function(){
		var currentPageUrl = "";
		if (typeof this.href === "undefined") {
		    currentPageUrl = document.location.toString().toLowerCase();
		}else {
		    currentPageUrl = this.href.toString().toLowerCase();
		}
	},
	isDigit: function(value) {
	    var patrn = /^[0-9]*$/;
	    if (patrn.exec(value) == null || value == "") {
	        return false
	    } else {
	        return true
	    }
	},
	HtmlEncode: function(text) {
	    return text.replace(/&/g, '&').replace(/\"/g, '"').replace(/</g, '<').replace(/>/g, '>');
	},
	//清除空格
	trim: function(s) {
		var reExtraSpace = /^\s*(.*?)\s+$/;
		return s.replace(reExtraSpace, "$1");
	},
	ltrim: function(s) {
		return s.replace( /^(\s*|　*)/, "");
	},
	rtrim: function(s) {
		return s.replace( /(\s*|　*)$/, "");
	},
	cutstr: function(str, len) {
		var temp,icount = 0,patrn = /[^\x00-\xff]/,strre = "";
		for (var i = 0; i < str.length; i++) {
			if (icount < len - 1) {
				temp = str.substr(i, 1);
				if (patrn.exec(temp) == null) {
					icount = icount + 1
				} else {
					icount = icount + 2
				}
				strre += temp
			} else {
				break;
			}
		}
		return strre + "...";
	},
	password_security_level: function(pwd) {
		var score = 0;
		if(pwd.length < 4){
			return score;
		}
		if(pwd.length >= 8){
			score++;
		}
		if(pwd.length >= 10){
			score++;
		}
		if(/[a-z]/.test(pwd) && /[A-Z]/.test(pwd)){
			score++;
		}
		if(/[0-9]/.test(pwd)){
			score++;
		}
		if(/.[!,@,#,$,%,^,&,*,?,_,~, -,£,(,)]/.test(pwd)){
			score++;
		}
		return score;
	},
	//页面刷新
	reload_page: function(s) {
	    if(!s) s=1000;
	    setTimeout(function(){location.reload();},s);
	},
	changeTwoDecimal: function(floatvar) {
		var f_x = parseFloat(floatvar);
		if (isNaN(f_x))
		{
		alert('function:changeTwoDecimal->parameter error');
		return false;
		}
		var f_x = Math.round(floatvar*100)/100;
		var s_x = f_x.toString();
		var pos_decimal = s_x.indexOf('.');
		if (pos_decimal < 0)
		{
		pos_decimal = s_x.length;
		s_x += '.';
		}
		while (s_x.length <= pos_decimal + 2)
		{
		s_x += '0';
		}
		return s_x;
	},
	in_array : function(stringToSearch, arrayToSearch){
		for (var i = 0; i < arrayToSearch.length; i++) {
			var thisEntry = arrayToSearch[i].toString();
			if (thisEntry == stringToSearch) {
				return true;
			}
		}
		return false;
	}
};
