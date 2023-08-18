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
  <link rel="stylesheet" href="/resources/css/nation.css">
  <script src="/resources/js/jquery-3.6.4.min.js"></script>
  <script src="/resources/js/nation.js"></script>
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
<section class="section">
  <div class="wrap">
    <p class="country_name">
      <c:out value="${country_name.country_name}">이탈리아</c:out>
    </p>
    <div id="select_box">

    </div>
    <div id="content_box">
      <div id="sortBy_box">
        <ul id="sortBy">
          <!-- <li><a href="#">추천순</a></li>
          <li><a href="#">구매순</a></li>
          <li><a href="#">평점순</a></li> -->
          <li><a href="#">높은 가격순</a></li>
          <li><a href="#">낮은 가격순</a></li>
        </ul>
      </div>
      <ul>
        <c:forEach items="${country}" var="country" varStatus="status">
          <li class="content">
            <div class="content_wrap">
            <div class="info_wrap">
              <img src="/resources/<c:out value="${country.detailPage_img}">img/detail_img1.jpg</c:out>" alt="">
              <div id="info">
                <c:choose>
                  <c:when test="${empty country.theme_name}">
                    <div class="nothing"></div>
                  </c:when>
                  <c:otherwise>
                    <div class="theme_name"><c:out value="${country.theme_name}">크루즈</c:out></div>
                  </c:otherwise>
                </c:choose>
                <p class="detailPage_title"><c:out value="${country.detailPage_title}">로마와 동부 지중해 크루즈(이탈리아/몰타/그리스) 10일 #발코니 선실</c:out></p>
                <p class="detailPage_Detail"><c:out value="${country.detailPage_Detail}">이탈리아, 그리스, 몰타 등 아름다운 동부 지중해의 도시들을 크루즈로 여행할 수 있는 동부 지중해 크루즈 패키지 상품입니다. #발코니 선실 이용 #로마 관광</c:out></p>
                <p>
                  <i class="fa-solid fa-location-dot"></i>
                  <span class="layover"><c:out value="${country.layover}">로마, 미코노스, 산토리니, 시라쿠사, 발레타</c:out></span>
                </p>
                <p>
                  <i class="fa-solid fa-calendar-days"></i>
                  여행기간 <span class="nights"><c:out value="${country.nights}">1</c:out></span>박 <span class="days"><c:out value="${country.days}">2</c:out></span>일
                </p>

                <p>
                  seq : <c:out value="${country.seq}"></c:out>
                </p>
                <p>
                  same : <c:out value="${country.same}"></c:out>
                </p>

              </div>
            </div>
            <div class="price">
              <span><span class="adult_price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${country.adult_price}" /></span>원~</span>
              <button>판매상품보기
                <i class="fa-solid fa-chevron-down"></i>
                <i class="fa-solid fa-chevron-up"></i>
              </button>
            </div>
          </div>
            <div id="calandar_wrap">
            <div id="calandar_select">
              <span>총 <span class="product_num"></span>개</span>
            </div>
            <ul>
              <c:forEach items="${nationList}" var="ml" varStatus="status">
              <li>
                <div class="select_info">
                  <c:choose>
                    <c:when test="${empty ml.theme_name}">
                      <div class="nothing"></div>
                    </c:when>
                    <c:otherwise>
                      <div class="theme_name"><c:out value="${ml.theme_name}">크루즈</c:out></div>
                    </c:otherwise>
                  </c:choose>
                  <p class="detailPage_title"><c:out value="${ml.detailPage_title}">로마와 동부 지중해(이탈리아/그리스/몰타) 크루즈 10일 #MSC 디비나호 #발코니 선실 #로마 벤츠투어</c:out></p>
                  <p>
                    <img src="/resources/<c:out value="${ml.flightLogoImg}">img/KE.png</c:out>" alt="" class="flightLogoImg">
                    <span class="flight_name"><c:out value="${ml.flight_name}">대한항공</c:out></span>
                  </p>
                  <p>
                    <i class="fa-solid fa-calendar-days"></i>
                    <i class="fa-solid fa-calendar-days"></i>
                    <span>
                      <span class="f_startMonth"><c:out value="${ml.f_startMonth}">8</c:out></span>/<span class="f_startDate"><c:out value="${ml.f_startDate}">24</c:out></span>(<span class="f_startWhatDay"><c:out value="${ml.f_startWhatDay}">목</c:out></span>) <span class="f_startHour"><c:out value="${ml.f_startHour}">14</c:out></span>:<span class="F_startMinute"><c:out value="${ml.f_startMinute}">15</c:out></span>
                    </span>
                    <i class="fa-solid fa-arrow-right"></i>
                    <span>
                      <span class="L_arriveMonth"><c:out value="${ml.l_arriveMonth}">9</c:out></span>/<span class="L_arriveDate"><c:out value="${ml.l_arriveDate}">2</c:out></span>(<span class="L_arriveWhatDay"><c:out value="${ml.l_arriveWhatDay}">토</c:out></span>) <span class="L_arriveHour"><c:out value="${ml.l_arriveHour}">15</c:out></span>:<span class="L_arriveMinute"><c:out value="${ml.l_arriveMinute}">50</c:out></span>
                    </span>
                    <span><span class="nights"><c:out value="${ml.nights}">8</c:out></span>박 <span class="days"><c:out value="${ml.days}">10</c:out></span>일</span>
                  </p>
                  <p>
                    seq : <c:out value="${ml.seq}"></c:out>
                  </p>
                  <p>
                    same : <c:out value="${ml.same}"></c:out>
                  </p>
                </div>
                <div id="select_price">
                  <p><span class="adult_price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ml.adult_price}" /></span>원</p>
                  <a href="/detail?seq=<c:out value="${ml.seq}"/>">
                    <button>상세일정보기</button>
                  </a>
                </div>
              </li>
              </c:forEach>
            </ul>
            <!-- <button class="fold">
                <span>접기</span>
                <i class="fa-solid fa-angle-up"></i>
            </button> -->
          </div>
          </li>
        </c:forEach>
      </ul>

      <!-- <div id="calandar_wrap">
          <div id="calandar_select">
              <span>총 <span class="product_num"></span>개</span>
          </div>
          <ul>
              <li>
                  <div class="select_info">
                      <div class="theme_name">크루즈</div>
                      <p class="detailPage_title">로마와 동부 지중해(이탈리아/그리스/몰타) 크루즈 10일 #MSC 디비나호 #발코니 선실 #로마 벤츠투어</p>
                      <p>
                          <img src="img/KE.png" alt="" class="flightLogoImg">
                          <span class="flight_name">대한항공</span>
                      </p>
                      <p>
                          <i class="fa-solid fa-calendar-days"></i>
                          <span>
                              <span class="F_startMonth">8</span>/<span class="F_startDate">24</span>(<span class="F_startWhatDay">목</span>) <span class="F_startHour">14</span>:<span class="F_startMinute">15</span>
                          </span>
                          <i class="fa-solid fa-arrow-right"></i>
                          <span>
                              <span class="L_arriveMonth">9</span>/<span class="L_arriveDate">2</span>(<span class="L_arriveWhatDay">토</span>) <span class="L_arriveHour">15</span>:<span class="L_arriveMinute">50</span>
                          </span>
                          <span><span class="nights">8</span>박 <span class="days">10</span>일</span>
                      </p>
                  </div>
                  <div id="select_price">
                      <p><span class="adult_price">6,307,200</span>원</p>
                      <button onclick="window.open('detail.html')">상세일정보기</button>
                  </div>
              </li>
          </ul>
          <button>
              <span>접기</span>
              <i class="fa-solid fa-angle-up"></i>
          </button>
      </div> -->
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







</body>
</html>





<!-- 가격, 여행기간, 테마 select-->