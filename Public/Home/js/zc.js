$(function() {
	$('.item:first').addClass('active');
	// 2.成功案例切换
	$('.sp-wrap').width(400);
	$('.sp-next').click(function() {
		$('.sp-view').stop(true, true);
		$('.sp-prev').show();
		var spLeft = parseInt($('.sp-view').css("left"));
		if(spLeft >= -1200) {
			$('.sp-view').animate({left: '-=400px'}, "slow");
			if(spLeft == -1200)$('.sp-next').hide();
		}
	})
	$('.sp-prev').click(function() {
		$('.sp-view').stop(true, true);
		$('.sp-next').show();
		var spLeft = parseInt($('.sp-view').css("left"));
		if(spLeft <= -400){
			$('.sp-view').animate({left: '+=400px'}, "slow");
			if(spLeft == -400)$('.sp-prev').hide();
		}
	})
	// 3.微信
	$('.care-weixin').hover(function(){
		$('.wx-pic').stop(true, false);
		$('.wx-pic').fadeIn();
	},function(){
		$('.wx-pic').stop(true, false);
		$('.wx-pic').fadeOut();
	})
	// 1.banner
	// 声明不同设备上，banner尺寸的初始化函数
	function bannerResizePC() {
		var winWidth = $(window).width();
		var winHeight = $(window).height();
		$('.carousel-inner img').height(winHeight);
		$('#carousel-example-generic').height(winHeight);
		$('.carousel-inner img').width(winWidth);
	};
	function bannerResizePhone() {
		var winWidth = $(window).width();
		var winHeight = winWidth / 1.7;
		$('.carousel-inner img').height(winHeight);
		$('#carousel-example-generic').height(winHeight);
		$('.carousel-inner img').width(winWidth);
	};
	function browserRedirect() {
		var sUserAgent = navigator.userAgent.toLowerCase();
		var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
		var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
		var bIsMidp = sUserAgent.match(/midp/i) == "midp";
		var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
		var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
		var bIsAndroid = sUserAgent.match(/android/i) == "android";
		var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
		var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";
		if (bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) {
			bannerResizePhone();
		} else {
			bannerResizePC();
		}
	}
	// 判断终端，声明不同函数
    browserRedirect();
    // 调用函数
	$(window).resize(browserRedirect);
})