<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>



<jsp:useBean id="CateServiceImpl" class="com.julyte.user.modules.cate.CateServiceImpl" />
<jsp:useBean id="CodeServiceImpl" class="com.julyte.user.modules.code.CodeServiceImpl" />

<!doctype html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
<link rel="stylesheet"
	href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css">

<!-- Favicons -->
<link rel="shortcut icon" href="https://ifh.cc/g/lBA5vD.png"
	type="image/x-icon" />
<!-- olive 아이콘 -->
<!-- Page Title -->
<title>All Live Young</title>>

<style type="text/css">
#floatMenu {
	position: absolute;
	right: 200px;
	width: 330px;
	border: 2px solid #c8c8c8;
	border-radius: 15px;
	padding-top: 10px;
	padding-bottom: 20px;
}

.content {
	margin: 20px;
}

.discount, .finalSum, .savingPoint {
	margin-left: 20px;
}

#pInfo {
	font-size: 16px;
}

#pDis {
	font-size: 17px;
	font-weight: bold;
}

#pFin {
	font-size: 19px;
	font-weight: bold;
}

#btn-purchase, #btn-purchase:hover, #btn-purchase:active, #btn-purchase:visited,
	#btn-purchase:focus {
	border: 1px #7B8ED1 solid;
	background: #7B8ED1;
	color: white;
	width: 75%;
	height: 50px;
	text-align: center;
}

.container-header {
	margin-top: 1%;
	margin-bottom: 3%;
	margin-left: 6%;
	margin-right: 6%;
}

.container-main {
	margin-top: 2%;
	margin-bottom: 5%;
	margin-left: 14%;
	margin-right: 14%;
}

.container-footer {
	margin-top: 1%;
	margin-bottom: 1%;
	margin-left: 1%;
	margin-right: 1%;
}

.nav-top {
	width: 100%;
	line-height: 50px;
	font-size: 15px;
	font-weight: 700;
	letter-spacing: -.04em;
}

.nav-item-top {
	width: 10%;
	text-align: center;
}

.nav-link {
	color: black;
}

