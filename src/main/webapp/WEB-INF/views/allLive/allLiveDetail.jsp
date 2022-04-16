<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<jsp:useBean id="CateServiceImpl" class="com.julyte.user.modules.cate.CateServiceImpl"/>
<jsp:useBean id="CodeServiceImpl" class="com.julyte.user.modules.code.CodeServiceImpl"/>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/893e1f7eb8.js" crossorigin="anonymous"></script>

<title>allLiveYoung_Detail</title>

<style>
.row-detail {
	margin-top: 5%;
	margin-left: 15%;
	margin-right: 15%;
	margin-bottom: 5%;
}

.nav-m {
	width: 100%;
}

.nav-item-m {
	width: 10%;
	text-align: center;
}

.nav-tabs-p {
	width: 100%;
}

.nav-item-p {
	width: 25%;
	text-align: center;
}

.container-header {
	margin-top: 1%;
	margin-bottom: 3%;
	margin-left: 12%;
	margin-right: 12%;
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
	line-height: 44px;
	font-size: 20px;
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

#mainimage {
	width: 510px;
	height: 510px;
	display: block;
	margin-left: auto;
	margin-right: auto;
	margin-top: 100px;
	margin-botton: auto;
	display: block;
}

#brand {
	display: inline-block;
	color: #000;
	line-height: 24px;
	padding-right: 13px;
}

#pdname {
	margin-top: 10px;
	font-size: 26px;
	line-height: 34px;
	color: #000;
}

#priceB {
	font-size: 16px;
	line-height: 20px;
	color: #a9a9a9;
	text-decoration: line-through;
}

#priceR {
	font-size: 28px;
	color: #e02020;
	font-weight: 500;
}
</style>

</head>


<body>

	<form id="allLiveDetail" name="allLiveDetail" method="post"
		action="/allLive/allLiveDetail">
		<header>
<div class="container-header">
			<div class="row">
				<div style="font-size: small;">
					<ul class="nav nav-t justify-content-end">
						<li class="nav-item"><a class="nav-link text-dark" href="#">회원가입</a>
						</li>
						<li class="nav-item nav-item-t"><a class="nav-link text-dark"
							href="javascript:goLogin();">로그인</a></li>
						<li class="nav-item nav-item-t"><a class="nav-link text-dark"
							href="#">장바구니</a></li>
						<li class="nav-item nav-item-t"><a class="nav-link text-dark"
							href="#">주문배송</a></li>
						<li class="nav-item nav-item-t"><a class="nav-link text-dark"
							href="#">고객센터</a></li>
						<li class="nav-item nav-item-t"><a class="nav-link text-dark"
							href="#">매장안내</a></li>
						<li class="nav-item nav-item-t"><a class="nav-link text-dark"
							href="#">Global</a></li>

					</ul>

				</div>
			</div>


			<div class="row">
				<div class="col-auto col-sm-5">
					<a class="navbar-brand me-0 px-3" href="/allLive/allLiveMain"><img
						src="/resources/user/image/h1_logo.png"></a>
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



				<div class="col-6 col-sm-3" style="margin-top: 30px;">

					<input type="text" class="form-control search-input"
						placeholder="Search...">
				</div>
				<div class="col-6 col-sm-1" style="margin-top: 30px;">
					<button type="button" class="btn search-button">
						<i class="fas fa-search"></i>
					</button>

				</div>

				<div class="col-auto col-sm-3" style="margin-top: 30px;">

					<ul class="nav">
						<li class="nav-item"><a href="#" class="nav-link">오늘드림</a></li>


						<li class="nav-item"><a href="#" class="nav-link">관심 매장소식</a></li>

						<li class="nav-item"><a href="#" class="nav-link">방금 본 상품</a></li>
					</ul>
				</div>
			</div>
