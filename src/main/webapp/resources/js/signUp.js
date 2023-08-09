$(function(){
  $("#bookmark").click(function(){
    $("section").css("height", "1020px");
});

  $("#hover").hover(function(){
      $(this).children(".sub_menu").stop().fadeToggle(300);
  });

});

