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
    <script src="/resources/js/jquery-3.6.4.min.js"></script>
    <script src="/resources/js/login.js"></script>
    <script src="https://kit.fontawesome.com/f0e73cfa04.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="/resources/css/login.css">
</head>
<body>
<section>
    <h3>
        <i class="fa-solid fa-arrow-left" onclick="location.href='main'"></i>
        로그인
    </h3>

    <ul id="logo">
        <li>
            <img src="/resources/img/ico-hanatour-logo2.png" alt="">
        </li>
    </ul>


    <form class="row g-3 needs-validation" novalidate>
        <div class="col-md-6">
            <label for="validationCustom02" class="form-label">아이디(이메일계정)</label>
            <input type="email" class="form-control" id="id_Email" required value="mc1818wreck@naver.com">
            <div class="invalid-feedback">
                아이디를(이메일계정 형식) 적어주세요.
            </div>
        </div>
        <div class="col-md-6">
            <label for="validationCustom02" class="form-label">비밀번호</label>
            <input type="password" class="form-control" id="password" required value="1234">
            <div class="invalid-feedback">
                비밀번호를 적어주세요.
            </div>
        </div>
        <button class="btn btn-primary" type="button" id="bookmark">로그인<i class="fa-sharp fa-solid fa-donut"></i></button>
    </form>
    <button onclick="location.href='signUp'">
        <i class="fa-solid fa-user"></i>
        회원가입
    </button>
</section>



<script>
    //Example starter JavaScript for disabling form submissions if there are invalid fields
    (() => {
        'use strict'

        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        const forms = document.querySelectorAll('.needs-validation')

        // Loop over them and prevent submission
        Array.from(forms).forEach(form => {
            form.addEventListener('submit', event => {
                if (!form.checkValidity()) {
                    event.preventDefault()
                    event.stopPropagation()
                }

                form.classList.add('was-validated')
            }, false)
        })
    })()

    $("#bookmark").on("click", function(){

        // if(validation() == false) return false;

        $.ajax({
            async: true
            ,cache: false
            ,type: "post"
            /* ,dataType:"json" */
            ,url: "/userlogin"
            /* ,data : $("#formLogin").serialize() */
            ,data : { "id_Email" : $("#id_Email").val(),
                "password" : $("#password").val()},
            success: function(response) {
                if(response.rt == "success") {
                    // alert(response.rtMemberUser.name + "님 환영합니다.");
                    console.log(1);
                    console.log(response.rtMemberUser.getPassword);
                    location.href = "/main";
                } else {
                    alert("그런 회원 없습니다.");
                }
            }
            ,error : function(jqXHR, textStatus, errorThrown){
                alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
            }
        });
    });


    validation = function() {
        // if(!checkNull($("#ifmmId"), $.trim($("#ifmmId").val()), "아이디를 입력해 주세요!")) return false;
        // if(!checkNull($("#ifmmPassword"), $.trim($("#ifmmPassword").val()), "비밀번호를 입력해 주세요!")) return false;
    }
</script>
</body>
</html>