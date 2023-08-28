<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>


<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>하나투어 : 꿈꾸는 대로, 펼쳐지다</title>
    <link rel="stylesheet" href="/resources/css/detail3.css">
    <script src="/resources/js/jquery-3.6.4.min.js"></script>
    <script src="/resources/js/detail2.js"></script>
    <script src="https://kit.fontawesome.com/f0e73cfa04.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>


<!-- 헤더 -->
<%@include file="../include/includeHanatourHeader.jsp"%>

<!-- 내용 -->
<section id="main">
    <div class="wrap">
        <div class="detailPage_img">
            <img src="/resources/<c:out value="${item.detailPage_img}"></c:out>">
        </div>
        <div class="wrap_con">
            <c:choose>
                <c:when test="${empty item.theme_name}">
                    <div class="nothing"></div>
                </c:when>
                <c:otherwise>
                    <div class="theme_name"><c:out value="${item.theme_name}">크루즈</c:out></div>
                </c:otherwise>
            </c:choose>
<%--            <div class="theme_name"><c:out value="${item.theme_name}">크루즈</c:out></div>--%>
            <p class="detailPage_title"><c:out value="${item.detailPage_title}">로마와 동부 지중해(이탈리아/그리스/몰타) 크루즈 10일 #MSC 디비나호 #발코니 선실 #로마 벤츠투어</c:out></p>
            <c:choose>
                <c:when test="${empty item.detailPage_Detail}">
                    <span class="nothing"></span>
                </c:when>
                <c:otherwise>
                    <i class="fa-solid fa-circle-info"></i>
                    <span class="detailPage_Detail"><c:out value="${item.detailPage_Detail}">그리스, 몰타, 이탈리아의 아름다운 도시들을 기항하는 동부 지중해 크루즈 상품입니다.</c:out></span>
                </c:otherwise>
            </c:choose>
            <div id="line">
                <span class="detailPage_hashtag detailPage_hashtag_name"><c:out value="${item.detailPage_hashtag_name}">#크루즈</c:out></span>
                <span class="detailPage_hashtag detailPage_hashtag2_name"><c:out value="${item.detailPage_hashtag2_name}"></c:out></span>
                <span class="detailPage_hashtag detailPage_hashtag3_name"><c:out value="${item.detailPage_hashtag3_name}"></c:out></span>
            </div>
            <div id="line2">
                <div class="icon">
                    <i class="fa-regular fa-calendar"></i>
                    <p><span class="nights"><c:out value="${item.nights}">8</c:out></span>박 <span class="days"><c:out value="${item.days}">10</c:out></span>일</p>
                </div>
                <div class="icon">
                    <i class="fa-solid fa-plane"></i>
                    <p>국적기</p>
                </div>
                <div class="icon">
                    <i class="fa-sharp fa-solid fa-basket-shopping"></i>
                    <p>쇼핑없음</p>
                </div>
                <div class="icon">
                    <i class="fa-solid fa-people-group"></i>
                    <p>단체여행</p>
                </div>
                <div class="icon">
                    <i class="fa-solid fa-won-sign"></i>
                    <p>가이드<br>경비없음</p>
                </div>
                <div class="icon">
                    <i class="fa-solid fa-umbrella-beach"></i>
                    <p>선택관광있음</p>
                </div>
            </div>
            <div id="notice_box">
                <c:choose>
                    <c:when test="${item.readyToStart eq 0}">
                        <button class="notice">출발예정</button>
                    </c:when>
                    <c:otherwise>
                        <button class="notice readyToStart">출발예정</button>
                    </c:otherwise>
                </c:choose>
<%--                <button class="notice readyToStart">출발예정</button>--%>
                <button class="notice">항공예정</button>
                <button class="notice">일정예정</button>
                <button class="notice">호텔예정</button>
                <button class="notice">가격예정</button>
            </div>
            <p id="per">성인 1인</p>
            <p span id="price"><span class="adult_price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${item.adult_price}" /></span>원</p>
<%--            <c:out value="${item.adult_price}">6,307,200</c:out>--%>
<%--            <fmt:formatNumber type="number" maxFractionDigits="3" value="${price}" />--%>
        </div>
    </div>
