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
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/893e1f7eb8.js"
	crossorigin="anonymous"></script>

<title>allLiveYoung_Order</title>

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

		<form id="allLiveOrder" name="allLiveOrder" method="post" action="/allLive/allLiveOrder">

		<header>
		<div class="container-header">
			<div class="row">
				<div style="font-size: small;">
					<ul class="nav justify-content-end">
						<li class="nav-item"><a class="nav-link text-dark" href="#">로그아웃</a>
						</li>
						<li class="nav-item"><a class="nav-link text-dark"
							href="../xdmin/loginout/login.html">마이페이지</a></li>
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
		</header>


		<main>
		<div class="container-main">
			<div class="p-1">
				<p>주문/결제</p>
			</div>
			<div class="row">

				<div class="col-10">배송지정보</div>
				<div class="col-2">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="" id=""
							name="" checked> <label class="form-check-label"
							for="defaultCheck1"> 기본 배송지 설정 </label>
					</div>
				</div>

				<div class="col-3">배송지선택</div>
				<div class="col-9">
					<div class="row">
						<div class="col-6 form-check">
							<input class="form-check-input" type="radio" name="" id=""
								checked> <label class="form-check-label"
								for="flexRadioDefault1"> 기본배송지 </label>
						</div>
						<div class="col-6 form-check">
							<input class="form-check-input" type="radio" name="" id="">
							<label class="form-check-label" for="flexRadioDefault1">
								신규배송지 </label>
						</div>

						<div class="col-12">
							<select class="form-select" aria-label="Default select example">
								<option selected>기본배송지1</option>
								<option selected>기본배송지2</option>
								<option selected>기본배송지3</option>
							</select>
						</div>
					</div>
				</div>
			</div>
			<div class="col-3">배송지명</div>
			<div class="col-9"></div>
			<div class="col-3">받는분</div>
			<div class="col-9 input-group">
				<input type="text" class="form-control" id="" name="">

				<div class="form-check">
					<input class="form-check-input" type="checkbox" value="" id=""
						name=""> <label class="form-check-label"
						for="defaultCheck1"> 주문자정보와 동일 </label>
				</div>
			</div>
			<div class="col-3">연락처1</div>
			<div class="col-9 input-group">
				<input type="text" class="form-control" id="" name="">-<input
					type="text" class="form-control" id="" name="">-<input
					type="text" class="form-control" id="" name="">
			</div>


			<div class="col-3">연락처2</div>
			<div class="col-9 input-group">
				<input type="text" class="form-control" id="" name="">-<input
					type="text" class="form-control" id="" name="">-<input
					type="text" class="form-control" id="" name="">


			</div>
			<div class="col-3">주소</div>
			<div class="input-group col-9">
				<div class=input-group>
					<input type="text" class="form-control" id="oymaZipCode"
						name="oymaZipCode" placeholder="우편번호"> <input
						type="button" class="btn btn-outline-dark"
						onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
				</div>
				<input type="text" class="form-control" id="oymaAddress1"
					name="oymaAddress1" placeholder="주소"> <input type="text"
					class="form-control" id="oymaAddress2" name="oymaAddress2"
					placeholder="상세주소"> <input type="text" class="form-control"
					id="oymaAddress3" name="oymaAddress3" placeholder="참고항목">
			</div>
			<br>
			<div class="row">
				<div class="col">배송 요청사항</div>
			</div>
			<div class="row">
				<div class="col-3">배송메시지</div>
				<div class="col-9">
					<select class="form-select" aria-label="Default select example">
						<option value="" selected>배송메시지를 선택해주세요.</option>
						<option value="">부재시 경비실에 맡겨주세요.</option>
						<option value="">부재시 문앞에 놓아주세요.</option>
						<option value="">파손의 위험이 있는 상품이오니, 배송 시 주의해주세요.</option>
						<option value="">배송전에 연락주세요.</option>
						<option value="">택배함에 넣어주세요.</option>
					</select>
				</div>
			</div>
			<br>
			<div class="row">

				<div class="col-9">상품정보</div>
				<div class="col-1">판매가</div>
				<div class="col-1">수량</div>
				<div class="col-1">구매가</div>


				<div class="col-9">
					<div class="row">
						<div class="col-4">
							<img src="/resources/user/image/bioheelbo.jpg" width="100px"
								height="100px">
						</div>
						<div class="col-8">
							바이오힐보<br> 바이오힐보 프로바이오덤 리프팅 크림X마 사저 기획(크림+마사저)(2202)
						</div>
					</div>
				</div>
				<div class="col-1">51,200원</div>
				<div class="col-1">1</div>
				<div class="col-1">
					<del>51,200원</del><br> 31,900원
				</div>
			</div>
			<div class="row">
				<div class="col-9">
					<div class="row">
						<div class="col-12">
							쿠폰할인정보
							<button type="button" id="" name=""
								class="btn btn-outline-light btn-sm text-dark">보유쿠폰</button>
						</div>
						<div class="col-9">
							<div class="input-group">
								<div class="form-check" style="padding-right: 150px;">
									<input class="form-check-input" type="radio"
										name="flexRadioDefault" id="flexRadioDefault1" checked>
									<label class="form-check-label" for="flexRadioDefault1">
										최대 할인 추천받기 </label>
								</div>
								<div class="form-check " style="padding-right: 150px;">
									<input class="form-check-input" type="radio"
										name="flexRadioDefault" id="flexRadioDefault1"> <label
										class="form-check-label" for="flexRadioDefault1"> 혜택
										직접 선택하기 </label>
								</div>
							</div>
						</div>
						<div class="col-3">
							<input type="text" class="form-control" id="" name="" value="">
						</div>
						<div class="col-3">상품별 할인</div>
						<div class="col-9">
							<select class="form-select" id="coupon01" name="coupon01"
								aria-label="Default select example">
								<option value="" selected>적용할 수 있는 쿠폰이 없습니다.</option>
							</select>
							<div id="coupon01" class="form-text">즉시할인쿠폰은 상품금액에 자동적용
								되어있습니다.</div>
						</div>
					</div>
					<div class="col-3">주문별 할인</div>
					<div class="col-9">
						<select class="form-select" aria-label="Default select example">
							<option value="" selected>적용할 수 있는 쿠폰이 없습니다.</option>
						</select>
					</div>
					<div class="col-3">배송비 쿠폰</div>
					<div class="col-9">
						<select class="form-select" aria-label="Default select example">
							<option value="" selected>적용할 수 있는 쿠폰이 없습니다.</option>
						</select>
					</div>
					<div class="col-12">포인트/기프트카드사용</div>
					<div class="col-3">올리브영 기프트카드</div>
					<div class="col-9"></div>
					<div class="col-3">CJ 기프트카드</div>
					<div class="col-9"></div>
					<div class="col-3">CJ ONE 포인트</div>
					<div class="col-9"></div>
					<div class="col-3">예치금</div>
					<div class="col-9"></div>
					<div class="col-12">결제수단 선택</div>
					<div class="col-12">
						<div class="input-group">
							<div class="form-check" style="padding-right: 150px;">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault" id="flexRadioDefault1" checked>
								<label class="form-check-label" for="flexRadioDefault1">
									신용카드 </label>
							</div>
							<div class="form-check" style="padding-right: 150px;">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault" id="flexRadioDefault1"> <label
									class="form-check-label" for="flexRadioDefault1"> 무통장입금
								</label>
							</div>
							<div class="form-check" style="padding-right: 150px;">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault" id="flexRadioDefault1"> <label
									class="form-check-label" for="flexRadioDefault1"> PAYCO
								</label>
							</div>
							<div class="form-check" style="padding-right: 150px;">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault" id="flexRadioDefault1"> <label
									class="form-check-label" for="flexRadioDefault1"> 카카오페이
								</label>
							</div>
							<div class="form-check" style="padding-right: 150px;">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault" id="flexRadioDefault1"> <label
									class="form-check-label" for="flexRadioDefault1"> 네이버페이
								</label>
							</div>
							<div class="form-check" style="padding-right: 150px;">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault" id="flexRadioDefault1"> <label
									class="form-check-label" for="flexRadioDefault1"> 휴대폰결제
								</label>
							</div>
							<div class="form-check" style="padding-right: 150px;">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault" id="flexRadioDefault1"> <label
									class="form-check-label" for="flexRadioDefault1"> 계좌이체
								</label>
							</div>
							<div class="form-check" style="padding-right: 150px;">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault" id="flexRadioDefault1"> <label
									class="form-check-label" for="flexRadioDefault1"> 도서상품권
								</label>
							</div>
							<div class="form-check " style="padding-right: 150px;">
								<input class="form-check-input" type="radio"
									name="flexRadioDefault" id="flexRadioDefault1"> <label
									class="form-check-label" for="flexRadioDefault1"> 문화상품권
								</label>
							</div>
						</div>

					</div>
					<div class="col-3">카드종류</div>
					<div class="col-9"></div>

					<div class="col-3">할부분류</div>
					<div class="col-9"></div>

					<div class="col-12">
						<ul>
							<li><카카오뱅크 체크카트 혜택></카카오뱅크></li>
							<li>3만원 이상 결제 시 2천원 캐시백</li>
							<li>온/오프라인에서 월 1회 사용 가능</li>
							<li>자세한 내용은 이벤트 탭에서 확인해주세요</li>
							<li>신용/체크카드 결제금액이 30만원 이상인 경우 공인인증서가 필요합니다.</li>
						</ul>
					</div>
				</div>



				<div class="col-3">
					<div class="row">
						<div class="col-12">최종 결제정보</div>
						<div class="col-9">총 상품금액</div>
						<div class="col-3">
							<input type="text" class="form-control" id="" name="" value="">
						</div>

						<div class="col-9">쿠폰할인금액</div>
						<div class="col-3">
							<input type="text" class="form-control" id="" name="" value="">
						</div>

						<div class="col-9">총 배송비</div>
						<div class="col-3">
							<input type="text" class="form-control" id="" name="" value="">
						</div>

						<div class="col-9">CJ ONE 포인트</div>
						<div class="col-3">
							<input type="text" class="form-control" id="" name="" value="">
						</div>

						<div class="col-9">최종 결제 금액</div>
						<div class="col-3 sticky">
							<input type="text" class="form-control" id="" name="" value="">
						</div>
						<div class="col-12">
							<button type="button" id="" name=""
								class="btn btn-danger btn-lg text-light">
								결제하기<br> (증정품은 결제 시 확인 가능합니다)
							</button>
						</div>
						<div class="col-12">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="" id=""
									name="" checked> <label class="form-check-label"
									for="defaultCheck1">지금 설정을 다음 주문에도 사용하겠습니다.<br>(빠른
									모드)
								</label>
							</div>
						</div>
						<div class="col-12">
							<div class="row">
								<div class="accordion" id="">
									<div class="accordion-item">
										<h2 class="accordion-header" id="panelsStayOpen-headingOne">
											<button class="accordion-button" type="button"
												data-bs-toggle="collapse"
												data-bs-target="#panelsStayOpen-collapseOne"
												aria-expanded="true"
												aria-controls="panelsStayOpen-collapseOne">
												주문 상품정보 및 결제대행 서비스 이용약관에<br>모두 동의하십니까?
												<div class="form-check">
													<input class="form-check-input" type="checkbox" value=""
														id="" name=""> <label class="form-check-label"
														for="defaultCheck1">모두 동의</label>
												</div>
											</button>
										</h2>
										<div id="panelsStayOpen-collapseOne"
											class="accordion-collapse collapse show"
											aria-labelledby="panelsStayOpen-headingOne">
											<div class="accordion-body">
												<hr>
												<strong>주문상품정보에 대한 동의</strong>
												<div class="form-check">
													<input class="form-check-input" type="checkbox" value=""
														id="" name=""> <label class="form-check-label"
														for="defaultCheck1">주문하실 상품, 가격, 배송정보, 할인내역등을 최<br>종
														확인하였으며, 구매에 동의합니다.<br>(전상거래법 제8조 제2항)
													</label>
												</div>
												<hr>
												<strong>결제대행 서비스 이용약관 동의</strong>
												<div class="form-check">
													<input class="form-check-input" type="checkbox" value=""
														id="" name=""> <label class="form-check-label"
														for="defaultCheck1">전자금융거래 기본약관</label>
													<button type="button" id="" name=""
														class="btn btn-outline-light text-dark">약관보기</button>
												</div>
												<div class="form-check">
													<input class="form-check-input" type="checkbox" value=""
														id="" name=""> <label class="form-check-label"
														for="defaultCheck1">개인정보 수집 및 이용 동의</label>
													<button type="button" id="" name=""
														class="btn btn-outline-light text-dark">약관보기</button>
												</div>
												<div class="form-check">
													<input class="form-check-input" type="checkbox" value=""
														id="" name=""> <label class="form-check-label"
														for="defaultCheck1">개인정보 제공 및 위탁 동의</label>
													<button type="button" id="" name=""
														class="btn btn-outline-light text-dark">약관보기</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
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
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


</body>
</html>