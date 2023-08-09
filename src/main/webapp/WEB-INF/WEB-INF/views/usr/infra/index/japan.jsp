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
    <link rel="stylesheet" href="/resources/css/japan.css">
    <script src="/resources/js/jquery-3.6.4.min.js"></script>
    <script src="/resources/js/japan.js"></script>
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
<img src="/resources/img/japan1.jpeg" alt="" class="backgroundImage">
<img src="/resources/img/japan2.jpeg" alt="" class="backgroundImage">
<img src="/resources/img/japan3.jpeg" alt="" class="backgroundImage">
<section id="wrap1">
    <!-- 탭 메뉴 -->
    <ul class="tab_menu1">
        <!-- <li><a href="#tab1" class="tab_active">tab1</a></li> -->
        <li><a href="#tab1-1">후지산</a></li>
        <li><a href="#tab1-2">북알프스</a></li>
        <li><a href="#tab1-3">오제 습지</a></li>
        <li><a href="#tab1-4">규슈 올레</a></li>
    </ul>
    <!-- 탭 콘텐츠 -->
    <div class="tab_container1">
        <div id="tab1-1" class="tab_content1">
            <div class="tab_c_arti1">
                <img src="/resources/img/japan001.jpeg" alt="">
            </div>
        </div>
        <div id="tab1-2" class="tab_content1">
            <div class="tab_c_arti1">
                <img src="/resources/img/japan002.jpeg" alt="">
            </div>
        </div>
        <div id="tab1-3" class="tab_content1">
            <div class="tab_c_arti1">
                <img src="/resources/img/japan003.jpeg" alt="">
            </div>
        </div>
        <div id="tab1-4" class="tab_content1">
            <div class="tab_c_arti1">
                <img src="/resources/img/japan004.jpeg" alt="">
            </div>
        </div>
    </div>
</section>
<img src="/resources/img/japan11.jpeg" alt="" class="backgroundImage">
<section class="con">
    <div class="wrap">
        <div class="cruise_100">
            <ul>
                <c:forEach items="${list16}" var="japan" varStatus="status">
                <li class="cruise_25_con">
                    <a href="/middle?seq=<c:out value="${japan.seq}"/>&same=<c:out value="${japan.same}"/>">
                        <img src="/resources/<c:out value="${japan.detailPage_img}">img/cruise1.jpeg</c:out>" alt="">
                    </a>
                    <div class="cruise_25_content">
                        <p><c:out value="${japan.middlePageTitle}">로마와 동부 지중해 크루즈 10일 #발코니 선실</c:out></p>
                        <p><c:out value="${japan.detailPage_Detail}">이탈리아, 몰타, 그리스</c:out></p>
                        <p><fmt:formatNumber type="number" maxFractionDigits="3" value="${japan.adult_price}" />원~</span></p>
                    </div>
                </li>
                </c:forEach>
<%--                <li class="cruise_25_con" onclick="window.open('middle.html')">--%>
<%--                    <img src="/resources/img/japan23.jpeg" alt="">--%>
<%--                    <div class="cruise_25_content">--%>
<%--                        <p>후지산 둘레길 트레킹 4일 #최고 코스 엄서 #모토스고</p>--%>
<%--                        <p>#일본 트레킹 전문 인솔자 동행</p>--%>
<%--                        <p>#후지산 드림워크 중 최고의 구간만 엄선</p>--%>
<%--                        <p>#대욕장과 노천탕 보유 숙박</p>--%>
<%--                        <p></p>--%>
<%--                        <p></p>--%>
<%--                        <p>1,465,200<span>원~</span></p>--%>
<%--                    </div>--%>
<%--                </li>--%>
<%--                <li class="cruise_25_con" onclick="window.open('middle.html')">--%>
<%--                    <img src="/resources/img/japan25.jpeg" alt="">--%>
<%--                    <div class="cruise_25_content">--%>
<%--                        <p>구루마야마&뉴카사야마 하이킹 4일 #일본 100대 명산</p>--%>
<%--                        <p>#일본 100명산, 구루마야마 (1,925m)</p>--%>
<%--                        <p>#후지산 전망, 뉴사카야마 (1,955m)</p>--%>
<%--                        <p>초보자도 즐길 수 있는 코스</p>--%>
<%--                        <p></p>--%>
<%--                        <p></p>--%>
<%--                        <p>1,544,400<span>원~</span></p>--%>
<%--                    </div>--%>
<%--                </li>--%>
<%--                <li class="cruise_25_con" onclick="window.open('middle.html')">--%>
<%--                    <img src="/resources/img/japan26.jpeg" alt="">--%>
<%--                    <div class="cruise_25_content">--%>
<%--                        <p>오제습지 트레킹 4일 #일본 최대 고산습지 #쥬젠지 호수</p>--%>
<%--                        <p>#오제 국립공원 내 산장 1박</p>--%>
<%--                        <p>#닛코 국립공원 쥬젠지 호수, 게곤 폭포</p>--%>
<%--                        <p>#산행 전후 온천 호텔 숙박</p>--%>
<%--                        <p></p>--%>
<%--                        <p></p>--%>
<%--                        <p>1,574,400<span>원~</span></p>--%>
<%--                    </div>--%>
<%--                </li>--%>
<%--                <li class="cruise_25_con" onclick="window.open('middle.html')">--%>
<%--                    <img src="/resources/img/japan27.jpeg" alt="">--%>
<%--                    <div class="cruise_25_content">--%>
<%--                        <p>규슈 올레 하이킹 4일 #우레시노 올레 #가라츠 올레</p>--%>
<%--                        <p>#우레시노 온천 호텔 숙박</p>--%>
<%--                        <p>#일본 트레킹 전문 인솔자 동행</p>--%>
<%--                        <p>#여유있게 즐기는 호텔 석식</p>--%>
<%--                        <p></p>--%>
<%--                        <p></p>--%>
<%--                        <p>1,364,000<span>원~</span></p>--%>
<%--                    </div>--%>
<%--                </li>--%>
            </ul>
        </div>
    </div>
</section>


<!-- 푸터 -->
<%@include file="../include/includeHanatourFooter.jsp"%>
</body>
</html>