</section>
<section id="main2">
    <div class="wrap" id="black_line">
        <div id="plan">
            <p>여행 주요일정</p>
            <table id="plan_detail">
                <thead>
                <tr>
                    <td>일정</td>
                    <th>
                        <span><span class="nights"><c:out value="${item.nights}">8</c:out></span>박 <span class="days"><c:out value="${item.days}">10</c:out></span>일</span>
                        <img src="/resources/<c:out value="${item.flightLogoImg}">img/flight1.png</c:out>" alt="" class="flightLogoImg">
                        <span class="flight_name"><c:out value="${item.flight_name}">대한항공</c:out></span><br>
                        <span>출발 :
                            <span class="F_startYear"><c:out value="${item.f_startYear}">2023</c:out></span>.<span class="F_startMonth"><c:out value="${item.f_startMonth}">8</c:out></span>.<span class="F_startDate"><c:out value="${item.f_startDate}">24</c:out></span>(<span class="F_startWhatDay"><c:out value="${item.f_startWhatDay}">목</c:out></span>)
                            <span class="F_startHour"><c:out value="${item.f_startHour}">14</c:out></span>:<span class="F_startMinute"><c:out value="${item.f_startMinute}">15</c:out></span>
                                </span>
                        <i class="fa-solid fa-arrow-right"></i>
                        <span>
                            <span class="F_arriveYear"><c:out value="${item.f_arriveYear}">2023</c:out></span>.<span class="F_arriveMonth"><c:out value="${item.f_arriveMonth}">8</c:out></span>.<span class="F_arriveDate"><c:out value="${item.f_arriveDate}">24</c:out></span>(<span class="F_arriveWhatDay"><c:out value="${item.f_arriveWhatDay}">목</c:out></span>)
                            <span class="F_arriveHour"><c:out value="${item.f_arriveHour}">19</c:out></span>:<span class="F_arriveMinute"><c:out value="${item.f_arriveMinute}">10</c:out></span>
                                </span>
                        <span class="F_flightCode"><c:out value="${item.f_flightCode}">KE0931</c:out></span>
                        <span>총
                            <span class="F_flightHour"><c:out value="${item.f_flightHour}">12</c:out></span>시간
                            <span class="F_flightMinute"><c:out value="${item.f_flightMinute}">55</c:out></span>분 소요</span><br>
                        <span>도착 :
                            <span class="L_startYear"><c:out value="${item.l_startYear}">2023</c:out></span>.<span class="L_startMonth"><c:out value="${item.l_startMonth}">9</c:out></span>.<span class="L_startDate"><c:out value="${item.l_startDate}">1</c:out></span>(<span class="L_startWhatDay"><c:out value="${item.l_startWhatDay}">금</c:out></span>)
                            <span class="L_startHour"><c:out value="${item.l_startHour}">21</c:out></span>:<span class="L_startMinute"><c:out value="${item.l_startMinute}">25</c:out></span>
                                </span>
                        <i class="fa-solid fa-arrow-right"></i>
                        <span>


                            <span class="L_arriveYear"><c:out value="${item.l_arriveYear}">2023</c:out></span>.<span class="L_arriveMonth"><c:out value="${item.l_arriveMonth}">9</c:out></span>.<span class="L_arriveDate"><c:out value="${item.l_arriveDate}">2</c:out></span>(<span class="L_arriveWhatDay"><c:out value="${item.l_arriveWhatDay}">토</c:out></span>)
                            <span class="L_arriveHour"><c:out value="${item.l_arriveHour}">15</c:out></span>:<span class="L_arriveMinute"><c:out value="${item.l_arriveMinute}">50</c:out></span>
                                </span>
                        <span class="L_flightCode"><c:out value="${item.l_flightCode}">KE0932</c:out></span>
                        <span>총
                            <span class="L_flgihtHour"><c:out value="${item.l_flightHour}">10</c:out></span>시간
                            <span class="L_flightMinute"><c:out value="${item.l_flightMinute}">25</c:out></span>분 소요</span>
                    </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th>여행도시</th>
                    <th>
                        <span class="layover"><c:out value="${item.layover}">인천-로마(1)-시라쿠사-발레타-산토리니-미코노스-로마-기내(1)-인천</c:out></span>
                    </th>
                </tr>
                <tr>
                    <th>예약현황</th>
                    <th>
                        <span>예약 : <span class="reservedSeatNumber"><c:out value="${item.reservedSeatNumber}"></c:out></span>명</span>
                        <span>좌석 : <span class="seat_number"><c:out value="${item.seat_number}">10</c:out></span>석 (최소출발 : 성인 <span class="min_passenger"><c:out value="${item.min_passenger}">10</c:out></span>명)</span>
                    </th>
                </tr>
                </tbody>
            </table>

            <div id="p_price">
                <p>상품가격</p>
                <table id="table">
                    <thead>
                    <tr>
                        <td>구분</td>
                        <th>
                            <p>성인</p>
                            <p>만 12세 이상</p>
                        </th>
                        <th>
                            <p>아동</p>
                            <p>만 12세 미만</p>
                        </th>
                        <th>
                            <p>유아</p>
                            <p>만 2세 미만</p>
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th>기본상품</th>
                        <th>
                            <p><span class="adult_price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${item.adult_price}" /></span>원</p>
                            <c:choose>
                                <c:when test="${item.fuel_surcharge eq 0}">
                                    <p class="nothing"></p>
                                </c:when>
                                <c:otherwise>
                                    <p>유류할증료 <span class="fuel_surcharge"><fmt:formatNumber type="number" maxFractionDigits="3" value="${item.fuel_surcharge}" /></span>원 포함</p>
                                </c:otherwise>
                            </c:choose>
                        </th>
                        <th>
                            <p><span class="adult_price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${item.child_price}" /></span>원</p>
                            <c:choose>
                                <c:when test="${item.fuel_surcharge eq 0}">
                                    <p class="nothing"></p>
                                </c:when>
                                <c:otherwise>
                                    <p>유류할증료 <span class="fuel_surcharge"><fmt:formatNumber type="number" maxFractionDigits="3" value="${item.fuel_surcharge}" /></span>원 포함</p>
                                </c:otherwise>
                            </c:choose>
                        </th>
                        <th>
                            <p><span class="adult_price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${item.toddler_price}" /></span>원</p>
                        </th>
                    </tr>
                    </tbody>
                </table>
                <p class="gray">- 유류할증료 및 제세공과금은 유가와 환율에 따라 변동될 수 있습니다.</p>
                <p class="gray">- 아동, 유아요금은 성인 2인과 같은 방 사용조건이며, 미충족시 아동추가 요금이 발생합니다.</p>
                <p class="gray">- 1인 객실 사용시 추가요금 발생됩니다.</p>
                <p class="gray" id="indent">1인 객실 사용료 : 문의</p>
                <p class="gray">- 여행 기간 중 만 2세가 되는 경우 요금 별도 문의</p>
                <p class="gray">- 본 상품은 예약을 넣으신 시점 이후로 항공 및 호텔의 예약이 진행되므로 상품가 차액이 발생될 수 있습니다.</p>
            </div>
        </div>
        <div id="p_num">
            <p>인원선택</p>
            <ul id="count">
                <li>
                    <span>
                        <p>성인</p>
                        <p><span class="adult_price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${item.adult_price}" /></span>원</p>
                    </span>
                    <div class="count_box">
                        <div class="count-wrap _count">
                            <button type="button" class="minus adult">-</button>
                            <input type="text" id="inp1" value="1" />
                            <button type="button" class="plus adult">+</button>
                        </div>
                    </div>
                </li>
                <li>
                    <span>
                        <p>아동</p>
                        <p><span class="child_price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${item.child_price}" /></span>원</p>
                    </span>
                    <div class="count_box">
                        <div class="count-wrap _count">
                            <button type="button" class="minus child">-</button>
                            <input type="text" id="inp2" value="0" />
                            <button type="button" class="plus child">+</button>
                        </div>
                    </div>
                </li>
                <li>
                    <span>
                        <p>유아</p>
                        <p><span class="toddler_price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${item.toddler_price}" /></span>원</p>
                    </span>
                    <div class="count_box">
                        <div class="count-wrap _count">
                            <button type="button" class="minus toddler">-</button>
                            <input type="text" id="inp3" value="0" />
                            <button type="button" class="plus toddler">+</button>
                        </div>
                    </div>
                </li>
            </ul>
            <span>총 금액</span>
            <span><span id="total_price"></span>원</span>
            <ul id="pay_button">
                <li>
                    <a href="/purchase?seq=<c:out value="${item.seq}"/>">
                        <button>예약하기</button>
                    </a>
                </li>
                <li>
                    <button class="like">
                        <i class="fa-regular fa-heart"></i>
                        <i class="fa-solid fa-heart"></i>
                    </button>
                </li>
            </ul>
        </div>
    </div>
