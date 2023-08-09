<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>포트폴리오</title>
    <link rel="stylesheet" href="/resources/css/style.css">
</head>
<body>
    <div id="main">
        <div id="wrap">
            <div id="link">
                <p>포트폴리오</p>
            </div>
            <div id="profile">
                <div class="meme padding">
                    <p>이름 : 김도연</p>
                    <p>이메일 : m**********@naver.com</p>
                    <p>전화번호 : 010-****-****</p>
                </div>
                <div class="meme pic" id="pic">
                    <div id="man">
                        <img src="/resources/img/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg" alt="">
                    </div>
                </div>
            </div>
            <div id="portfolio">
                <div class="meme" id="hana">
                    <img src="/resources/img/screencapture-file-C-Users-i7C-31-Desktop-hanatour-main-html-2023-06-21-09_17_08.png" alt="" onclick="window.open('main')">
                </div>
                <div class="meme padding" onclick="location.href='/loginXdmForm'">
                </div>
            </div>
        </div>
    </div>
    <!-- 아직 만든 포트폴리오..가 많이 없기에(1개임) 더 만들면 페이지의 높이를 늘릴 예정 
    일단 임시로 한페이지에 다 들어오게 만들었다.-->
</body>
</html>