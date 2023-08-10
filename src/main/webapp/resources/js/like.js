$(function(){
    $("#liked li button").click(function(){
        alert("삭제하시겠습니까?");

    });



    $("#hover").hover(function(){
        $(this).children(".sub_menu").stop().fadeToggle(300);
    });


    $("#lnb_pc .main_menu>li").hover(function(){
        $(this).children(".sub_menu").stop().fadeToggle(300);
    });
});