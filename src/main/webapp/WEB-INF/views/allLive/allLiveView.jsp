<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<jsp:useBean id="CateServiceImpl"
	class="com.julyte.user.modules.cate.CateServiceImpl" />
<jsp:useBean id="CodeServiceImpl"
	class="com.julyte.user.modules.code.CodeServiceImpl" />
<!DOCTYPE HTML>

<html lang="ko">
<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"
	rel="stylesheet">


<title>allLiveYoung_View</title>

<style>
.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap a, .map_wrap a:hover, .map_wrap a:active {
	color: #000;
	text-decoration: none;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 500px;
}

#menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 250px;
	margin: 10px 0 30px 10px;
	padding: 5px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0.7);
	z-index: 1;
	font-size: 12px;
	border-radius: 10px;
}

.bg_white {
	background: #fff;
}

#menu_wrap hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 2px solid #5F5F5F;
	margin: 3px 0;
}

#menu_wrap .option {
	text-align: center;
}

#menu_wrap .option p {
	margin: 10px 0;
}

#menu_wrap .option button {
	margin-left: 5px;
}

#placesList li {
	list-style: none;
}

#placesList .item {
	position: relative;
	border-bottom: 1px solid #888;
	overflow: hidden;
	cursor: pointer;
	min-height: 65px;
}

#placesList .item span {
	display: block;
	margin-top: 4px;
}

#placesList .item h5, #placesList .item .info {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#placesList .item .info {
	padding: 10px 0 10px 55px;
}

#placesList .info .gray {
	color: #8a8a8a;
}

#placesList .info .jibun {
	padding-left: 26px;
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png)
		no-repeat;
}

#placesList .info .tel {
	color: #009900;
}

#placesList .item .markerbg {
	float: left;
	position: absolute;
	width: 36px;
	height: 37px;
	margin: 10px 0 0 10px;
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png)
		no-repeat;
}

#placesList .item .marker_1 {
	background-position: 0 -10px;
}

#placesList .item .marker_2 {
	background-position: 0 -56px;
}

#placesList .item .marker_3 {
	background-position: 0 -102px
}

#placesList .item .marker_4 {
	background-position: 0 -148px;
}

#placesList .item .marker_5 {
	background-position: 0 -194px;
}

#placesList .item .marker_6 {
	background-position: 0 -240px;
}

#placesList .item .marker_7 {
	background-position: 0 -286px;
}

#placesList .item .marker_8 {
	background-position: 0 -332px;
}

#placesList .item .marker_9 {
	background-position: 0 -378px;
}

#placesList .item .marker_10 {
	background-position: 0 -423px;
}

#placesList .item .marker_11 {
	background-position: 0 -470px;
}

#placesList .item .marker_12 {
	background-position: 0 -516px;
}

#placesList .item .marker_13 {
	background-position: 0 -562px;
}

#placesList .item .marker_14 {
	background-position: 0 -608px;
}

#placesList .item .marker_15 {
	background-position: 0 -654px;
}

#pagination {
	margin: 10px auto;
	text-align: center;
}

#pagination a {
	display: inline-block;
	margin-right: 10px;
}

#pagination .on {
	font-weight: bold;
	cursor: default;
	color: #777;
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

.priceB {
	font-size: 14px;
	line-height: 14px;
	color: #a9a9a9;
	text-decoration: line-through;
	text-align: right;
}

.priceR {
	font-size: 20px;
	color: #e02020;
	font-weight: 500;
	text-align: right;
}

dl>dt:before {
	counter-increment: dt;
	content: counter(dt) '.';
}

.pdbrand {
	height: 20px;
	line-height: 20px;
	color: #777777;
	font-weight: 700;
}

.pdNameB {
	height: 40px;
	color: #000000;
	font-size: 14px;
	text-align: center;
}

.pdText {
	text-align: center;
}
</style>

</head>