</section>



<!-- 푸터 -->
<%@include file="../include/includeHanatourFooter.jsp"%>

<!-- 위로 -->
<aside>
    <a href="#">
        <i class="fa-solid fa-caret-up"></i>
        <p>top</p>
    </a>
</aside>
<%--<script>--%>
<%--    $('._count :button').on({--%>
<%--        'click' : function(e){--%>
<%--            e.preventDefault();--%>
<%--            var $count = $(this).parent('._count').find('.inp');--%>
<%--            var now = parseInt($count.val());--%>
<%--            var min = 0;--%>
<%--            var max = 999;--%>
<%--            var num = now;--%>
<%--            var total_price =$('#total_price');--%>
<%--            if($(this).hasClass('minus')){--%>
<%--                var type = 'm';--%>
<%--            }else{--%>
<%--                var type = 'p';--%>
<%--            }--%>
<%--            if(type=='m'){--%>
<%--                if(now>min){--%>
<%--                    num = now - 1;--%>
<%--                }--%>
<%--            }else{--%>
<%--                if(now<max){--%>
<%--                    num = now + 1;--%>
<%--                }--%>
<%--            }--%>
<%--            if(num != now){--%>
<%--                $count.val(num);--%>
<%--            }--%>

<%--            total_price.text(${item.adult_price}*num)--%>
<%--            console.log(total_price.text())--%>
<%--        }--%>
<%--    });--%>