a {
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>

	<%@include file="../include/pageHeader.jsp"%>

	<!-- 본문 s-->
	<!-- 본문 s-->
	<div class="container">


		<table class="table"
			style="width: 1000px; margin-left: auto; margin-right: auto; margin-top: 50px;">
			<thead class="table" style="background-color: #FFE488; color: white;">
				<tr>
					<th colspan="3" style="font-size: 20px; width: 980px; text-align: center; vertical-align: center;"> 구매 완료 </th>
				</tr>
			</thead>
			<tbody
				style="font-size: 16px; background-color: #F2F2F1; border: 1px solid #F2F2F1;">
				<tr>
					<th colspan="3" style="height: 150px; font-size: 35px; text-align: center; vertical-align: middle;"> 구매가 완료 되었습니다. </th>
				</tr>
				<tr>
					<td colspan="3" style="height: 80px; font-size: 25px; text-align: center; vertical-align: center; font-weight: bold; color: #5E6B9F;"> 상품정보 </td>
				</tr>
				<tr></tr>
				<tr>
					<td rowspan="7" width="40%">
					<c:forEach items="${listUploaded}" var="itemUploaded" varStatus="statusUploaded">
							<c:if test="${itemUploaded.defaultNy eq 1}">
								<img src="<c:out value="${itemUploaded.path}"/>
								<c:out value="${itemUploaded.uuidName}"/>" style="height: 350px; margin: 30px;" />
							</c:if>
						</c:forEach></td>
					<td style="text-align: middle; padding: 0; vertical-align: middle;"> 구매번호 </td>
					<td style="text-align: left; padding: 0; vertical-align: middle;"><b> NARIPROJECT </b></td>
				</tr>
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle;"> 상품명 </td>
					<td style="text-align: left; padding: 0; vertical-align: middle;"><b><c:out
								value="${item.oypdName}" /></b></td>
				</tr>
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle;"> 수량 </td>
					<td style="text-align: left; padding: 0; vertical-align: middle;"><b> ${rtCount} 개 </b></td>
				</tr>
				<tr>
					<c:set var="ymd" value="<%=new java.util.Date()%>" />
					<td style="text-align: left; padding: 0; vertical-align: middle;"> 구매날짜 </td>
					<td style="text-align: left; padding: 0; vertical-align: middle;">
						<b><fmt:formatDate value="${ymd}" pattern="YYYY" /> 년 <fmt:formatDate
								value="${ymd}" pattern="MM" /> 월 <fmt:formatDate value="${ymd}"
								pattern="dd" /> 일 </b>
					</td>
				</tr>
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle;"> 적립포인트 </td>
					<td style="text-align: left; padding: 0; vertical-align: middle;"><b><fmt:formatNumber value="${rtPoint}" /> P </b></td>
				</tr>

				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle;"> 결제방식 </td>
					<td style="text-align: left; padding: 0; vertical-align: middle;">
						<b> 카카오페이 </b>
					</td>
				</tr>
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle;"> 결제금액 </td>
					<td style="text-align: left; padding: 0; vertical-align: middle;"><b
						style="color: red;"> <fmt:formatNumber value="${rtFinalPrice}" /> 원 </b></td>
				</tr>
				<tr>
					<th colspan="3"
						style="height: 120px; font-size: 25px; text-align: center; vertical-align: middle; font-weight: bold; color: #5E6B9F;"> 구매자 정보 </th>
				</tr>
				<c:if test="${sessSeq ne '0'}">
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle; height: 37px;">
					<span style="margin-left: 240px;">이름</span></td>
					<td colspan="2" style="text-align: left; padding: 0; vertical-align: middle;">
					<b style="margin-left: 140px;">
					<c:out value="${itemMember.oymbName}" /></b></td>
				</tr>
				
				<c:forEach items="${listPhone}" var="item" varStatus="statusTelecom">
						<c:choose>
							<c:when test="${item.oympDefaultNy eq 1}">
								<c:set var="oympNumber1" value="${item.oympNumber}" />
								<c:set var="oympTelecom1" value="${item.oympTelecomCd}" />
							</c:when>
							<c:when test="${item.oympDefaultNy eq 0}">
								<c:set var="oympNumber0" value="${item.oympNumber}" />
								<c:set var="oympTelecom0" value="${item.oympTelecomCd}" />
							</c:when>
							<c:otherwise></c:otherwise>
						</c:choose>
					</c:forEach>
				
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle; height: 37px;">
					<span style="margin-left: 240px;">핸드폰번호</span></td>
					<td colspan="2" style="text-align: left; padding: 0; vertical-align: middle;">
						<b style="margin-left: 140px;"> <c:set var="numberPhone" value="${oympNumber1}" />
							<c:choose>
								<c:when test="${fn:length(numberPhone) eq 10}">
									<c:out value="${fn:substring(numberPhone,0,3)}" />
									- <c:out value="${fn:substring(numberPhone,3,6)}" />
									- <c:out value="${fn:substring(numberPhone,6,10)}" />
								</c:when>
								<c:otherwise>
									<c:out value="${fn:substring(numberPhone,0,3)}" />
									- <c:out value="${fn:substring(numberPhone,3,7)}" />
									- <c:out value="${fn:substring(numberPhone,7,11)}" />
								</c:otherwise>
							</c:choose>
					</b>
					</td>
				</tr>
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle; height: 37px;">
					<span style="margin-left: 240px;">주소</span></td>
					<td colspan="2" style="text-align: left; padding: 0; vertical-align: middle;">
						<b style="margin-left: 140px;">
						<c:out value="${itemMember.oymaZipCode}" /></b>
					</td>
				</tr>
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle; height: 37px;">
					<span style="margin-left: 140px;"></span></td>
					<td colspan="2" style="text-align: left; padding: 0; vertical-align: middle;">
						<b style="margin-left: 140px;">
						<c:out value="${itemMember.oymaAddress1}" /></b>
					</td>
				</tr>
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle; height: 37px;">
					<span style="margin-left: 140px;"></span></td>
					<td colspan="2" style="text-align: left; padding: 0; vertical-align: middle;">
						<b style="margin-left: 140px;">
						<c:out value="${itemMember.oymaAddress2}" /></b>
					</td>
				</tr>
				</c:if>
				<!-- 카카로 로그인 -->
				<c:if test="${sessSeq eq '0'}">
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle; height: 37px;">
					<span style="margin-left: 240px;">이름</span></td>
					<td colspan="2" style="text-align: left; padding: 0; vertical-align: middle;">
					<b style="margin-left: 140px;">
					<c:out value="${rtName}"/></b></td>
				</tr>
				
				<c:forEach items="${listPhone}" var="item" varStatus="statusTelecom">
						<c:choose>
							<c:when test="${item.oympDefaultNy eq 1}">
								<c:set var="oympNumber1" value="${item.oympNumber}" />
								<c:set var="oympTelecom1" value="${item.oympTelecomCd}" />
							</c:when>
							<c:when test="${item.oympDefaultNy eq 0}">
								<c:set var="oympNumber0" value="${item.oympNumber}" />
								<c:set var="oympTelecom0" value="${item.oympTelecomCd}" />
							</c:when>
							<c:otherwise></c:otherwise>
						</c:choose>
					</c:forEach>
				
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle; height: 37px;">
					<span style="margin-left: 240px;">핸드폰번호</span></td>
					<td colspan="2" style="text-align: left; padding: 0; vertical-align: middle;">
						<b style="margin-left: 140px;"> <c:set var="numberPhone" value="${rtNumber}"/>
							<c:choose>
								<c:when test="${fn:length(numberPhone) eq 10}">
									<c:out value="${fn:substring(numberPhone,0,3)}" />
									- <c:out value="${fn:substring(numberPhone,3,6)}" />
									- <c:out value="${fn:substring(numberPhone,6,10)}" />
								</c:when>
								<c:otherwise>
									<c:out value="${fn:substring(numberPhone,0,3)}" />
									- <c:out value="${fn:substring(numberPhone,3,7)}" />
									- <c:out value="${fn:substring(numberPhone,7,11)}" />
								</c:otherwise>
							</c:choose>
					</b>
					</td>
				</tr>
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle; height: 37px;">
					<span style="margin-left: 240px;">주소</span></td>
					<td colspan="2" style="text-align: left; padding: 0; vertical-align: middle;">
						<b style="margin-left: 140px;">
						<c:out value="${rtZipcode}"/></b>
					</td>
				</tr>
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle; height: 37px;">
					<span style="margin-left: 140px;"></span></td>
					<td colspan="2" style="text-align: left; padding: 0; vertical-align: middle;">
						<b style="margin-left: 140px;">
						<c:out value="${rtAddress1}"/></b>
					</td>
				</tr>
				<tr>
					<td style="text-align: left; padding: 0; vertical-align: middle; height: 37px;">
					<span style="margin-left: 140px;"></span></td>
					<td colspan="2" style="text-align: left; padding: 0; vertical-align: middle;">
						<b style="margin-left: 140px;">
						<c:out value="${rtAddress2}"/></b>
					</td>
				</tr>
				</c:if>
				
				<tr style="height: 50px;">
					<td colspan="3"></td>
				</tr>

				<tr style="background-color: #F2F2F1; text-align: left; vertical-align: center; font-size: 15px; border: 1px solid #F2F2F1;">
					<td colspan="3" style="border-top: 1px solid #F2F2F1; padding: 30px; padding-left: 150px; padding-bottom: 20px;">
						<b>ALL LIVE YOUNG 을 이용해주셔서 감사합니다.</b></br>
						<p style="margin-top: 10px;">
							출고일은 영업일 기준 1~3일이내로 출고됩니다.</br> 택배 신청 물량이 많거나 해당도로의 교통사정, 지역에 따라 다소
							늦어질 수 있습니다. 이점 양해 바랍니다.
						</p>
					</td>
				</tr>
				<tr
					style="background-color: #F2F2F1; text-align: left; vertical-align: center; font-size: 15px; border: 1px solid #F2F2F1; border-bottom: 1px solid #F2F2F1;">
					<td colspan="3" style="text-align: center;"><a
						href="/allLive/allLiveMain" style="margin-right: 10px;">
							<button type="button" class="btn btn-success btn-lg mb-4">홈
								화면으로</button>
					</a> </td>
				</tr>
				<tr style="background-color: #FFE488; border: 1px solid #FFE488;">
					<td
						style="text-align: left; vertical-align: top; padding: 30px; padding-left: 100px; padding-bottom: 0;">
						<b>구매 유의사항</b>
					</td>
					<td colspan="2"
						style="text-align: left; padding-bottom: 30px; padding-top: 30px; font-size: 16px;">
						교환/반품/환불의 경우 규정을 확인해주시기 바랍니다.</br> 기타 다른 문의 사항이 있을 시 매장으로 문의주시기 바랍니다.
						(1500-1000)
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="container-footer">
		<footer class="py-3 my-4">
			<ul class="nav justify-content-center border-bottom pb-3 mb-3">
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-muted">Home</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-muted">Features</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-muted">Pricing</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-muted">FAQs</a></li>
				<li class="nav-item"><a href="#"
					class="nav-link px-2 text-muted">About</a></li>
			</ul>
			<p class="text-center text-muted">© 2021 All Live Young, Inc</p>
		</footer>
	</div>



	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/resources/common/js/validation.js"></script>
	<script
		src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

	<script type="text/JavaScript"
		src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script type="text/javascript">
	
		$("#btnLogout").on(
				"click",
				function() {

					$.ajax({
						async : true,
						cache : false,
						type : "post",
						url : "/member/logoutProc"
						/* ,data : { "mvmmId" : $("#mvmmId").val(), "mvmmPassword" : $("#mvmmPassword").val()} */
						,
						success : function(response) {
							if (response.rt == "success") {
								location.href = "/";
							} else {
								// by pass
							}
						},
						error : function(jqXHR, textStatus, errorThrown) {
							alert("ajaxUpdate " + jqXHR.textStatus + " : "
									+ jqXHR.errorThrown);
						}
					});
				});
	</script>

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>-->
	<script
		src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
-->
</body>
</html>