ss = '<div id="alertWinRoom"><style type="text/css">';
ss += '#alertWin{left: 574.5px;top: 255px;display: block;background: #EEE;border: 1px solid white;box-shadow: 0 3px 7px #333;-moz-box-shadow: 0 3px 7px #333;-webkit-box-shadow: 0 3px 7px #333;-moz-border-radius: 4px;-webkit-border-radius: 4px;border-radius: 4px;-khtml-border-radius: 4px;position: absolute;z-index: 99999999;min-width: 200px; min-height: 50px; max-width: 75%; position: fixed;}';
ss += '#alertBtn{border: 1px solid #BBB; -moz-border-radius: 3px; -webkit-border-radius: 3px; border-radius: 3px; -khtml-border-radius: 3px; background: -moz-linear-gradient(100% 100% 90deg,#EEE,#D5D5D5); background: -webkit-gradient(linear,0% 0,0% 100%,from(#EEE),to(#D5D5D5)); color: #232D3D; font-size: 12px; font-weight: bold; padding: 4px 10px; margin: 0 3px; text-shadow: 0 1px 0 white; cursor: pointer; box-shadow: 0 1px 2px #CCC; -moz-box-shadow: 0 1px 2px #ccc; -webkit-box-shadow: 0 1px 2px #CCC;}';
ss += '#alertBtn:hover{color: #D85054;} #alertText{font-size:20p;font-weight:bold;color:#333;} #alertWin p{padding:10px 10px 15px 10px;text-align:center;} #alertBg{position: fixed; top: 0%; left: 0%; width: 100%; height: 100%; background-color: #eee; z-index:100000; -moz-opacity: 0.5; opacity:0.5; filter: alpha(opacity=50);}';
ss += '</style>';
ss += '<div id="alertBg"></div><div id="alertWin"><p id="alertText"></p><p><input type="button" id="alertBtn" value="确定" /></p></div></div>';

function msgDalog(str,url,jump){
	$('body').append(ss);
	$('#alertText').text(str);
    $('#alertBtn').click(function(){
	    $('#alertWinRoom').remove();
		if(jump==1) 
			location.href = url;
	    else if(jump==2) 
            history.back();
	});
}


function jump(count,href) {
    window.setTimeout(function(){
        count--;
        if(count > 0) {

            if(count%2){
                $('#alnum').css('color','red');
            }else{
                $('#alnum').css('color','green');
            }


            $('#alnum').html(count);
            jump(count,href);
        } else {
            location.href=href;
        }
    }, 900);
}


