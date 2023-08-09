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

<!-- fontawesome -->
<script src="https://kit.fontawesome.com/15c84217dd.js" crossorigin="anonymous"></script>
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
							<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
							<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
							<table class="table">
								<thead>
									<tr>
										<th scope="col">seq</th>
										<th scope="col">theme_name</th>
										<th scope="col">theme</th>
										<th scope="col">detailPage_title</th>
										<th scope="col">detailPate_Detail</th>
										<th scope="col">detailPage_hashtag_name</th>
										<th scope="col">detailPage_hashtag</th>
										<th scope="col">detailPage_hashtag2_name</th>
										<th scope="col">detailPage_hashtag2</th>
										<th scope="col">detailPage_hashtag3_name</th>
										<th scope="col">detailPage_hashtag3</th>
										<th scope="col">nights</th>
										<th scope="col">days</th>
										<th scope="col">readyToStart</th>
										<th scope="col">detailPage_img</th>
										<th scope="col">adult_price</th>
										<th scope="col">child_price</th>
										<th scope="col">toddler_price</th>
										<th scope="col">total_price</th>
										<th scope="col">adult_number</th>
										<th scope="col">child_number</th>
										<th scope="col">toddler_number</th>
										<th scope="col">like</th>
										<th scope="col">flight</th>
										<th scope="col">flight_name</th>
										<th scope="col">fuel_surcharge</th>
										<th scope="col">flightLogoImg</th>
										<th scope="col">min_passenger</th>
										<th scope="col">seat_number</th>
										<th scope="col">F_startYear</th>
										<th scope="col">F_startMonth</th>
										<th scope="col">F_startDate</th>
										<th scope="col">F_startWhatDay</th>
										<th scope="col">F_startHour</th>
										<th scope="col">F_startMinute</th>
										<th scope="col">F_arriveYear</th>
										<th scope="col">F_arriveMonth</th>
										<th scope="col">F_arriveDate</th>
										<th scope="col">F_arriveWhatDay</th>
										<th scope="col">F_arriveHour</th>
										<th scope="col">F_arriveMinute</th>
										<th scope="col">L_startYear</th>
										<th scope="col">L_startMonth</th>
										<th scope="col">L_startDate</th>
										<th scope="col">L_startWhatDay</th>
										<th scope="col">L_startHour</th>
										<th scope="col">L_startMinute</th>
										<th scope="col">L_arriveYear</th>
										<th scope="col">L_arriveMonth</th>
										<th scope="col">L_arriveDate</th>
										<th scope="col">L_arriveWhatDay</th>
										<th scope="col">L_arriveHour</th>
										<th scope="col">L_arriveMinute</th>
										<th scope="col">F_flightHour</th>
										<th scope="col">F_flightMinute</th>
										<th scope="col">L_flightHour</th>
										<th scope="col">L_flightMinute</th>
										<th scope="col">layover</th>
										<th scope="col">F_flightCode</th>
										<th scope="col">L_flightCode</th>
										<th scope="col">reservedSeatNumber</th>
										<th scope="col">MiddlePageTitle</th>
										<th scope="col">country_name</th>
										<th scope="col">country</th>
									</tr>
								</thead>
			
									
										<select name="shOption">
											<option value="">--선택하세요--</option>
											<option value="1">Dog</option>
											<option value="2">Cat</option>
										</select> <input type="text" name="shKeyword" value="<c:out value="${vo.shKeyword }"/>">

										<button type="button" class="btn btn-primary" id="btnSearch">Search</button>
										<button type="button" class="btn btn-primary" id="btnInsert" onclick="location.href='/detail_pageInsert'">Insert</button>
									
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
												 	<td>
														<a href="/detail_pageForm?seq=<c:out value="${list.seq}"/>"><c:out value="${list.seq}"></c:out></a>
													</td>
												 	<td><c:out value="${list.theme_name}"></c:out></td>
												 	<td><c:out value="${list.theme}"></c:out></td>
													<td><c:out value="${list.detailPage_title}"></c:out></td>
													<td><c:out value="${list.detailPage_Detail}"></c:out></td>
													<td><c:out value="${list.detailPage_hashtag_name}"></c:out></td>
													<td><c:out value="${list.detailPage_hashtag}"></c:out></td>
													<td><c:out value="${list.detailPage_hashtag2_name}"></c:out></td>
													<td><c:out value="${list.detailPage_hashtag2}"></c:out></td>
													<td><c:out value="${list.detailPage_hashtag3_name}"></c:out></td>
													<td><c:out value="${list.detailPage_hashtag3}"></c:out></td>
													<td><c:out value="${list.nights}"></c:out></td>
													<td><c:out value="${list.days}"></c:out></td>
													<td><c:out value="${list.readyToStart}"></c:out></td>
													<td><c:out value="${list.detailPage_img}"></c:out></td>
													<td><c:out value="${list.adult_price}"></c:out></td>
													<td><c:out value="${list.child_price}"></c:out></td>
													<td><c:out value="${list.toddler_price}"></c:out></td>
													<td><c:out value="${list.total_price}"></c:out></td>
													<td><c:out value="${list.adult_number}"></c:out></td>
													<td><c:out value="${list.child_number}"></c:out></td>
													<td><c:out value="${list.toddler_number}"></c:out></td>
													<td><c:out value="${list.like}"></c:out></td>
													<td><c:out value="${list.flight}"></c:out></td>
													<td><c:out value="${list.flight_name}"></c:out></td>
													<td><c:out value="${list.fuel_surcharge}"></c:out></td>
													<td><c:out value="${list.flightLogoImg}"></c:out></td>
													<td><c:out value="${list.min_passenger}"></c:out></td>
													<td><c:out value="${list.seat_number}"></c:out></td>
													<td><c:out value="${list.f_startYear}"></c:out></td>
													<td><c:out value="${list.f_startMonth}"></c:out></td>
													<td><c:out value="${list.f_startDate}"></c:out></td>
													<td><c:out value="${list.f_startWhatDay}"></c:out></td>
													<td><c:out value="${list.f_startHour}"></c:out></td>
													<td><c:out value="${list.f_startMinute}"></c:out></td>
													<td><c:out value="${list.f_arriveYear}"></c:out></td>
													<td><c:out value="${list.f_arriveMonth}"></c:out></td>
													<td><c:out value="${list.f_arriveDate}"></c:out></td>
													<td><c:out value="${list.f_arriveWhatDay}"></c:out></td>
													<td><c:out value="${list.f_arriveHour}"></c:out></td>
													<td><c:out value="${list.f_arriveMinute}"></c:out></td>
													<td><c:out value="${list.l_startYear}"></c:out></td>
													<td><c:out value="${list.l_startMonth}"></c:out></td>
													<td><c:out value="${list.l_startDate}"></c:out></td>
													<td><c:out value="${list.l_startWhatDay}"></c:out></td>
													<td><c:out value="${list.l_startWhatDay}"></c:out></td>
													<td><c:out value="${list.l_startMinute}"></c:out></td>
													<td><c:out value="${list.l_arriveYear}"></c:out></td>
													<td><c:out value="${list.l_arriveMonth}"></c:out></td>
													<td><c:out value="${list.l_arriveDate}"></c:out></td>
													<td><c:out value="${list.l_arriveWhatDay}"></c:out></td>
													<td><c:out value="${list.l_arriveHour}"></c:out></td>
													<td><c:out value="${list.l_arriveMinute}"></c:out></td>
													<td><c:out value="${list.f_flightHour}"></c:out></td>
													<td><c:out value="${list.f_flightMinute}"></c:out></td>
													<td><c:out value="${list.l_flightHour}"></c:out></td>
													<td><c:out value="${list.l_flightMinute}"></c:out></td>
													<td><c:out value="${list.layover}"></c:out></td>
													<td><c:out value="${list.f_flightCode}"></c:out></td>
													<td><c:out value="${list.l_flightCode}"></c:out></td>
													<td><c:out value="${list.reservedSeatNumber}"></c:out></td>
													<td><c:out value="${list.middlePageTitle}"></c:out></td>
													<td><c:out value="${list.country_name}"></c:out></td>
													<td><c:out value="${list.country}"></c:out></td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
							</form>
							<div class="container-fluid px-0 mt-2">
					    <div class="row">
					        <div class="col">
					            <!-- <ul class="pagination pagination-sm justify-content-center mb-0"> -->
					            <ul class="pagination justify-content-center mb-0">
					                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-left"></i></a></li> -->
					<c:if test="${vo.startPage gt vo.pageNumToShow}">
					                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.startPage - 1})"><i class="fa-solid fa-angle-left"></i></a></li>
					</c:if>
					<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
						<c:choose>
							<c:when test="${i.index eq vo.thisPage}">
					                <li class="page-item active"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
							</c:when>
							<c:otherwise>             
					                <li class="page-item"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>                
					<c:if test="${vo.endPage ne vo.totalPages}">                
					                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.endPage + 1})"><i class="fa-solid fa-angle-right"></i></a></li>
					</c:if>
					                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-right"></i></a></li> -->
					            </ul>
					        </div>
					    </div>
					</div>
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
		$("form[name=formList]").attr("action", "/detail_pageXdmList").submit();

		});
		
		goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			$("form[name=formList]").attr("action", "detail_pageXdmList").submit();
		}
		
	
		
	
	</script>
</body>

</html>