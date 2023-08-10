<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

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
    <link rel="stylesheet" href="/resources/css/like.css">
    <script src="/resources/js/jquery-3.6.4.min.js"></script>
    <script src="/resources/js/like.js"></script>
    <script src="https://kit.fontawesome.com/f0e73cfa04.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
<!-- 헤더 -->
<%@include file="../include/includeHanatourHeader.jsp"%>

<!-- 내용 -->
<section>
    <div id="sectionWrap">
        <h2>찜</h2>
        <button>전체삭제</button>
        <div id="like_box">
            <ul>
                <li>상품명</li>
                <li>여행날짜</li>
                <li>상품금액</li>
            </ul>
        </div>
        <!-- <div id="nothing">
            <i class="fa-solid fa-circle-exclamation"></i>
            <p>찜에 담긴 상품이 없습니다.</p>
        </div> -->
        <div id="new_contents_container" class="scroll_bar">
            <ul id="liked">
                <li>
                    <ul>
                        <li>[출발확정] 다낭 4일 #시내 4성호텔 #바나힐 테마파크 #호이안 #전신마사지 #캔들라이트 디너</li>
                        <li><span>2023</span>.<span>07</span>.<span>01</span></li>
                        <li><span>501,200</span>원</li>
                        <li><button>삭제</button></li>
                    </ul>
                </li>
                <li>
                    <ul>
                        <li>[출발확정] 다낭 4일 #시내 4성호텔 #바나힐 테마파크 #호이안 #전신마사지 #캔들라이트 디너</li>
                        <li><span>2023</span>.<span>07</span>.<span>01</span></li>
                        <li><span>501,200</span>원</li>
                        <li><button>삭제</button></li>
                    </ul>
                </li>
                <li>
                    <ul>
                        <li>[출발확정] 다낭 4일 #시내 4성호텔 #바나힐 테마파크 #호이안 #전신마사지 #캔들라이트 디너</li>
                        <li><span>2023</span>.<span>07</span>.<span>01</span></li>
                        <li><span>501,200</span>원</li>
                        <li><button>삭제</button></li>
                    </ul>
                </li>
                <li>
                    <ul>
                        <li>[출발확정] 다낭 4일 #시내 4성호텔 #바나힐 테마파크 #호이안 #전신마사지 #캔들라이트 디너</li>
                        <li><span>2023</span>.<span>07</span>.<span>01</span></li>
                        <li><span>501,200</span>원</li>
                        <li><button>삭제</button></li>
                    </ul>
                </li>
                <li>
                    <ul>
                        <li>[출발확정] 다낭 4일 #시내 4성호텔 #바나힐 테마파크 #호이안 #전신마사지 #캔들라이트 디너</li>
                        <li><span>2023</span>.<span>07</span>.<span>01</span></li>
                        <li><span>501,200</span>원</li>
                        <li><button>삭제</button></li>
                    </ul>
                </li>
                <li>
                    <ul>
                        <li>[출발확정] 다낭 4일 #시내 4성호텔 #바나힐 테마파크 #호이안 #전신마사지 #캔들라이트 디너</li>
                        <li><span>2023</span>.<span>07</span>.<span>01</span></li>
                        <li><span>501,200</span>원</li>
                        <li><button>삭제</button></li>
                    </ul>
                </li>
                <li>
                    <ul>
                        <li>[출발확정] 다낭 4일 #시내 4성호텔 #바나힐 테마파크 #호이안 #전신마사지 #캔들라이트 디너</li>
                        <li><span>2023</span>.<span>07</span>.<span>01</span></li>
                        <li><span>501,200</span>원</li>
                        <li><button>삭제</button></li>
                    </ul>
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
</body>
</html>