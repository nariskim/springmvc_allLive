<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!--//page-header//-->
<header>
	<div class="container-header">
		<div class="row">
			<div style="font-size: small;">
				<ul class="nav justify-content-end">

					<c:if test="${sessSeq ne null}">
						<li class="nav-item"><a class="nav-link text-dark" href="#"><c:out
									value="${sessName }" /> 님, 반갑습니다👋</a></li>
						<li class="nav-item"><a class="nav-link text-dark"
							href="javascript:goLogout();">로그아웃</a></li>
					</c:if>
					<c:if test="${sessSeq eq null}">
						<li class="nav-item"><a class="nav-link text-dark" href="#">회원가입</a>
						</li>
						<li class="nav-item"><a class="nav-link text-dark"
							href="javascript:goLogin();">로그인</a></li>
					</c:if>


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
					src="/resources/xdmin/image/oliveimage.PNG" width="120%"></a>
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

				<!-- 	<input type="text" class="form-control search-input"
							placeholder="Search..."> -->
			</div>
			<div class="col-6 col-sm-1" style="margin-top: 30px;">
				<!-- 	<button type="button" class="btn search-button">
							<i class="fas fa-search"></i>
						</button> -->

			</div>

			<div class="col-auto col-sm-4" style="margin-top: 30px;">
				<!-- <ul class="nav">
							<li class="nav-item"><a href="#" class="nav-link">오늘드림</a></li>
							<li class="nav-item"><a href="#" class="nav-link">관심
									매장소식</a></li>
							<li class="nav-item"><a href="#" class="nav-link">방금 본
									상품</a></li>
						</ul> -->
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
<!--Main Header End-->