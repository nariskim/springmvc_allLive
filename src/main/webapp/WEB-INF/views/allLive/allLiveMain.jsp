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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/893e1f7eb8.js"
	crossorigin="anonymous"></script>

<title>allLiveYoung_Main</title>

<style>
header {
	margin-left: 5%;
	margin-right: 5%;
}

main {
	margin-top: 5%;
	margin-bottom: 5%;
	margin-left: 5%;
	margin-right: 5%;
}

.nav-top{
width:100%;
}
.nav-item-top{
width:10%;
text-align:center;
}
</style>


</head>


<body>
<form id="allLiveMain" name="allLiveMain" method="post" action="/allLive/allLiveMain">


<nav id="topBar" style="font-size: small;">
	<ul class="m-0">
		<li>
			<button type="button"  class="btn btn-primary btn-lg rounded-0" style="width: 110px; height: 115px;">
				<i class="bi bi-list fs-2"></i>
				<div class="btnText">카테고리</div>
			</button>
			<ul class="subMenu p-0">
				<c:forEach items="${cate1}" var="item1" varStatus="status1">
					<li><a>
							<c:out value="${item1.oyctName }" />
						</a>
						<ul class="subMenu p-0">
							<c:forEach items="${cate2}" var="item2" varStatus="status2">
								<c:if test="${item1.oyctSeq eq item2.oyctParents}">
									<li><a>
											<c:out value="${item2.oyctName}" />
										</a>
										<ul class="subMenu p-0">
											<c:forEach items="${cate3}" var="item3" varStatus="status3">
												<c:if test="${item2.oyctSeq eq item3.oyctParents}">
													<li><a>
															<c:out value="${item3.oyctName}" />
														</a></li>
												</c:if>
											</c:forEach>
										</ul></li>
								</c:if>
							</c:forEach>
						</ul></li>
				</c:forEach>
			</ul>
		</li>
	</ul>
