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

    $('#main_slider .slick').slick({
        autoplay : true,
        autoplaySpeed: 5000,
        speed : 500,
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows : true,
        prevArrow : $(".slide_btn_prev a"),
        nextArrow : $(".slide_btn_next a")
    });

    function mainFraction(){
        var status = $('#main_slider .fraction');
        var slickElement = $('#main_slider .slick');

        slickElement.on('init reInit beforeChange', function(event, slick, currentSlide, nextSlide){
           
            var i = (nextSlide ? nextSlide : 0) + 1;
            
            status.text(i + ' / ' + slick.slideCount);
            
        });
    }
    mainFraction();

    $("#main_slider .pause").click(function(){
        $("#main_slider .slick").slick("slickPause");
        $(this).css({display: "none"});
        $("#main_slider .play").css({display: "block"});
    });

    $("#main_slider .play").click(function(){
        $("#main_slider .slick").slick("slickPlay");
        $(this).css({display: "none"});
        $("#main_slider .pause").css({display: "block"});
    });

});