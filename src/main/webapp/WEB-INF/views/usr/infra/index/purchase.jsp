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
    <link rel="stylesheet" href="/resources/css/purchase.css">
    <script src="/resources/js/jquery-3.6.4.min.js"></script>
    <script src="/resources/js/purchase.js"></script>
    <script src="https://kit.fontawesome.com/f0e73cfa04.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&family=Roboto:wght@300;400;500;900&display=swap" rel="stylesheet">

</head>
<body>
<!-- 헤더 -->
<%@include file="../include/includeHanatourHeader.jsp"%>

<!-- 내용 -->
<section>
    <div class="section_wrap">
        <div class="reservation">
            <p>예약하기</p>
            <p class="detailPage_title"><c:out value="${item.detailPage_title}">[출발확정] 다낭 4일 #시내 4성호텔 #바나힐 테마파크 #호이안 #전신마사지 #캔들라이트 디너</c:out></p>
            <div class="num">
                <span>인원</span>
                <ul>
                    <li>성인 : <span class="adult_number">1</span></li>
                    <li>아동 : <span class="child_number">0</span></li>
                    <li>유아 : <span class="toddler_number">0</span></li>
                </ul>
            </div>
            <div class="the_date">
                <div class="date_info">
                    <div class="start_date">
                        <p>출발일</p>
                        <p><span class="F_startYear"><c:out value="${item.f_startYear}">2023</c:out></span>.<span class="f_startMonth"><c:out value="${item.f_startMonth}">7</c:out></span>.<span class="F_startDate"><c:out value="${item.f_startDate}">1</c:out></span>(<span class="F_startWhatDay"><c:out value="${item.f_startWhatDay}">토</c:out></span>)</p>
                    </div>
                    <div class="dayNnight">
                        <p><span class="nights"><c:out value="${item.nights}">3</c:out></span>박<span class="days"><c:out value="${item.days}">4</c:out></span>일</p>
                    </div>
                    <div class="arrive_date">
                        <p>도착일</p>
                        <p><span class="L_arriveYear"><c:out value="${item.l_arriveYear}"></c:out></span>.<span class="L_arriveMonth"><c:out value="${item.l_arriveMonth}">7</c:out></span>.<span class="L_arriveDate"><c:out value="${item.l_arriveDate}">4</c:out></span>(<span class="L_arriveWhatDay"><c:out value="${item.l_arriveWhatDay}">화</c:out></span>)</p>
                    </div>
                </div>
                <div class="flight_info_wrap">
                    <p><span>항공정보</span> <span class="flight_name"><c:out value="${item.flight_name}">티웨이항공</c:out></span></p>
                    <p><span>항공 출발</span> <span><span class="F_startYear"><c:out value="${item.f_startYear}">2023</c:out></span>/<span class="F_startMonth"><c:out value="${item.f_startMonth}">07</c:out></span>/<span class="F_startDate"><c:out value="${item.f_startDate}">01</c:out></span>(<span class="F_startWhatDay"><c:out value="${item.f_startWhatDay}">토</c:out></span>)<span class="F_startHour"><c:out value="${item.f_startHour}">07</c:out></span>:<span class="F_startMinute"><c:out value="${item.f_startMinute}">40</c:out></span></span></p>
                    <p><span>항공 도착</span> <span><span class="L_arriveYear"><c:out value="${item.l_arriveYear}">2023</c:out></span>/<span class="L_arriveMonth"><c:out value="${item.l_arriveMonth}">07</c:out></span>/<span class="L_arriveDate"><c:out value="${item.l_arriveDate}">04</c:out></span>(<span class="L_arriveWhatDay"><c:out value="${item.l_arriveWhatDay}">화</c:out></span>)<span class="L_arriveHour"><c:out value="${item.l_arriveHour}">17</c:out></span>:<span class="L_arriveMinute"><c:out value="${item.l_arriveMinute}">55</c:out></span></span></p>
                </div>
                <div class="left_circle"></div>
                <div class="right_circle"></div>
                <div class="erase_left"></div>
                <div class="erase_right"></div>
            </div>
        </div>
    </div>

    <div class="section_wrap">
        <div class="customer_info_wrap">
            <p>예약자 정보</p>
            <p><span>이름/성별</span> <span><span><c:out value="${item2.name}">김도연</c:out></span><span>/</span><c:out value="${item2.gender}">여</c:out></span></p>
            <p><span>생년월일</span> <span><span><c:out value="${item2.year}">1996</c:out></span>/<span><c:out value="${item2.month}">5</c:out></span>/<span><c:out value="${item2.date}">21</c:out></span></span></p>
            <p><span>휴대폰번호</span> <span><c:out value="${item2.phoneNumber}">01088666237</c:out></span></p>
        </div>
    </div>

    <div class="section_wrap" id="purchase_info">
        <div class="purchase_info_wrap">
            <p><span>결제상세 내역</span></p>
            <p><span>총 상품 금액</span> <span><span class="total_price">832,800</span>원</span></p>
            <p><span><i class="fa-solid fa-caret-down"></i>상품 금액</span> <span><span class="total_price">832,800</span>원</span></p>
        </div>

        <p><span>최종 결제금액</span> <span><span class="total_price">832,800</span>원</span></p>
        <p>유류할증료 & 제세공과금 포함</p>
        <button onclick="location.href='final_decision'">
            <p>전액 결제</p>
            <p><span class="total_price">832,800</span>원</p>
        </button>
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
</body>
</html>