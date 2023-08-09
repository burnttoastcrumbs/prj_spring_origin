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
    <link rel="stylesheet" href="/resources/css/mongolia.css">
    <script src="/resources/js/jquery-3.6.4.min.js"></script>
    <script src="/resources/js/mongolia.js"></script>
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
<img src="/resources/img/mong1.jpeg" alt="" class="backgroundImage">
<img src="/resources/img/mong2.jpeg" alt="" class="backgroundImage">
<img src="/resources/img/mong3.jpeg" alt="" class="backgroundImage">
<img src="/resources/img/mong4.jpeg" alt="" class="backgroundImage">
<img src="/resources/img/mong5.jpeg" alt="" class="backgroundImage">
<section class="con">
    <div class="wrap">
        <div class="cruise_25_2">
            <ul>
                <c:forEach items="${list17}" var="mongolia" varStatus="status">
                <li class="cruise_25_con">
                    <a href="/middle?seq=<c:out value="${mongolia.seq}"/>&same=<c:out value="${mongolia.same}"/>">
                        <img src="/resources/<c:out value="${mongolia.detailPage_img}">img/cruise1.jpeg</c:out>" alt="">
                    </a>
                    <div class="cruise_25_content">
                        <p><c:out value="${mongolia.middlePageTitle}">로마와 동부 지중해 크루즈 10일 #발코니 선실</c:out></p>
                        <p><c:out value="${mongolia.detailPage_Detail}">이탈리아, 몰타, 그리스</c:out></p>
                        <p><fmt:formatNumber type="number" maxFractionDigits="3" value="${mongolia.adult_price}" />원~</span></p>
                    </div>
                </li>
                </c:forEach>
<%--                <li class="cruise_25_con" onclick="window.open('middle.html')">--%>
<%--                    <img src="/resources/img/mong23.jpeg" alt="">--%>
<%--                    <div class="cruise_25_content">--%>
<%--                        <p>몽골/초원사막 5일 #초원승마 #낙타체험</p>--%>
<%--                        <p>#5성호텔 #게르숙박 (4인 1실)</p>--%>
<%--                        <p>#엘승타사르하이의 미니 사막 체험</p>--%>
<%--                        <p>#테렐지 초원에서 별 감상</p>--%>
<%--                        <p></p>--%>
<%--                        <p></p>--%>
<%--                        <p>1,299,900<span>원~</span></p>--%>
<%--                    </div>--%>
<%--                </li>--%>
<%--                <li class="cruise_25_con" onclick="window.open('middle.html')">--%>
<%--                    <img src="/resources/img/mong24.jpeg" alt="">--%>
<%--                    <div class="cruise_25_content">--%>
<%--                        <p>몽골/테렐지 초원 4일 #베스트셀러 #대초원승마</p>--%>
<%--                        <p>#노마딕전통체험</p>--%>
<%--                        <p>#테렐지 민속공연</p>--%>
<%--                        <p>#5성호텔 #현대식게르</p>--%>
<%--                        <p></p>--%>
<%--                        <p></p>--%>
<%--                        <p>1,349,000<span>원~</span></p>--%>
<%--                    </div>--%>
<%--                </li>--%>
<%--                <li class="cruise_25_con" onclick="window.open('middle.html')">--%>
<%--                    <img src="/resources/img/mong25.png" alt="">--%>
<%--                    <div class="cruise_25_content">--%>
<%--                        <p>[MZ모여라] 몽골/초원사막 5일 #푸르공타고 #몽골액티비티</p>--%>
<%--                        <p>#초원에서 #승마타기</p>--%>
<%--                        <p>#사막에서 #낙타타기</p>--%>
<%--                        <p>#게르숙박 #별감상</p>--%>
<%--                        <p></p>--%>
<%--                        <p></p>--%>
<%--                        <p>1,829,000<span>원~</span></p>--%>
<%--                    </div>--%>
<%--                </li>--%>
<%--                <li class="cruise_25_con" onclick="window.open('middle.html')">--%>
<%--                    <img src="/resources/img/mong26.jpeg" alt="">--%>
<%--                    <div class="cruise_25_content">--%>
<%--                        <p>몽골/쳉헤르 온천 5일 #하르호름 #엘승타사르하이</p>--%>
<%--                        <p>#노천온천 #전통게르숙박(4인1실)</p>--%>
<%--                        <p>#승마체험</p>--%>
<%--                        <p>#별감상</p>--%>
<%--                        <p></p>--%>
<%--                        <p></p>--%>
<%--                        <p>1,849,000<span>원~</span></p>--%>
<%--                    </div>--%>
<%--                </li>--%>
<%--                <li class="cruise_25_con" onclick="window.open('middle.html')">--%>
<%--                    <img src="/resources/img/mong29.jpeg" alt="">--%>
<%--                    <div class="cruise_25_content">--%>
<%--                        <p>몽골/초원사막 5일 #호텔형신식게르(2인1실) #전통게르(4인1실)</p>--%>
<%--                        <p>#초원승마 #낙타체험</p>--%>
<%--                        <p>#노마딕쇼 #전통공연</p>--%>
<%--                        <p>#별감상 #전신마사지</p>--%>
<%--                        <p></p>--%>
<%--                        <p></p>--%>
<%--                        <p>2,699,000<span>원~</span></p>--%>
<%--                </li>--%>
<%--                <li class="cruise_25_con" onclick="window.open('middle.html')">--%>
<%--                    <img src="/resources/img/mong30.jpeg" alt="">--%>
<%--                    <div class="cruise_25_content">--%>
<%--                        <p>몽골/테렐지/아르부르드 사막 5일 #실속여행</p>--%>
<%--                        <p>#초원에서 승마체험</p>--%>
<%--                        <p>#사막에서 낙타체험</p>--%>
<%--                        <p>#현대식 게르</p>--%>
<%--                        <p></p>--%>
<%--                        <p></p>--%>
<%--                        <p>1,299,,000<span>원~</span></p>--%>
<%--                </li>--%>
<%--                <li class="cruise_25_con" onclick="window.open('middle.html')">--%>
<%--                    <img src="/resources/img/mong31.jpeg" alt="">--%>
<%--                    <div class="cruise_25_content">--%>
<%--                        <p>몽골/남고비 6일 #사막투어 #4명이상출발확정</p>--%>
<%--                        <p>#홍고린엘스 #차강소브라</p>--%>
<%--                        <p>#욜링암 #비얀작 #낙타체험</p>--%>
<%--                        <p>#은하수헌팅 #캠프파이어</p>--%>
<%--                        <p></p>--%>
<%--                        <p></p>--%>
<%--                        <p>2,099,000<span>원~</span></p>--%>
<%--                </li>--%>
                <!-- <li class="cruise_25_con" onclick="window.open('middle.html')">
                    <img src="img/mong32.jpeg" alt="">
                    <div class="cruise_25_content">
                        <p>몽골/홉스굴호수 6일 #차량이동</p>
                        <p>#나의 버킷리스트</p>
                        <p>#호수승마 #보트체험</p>
                        <p>#별천지하늘 #캠프파이어</p>
                        <p></p>
                        <p></p>
                    <p>1,749,000<span>원~</span></p>
                </li> -->
            </ul>
        </div>
    </div>
</section>


<!-- 푸터 -->
<%@include file="../include/includeHanatourFooter.jsp"%>
</body>
</html>