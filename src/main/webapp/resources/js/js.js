$(function(){

    $("#xmark").click(function(){
        $("#modal_box,#modal_bg").fadeIn();

    });

    $("#cancel_btn,#confirm_btn").click(function(){
        $("#modal_box,#modal_bg").fadeOut();
    });

  
    $( "#datepicker" ).datepicker();
    
    $( "#datepicker2" ).datepicker();
});