<br>
	<ul class="nav nav-top">
				<li class="nav-item nav-item-top"><a class="nav-link" href="#">랭킹</a></li>
				<li class="nav-item nav-item-top"><a class="nav-link" href="#">기초화장품</a></li>
				<li class="nav-item nav-item-top"><a class="nav-link" href="#">더모 코스메틱</a></li>
				<li class="nav-item nav-item-top"><a class="nav-link" href="#">메이크업 · 네일</a></li>
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
					<li class="breadcrumb-item">스킨케어</li>
					<li class="breadcrumb-item active">에센스 / 크림</li>
					<li class="breadcrumb-item active" aria-current="page">크림</li>
				</ol>
			</nav>
			<div class="row">
				<div class="col-6">
				<c:if test="${item.type eq 0}">
					<img id="mainimage" src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>"></c:if>
				</div>
				<div class="col-6">
					<div id="brand"><c:out value="${item.oypdBrand}"/></div>
					<br>
					
					<div id="pdname"><c:out value="${item.oypdName}"/></div>
					
					<br>
					<div id="priceB">
					<fmt:formatNumber value="${item.oypdPrice}"/><span>원</span></div>
					<div id="priceR"><strong>
					<fmt:formatNumber value="${item.oyspSalePrice}"/></strong>
					<span>원</span></div>
					
					<b>혜택 정보</b>
					<br>
					<span class="badge rounded-pill bg-danger">세일</span>
					<span class="badge rounded-pill bg-success">쿠폰</span>
					<span class="badge rounded-pill bg-info">오늘드림</span>
					<br>
					<p>231명이 보고있어요<br>
					<hr>
					<br>

					<div class="col-12">
						<b>배송정보</b>
					</div>
					<br>
					<div class="row">
						<div class="col-2">
							<p>일반배송</p>
						</div>

						<div class="col-10">
							<p>| 2,500원 ( 20,000 원 이상 무료배송 )</p>
							<p>올리브영 배송 | 평균 6일 이내 배송</p>
						</div>
						<div class="col-2">
							<p>오늘드림</p>
						</div>

						<div class="col-10">
							<p>| 2,500원 또는 5,000원</p>
						</div>
					</div>


					<br>
					<hr>
					<br>


					<div class="col-12">
						<b>결제혜택</b>
					</div>
					<br>
					<div class="col-12">
						<p>THE CJ 카드 추가 10%할인</p>
						<p>CJ ONE 포인트 최대 2% 적립 예상</p>
					</div>

					<br>
					<hr>
					<br>

					<div class="mb-3">
						<label for="formFileMultiple" class="form-label">구매수량</label> <input
							class="form-control" type="number" id="formFileMultiple" multiple>
					</div>
					<div class="prd_total_price">
						<span class="tx_tit">상품금액 합계</span> <input type="hidden"
							id="totalCnt" value="1" name="totalCnt"> <input
							type="hidden" id="totalPrc" value="31900" name="totalPrc">


						<span class="tx_cont"><span class="tx_num" id="totalPrcTxt">31,900</span>원</span>

					</div>
					<br>
					<hr>
					<br> <input type="checkbox" id="deliveDay" name="qDelive"
						value="Y" class="o2oDeliveDay " data-attr="상품상세^오늘드림신청여부^오늘드림신청"><label
						for="deliveDay">오늘드림으로 받아 보시겠어요?</label><br>
					<div class="input-group">
						<button type="button" class="btn btn-outline-success">장바구니</button>
						<a href="/allLive/allLiveOrder"><button type="button"
								class="btn btn-success">바로구매</button></a>
					</div>

				</div>

			</div>
			<br>
			<hr>
			<br>
			<div class="row">
				<div class="col-3">
					<p class="title">증정품 안내</p>
				</div>
				<div class="col-6">
					<span class="txt">전 회원 바이오힐보 상품 30,000원 이상 구매 시, <span
						class="num">증정품 1개</span> 선착순 증정
					</span>
				</div>
				<div class="col-3">
					<a href="#">+7개 더보기</a>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-6">구매 가능 매장을 확인해보세요</div>
				<div class="col-6">바이오힐보 브랜드관</div>
			</div>
			<hr>
			<h2>이런 에센스 / 크림 상품은 어떠세요?</h2>
			<div class="row">
				<div class="col-2">
					<img src="/resources/user/image/this1jpg.jpg" class="rounded"
						alt="..." width="150px" height="150px">
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
						alt="..." width="150px" height="150px">
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
						alt="..." width="150px" height="150px">
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
			<ul class="nav nav-tabs-p">
				<li class="nav-item nav-item-p"><a class="nav-link active"
					aria-current="page" href="#">상품설명</a></li>
				<li class="nav-item nav-item-p"><a class="nav-link" href="#">구매정보</a></li>
				<li class="nav-item nav-item-p"><a class="nav-link" href="#">리뷰(771)</a></li>
				<li class="nav-item nav-item-p"><a class="nav-link">Q&A(27)</a></li>
			</ul>

			<div class="row row-detail">
				<c:if test="${item.type eq 1}">
					<img id="mainimage" src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>"></c:if>
			</div>
</div>s
		</main>


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






	</form>

	<script
		src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript">
		goLogin = function() {
			$("#allLiveDetail").attr("action", "/allLive/loginForm");
			$("#allLiveDetail").submit();
		}
	</script>
</body>
</html>