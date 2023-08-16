$(function(){
    // var liCount = $('#calandar_wrap ul>li').length;

    // var resultString =liCount;

    // $('.product_num').text(resultString);

    $(document).ready(function() {
        $(".content .price button").click(function() {
            var $calandarWrap = $(this).closest(".content").find("#calandar_wrap");
            var $buttonIcons = $(this).find("i");

            $calandarWrap.toggle();
            $buttonIcons.toggle();
            var itemNum = $calandarWrap.find("ul li").length;

            $calandarWrap.find("#calandar_select .product_num").text(itemNum);
        });
    });


    $("#hover").hover(function(){
        $(this).children(".sub_menu").stop().fadeToggle(300);
    });

    // $(".price button").click(function(){
    //     $("#calandar_wrap").toggle();
    //     $(".price button i").toggle();
    // });


    $("#calandar_wrap button span").click(function(){
        $("#calandar_wrap").css("display","none");
        $(".price button i:first-child").css("display","block");
        $(".price button i:last-child").css("display","none");
    });

    $("#lnb_pc .main_menu>li").hover(function(){
        $(this).children(".sub_menu").stop().fadeToggle(300);
    });



});