</nav>


		

		<header>
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





		</header>


		<!-- <div class="row"></div> -->
		<main>
			<div class="row">
				<nav id="sidebarMenu"
					class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse show">
					<div class="position-sticky pt-3">


						<ul class="nav flex-column">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="#"> 카테고리 </a></li>
							<li class="nav-item"><a class="nav-link" href="#"> 기초화장품
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#"> 더모
									코스메틱 </a></li>
							<li class="nav-item"><a class="nav-link" href="#"> 메이크업
									/ 네일 </a></li>
							<li class="nav-item"><a class="nav-link" href="#"> 바디케어
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#"> 헤어케어
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#"> 향수 /
									디퓨저 </a></li>
							<li class="nav-item"><a class="nav-link" href="#"> 미용소품
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#"> 남성 </a></li>
							<li class="nav-item"><a class="nav-link" href="#"> 건강 /
									위생용품 </a></li>
							<li class="nav-item"><a class="nav-link" href="#"> 건강식품
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#"> 푸드 </a></li>
							<li class="nav-item"><a class="nav-link" href="#"> 라이프 /
									홈 </a></li>
							<li class="nav-item"><a class="nav-link" href="#"> 반려동물
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#"> 베이비 </a></li>

						</ul>


					</div>

				</nav>
				<div class="col-md-9 ms-sm-auto col-lg-10 px-md-4">


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
								<img src="/resources/user/image/pick1.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item">
								<img src="/resources/user/image/pick2.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item">
								<img src="/resources/user/image/pick3.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item">
								<img src="/resources/user/image/pick4.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item">
								<img src="/resources/user/image/pick6.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item">
								<img src="/resources/user/image/pick7.jpg" class="d-block w-100"
									alt="...">
							</div>
							<div class="carousel-item">
								<img src="/resources/user/image/pick8.jpg" class="d-block w-100"
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
					<br>
					<div class="row mb-2">
						<div class="col-md-6">
							<a href="#"><img src="/resources/user/image/todayShip.jpg"
								class="img-fluid" alt="..."></a>
						</div>
						<div class="col-md-6">
							<a href="#"><img src="/resources/user/image/topCoupon.jpg"
								class="img-fluid" alt="..."></a>
						</div>
					</div>
					<div class="row mb-2">
						<div class="col-md-6">
							<h2>
								유사한 고객님이<br>많이 구매했어요
							</h2>
							<br>
							<div class="input-group">
								<a href="/allLive/allLiveDetail">
									<div class="card" style="width: 18rem;">
										<img src="/resources/user/image/A00000016155902ko.jpg"
											class="card-img-top" alt="...">
										<div class="card-body">
											<p class="card-text">
												바이오힐보 프로바이오덤 리프팅<br>크림X마사저 기획(크림+마사저)...<br>51200원
												31900원
											</p>
										</div>
									</div>
								</a> <a href="#">
									<div class="card" style="width: 18rem;">
										<img src="/resources/user/image/A00000016230326ko.jpg"
											class="card-img-top" alt="...">
										<div class="card-body">
											<p class="card-text">
												[한정기획]라네즈 워터뱅크<br>블루히알루로닉 크림45ml_중건...<br>39000원
												29640원
											</p>
										</div>
									</div>
								</a>
							</div>

						</div>
						<div class="col-md-6">
							<h2>
								좋아하실만한<br>베스트 상품 추천해드려요
							</h2>
							<br>

							<div class="input-group">
								<a href="#">
									<div class="card" style="width: 18rem;">
										<img src="/resources/user/image/A00000014834414ko.jpg"
											class="card-img-top" alt="...">
										<div class="card-body">
											<p class="card-text">
												메디힐 레드락토 콜라겐 클리어<br>올영단독 SET (300ml+딥 해면...<br>24000원
												13200원
											</p>
										</div>
									</div>
								</a> <a href="#">
									<div class="card" style="width: 18rem;">
										<img src="/resources/user/image/A00000015416912ko.jpg"
											class="card-img-top" alt="...">
										<div class="card-body">
											<p class="card-text">
												[집착헤어팩]어노브 딥 데미지<br>트리트먼트 EX...<br>22000원~
											</p>
										</div>
									</div>
								</a>
							</div>

						</div>
						<div class="row">
							<h2>Weekly Special</h2>
						</div>
						<div class="row">

							<div class="col-md-6">

								<a href="#"><img src="/resources/user/image/Weekly1.jpg"
									class="img-fluid" alt="..."></a>
							</div>



							<div class="col-md-6">
								<a href="#"><img src="/resources/user/image/Weekly2.jpg"
									class="img-fluid" alt="..."></a>
							</div>

						</div>

						<div class="row">
							<h2>인기 행사만 모았어요!</h2>
						</div>
						<div class="row">

							<div class="col-md-6">
								<div class="input-group">
									<a href="#">
										<div class="card" style="width: 18rem;">
											<img src="/resources/user/image/laneige1.jpg"
												class="card-img-top" alt="...">
											<div class="card-body">
												<p class="card-text">
													[한정기획]라네즈 워터뱅크<br>블루히알루로닉 크림45ml_중건성...<br>39000원
													29640원 13200원
												</p>
											</div>
										</div>
									</a> <a href="#">
										<div class="card" style="width: 18rem;">
											<img src="/resources/user/image/laneige2.jpg"
												class="card-img-top" alt="...">
											<div class="card-body">
												<p class="card-text">
													[한정기획]라네즈 워터뱅크<br>블루히알루로닉 세럼 50ml 기획...<br>45000원
													32400원
												</p>
											</div>
										</div>
									</a>
								</div>
							</div>



							<div class="col-md-6">
								<div class="input-group">
									<a href="#">
										<div class="card" style="width: 18rem;">
											<img src="/resources/user/image/manyo1.jpg"
												class="card-img-top" alt="...">
											<div class="card-body">
												<p class="card-text">
													[단독기획]마녀공장 퓨어 클렌징 오일<br>300ml(+25ml+...<br>25000원
													18900원
												</p>
											</div>
										</div>
									</a> <a href="9#">
										<div class="card" style="width: 18rem;">
											<img src="/resources/user/image/manyo2.jpg"
												class="card-img-top" alt="...">
											<div class="card-body">
												<p class="card-text">
													[증량]마녀공장 갈락토미 필링젤 더블<br>기획(120ml+120ml)<br>35000원
													16900원
												</p>
											</div>
										</div>
									</a>
								</div>
							</div>

							<div class="row">
								<h2>Catch Keyword</h2>
							</div>
							<div class="row">

								<div class="col-md-6">

									<a href="#"><img src="/resources/user/image/catch1.jpg"
										class="img-fluid" alt="..."></a>
								</div>



								<div class="col-md-6">
									<a href="#"><img src="/resources/user/image/catch2.jpg"
										class="img-fluid" alt="..."></a>
								</div>

							</div>

						</div>
					</div>
		</main>


		<div class="container">
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
</script>

</body>
</html>