<body>

	<form id="allLiveView" name="allLiveView" method="post"
		action="/allLive/allLiveView" enctype="multipart/form-data">
		<input type="hidden" id="oypdSeq" name="oypdSeq"
			value="<c:out value="${vo.oypdSeq}"/>">

		<header>

			<div class="container-header">
				<div class="row">
					<div style="font-size: small;">
						<ul class="nav justify-content-end">
							<li class="nav-item"><a class="nav-link text-dark" href="#">회원가입</a>
							</li>
							<li class="nav-item"><a class="nav-link text-dark"
								href="javascript:goLogin();">로그인</a></li>
							<li class="nav-item"><a class="nav-link text-dark" href="#">장바구니</a>
							</li>
							<li class="nav-item"><a class="nav-link text-dark" href="#">주문배송</a>
							</li>
							<li class="nav-item"><a class="nav-link text-dark" href="#">고객센터</a>
							</li>
							<li class="nav-item"><a class="nav-link text-dark" href="#">매장안내</a>
							</li>
							<li class="nav-item"><a class="nav-link text-dark" href="#">Global</a>
							</li>

						</ul>

					</div>
				</div>


				<div class="row">
					<div class="col-auto col-sm-5">
						<a class="navbar-brand me-0 px-3" href="/allLive/allLiveMain"><img
							src="/resources/user/image/h1_logo.png" width="90%"></a>
					</div>
					<div class="col-auto d-md-none">


						<div class="btn-group btn-group-lg" role="group"
							aria-label="Basic outlined example">
							<nav class="navbar fixed-bottom navbar-light bg-light">


								<a class="navbar-brand" href="#"><button
										class="btn btn-outline-primary navbar-toggler position-relative d-md-none collapsed"
										type="button" data-bs-toggle="collapse"
										data-bs-target="#sidebarMenu" aria-controls="sidebarMenu"
										aria-expanded="false" aria-label="Toggle navigation">
										<span class="navbar-toggler-icon"></span>
									</button></a> <a href="#"><button type="button"
										class="btn btn-outline-primary">
										<i class="fa-solid fa-magnifying-glass"></i>
									</button></a> <a href="#"><button type="button"
										class="btn btn-outline-primary">
										<i class="fa-solid fa-magnifying-glass"></i>
									</button></a> <a href="#"><button type="button"
										class="btn btn-outline-primary">
										<i class="fa-solid fa-house"></i>
									</button></a> <a href="#"><button type="button"
										class="btn btn-outline-primary">
										<i class="fa-solid fa-user"></i>
									</button></a> <a href="#"><button type="button"
										class="btn btn-outline-primary">
										<i class="fa-solid fa-cart-shopping"></i>
									</button></a>

							</nav>
						</div>
					</div>



					<div class="col-6 col-sm-2" style="margin-top: 30px;">

						<input type="text" class="form-control search-input"
							placeholder="Search...">
					</div>
					<div class="col-6 col-sm-1" style="margin-top: 30px;">
						<button type="button" class="btn search-button">
							<i class="fas fa-search"></i>
						</button>

					</div>

					<div class="col-auto col-sm-4" style="margin-top: 30px;">
						<ul class="nav">
							<li class="nav-item"><a href="#" class="nav-link">오늘드림</a></li>
							<li class="nav-item"><a href="#" class="nav-link">관심
									매장소식</a></li>
							<li class="nav-item"><a href="#" class="nav-link">방금 본
									상품</a></li>
						</ul>
					</div>
				</div>

				<br>

				<ul class="nav nav-top">
					<li class="nav-item nav-item-top"><a class="nav-link" href="#">랭킹</a></li>
					<li class="nav-item nav-item-top"><a class="nav-link" href="#">기초화장품</a></li>
					<li class="nav-item nav-item-top"><a class="nav-link" href="#">더모
							코스메틱</a></li>
					<li class="nav-item nav-item-top"><a class="nav-link" href="#">메이크업
							· 네일</a></li>
					<li class="nav-item nav-item-top"><a class="nav-link" href="#">바디케어</a></li>
					<li class="nav-item nav-item-top"><a class="nav-link" href="#">헤어케어</a></li>
					<li class="nav-item nav-item-top"><a class="nav-link" href="#">향수/디퓨저</a></li>
					<li class="nav-item nav-item-top"><a class="nav-link" href="#">미용소품</a></li>
					<li class="nav-item nav-item-top"><a class="nav-link" href="#">남성</a></li>
					<li class="nav-item nav-item-top"><a class="nav-link" href="#">건강/위생용품</a></li>
				</ul>
			</div>
		</header>



		<!-- <div class="row"></div> -->

		<main>
			<div class="container-main">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">홈</a></li>
						<li class="breadcrumb-item">관리자</li>
						<li class="breadcrumb-item active">상품관리</li>
						<li class="breadcrumb-item active" aria-current="page">상품등록</li>
					</ol>
				</nav>

				<div class="row">


					<div class="col-6">

						<label for="file0" class="form-label input-file-button">메인
							상품 사진 등록</label> <img style="width: 500px;" id="preview-image0" src="">
						<input type="file" class="form-control form-control-sm mb-1"
							id="file0" name="file0" multiple onChange="upload(0,2);"
							style="display: none;">
						<div class="addScroll">
							<ul id="ulFile0" class="list-group"></ul>
						</div>



						<c:forEach items="${listUploaded}" var="itemUploaded"
							varStatus="statusUploaded">
							<c:choose>
								<c:when
									test="${itemUploaded.type eq 0 && itemUploaded.size ne 0}">
									<img id="mainimage"
										src="<c:out value="${itemUploaded.path}"/><c:out value="${itemUploaded.uuidName}"/>">
								</c:when>
								<c:when
									test="${itemUploaded.type eq 0 && itemUploaded.size eq 0}">
									<p style="font-size: 13px; font-style: italic;">선택된 파일이
										없습니다!</p>
								</c:when>
								<c:otherwise></c:otherwise>
							</c:choose>
						</c:forEach>
					</div>


					<div class="col-6">
						<label for="formFile" class="form-label">상품 분류</label> <label
							for="formFile" class="form-label">판매여부</label> <select
							class="form-select" id="oyspSaleNy" name="oyspSaleNy">
							<option value="" selected>::판매여부::</option>
							<option value="1"
								<c:if test="${item.oyspSaleNy eq 1}">selected</c:if>>Y</option>
							<option value="0"
								<c:if test="${item.oyspSaleNy eq 0}">selected</c:if>>N</option>
						</select> <label for="formFile" class="form-label">PB여부</label> <select
							class="form-select" id="oyspExclusiveNy" name="oyspExclusiveNy">
							<option value="" selected>::PB::</option>
							<option value="1"
								<c:if test="${item.oyspExclusiveNy eq 1}">selected</c:if>>Y</option>
							<option value="0"
								<c:if test="${item.oyspExclusiveNy eq 0}">selected</c:if>>N</option>
						</select>

						<c:set var="cate3"
							value="${CateServiceImpl.selectListCachedCode('3')}" />
						<label for="formFile" class="form-label">카테고리</label> <select
							class="form-select" id="oypdCate" name="oypdCate">
							<option value="" selected>::카테고리::</option>
							<c:forEach items="${cate3}" var="itemCate3"
								varStatus="statusCate3">
								<option value="<c:out value="${itemCate3.oyctSeq}"/>"
									<c:if test="${item.oypdCate eq itemCate3.oyctSeq }">selected</c:if>>
									<c:out value="${itemCate3.oyctName}" /></option>
							</c:forEach>
						</select>

						<c:set var="codeBrand"
							value="${CodeServiceImpl.selectListCachedCode('16')}" />

						<label for="formFile" class="form-label">브랜드</label> <select
							class="form-select" id="oypdBrandCd" name="oypdBrandCd">
							<option value="" selected>::브랜드::</option>
							<c:forEach items="${codeBrand}" var="itemBrand"
								varStatus="statusBrand">

								<option value="<c:out value="${itemBrand.oycdSeq}"/>"
									<c:if test="${item.oypdBrandCd eq itemBrand.oycdSeq }">selected</c:if>>
									<c:out value="${itemBrand.oycdName}" /></option>

							</c:forEach>
						</select>



						<hr>
						<label for="formFile" class="form-label">상품 상세</label> <label
							for="formFile" class="form-label">상품명</label> <input type="text"
							class="form-control" id="oypdName" name="oypdName"
							value="<c:out value="${item.oypdName}"/>"><br> <label
							for="formFile" class="form-label">판매가</label> <input type="text"
							class="form-control" id="oypdPrice" name="oypdPrice"
							value="<c:out value="${item.oypdPrice}"/>"><br> <label
							for="formFile" class="form-label">행사가</label> <input type="text"
							class="form-control" id="oyspSalePrice" name="oyspSalePrice"
							value="<c:out value="${item.oyspSalePrice}"/>"><br>
						<label for="formFile" class="form-label">행사시작일</label> <input
							type="text" class="form-control" id="oyspSalePeriodStart"
							name="oyspSalePeriodStart"
							value="<c:out value="${item.oyspSalePeriodStart}"/>"><br>
						<label for="formFile" class="form-label">행사종료일</label> <input
							type="text" class="form-control" id="oyspSalePeriodEnd"
							name="oyspSalePeriodEnd"
							value="<c:out value="${item.oyspSalePeriodEnd}"/>"><br>
						<hr>
						<label for="formFile" class="form-label">행사 분류</label>
						<div class="input-group">
							<div class="form-check" style="padding-right: 50px;">
								<input class="form-check-input" type="radio" name="" id="">
								<span class="badge rounded-pill bg-primary">세일</span>
							</div>
							<div class="form-check" style="padding-right: 50px;">
								<input class="form-check-input" type="radio" name="" id="">
								<span class="badge rounded-pill bg-secondary">쿠폰</span>
							</div>
							<div class="form-check" style="padding-right: 50px;">
								<input class="form-check-input" type="radio" name="" id="">
								<span class="badge rounded-pill bg-success">증정</span>
							</div>
							<div class="form-check" style="padding-right: 50px;">
								<input class="form-check-input" type="radio" name="" id="">
								<span class="badge rounded-pill bg-danger">오늘드림</span>
							</div>
							<div class="form-check" style="padding-right: 50px;">
								<input class="form-check-input" type="radio" name="" id="">
								<span class="badge rounded-pill bg-warning">1+1</span>
							</div>
							<div class="form-check" style="padding-right: 50px;">
								<input class="form-check-input" type="radio" name="" id="">
								<span class="badge rounded-pill bg-warning">2+1</span>
							</div>
							<div class="form-check" style="padding-right: 50px;">
								<input class="form-check-input" type="radio" name="" id="">
								<span class="badge rounded-pill bg-info">무배</span>
							</div>
						</div>
						<hr>
						<label for="formFile" class="form-label">상품 정보</label> <label
							for="formFile" class="form-label">용량 또는 중량</label> <input
							type="text" class="form-control" id="oypdVolumeWeight"
							name="oypdVolumeWeight"
							value="<c:out value="${item.oypdVolumeWeight}"/>"><br>
						<label for="formFile" class="form-label">제품 주요 사양</label> <input
							type="text" class="form-control" id="oypdIdeal" name="oypdIdeal"
							value="<c:out value="${item.oypdIdeal}"/>"><br> <label
							for="formFile" class="form-label">사용기간(개봉 후 사용기간)</label> <input
							type="text" class="form-control" id="oypdExpirationDate"
							name="oypdExpirationDate"
							value="<c:out value="${item.oypdExpirationDate}"/>"><br>
						<label for="formFile" class="form-label">사용방법</label> <input
							type="text" class="form-control" id="oypdHowtoUse"
							name="oypdHowtoUse" value="<c:out value="${item.oypdHowtoUse}"/>"><br>

						<c:set var="codeManufacturer"
							value="${CodeServiceImpl.selectListCachedCode('101')}" />
						<label for="formFile" class="form-label">화장품제조업자</label> <select
							class="form-select" id="oypdManufacturerCd"
							name="oypdManufacturerCd">
							<option value="" selected>::제조사::</option>
							<c:forEach items="${codeManufacturer}" var="itemManufacturer"
								varStatus="statusManufacturer">

								<option value="<c:out value="${itemManufacturer.oycdSeq}"/>"
									<c:if test="${item.oypdManufacturerCd eq itemManufacturer.oycdSeq }">selected</c:if>>
									<c:out value="${itemManufacturer.oycdName}" /></option>
							</c:forEach>
						</select><br>

						<c:set var="codeDistributor"
							value="${CodeServiceImpl.selectListCachedCode('102')}" />
						<label for="formFile" class="form-label"> 화장품책임판매업자</label> <select
							class="form-select" id="oypdDistributorCd"
							name="oypdDistributorCd">
							<option value="" selected>::판매사::</option>
							<c:forEach items="${codeDistributor}" var="itemDistributor"
								varStatus="statusDistributor">

								<option value="<c:out value="${itemDistributor.oycdSeq}"/>"
									<c:if test="${item.oypdDistributorCd eq itemDistributor.oycdSeq }">selected</c:if>>
									<c:out value="${itemDistributor.oycdName}" /></option>

							</c:forEach>
						</select><br>

						<c:set var="codeCountry"
							value="${CodeServiceImpl.selectListCachedCode('103')}" />
						<label for="formFile" class="form-label">제조국</label> <select
							class="form-select" id="oypdCountryCd" name="oypdCountryCd">
							<option value="" selected>::제조국::</option>
							<c:forEach items="${codeCountry}" var="itemCountry"
								varStatus="statusCountry">

								<option value="<c:out value="${itemCountry.oycdSeq}"/>"
									<c:if test="${item.oypdCountryCd eq itemCountry.oycdSeq }">selected</c:if>>
									<c:out value="${itemCountry.oycdName}" /></option>

							</c:forEach>
						</select><br> <label for="formFile" class="form-label">화장품법에
							따라 기재해야 하는 모든 성분</label> <input type="text" class="form-control"
							id="oypdIngredients" name="oypdIngredients"
							value="<c:out value="${item.oypdIngredients}"/>"><br>
						<label for="formFile" class="form-label">기능성 화장품 식품의약품안전처
							심사필 여부</label> <select class="form-select" id="oypdFunctionalNy"
							name="oypdFunctionalNy">
							<option value="" selected>::심사필 여부::</option>

							<option value="1"
								<c:if test="${item.oypdFunctionalNy eq 1}">selected</c:if>>Y</option>
							<option value="0"
								<c:if test="${item.oypdFunctionalNy eq 0}">selected</c:if>>N</option>

						</select> <label for="formFile" class="form-label">사용시 주의사항</label> <input
							type="text" class="form-control" id="oypdCautions"
							name="oypdCautions" value="<c:out value="${item.oypdCautions}"/>"><br>
						<label for="formFile" class="form-label">품질보증기준</label> <input
							type="text" class="form-control" id="oypdQaStandard"
							name="oypdQaStandard"
							value="<c:out value="${item.oypdQaStandard}"/>"><br>
						<label for="formFile" class="form-label">소비자상담 전화번호</label> <input
							type="text" class="form-control" id="oypdCustomerService"
							name="oypdCustomerService"
							value="<c:out value="${item.oypdCustomerService}"/>"><br>
						<br>
						<hr>
						<br> <a href="javaScript:goUpdt();">
							<button type="button" class="btn btn-success btn-lg">상품수정</button>
						</a>
					</div>

				</div>

				<br>
				<hr>
				<br>
				<div class="row">
					<div class="map_wrap">

						<div id="map"
							style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
						<div id="menu_wrap" class="bg_white">
							<div class="option">
								<div>
									<form onsubmit="searchPlaces(); return false;">
										키워드 : <input type="text" value="올리브영" id="keyword" size="15">
										<button type="submit">검색하기</button>
									</form>
								</div>
							</div>
							<hr>
							<ul id="placesList"></ul>
							<div id="pagination"></div>
						</div>
					</div>

				</div>

				<hr>
				<h2>이런 에센스 / 크림 상품은 어떠세요?</h2>
				<div class="row">
					<div class="col-2">
						<img src="/resources/user/image/this1jpg.jpg" class="rounded"
							alt="..." width="100px" height="100px">
					</div>
					<div class="col-2">
						<p>
							[단독기획]구달 청귤 비타C잡티케<br>어 크림 75ml 기획(+크림...
						</p>
						<br>
						<del>27000원</del>
						<p>21600원</p>
					</div>
					<div class="col-2">
						<img src="/resources/user/image/this2.jpg" class="rounded"
							alt="..." width="100px" height="100px">
					</div>
					<div class="col-2">
						<p>
							[한정기획]라네즈 워터뱅크 블루히<br>알루로닉 크림 45ml_중건성...
						</p>
						<br>
						<del>39000원</del>
						<p>28400원</p>
					</div>
					<div class="col-2">
						<img src="/resources/user/image/this3.jpg" class="rounded"
							alt="..." width="100px">
					</div>
					<div class="col-2">
						<p>
							[단독기획]라운드랩 자작나무 수분<br>크림 더블기획 (80ml+80ml)
						</p>
						<br>
						<del>32000원</del>
						<p>29800원</p>
					</div>
				</div>
				<ul class="nav nav-tabs nav-tabs-p">
					<li class="nav-item nav-item-p"><a class="nav-link active"
						aria-current="page" href="#">상품설명</a></li>
					<li class="nav-item nav-item-p"><a class="nav-link" href="#">구매정보</a></li>
					<li class="nav-item nav-item-p"><a class="nav-link" href="#">리뷰</a></li>
					<li class="nav-item nav-item-p"><a class="nav-link">Q&A</a></li>
				</ul>

				<div class="row row-detail">

					<label for="file1" class="form-label input-file-button">(상세)메인
						상품 사진 등록</label> <img style="width: 500px;" id="preview-image1" src="">
					<input type="file" class="form-control form-control-sm mb-1"
						id="file1" name="file1" multiple onChange="upload(1,2);"
						style="display: none;">
					<div class="addScroll">
						<ul id="ulFile1" class="list-group"></ul>
					</div>


					<c:forEach items="${listUploaded}" var="itemUploaded"
						varStatus="statusUploaded">
						<c:choose>
							<c:when
								test="${itemUploaded.type eq 1 && itemUploaded.size ne 0}">
								<img id="mainImage"
									src="<c:out value="${itemUploaded.path}"/><c:out value="${itemUploaded.uuidName}"/>"
									width="510px">
							</c:when>

							<c:when
								test="${itemUploaded.type eq 1 && itemUploaded.size eq 0}">
								<p style="font-size: 13px; font-style: italic;">선택된 파일이
									없습니다!</p>
							</c:when>
							<c:otherwise></c:otherwise>
						</c:choose>
					</c:forEach>
				</div>
			</div>

		</main>

		<footer class="py-3 my-4">
			<div class="container-footer">

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

			</div>

		</footer>




	</form>

	<script
		src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/resources/js/validation.js"></script>
	<script src="/resources/js/commonXdmin.js"></script>
	<script src="/resources/js/common.js"></script>

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=09c29750f01b8ca73dc6135b998baf4b&libraries=services"></script>
	<script>
		// 마커를 담을 배열입니다
		var markers = [];

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places();

		// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
			zIndex : 1
		});

		// 키워드로 장소를 검색합니다
		searchPlaces();

		// 키워드 검색을 요청하는 함수입니다
		function searchPlaces() {

			var keyword = document.getElementById('keyword').value;

			if (!keyword.replace(/^\s+|\s+$/g, '')) {
				alert('키워드를 입력해주세요!');
				return false;
			}

			// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
			ps.keywordSearch(keyword, placesSearchCB);
		}

		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
			if (status === kakao.maps.services.Status.OK) {

				// 정상적으로 검색이 완료됐으면
				// 검색 목록과 마커를 표출합니다
				displayPlaces(data);

				// 페이지 번호를 표출합니다
				displayPagination(pagination);

			} else if (status === kakao.maps.services.Status.ZERO_RESULT) {

				alert('검색 결과가 존재하지 않습니다.');
				return;

			} else if (status === kakao.maps.services.Status.ERROR) {

				alert('검색 결과 중 오류가 발생했습니다.');
				return;

			}
		}

		// 검색 결과 목록과 마커를 표출하는 함수입니다
		function displayPlaces(places) {

			var listEl = document.getElementById('placesList'), menuEl = document
					.getElementById('menu_wrap'), fragment = document
					.createDocumentFragment(), bounds = new kakao.maps.LatLngBounds(), listStr = '';

			// 검색 결과 목록에 추가된 항목들을 제거합니다
			removeAllChildNods(listEl);

			// 지도에 표시되고 있는 마커를 제거합니다
			removeMarker();

			for (var i = 0; i < places.length; i++) {

				// 마커를 생성하고 지도에 표시합니다
				var placePosition = new kakao.maps.LatLng(places[i].y,
						places[i].x), marker = addMarker(placePosition, i), itemEl = getListItem(
						i, places[i]); // 검색 결과 항목 Element를 생성합니다

				// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
				// LatLngBounds 객체에 좌표를 추가합니다
				bounds.extend(placePosition);

				// 마커와 검색결과 항목에 mouseover 했을때
				// 해당 장소에 인포윈도우에 장소명을 표시합니다
				// mouseout 했을 때는 인포윈도우를 닫습니다
				(function(marker, title) {
					kakao.maps.event.addListener(marker, 'mouseover',
							function() {
								displayInfowindow(marker, title);
							});

					kakao.maps.event.addListener(marker, 'mouseout',
							function() {
								infowindow.close();
							});

					itemEl.onmouseover = function() {
						displayInfowindow(marker, title);
					};

					itemEl.onmouseout = function() {
						infowindow.close();
					};
				})(marker, places[i].place_name);

				fragment.appendChild(itemEl);
			}

			// 검색결과 항목들을 검색결과 목록 Element에 추가합니다
			listEl.appendChild(fragment);
			menuEl.scrollTop = 0;

			// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
			map.setBounds(bounds);
		}

		// 검색결과 항목을 Element로 반환하는 함수입니다
		function getListItem(index, places) {

			var el = document.createElement('li'), itemStr = '<span class="markerbg marker_'
					+ (index + 1)
					+ '"></span>'
					+ '<div class="info">'
					+ '   <h5>' + places.place_name + '</h5>';

			if (places.road_address_name) {
				itemStr += '    <span>' + places.road_address_name + '</span>'
						+ '   <span class="jibun gray">' + places.address_name
						+ '</span>';
			} else {
				itemStr += '    <span>' + places.address_name + '</span>';
			}

			itemStr += '  <span class="tel">' + places.phone + '</span>'
					+ '</div>';

			el.innerHTML = itemStr;
			el.className = 'item';

			return el;
		}

		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position, idx, title) {
			var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
			imageSize = new kakao.maps.Size(36, 37), // 마커 이미지의 크기
			imgOptions = {
				spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
				spriteOrigin : new kakao.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
				offset : new kakao.maps.Point(13, 37)
			// 마커 좌표에 일치시킬 이미지 내에서의 좌표
			}, markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize,
					imgOptions), marker = new kakao.maps.Marker({
				position : position, // 마커의 위치
				image : markerImage
			});

			marker.setMap(map); // 지도 위에 마커를 표출합니다
			markers.push(marker); // 배열에 생성된 마커를 추가합니다

			return marker;
		}

		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
			for (var i = 0; i < markers.length; i++) {
				markers[i].setMap(null);
			}
			markers = [];
		}

		// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
		function displayPagination(pagination) {
			var paginationEl = document.getElementById('pagination'), fragment = document
					.createDocumentFragment(), i;

			// 기존에 추가된 페이지번호를 삭제합니다
			while (paginationEl.hasChildNodes()) {
				paginationEl.removeChild(paginationEl.lastChild);
			}

			for (i = 1; i <= pagination.last; i++) {
				var el = document.createElement('a');
				el.href = "#";
				el.innerHTML = i;

				if (i === pagination.current) {
					el.className = 'on';
				} else {
					el.onclick = (function(i) {
						return function() {
							pagination.gotoPage(i);
						}
					})(i);
				}

				fragment.appendChild(el);
			}
			paginationEl.appendChild(fragment);
		}

		// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
		// 인포윈도우에 장소명을 표시합니다
		function displayInfowindow(marker, title) {
			var content = '<div style="padding:5px;z-index:1;">' + title
					+ '</div>';

			infowindow.setContent(content);
			infowindow.open(map, marker);
		}

		// 검색결과 목록의 자식 Element를 제거하는 함수입니다
		function removeAllChildNods(el) {
			while (el.hasChildNodes()) {
				el.removeChild(el.lastChild);
			}
		}
	</script>

