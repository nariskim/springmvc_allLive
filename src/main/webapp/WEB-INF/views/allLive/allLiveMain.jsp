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
<script src="https://kit.fontawesome.com/893e1f7eb8.js"
	crossorigin="anonymous"></script>
 
<title>allLiveYoung_Main</title>

<style>
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

#mainimage {
	width: auto !important;
	max-width: 215px;
	height: auto !important;
	max-height: 215px;
	display: block;
	margin-left: auto;
	margin-right: auto;
}

#mainall {
	width: auto !important;
	width: 430px;
	height: auto !important;
	height: 430px;
	padding: 20px;
	margin: 20px;
	border-style: none;
}

#adbanner {
	margin-left: auto;
	margin-right: auto;
}
</style>


</head>


<body>

<form id="allLiveMain" name="allLiveMain" method="post" action="/allLive/allLiveMain">
	<input type="hidden" id="oypdSeq" name="oypdSeq">
	
				


	
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
	

					<div id="carouselExampleIndicators" class="carousel slide"
						data-bs-ride="carousel">
						<div class="carousel-indicators">
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="0" class="active" aria-current="true"
								aria-label="Slide 1"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="1" aria-label="Slide 2"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="2" aria-label="Slide 3"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="3" aria-label="Slide 4"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="4" aria-label="Slide 5"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="5" aria-label="Slide 6"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="6" aria-label="Slide 7"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="7" aria-label="Slide 8"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="8" aria-label="Slide 9"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="9" aria-label="Slide 10"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="10" aria-label="Slide 11"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="11" aria-label="Slide 12"></button>
						</div>
						
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="/resources/user/image/1.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item">
								<img src="/resources/user/image/2.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item">
								<img src="/resources/user/image/3.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item">
								<img src="/resources/user/image/4.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item">
								<img src="/resources/user/image/5.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item">
								<img src="/resources/user/image/6.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item">
								<img src="/resources/user/image/7.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item">
								<img src="/resources/user/image/8.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item">
								<img src="/resources/user/image/9.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item">
								<img src="/resources/user/image/10.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item">
								<img src="/resources/user/image/11.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item">
								<img src="/resources/user/image/12.jpg" class="d-block w-100"
									alt="...">
							</div>
							
						</div>

						<button class="carousel-control-prev" type="button"
							data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>
						</header>


		<!-- <div class="row"></div> -->
		<main>




			<div class="container-main">
				<br>
				<div class="row mb-2">
					<div class="col-md-6">
						<a href="#"><img src="/resources/user/image/todayShip.jpg"
							class="img-fluid" width="100%"></a>
					</div>
					<div class="col-md-6">
						<a href="#"><img src="/resources/user/image/topCoupon.jpg"
							class="img-fluid" width="100%"></a>
					</div>
				</div>
				
				<div class="row mb-2">
					<div class="col-12">
						<br>
						<h1>인기상품</h1>
						<br>
					</div>
					<c:forEach items="${list}" var="item" varStatus="status">
						<c:if test="${item.oyspTypeCd eq 1417}">
							<div class="col-12 col-sm-3">
								<a href="javascript:goView(<c:out value="${item.oypdSeq}"/>);">
									<div class="card" id="mainall">
										<img id="mainimage" src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>">
										<div class="card-body">
											<div class="pdText">
												<div class="pdbrand">
													<c:out value="${item.oypdBrand}"/>
												</div>
												<br>
												<div class="pdNameB">
													<c:out value="${item.oypdName}"/>
												</div>
											</div>
											<br>
											<div class="priceB">
												<fmt:formatNumber value="${item.oypdPrice}"/>
												<span>원</span>
											</div>
											<div class="priceR">
												<fmt:formatNumber value="${item.oyspSalePrice}"/>
												<span>원</span>
											</div>
										</div>
									</div>
								</a>
								</div>
							<br>
						</c:if>
					</c:forEach>
				</div>
			</div>
		
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
	$("#allLiveMain").attr("action", "/allLive/loginForm");
	$("#allLiveMain").submit();
}

goView = function(seq) {
	$("#oypdSeq").val(seq);
	$("#allLiveMain").attr("action", "/allLive/allLiveDetail");
	$("#allLiveMain").submit();
}

</script>

</body>
</html>