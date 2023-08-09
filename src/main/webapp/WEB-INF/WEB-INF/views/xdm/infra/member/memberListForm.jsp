<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>


<%-- <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<form name="form" method="post">
	<input type="text"  name="seq" id="seq"   readonly value="<c:out value="${item.seq}"/>">
	<input type="text"  name="name" id="name"   value="<c:out value="${item.name}"/>">
	<input type="text" class="form-control" id="delNy" name="delNy"  value="<c:out value="${item.delNy}"/>">
	<button type="button" class="btn btn-primary" id="btnDelete">삭제</button>
	<button type="button" class="btn btn-primary" id="btnInsert">인서트</button>
	<button type="button" class="btn btn-primary" id="btn">수정</button>
	<button type="button" class="btn btn-primary" id="btnUelete">율리트?</button>
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

<script type="text/javascript">
	$("#btn").on("click", function(){
		alert("수정");
		$("form[name=form]").attr("action", "/codeGroupUpdt").submit();
	});
	
	
	
	
	$("#btnDelete").on("click", function(){
		alert("삭제");
		$("form[name=form]").attr("action", "/codeGroupDelt").submit();
	});
	
	
	
	$("#btnInsert").on("click", function(){
		alert("인서트");
		$("form[name=form]").attr("action", "/codeGroupInsert").submit();
	});
	
	
	$("#btnUelete").on("click", function(){
		alert("율리트");
		$("form[name=form]").attr("action", "/codeGroupUelete").submit();
	});
	
</script> --%>












<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Tables / Data - NiceAdmin Bootstrap Template</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="/resources/assets/img/favicon.png" rel="icon">
<link href="/resources/assets/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="/resources/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="/resources/assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="/resources/assets/vendor/quill/quill.snow.css"
	rel="stylesheet">
<link href="/resources/assets/vendor/quill/quill.bubble.css"
	rel="stylesheet">
<link href="/resources/assets/vendor/remixicon/remixicon.css"
	rel="stylesheet">
<link href="/resources/assets/vendor/simple-datatables/style.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="/resources/assets/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

	<!-- ======= Header ======= -->
	<%@include file = "../include/includeXdmListHeader.jsp"%>
	<!-- End Header -->

	<!-- ======= Sidebar ======= -->
	<%@include file = "../include/includeXdmListAside.jsp"%>
	<!-- End Sidebar-->

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Data Tables</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item">Tables</li>
					<li class="breadcrumb-item active">Data</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg-12">

					<div class="card">
						<div class="card-body">
							<form name="form" method="post">
								<input type="text"  name="seq" id="seq" placeholder="seq"  readonly value="<c:out value="${item.seq}"/>">
								<input type="text"  name="id_Email" id="id_Email" placeholder="id_Email"  value="<c:out value="${item.id_Email}"/>">
								<input type="text"  name="name" id="name" placeholder="name"  value="<c:out value="${item.name}"/>">
								<input type="text"  name="password" id="password" placeholder="password"  value="<c:out value="${item.password}"/>">
								<input type="text"  name="phoneNumber" id="phoneNumber" placeholder="phoneNumber"  value="<c:out value="${item.phoneNumber}"/>">
								<input type="text"  name="gender" id="gender" placeholder="gender"  value="<c:out value="${item.gender}"/>">
								<input type="text"  name="dob" id="dob" placeholder="dob"  value="<c:out value="${item.dob}"/>">
								<br>
								<button type="button" class="btn btn-primary" id="btnDelete">삭제</button>
								<!-- <button type="button" class="btn btn-primary" id="btnInsert">인서트</button> -->
								<button type="button" class="btn btn-primary" id="btn">수정</button>
								<button type="button" class="btn btn-primary" id="btnUelete">율리트</button>
								<button type="button" class="btn btn-primary" onclick="location.href='memberXdmList.html'">홈</button>
							</form>

						</div>
					</div>

				</div>
			</div>
		</section>

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<div class="copyright">
			&copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights
			Reserved
		</div>
		<div class="credits">
			<!-- All the links in the footer should remain intact. -->
			<!-- You can delete the links only if you purchased the pro version. -->
			<!-- Licensing information: https://bootstrapmade.com/license/ -->
			<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
			Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
		</div>
	</footer>
	<!-- End Footer -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="/resources/assets/vendor/apexcharts/apexcharts.min.js"></script>
	<script
		src="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="/resources/assets/vendor/chart.js/chart.umd.js"></script>
	<script src="/resources/assets/vendor/echarts/echarts.min.js"></script>
	<script src="/resources/assets/vendor/quill/quill.min.js"></script>
	<script
		src="/resources/assets/vendor/simple-datatables/simple-datatables.js"></script>
	<script src="/resources/assets/vendor/tinymce/tinymce.min.js"></script>
	<script src="/resources/assets/vendor/php-email-form/validate.js"></script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
	<!-- Template Main JS File -->
	<script src="/resources/assets/js/main.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

<script type="text/javascript">
	$("#btn").on("click", function(){
		/* alert("수정"); */
		$("form[name=form]").attr("action", "/memberUpdt").submit();
	});
	
	
	
	
	$("#btnDelete").on("click", function(){
		/* alert("삭제"); */
		$("form[name=form]").attr("action", "/memberDelt").submit();
	});
	
	
	
/* 	$("#btnInsert").on("click", function(){
		/* alert("인서트"); 
		$("form[name=form]").attr("action", "/codeGroupInsert").submit();
	});
	 */
	
	$("#btnUelete").on("click", function(){
	/* 	alert("율리트"); */
		$("form[name=form]").attr("action", "/memberUelete").submit();
	});
	
</script>
</body>

</html>















<!-- <> -->