<!-- 	<script type="text/javascript">
	function readImage(input) {
	    // 인풋 태그에 파일이 있는 경우
	    if(input.files && input.files[0]) {
	        // 이미지 파일인지 검사 (생략)
	        // FileReader 인스턴스 생성
	        const reader = new FileReader()
	        // 이미지가 로드가 된 경우
	        reader.onload = e => {
	            const previewImage = document.getElementById("preview-image0")
	            previewImage.src = e.target.result
	        }
	        // reader가 이미지 읽도록 하기
	        reader.readAsDataURL(input.files[0])
	    }
	}
	// input file에 change 이벤트 부여
	const inputImage = document.getElementById("file0")
	inputImage.addEventListener("change", e => {
	    readImage(e.target)
	})
</script>

	<script type="text/javascript">
	function readImage(input) {
	    // 인풋 태그에 파일이 있는 경우
	    if(input.files && input.files[0]) {
	        // 이미지 파일인지 검사 (생략)
	        // FileReader 인스턴스 생성
	        const reader = new FileReader()
	        // 이미지가 로드가 된 경우
	        reader.onload = e => {
	            const previewImage = document.getElementById("preview-image1")
	            previewImage.src = e.target.result
	        }
	        // reader가 이미지 읽도록 하기
	        reader.readAsDataURL(input.files[0])
	    }
	}
	// input file에 change 이벤트 부여
	const inputImage = document.getElementById("file1")
	inputImage.addEventListener("change", e => {
	    readImage(e.target)
	})
