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
								<input type="text"  name="theme_name" id="theme_name" placeholder="theme_name" value="<c:out value="${item.theme_name}"/>">
								<input type="text" id="theme" name="theme" placeholder="theme" value="<c:out value="${item.theme}"/>">
								<input type="text"  name="detailPage_title" id="detailPage_title" placeholder="detailPage_title" value="<c:out value="${item.detailPage_title}"/>">
								<input type="text"  name="detailPage_Detail" id="detailPage_Detail" placeholder="detailPage_Detail" value="<c:out value="${item.detailPage_Detail}"/>">
								<input type="text" id="detailPage_hashtag_name" name="detailPage_hashtag_name" placeholder="detailPage_hashtag_name" value="<c:out value="${item.detailPage_hashtag_name}"/>">
								<input type="text"  name="detailPage_hashtag" id="detailPage_hashtag" placeholder="detailPage_hashtag" value="<c:out value="${item.detailPage_hashtag}"/>">
								<input type="text"  name="detailPage_hashtag2_name" id="detailPage_hashtag2_name" placeholder="detailPage_hashtag2_name" value="<c:out value="${item.detailPage_hashtag2_name}"/>">
								<input type="text" id="detailPage_hashtag2" name="detailPage_hashtag2" placeholder="detailPage_hashtag2" value="<c:out value="${item.detailPage_hashtag2}"/>">
								<input type="text"  name="detailPage_hashtag3_name" id="detailPage_hashtag3_name" placeholder="detailPage_hashtag3_name" value="<c:out value="${item.detailPage_hashtag3_name}"/>">
								<input type="text"  name="detailPage_hashtag3" id="detailPage_hashtag3" placeholder="detailPage_hashtag3" value="<c:out value="${item.detailPage_hashtag3}"/>">
								<input type="text" id="nights" name="nights" placeholder="nights" value="<c:out value="${item.nights}"/>">
								<input type="text"  name="days" id="days" placeholder="days" value="<c:out value="${item.days}"/>">
								<input type="text"  name="readyToStart" id="readyToStart"  placeholder="readyToStart" value="<c:out value="${item.readyToStart}"/>">
								<input type="text" id="detailPage_img" name="detailPage_img" placeholder="detailPage_img"  value="<c:out value="${item.detailPage_img}"/>">
								<input type="text"  name="adult_price" id="adult_price" placeholder="adult_price" value="<c:out value="${item.adult_price}"/>">
								<input type="text"  name="child_price" id="child_price" placeholder="child_price" value="<c:out value="${item.child_price}"/>">
								<input type="text" id="toddler_price" name="toddler_price" placeholder="toddler_price"  value="<c:out value="${item.toddler_price}"/>">
								<input type="text"  name="total_price" id="total_price" placeholder="total_price" value="<c:out value="${item.total_price}"/>">
								<input type="text"  name="adult_number" id="adult_number" placeholder="adult_number" value="<c:out value="${item.adult_number}"/>">
								<input type="text" id="child_number" name="child_number" placeholder="child_number" value="<c:out value="${item.child_number}"/>">
								<input type="text"  name="toddler_number" id="toddler_number" placeholder="toddler_number" value="<c:out value="${item.toddler_number}"/>">
								<input type="text"  name="like" id="like" placeholder="like" value="<c:out value="${item.like}"/>">
								<input type="text" id="flight" name="flight" placeholder="flight"  value="<c:out value="${item.flight}"/>">
								<input type="text"  name="flight_name" id="flight_name" placeholder="flight_name" value="<c:out value="${item.flight_name}"/>">
								<input type="text"  name="fuel_surcharge" id="fuel_surcharge" placeholder="fuel_surcharge" value="<c:out value="${item.fuel_surcharge}"/>">
								<input type="text" id="flightLogoImg" name="flightLogoImg" placeholder="flightLogoImg"  value="<c:out value="${item.flightLogoImg}"/>">
								<input type="text"  name="min_passenger" id="min_passenger" placeholder="min_passenger"  value="<c:out value="${item.min_passenger}"/>">
								<input type="text"  name="seat_number" id="seat_number" placeholder="seat_number" value="<c:out value="${item.seat_number}"/>">
								<input type="text" id="F_startYear" name="F_startYear" placeholder="F_startYear"  value="<c:out value="${item.F_startYear}"/>">
								<input type="text" id="F_startMonth" name="F_startMonth" placeholder="F_startMonth"  value="<c:out value="${item.F_startMonth}"/>">
								<input type="text" id="F_startDate" name="F_startDate" placeholder="F_startDate"  value="<c:out value="${item.F_startDate}"/>">
								<input type="text" id="F_startWhatDay" name="F_startWhatDay" placeholder="F_startWhatDay"  value="<c:out value="${item.F_startWhatDay}"/>">
								<input type="text" id="F_startHour" name="F_startHour" placeholder="F_startHour"  value="<c:out value="${item.F_startHour}"/>">
								<input type="text" id="F_startMinute" name="F_startMinute" placeholder="F_startMinute"  value="<c:out value="${item.F_startMinute}"/>">
								<input type="text" id="F_arriveYear" name="F_arriveYear" placeholder="F_arriveYear"  value="<c:out value="${item.F_arriveYear}"/>">
								<input type="text" id="F_arriveMonth" name="F_arriveMonth" placeholder="F_arriveMonth"  value="<c:out value="${item.F_arriveMonth}"/>">
								<input type="text" id="F_arriveDate" name="F_arriveDate" placeholder="F_arriveDate"  value="<c:out value="${item.F_arriveDate}"/>">
								<input type="text" id="F_arriveWhatDay" name="F_arriveWhatDay" placeholder="F_arriveWhatDay"  value="<c:out value="${item.F_arriveWhatDay}"/>">
								<input type="text" id="F_arriveHour" name="F_arriveHour" placeholder="F_arriveHour"  value="<c:out value="${item.F_arriveHour}"/>">
								<input type="text" id="F_arriveMinute" name="F_arriveMinute" placeholder="F_arriveMinute"  value="<c:out value="${item.F_arriveMinute}"/>">
								<input type="text" id="L_startYear" name="L_startYear" placeholder="L_startYear"  value="<c:out value="${item.L_startYear}"/>">
								<input type="text" id="L_startMonth" name="L_startMonth" placeholder="L_startMonth"  value="<c:out value="${item.L_startMonth}"/>">
								<input type="text" id="L_startDate" name="L_startDate" placeholder="L_startDate"  value="<c:out value="${item.L_startDate}"/>">
								<input type="text" id="L_startWhatDay" name="L_startWhatDay" placeholder="L_startWhatDay"  value="<c:out value="${item.L_startWhatDay}"/>">
								<input type="text" id="L_startHour" name="L_startHour" placeholder="L_startHour"  value="<c:out value="${item.L_startHour}"/>">
								<input type="text" id="L_startMinute" name="L_startMinute"  placeholder="L_startMinute"  value="<c:out value="${item.L_startMinute}"/>">
								<input type="text" id="L_arriveYear" name="L_arriveYear" placeholder="L_arriveYear"  value="<c:out value="${item.L_arriveYear}"/>">
								<input type="text" id="L_arriveMonth" name="L_arriveMonth" placeholder="L_arriveMonth"  value="<c:out value="${item.L_arriveMonth}"/>">
								<input type="text" id="L_arriveDate" name="L_arriveDate" placeholder="L_arriveDate"  value="<c:out value="${item.L_arriveDate}"/>">
								<input type="text" id="L_arriveWhatDay" name="L_arriveWhatDay" placeholder="L_arriveDate"  value="<c:out value="${item.L_arriveWhatDay}"/>">
								<input type="text" id="L_arriveHour" name="L_arriveHour" placeholder="L_arriveHour"  value="<c:out value="${item.L_arriveHour}"/>">
								<input type="text" id="L_arriveMinute" name="L_arriveMinute" placeholder="L_arriveMinute"  value="<c:out value="${item.L_arriveMinute}"/>">
								<input type="text" id="F_flightHour" name="F_flightHour" placeholder="F_flightHour"  value="<c:out value="${item.F_flightHour}"/>">
								<input type="text" id="F_flightMinute" name="F_flightMinute" placeholder="F_flightMinute"  value="<c:out value="${item.F_flightMinute}"/>">
								<input type="text" id="L_flightHour" name="L_flightHour" placeholder="L_flightHour"  value="<c:out value="${item.L_flightHour}"/>">
								<input type="text" id="L_flightMinute" name="L_flightMinute"  placeholder="L_flightMinute" value="<c:out value="${item.L_flightMinute}"/>">
								<input type="text" id="layover" name="layover" placeholder="layover"  value="<c:out value="${item.layover}"/>">
								<input type="text" id="F_flightCode" name="F_flightCode" placeholder="F_flightCode"  value="<c:out value="${item.F_flightCode}"/>">
								<input type="text" id="L_flightCode" name="L_flightCode" placeholder="L_flightCode"  value="<c:out value="${item.L_flightCode}"/>">
								<input type="text" id="reservedSeatNumber" name="reservedSeatNumber" placeholder="reservedSeatNumber"  value="<c:out value="${item.reservedSeatNumber}"/>">
								<input type="text" id="MiddlePageTitle" name="MiddlePageTitle" placeholder="MiddlePageTitle"  value="<c:out value="${item.MiddlePageTitle}"/>">
								<input type="text" id="country_name" name="country_name" placeholder="country_name"  value="<c:out value="${item.country_name}"/>">
								<input type="text" id="country" name="country" placeholder="country"  value="<c:out value="${item.country}"/>">
								<button type="button" class="btn btn-primary" id="btnInsert">인서트</button>
								<button type="button" class="btn btn-primary" onclick="location.href='detail_pageXdmList.html'">홈</button>
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
	
	$("#btnInsert").on("click", function(){
		/* alert("인서트"); */
		$("form[name=form]").attr("action", "/detail_pageXdmList").submit();
	});
</script>
</body>

</html>















<!-- <> -->










