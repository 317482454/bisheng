$(function(){
    $('.infotable.market').on('mouseover mouseout','tr',function(e){
        var index = $(this).index();
        if(e.type == "mouseover"){
            $('.infotable.market tr').eq(index+1).find('td').css({background:'#f8f8f8'})
            $('#infoselllist tr').eq(index).find('td').css({background:'#f8f8f8'})
            $('#infolist tr').eq(index).find('td').css({background:'#f8f8f8'})
        }
        else
            $('.infotable').find('tr td').css({background:'#fff'})
    })
})