</script> -->


	<script type="text/javascript">
		goUpdt = function() {
			$("#allLiveView").attr("action", "/allLive/allLiveUpdt");
			$("#allLiveView").submit();
		}
	</script>

	<script>
	upload = function(seq,div){
		
		$("#ulFile" + seq).children().remove();
		
		var fileCount = $("input[type=file]")[seq].files.length;
		
		if(checkUploadedTotalFileNumber(fileCount, seq) == false) {return false;}
		
		var totalFileSize;
		for(var i = 0; i < fileCount; i++){
			if(div==1){
				if(checkUploadedAllExt($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
			}else if(div==2){
				if(checkUploadedImageExt($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
			}else if(div==3){
				if(checkUploadedImageExt($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
			}else if(div==4){
				if(checkUploadedImageExt($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
			}else if(div==5){
				if(checkUploadedImageExt($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
			}else if(div==6){
				if(checkUploadedImageExt($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
			}else {
				return false;
			}
			
			if(checkUploadedEachFileSize($("input[type=file]")[seq].files[i].name, seq) == false) {return false;}
			totalFileSize += $("input[type=file]")[seq].files[i].size;
		}
		if(checkUploadedTotalFileSize(totalFileSize, seq) == false) {return false;}
		
		for(var i=0; i<fileCount; i++){
			addUploadLi(seq, i, $("input[type=file]")[seq].files[i].name);
		}
	}

	addUploadLi = function(seq,index,name){
		
		var ul_list = $("#ulFile0");
		
		li = '<li id="li_'+seq+'_'+index+'" class="list-group-item d-flex justify-content-between align-item-center">';
		li = li + name;
		li = li + '<span class="badge bg-danger rounded-pill" onClick="delLi('+ seq +','+index +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
		li = li + '</li>';
		
		$("#ulFile"+seq).append(li);
	}
	
	delLi = function(seq, index){
		$("#li_"+seq+"_"+index).remove();
	}
	</script>

</body>
</html>