$(function(){
    var liCount = $('#calandar_wrap ul>li').length;

    var resultString =liCount;

    $('.product_num').text(resultString);

    $("#hover").hover(function(){
        $(this).children(".sub_menu").stop().fadeToggle(300);
    });

    $("#price button").click(function(){
        $("#calandar_wrap").toggle();
        $("#price button i").toggle();
    });

    $("#calandar_wrap button span").click(function(){
        $("#calandar_wrap").css("display","none");
        $("#price button i:first-child").css("display","block");
        $("#price button i:last-child").css("display","none");
    });

    $("#lnb_pc .main_menu>li").hover(function(){
        $(this).children(".sub_menu").stop().fadeToggle(300);
    });



});