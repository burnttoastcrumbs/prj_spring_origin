$(function(){
    // $('._count :button').on({
    //     'click' : function(e){
    //         e.preventDefault();
    //         var $count = $(this).parent('._count').find('.inp');
    //         var now = parseInt($count.val());
    //         var min = 0;
    //         var max = 999;
    //         var num = now;
    //         var total_price =$('#total_price');
    //         if($(this).hasClass('minus')){
    //             var type = 'm';
    //         }else{
    //             var type = 'p';
    //         }
    //         if(type=='m'){
    //             if(now>min){
    //                 num = now - 1;
    //             }
    //         }else{
    //             if(now<max){
    //                 num = now + 1;
    //             }
    //         }
    //         if(num != now){
    //             $count.val(num);
    //         }
    //
    //         total_price.text(6307200*num)
    //         console.log(total_price.text())
    //     }
    // });

    $("#hover").hover(function(){
        $(this).children(".sub_menu").stop().fadeToggle(300);
    });

    $("#lnb_pc .main_menu>li").hover(function(){
        $(this).children(".sub_menu").stop().fadeToggle(300);
    });


    $("#pay_button li:last-child button").click(function(){
        $(this).children("i:first-child").css("display","none"),
            $(this).children("i:last-child").css("display","block")
        // ,alert("상품을 찜하셨습니다.");
    });


    // $("#pay_button li:last-child button").click(function(){
    //     $("#pay_button li:last-child button i:first-of-type").toggleClass('selected');
    // })










    //total
    // total=
    // 6307200*$count.val(num)
    // +
    // 5087200*$count.val(num)
    // +
    // 4270000*$count.val(num);



    // var totalAmount = 1000;
    // 총 금액 변수 예시



    // var totalAmount = <c:out value="${item.adult_price}"/>;
    //
    // $(document).ready(function() {
    //     //화면 뜨면서 바로 실행되는 스크립트 영역
    //     // 총 금액 값을 span 요소에 삽입
    //     $('.total').text(totalAmount);
    // });


});