$(function(){
    $(".tab_content1").hide();
    $(".tab_content1:first").show();

    $(".tab_menu1 a:first").addClass("tab_active");

    $(".tab_menu1 a").click(function(e){
        e.preventDefault();
        $(".tab_menu1 a").removeClass("tab_active");

        $(this).addClass("tab_active");

        $(".tab_content1").hide();

        var activeTab = $(this).attr("href");
        console.log(activeTab);

        $(activeTab).show();

    });


    $("#hover").hover(function(){
        $(this).children(".sub_menu").stop().fadeToggle(300);
    });


    $("#lnb_pc .main_menu>li").hover(function(){
        $(this).children(".sub_menu").stop().fadeToggle(300);
    });
});