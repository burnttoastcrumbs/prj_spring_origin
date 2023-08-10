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
    <link rel="stylesheet" href="/resources/css/final_decision.css">
    <script src="/resources/js/jquery-3.6.4.min.js"></script>
    <script src="/resources/js/final_decision.js"></script>
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
    <div class="section_wrap" id="purchase_info">
        <div class="purchase_info_wrap">
            <p><span>결제상세 내역</span></p>
            <p><span>총 상품 금액</span> <span><span class="total_price">832,800</span>원</span></p>
            <p><span><i class="fa-solid fa-caret-down"></i>상품 금액</span> <span><span class="total_price">832,800</span>원</span></p>
        </div>

        <p><span>최종 결제금액</span> <span><span class="total_price">832,800</span>원</span></p>
        <p>유류할증료 & 제세공과금 포함</p>
    </div>

    <div class="section_wrap" id="purchase_info">
        <div class="purchase_info_wrap">
            <p><span>결제상세 내역</span></p>
            <p><span>총 상품 금액</span> <span><span>832,800</span>원</span></p>
            <p><span><i class="fa-solid fa-caret-down"></i>상품 금액</span> <span><span>832,800</span>원</span></p>
        </div>

        <p><span>최종 결제금액</span> <span><span>832,800</span>원</span></p>
        <p>유류할증료 & 제세공과금 포함</p>
        <button>
            <p>전액 결제</p>
            <p><span>832,800</span>원</p>
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