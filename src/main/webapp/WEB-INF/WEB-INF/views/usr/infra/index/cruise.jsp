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
    <link rel="stylesheet" href="/resources/css/cruise.css">
    <script src="/resources/js/jquery-3.6.4.min.js"></script>
    <script src="/resources/js/cruise.js"></script>
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
<img src="/resources/img/pc_001.jpg" alt="" class="backgroundImage">
<img src="/resources/img/pc_002.jpg" alt="" class="backgroundImage">
<img src="/resources/img/pc_004.jpg" alt="" class="backgroundImage">
<section class="con">
    <div class="wrap">
        <ul class="cruise_100">
            <c:forEach items="${list15}" var="cruise" varStatus="status">
            <li class="cruise_25_con">
                <a href="/middle?seq=<c:out value="${cruise.seq}"/>&same=<c:out value="${cruise.same}"/>">
                    <img src="/resources/<c:out value="${cruise.detailPage_img}">img/cruise1.jpeg</c:out>" alt="">
                </a>
                <div class="cruise_25_content">
                    <p><c:out value="${cruise.middlePageTitle}">로마와 동부 지중해 크루즈 10일 #발코니 선실</c:out></p>
                    <p><c:out value="${cruise.detailPage_Detail}">이탈리아, 몰타, 그리스</c:out></p>
                    <p><fmt:formatNumber type="number" maxFractionDigits="3" value="${cruise.adult_price}" />원~</span></p>
                </div>
            </li>
            </c:forEach>
<%--            <li class="cruise_25_con" onclick="window.open('middle.html')">--%>
<%--                <img src="/resources/img/cruise2.jpeg" alt="">--%>
<%--                <div class="cruise_25_content">--%>
<%--                    <p>로마와 서부 지중해 크루즈 10일 #발코니 선실</p>--%>
<%--                    <p>이탈리아, 프랑스, 스페인</p>--%>
<%--                    <p>#10명 이상 모객시 크루즈 인솔자 동행</p>--%>
<%--                    <p>#아름다운 중세마을 오르비에토 관광</p>--%>
<%--                    <p>#로마 벤츠 밴 투어</p>--%>
<%--                    <p></p>--%>
<%--                    <p>6,307,200<span>원~</span></p>--%>
<%--                </div>--%>
<%--            </li>--%>
<%--            <li class="cruise_25_con" onclick="window.open('middle.html')">--%>
<%--                <img src="/resources/img/cruise3.jpeg" alt="">--%>
<%--                <div class="cruise_25_content">--%>
<%--                    <p>바르셀로나와 서부 지중해 크루즈 11일 #발코니 선실</p>--%>
<%--                    <p>#스페인, 프랑스, 이탈리아, 몰타</p>--%>
<%--                    <p>10명 이상 모객시 크루즈 인솔자 동행</p>--%>
<%--                    <p>#가우디의 도시 바르셀로나 2박</p>--%>
<%--                    <p>중세 도시 베살루 관광</p>--%>
<%--                    <p>6,487,200<span>원~</span></p>--%>
<%--                </div>--%>
<%--            </li>--%>
<%--            <li class="cruise_25_con" onclick="window.open('middle.html')">--%>
<%--                <img src="/resources/img/cruise4.jpeg" alt="">--%>
<%--                <div class="cruise_25_content">--%>
<%--                    <p>파리와 서부 지중해 크루즈 11일 #발코니 선실</p>--%>
<%--                    <p>#스페인, 튀니지, 이탈리아, 프랑스</p>--%>
<%--                    <p>10명 이상 모객시 크루즈 인솔자 동행</p>--%>
<%--                    <p>#낭만의 도시 파리 2박</p>--%>
<%--                    <p>#시칠리아 문화의 중심 '팔레르모' 기항</p>--%>
<%--                    <p>7,907,200<span>원~</span></p>--%>
<%--                </div>--%>
<%--            </li>--%>
<%--            <li class="cruise_25_con" onclick="window.open('middle.html')">--%>
<%--                <img src="/resources/img/cruise5.jpeg" alt="">--%>
<%--                <div class="cruise_25_content">--%>
<%--                    <p>노르망디와 서유럽 크루즈 10일 #발코니 선실 #루앙&옹플뢰르</p>--%>
<%--                    <p>#프랑스, 영국, 독일, 벨기에, 네덜란드</p>--%>
<%--                    <p>#10명 이상 모객시 크루즈 인솔자 동행</p>--%>
<%--                    <p>#프랑스 예술의 도시 '루앙' 1박</p>--%>
<%--                    <p>#운하와 연결된 벨기에 '쩨브뤼헤' 기항</p>--%>
<%--                    <p></p>--%>
<%--                    <p>6,147,200<span>원~</span></p>--%>
<%--                </div>--%>
<%--            </li>--%>
<%--            <li class="cruise_25_con" onclick="window.open('middle.html')">--%>
<%--                <img src="/resources/img/cruise6.jpeg" alt="">--%>
<%--                <div class="cruise_25_content">--%>
<%--                    <p>로마와 동/서부 지중해 14일 #발코니 선실</p>--%>
<%--                    <p>#이탈리아, 크로아티아, 알바니아, 그리스</p>--%>
<%--                    <p>#프리미엄 선사 홀랜드 아메리카</p>--%>
<%--                    <p>#10명 이상 모객시 크루즈 인솔자 동행</p>--%>
<%--                    <p>#로마 벤츠투어 포함</p>--%>
<%--                    <p></p>--%>
<%--                    <p>7,757,200<span>원~</span></p>--%>
<%--                </div>--%>
<%--            </li>--%>
<%--            <li class="cruise_25_con" onclick="window.open('middle.html')">--%>
<%--                <img src="/resources/img/cruise7.jpeg" alt="">--%>
<%--                <div class="cruise_25_content">--%>
<%--                    <p>바르셀로나와 서부 지중해 크루즈 10일 #발코니 선실</p>--%>
<%--                    <p>#스페인, 이탈리아, 프랑스</p>--%>
<%--                    <p>#바르셀로나 1박</p>--%>
<%--                    <p>#가우디 투어, 피카소 미술관 투어</p>--%>
<%--                    <p>#10명 이상 모객시 크루즈 인솔자 동행</p>--%>
<%--                    <p></p>--%>
<%--                    <p>5,107,200<span>원~</span></p>--%>
<%--                </div>--%>
<%--            </li>--%>
        </ul>
    </div>
</section>


<!-- 푸터 -->
<%@include file="../include/includeHanatourFooter.jsp"%>
</body>
</html>