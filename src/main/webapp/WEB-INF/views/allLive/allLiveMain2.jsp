<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

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

<title>allLiveYoung_Main2</title>

<style>
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

.container-footer{
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

.priceB {
	font-size: 14px;
	line-height: 14px;
	color: #a9a9a9;
	text-decoration: line-through;
}

.priceR {
	font-size: 20px;
	color: #e02020;
	font-weight: 500;
}
</style>


</head>


<body>

	<form id="allLiveMain2" name="allLiveMain2" method="post"
		action="/allLive/allLiveMain2">

		<header>
		<div class="container-header">
			<div class="row">
				<div style="font-size: small;">
					<ul class="nav justify-content-end">
						<li class="nav-item"><a class="nav-link text-dark"
							href="javascript:goLogout();">로그아웃</a></li>
						<li class="nav-item"><a class="nav-link text-dark" href="#">마이페이지</a></li>
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
					<a class="navbar-brand me-0 px-3" href="#"><img
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
				<li class="nav-item nav-item-top"><a class="nav-link" href="#">홈</a></li>
				<li class="nav-item nav-item-top"><a class="nav-link" href="#">오특</a></li>
				<li class="nav-item nav-item-top"><a class="nav-link" href="#">신상</a></li>
				<li class="nav-item nav-item-top"><a class="nav-link" href="#">랭킹</a></li>
				<li class="nav-item nav-item-top"><a class="nav-link" href="#">프리미엄관</a></li>
				<li class="nav-item nav-item-top"><a class="nav-link" href="#">기획전</a></li>
				<li class="nav-item nav-item-top"><a class="nav-link" href="#">세일</a></li>
				<li class="nav-item nav-item-top"><a class="nav-link" href="#">기프트카드</a></li>
				<li class="nav-item nav-item-top"><a class="nav-link" href="#">멤버십/쿠폰</a></li>
				<li class="nav-item nav-item-top"><a class="nav-link" href="#">이벤트</a></li>
			</ul>




</div>
			
<c:set var="cate1" value="${CateServiceImpl.selectListCachedCode('1')}"/>
<c:set var="cate2" value="${CateServiceImpl.selectListCachedCode('2')}"/>
<c:set var="cate3" value="${CateServiceImpl.selectListCachedCode('3')}"/>

			


		




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
						</div>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="/resources/user/image/1.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item active">
								<img src="/resources/user/image/2.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item active">
								<img src="/resources/user/image/3.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item active">
								<img src="/resources/user/image/4.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item active">
								<img src="/resources/user/image/5.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item active">
								<img src="/resources/user/image/6.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item active">
								<img src="/resources/user/image/7.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item active">
								<img src="/resources/user/image/8.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item active">
								<img src="/resources/user/image/9.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item active">
								<img src="/resources/user/image/10.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item active">
								<img src="/resources/user/image/11.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item active">
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
<c:set var="cate1" value="${CateServiceImpl.selectListCachedCode('1')}"/>
<c:set var="cate2" value="${CateServiceImpl.selectListCachedCode('2')}"/>
<c:set var="cate3" value="${CateServiceImpl.selectListCachedCode('3')}"/>

			




					<br>
										<div class="row mb-2">
					<div class="col-12"><br><h1>인기상품</h1><br></div>
							<c:forEach items="${list}" var="item" varStatus="status">
							<c:if test="${item.oyspTypeCd eq 1417 }">
							<div class="col-3">
							
								<a href="/allLive/allLiveDetail">
								
									<div class="card" style="width: 18rem;">
										<img src="/resources/user/image/term.jpeg"
											class="card-img-top" alt="...">
										<div class="card-body">
											<p class="card-text">
					
												<c:out value="${item.oypdName}"/><br>
												<div class="priceB"><c:out value="${item.oypdPrice}"/><span>원</span></div>
												<div class="priceR"><c:out value="${item.oyspSalePrice}"/><span>원</span></div>
											
											</p>
										</div>
									</div><br>
									
								</a> 
								</div>
								</c:if>
								</c:forEach>
								
								
				
							
		</div>			</div>
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
		goLogout = function() {
			/* 	if(validation()==false) return false; */
			$.ajax({
				async : true,
				cache : false,
				type : "post",
				url : "/allLive/logoutProc",
				data : {
					"oymbId" : $("#oymbId").val(),
					"oymbPassword" : $("#oymbPassword").val()
				},
				success : function(response) {
					if (response.rt == "success") {
						alert("로그아웃!")
						location.href = "/allLive/allLiveMain";
					} else {

					}
				},
				error : function(jqXHR, textStatus, errorThrown) {
					alert("ajaxUpdate " + jqXHR.textStatus + " : "
							+ jqXHR.errorThrown);
				}
			});
		}
	</script>

</body>
</html>