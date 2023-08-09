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
    <script src="/resources/js/signUp.js"></script>
    <script src="https://kit.fontawesome.com/f0e73cfa04.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="/resources/css/signUp.css">
</head>
<body>
  <section>
      <h3>
          <i class="fa-solid fa-arrow-left" onclick="location.href='main'"></i>
          정보입력
      </h3>
      <p>고객님의 정보를 입력해주세요.</p>
      <p>하나투어는 고객님의 정보를 안전하게 관리합니다.</p>
      <form class="row g-3 needs-validation" novalidate method="post" name="signUp">
          <div class="col-md-6">
            <label for="validationCustom02" class="form-label">아이디(이메일계정)</label>
            <input type="email" class="form-control" id="validationCustom02" name="id_Email" required>
            <div class="invalid-feedback">
              아이디를(이메일계정 형식) 적어주세요.
            </div>
          </div>
          <div class="col-md-6">
              <label for="validationCustom01" class="form-label">이름</label>
              <input type="text" class="form-control" id="validationCustom01" name="name" required>
              <div class="invalid-feedback">
                  이름을 적어주세요.
              </div>
          </div>
          <div class="col-md-6">
              <label for="validationCustom01" class="form-label">성별</label>
             <input type="text" class="form-control" id="validationCustom01" name="gender" required>
              <div class="invalid-feedback">
                  성별을 선택해주세요.
              </div>
          </div>
          <div class="col-md-6">
              <label for="validationCustom01" class="form-label">생년월일</label>
              <input type="date" class="form-control" id="validationCustom01" name="dob" required>
              <div class="invalid-feedback">
                  생년월일을 적어주세요.
              </div>
          </div>
          <div class="col-md-6">
              <label for="validationCustom02" class="form-label">휴대폰 번호</label>
              <input type="tel" class="form-control" id="validationCustom02" name="phoneNumber" required>
              <div class="invalid-feedback">
                  휴대폰번호를 적어주세요.
              </div>
          </div>
          <div class="col-md-6">
              <label for="validationCustom02" class="form-label">비밀번호</label>
              <input type="text" class="form-control" id="validationCustom02" name="password" required>
              <div class="invalid-feedback">
                비밀번호를 적어주세요.
              </div>
          </div>
          <div class="col-md-6">
            <label for="validationCustom01" class="form-label">비밀번호 확인</label>
            <input type="text" class="form-control" id="validationCustom01" required>
            <div class="invalid-feedback">
              비밀번호를 확인해주세요.
            </div>
          </div>
          <button class="btn btn-primary" type="button" id="bookmark" >다음<i class="fa-sharp fa-solid fa-donut"></i></button>
      </form>
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
		/* alert("인서트"); */
			$("form[name=signUp]").attr("action", "/memberInsert").submit();
		});
  </script>
</body>
</html>