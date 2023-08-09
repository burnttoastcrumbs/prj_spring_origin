<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

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
							<h5 class="card-title">Datatables</h5>
							<p>
								Add lightweight datatables to your project with using the <a
									href="https://github.com/fiduswriter/Simple-DataTables"
									target="_blank">Simple DataTables</a> library. Just add
								<code>.datatable</code>
								class name to any table you wish to conver to a datatable
							</p>

							<!-- Table with stripped rows -->
							<form name="formList" method="post" autocomplete="off">
							<table class="table datatable">
								<thead>
									<tr>
										<th scope="col">seq</th>
										<th scope="col">name</th>
										<th scope="col">delNy</th>
									</tr>
								</thead>
			
									
										<select name="shOption">
											<option value="">--선택하세요--</option>
											<option value="1">Dog</option>
											<option value="2">Cat</option>
										</select> <input type="text" name="shKeyword" value="<c:out value="${vo.shKeyword }"/>">

										<button type="button" class="btn btn-primary" id="btnSearch">Search</button>
										<button type="button" class="btn btn-primary" id="btnInsert" onclick="location.href='/codeListFormInsert'">Insert</button>
									
									<tbody>
									<c:choose>
										<c:when test="${fn:length(list) eq 0}">
											<tr>
												<td class="text-center" colspan="9">There is no data!</td>
											</tr>
										</c:when>
										<c:otherwise>
											<!-- $(list) 자바에서 넘겨준 객체 이름 -->
											<!-- var="list" jst1블럭에서 사용할 변수 이름 -->
										
											<c:forEach items="${list}" var="list" varStatus="status">
												 <tr>
													 <td><c:out value="${list.seq }"></c:out></td>
													 <td><a href="/codeListForm?seq=<c:out value="${list.seq}"/>"><c:out value="${list.name}"></c:out></a></td>
												<td><c:out value="${list.delNy }"></c:out></td>
												
												</tr>
											
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							
							</table>
							</form>
							<!-- End Table with stripped rows -->

						</div>
					</div>

				</div>
			</div>
		</section>

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<%@include file = "../include/includeXdmListFooter.jsp"%>
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
	<script type="text/javascript">
		$("#btnSearch").on("click",	function() {
/* 			alert("dfdfdfdf근데 안됨@"); */
					// 	$("form[name=formList]").attr("method","get");
			$("form[name=formList]").attr("action", "/codeXdmList").submit();

				});
		
	
	</script>
</body>

</html>