<%--    var totalAmount = <c:out value="${item.adult_price}"/>;--%>
<%--    &lt;%&ndash;var totalAmount = <fmt:formatNumber type="number" maxFractionDigits="3" value="${item.adult_price}" />&ndash;%&gt;--%>

<%--    $(document).ready(function() {--%>
<%--        //화면 뜨면서 바로 실행되는 스크립트 영역--%>
<%--        // 총 금액 값을 span 요소에 삽입--%>
<%--        // alert("dfdf");--%>
<%--        $('#total_price').text(totalAmount);--%>
<%--    });--%>
<%--</script>--%>






<script>
    $(document).ready(function() {
        // 초기 총 가격 표시
        updateCounts();
    });

    // 초기 수량 값 설정
    var adultCount = 1;
    var childCount = 0;
    var toddlerCount = 0;

    // 가격 정보
    var adultPrice = ${item.adult_price};
    var childPrice = ${item.child_price};
    var toddlerPrice = ${item.toddler_price};

    // 총 가격 요소 선택
    var total_price = $('#total_price');

    // 수량 업데이트 함수
    function updateCounts() {
        var totalPrice = adultPrice * adultCount + childPrice * childCount + toddlerPrice * toddlerCount;
        total_price.text(totalPrice.toLocaleString()); // 천 단위 쉼표 추가
    }

    // "+", "-" 버튼 클릭 이벤트 리스너
    $('._count :button').on('click', function(e) {
        e.preventDefault();

        var count1 = $(this).parent('._count').find('#inp1');
        var count2 = $(this).parent('._count').find('#inp2');
        var count3 = $(this).parent('._count').find('#inp3');
        var now1 = parseInt(count1.val());
        var now2 = parseInt(count2.val());
        var now3 = parseInt(count3.val());

        var type = $(this).hasClass('minus') ? 'm' : 'p';
        var min_a = 1;
        var min = 0;
        var max = 10;

        if (type == 'm') {
            if (now1 > min_a) {
                now1--;
                adultCount = now1; // 성인 수량 업데이트
            }
            if (now2 > min) {
                now2--;
                childCount = now2; // 아동 수량 업데이트
            }
            if (now3 > min) {
                now3--;
                toddlerCount = now3; // 유아 수량 업데이트
            }
        } else {
            if (now1 < max) {
                now1++;
                adultCount = now1; // 성인 수량 업데이트
            }
            if (now2 < max) {
                now2++;
                childCount = now2; // 아동 수량 업데이트
            }
            if (now3 < max) {
                now3++;
                toddlerCount = now3; // 유아 수량 업데이트
            }
        }

        count1.val(now1);
        count2.val(now2);
        count3.val(now3);

        // 수량 변경에 따른 총 가격 업데이트
        updateCounts();
    });


</script>




</body>
</html>