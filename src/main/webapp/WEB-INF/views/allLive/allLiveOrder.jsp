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
<script src="https://kit.fontawesome.com/893e1f7eb8.js"
	crossorigin="anonymous"></script>

<title>All Live Young</title>

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

.headline {
	margin: 40px auto 10px;
	color: #333;
	font-size: 20px;
	font-weight: 400;
	border-bottom: 1px solid #e6e6e6;
	padding-bottom: 20px;
	margin-bottom: 0px;
}

.headline2 {
	margin: 40px auto 10px;
	color: #333;
	font-weight: 400;
	border-bottom: 1px solid #e6e6e6;
	padding-bottom: 20px;
	margin-bottom: 0px;
}

.headname {
	background: #f4f4f4;
	padding: 15px 0 15px 18px;
	text-align: center;
	color: #222;
	border-bottom: 1px solid #e6e6e6;
	vertical-align: middle;
}

.contents {
	padding: 15px 20px;
	border-bottom: 1px solid #e6e6e6;
	font-size: 14px;
	color: #222;
	line-height: 28px;
	vertical-align: middle;
}

.payarea {
	background: #fcfcfc;
	padding: 10px 0;
	border-top: 0;
	color: #666;
	font-size: 14px;
	line-height: 20px;
}

.paybenefit {
	font-size: 12px;
	line-height: 18px;
	color: #888;
}

.totalbox {
	padding: 10px 0;
	border: 2px solid #666;
}
</style>

</head>


<body>

	<form id="allLiveOrder" name="allLiveOrder" method="post">
	<input type="hidden" id="oypdSeq" name="oypdSeq" value="<c:out value="${item.oypdSeq}"/>">
	<input type="hidden" id="rtCount" name="rtCount">
	<input type="hidden" id="rtFinalPrice" name="rtFinalPrice">
	<input type="hidden" id="rtPoint" name="rtPoint">

		<%@include file="../include/pageHeader.jsp"%>

		<main>
			<div class="container-main">
				<div class="p-1">
					<p>주문/결제</p>
				</div>

				<div class="row">

					<div class="col-10 headline">배송지정보</div>
					<div class="col-2 headline2">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id=""
								name="" checked> <label class="form-check-label"
								for="defaultCheck1"> 기본 배송지 설정 </label>
						</div>
					</div>
					<br>

					<div class="col-3 headname">배송지선택</div>

					<div class="col-9 contents">
						<div class="row">
							<div class="col-6 form-check">
								<input class="form-check-input" type="radio" name="address"
									id="addressDefault" value="1"> <label
									class="form-check-label" for="addressDefault"> 기본배송지 </label>
							</div>
							<div class="col-6 form-check">
								<input class="form-check-input" type="radio" name="address"
									id="addressNew" value="0"> <label
									class="form-check-label" for="addressNew"> 신규배송지 </label>
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


					<div class="col-3 headname">배송지명</div>
					<div class="col-9 contents"></div>



					<div class="col-3 headname">받는분</div>
					<div class="col-9 contents">
						<div class="input-group">
							<input type="text" class="form-control" id="oymaTitle"
								name="oymaTitle" value="">

							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="" id=""
									name=""> <label class="form-check-label"
									for="defaultCheck1"> 주문자정보와 동일 </label>
							</div>
						</div>
					</div>


					<div class="col-3 headname">연락처1</div>
					<div class="col-9 contents">
						<div class="input-group">
							<input type="hidden" id="oympDefaultNyArray0"
								name="oympDefaultNyArray" value="1"> <select
								class="form-select" id="oympTelecomCdArray0"
								name="oympTelecomCdArray">
								<option selected>::통신사::</option>
								<c:forEach items="${codeTelecom}" var="itemTelecom"
									varStatus="statusTelecom">
									<option value="<c:out value="${itemTelecom.oycdSeq}"/>"
										<c:if test="${oympTelecom1 eq itemTelecom.oycdSeq }">selected</c:if>>
										<c:out value="${itemTelecom.oycdName}" /></option>
								</c:forEach>
							</select> <input type="text" class="form-control" id="oympNumberArray0"
								name="oympNumberArray" value="<c:out value="${oympNumber1}"/>"
								placeholder="'-'제외">
						</div>
					</div>


					<div class="col-3 headname">연락처2</div>
					<div class="col-9 contents">
						<div class="input-group">
							<input type="hidden" id="oympDefaultNyArray1"
								name="oympDefaultNyArray" value="0"> <select
								class="form-select" id="oympTelecomCdArray1"
								name="oympTelecomCdArray">
								<option selected>::통신사::</option>
								<c:forEach items="${codeTelecom}" var="itemTelecom"
									varStatus="statusTelecom">
									<option value="<c:out value="${itemTelecom.oycdSeq}"/>"
										<c:if test="${oympTelecom0 eq itemTelecom.oycdSeq }">selected</c:if>>
										<c:out value="${itemTelecom.oycdName}" /></option>
								</c:forEach>
							</select> <input type="text" class="form-control" id="oympNumberArray1"
								name="oympNumberArray" value="<c:out value="${oympNumber0}"/>"
								placeholder="'-'제외">
						</div>
					</div>

					<div class="col-3 headname">주소</div>
					<div class="col-9 contents">
						<div class=input-group>
							<input type="text" class="form-control" id="oymaZipCode"
								name="oymaZipCode" placeholder="우편번호"
								value="<c:out value="${item.oymaZipCode}"/>"> <input
								type="button" class="btn btn-outline-dark"
								onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
						</div>
						<input type="text" class="form-control" id="oymaAddress1"
							name="oymaAddress1" placeholder="주소"
							value="<c:out value="${item.oymaAddress1}"/>"> <input
							type="text" class="form-control" id="oymaAddress2"
							name="oymaAddress2" placeholder="상세주소"
							value="<c:out value="${item.oymaAddress2}"/>"> <input
							type="text" class="form-control" id="oymaAddress3"
							name="oymaAddress3" placeholder="참고항목"
							value="<c:out value="${item.oymaAddress3}"/>">
					</div>
				</div>


				<br>
				<div class="row">
					<div class="col headline">배송 요청사항</div>
				</div>

				<div class="row">
					<div class="col-3 headname">배송메시지</div>
					<div class="col-9 contents">
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

					<div class="col-9 headname">상품정보</div>
					<div class="col-1 headname">판매가</div>
					<div class="col-1 headname">수량</div>
					<div class="col-1 headname">구매가</div>


					<div class="col-9 contents">
						<div class="row">
							<div class="col-4">
								<c:forEach items="${listUploaded}" var="itemUploaded"
									varStatus="statusUploaded">
									<c:if
										test="${itemUploaded.type eq 0 && itemUploaded.size ne 0}">
										<img
											src="<c:out value="${itemUploaded.path}"/><c:out value="${itemUploaded.uuidName}"/>"
											width="150px" height="150px">
									</c:if>
								</c:forEach>
							</div>
							<div class="col-8">
								<div class="pdText">
									<div class="pdbrand">
										<c:out value="${item.oypdBrand}" />
									</div>
									<br>
									<div class="pdNameB">
										<c:out value="${item.oypdName}" />
									</div>
								</div>
								<br>
							</div>
						</div>
					</div>
					<div class="col-1 contents">
						<fmt:formatNumber value="${item.oypdPrice}" />
						<span>원</span>
					</div>
					<div class="col-1 contents"> <%=request.getParameter("result")%> 개
					</div>
					<div class="col-1 contents">
						<div class="priceB">
							<fmt:formatNumber value="${item.oypdPrice}" />
							<span>원</span>
						</div>
						<br>
						<fmt:formatNumber value="${item.oyspSalePrice}" />
						<span>원</span>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-8">
						<div class="row">
							<table class="table table-bordered" style="">
								<thead class="table table-bordered" style="">
									<tr>
										<td style="font-size: 15px; text-align: left;"><b>STEP 1. 할인쿠폰</b></td>
									</tr>
								</thead>
								<tbody style="">
									<tr>
										<td
											style="width: 50%; height: 150px; text-align: left; vertical-align: top; padding: 20px;">
											<table>
												<tr>
													<td style="font-size: 16px; text-align: left;"><b>사용가능 쿠폰</b></td>
													<td style="font-size: 16px; text-align: left;"><b>쿠폰 번호</b></td>
													<td style="font-size: 16px; text-align: left;"><b>쿠폰 금액</b></td>
													<td style="font-size: 16px;"><b>유효기간</b></td>
													<td style="font-size: 16px;"></td>
												</tr>
												<tr>
													<td style="font-size: 16px; text-align: left;">7월정기쿠폰</td>
													<td style="font-size: 16px; text-align: left;">JULYCOUPON</td>
													<td style="font-size: 16px; text-align: left;">6,000원</td>
													<td style="font-size: 16px;">2022-05-10 ~ 2022-12-31</td>
													<td style="font-size: 16px;"><button type="button" id="coupon1" value="6000" style="color: blue;">
															<u>사용하기</u>
														</button></td>
												</tr>
												<tr>
													<td style="font-size: 16px; text-align: left;">여름아부탁해!</td>
													<td style="font-size: 16px; text-align: left;">SUMMER5000</td>
													<td style="font-size: 16px; text-align: left;">5,000원</td>
													<td style="font-size: 16px;">2022-05-12 ~ 2022-12-31</td>
													<td style="font-size: 16px;"><button type="button" id="coupon2" value="5000" style="color: blue;">
															<u>사용하기</u>
														</button></td>
												</tr>
												<tr>
													<td style="font-size: 16px; text-align: left;">신규회원가입</td>
													<td style="font-size: 16px; text-align: left;">NEWMEMBER</td>
													<td style="font-size: 16px; text-align: left;">10,000원</td>
													<td style="font-size: 16px;">2022-05-22 ~ 2022-12-31</td>
													<td style="font-size: 16px;"><button type="button" id="coupon3" value="10000" style="color: blue;">
															<u>사용하기</u>
														</button></td>
												</tr>
											</table>
										</td>
									</tr>
								</tbody>
							</table>
							<!-- <div class="col-12 headline">포인트/기프트카드사용</div>
					<div class="col-3 headname">올리브영 기프트카드</div>
					<div class="col-9 contents"></div>
					<div class="col-3 headname">CJ 기프트카드</div>
					<div class="col-9 contents"></div>
					<div class="col-3 headname">CJ ONE 포인트</div>
					<div class="col-9 contents"></div>
					<div class="col-3 headname">예치금</div>
					<div class="col-9 contents"></div> -->
						</div>
						<br>
						<div class="row">
							<div class="col-12 headline">결제수단 선택</div>
							<div class="col-12 payarea">
								<div class="input-group">
									<!-- <div class="form-check" style="padding-right: 150px;">
										<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" checked>
										<label class="form-check-label" for="flexRadioDefault1"> 신용카드 </label>
									</div>
									<div class="form-check" style="padding-right: 150px;">
										<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
										<label class="form-check-label" for="flexRadioDefault1"> 무통장입금 </label>
									</div>
									<div class="form-check" style="padding-right: 150px;">
										<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
										<label class="form-check-label" for="flexRadioDefault1"> PAYCO </label>
									</div> -->
									<div class="form-check" style="padding-right: 150px;">
										<input class="form-check-input" type="radio" name="kpay" id="kpay">
										<label class="form-check-label" for="kpay"> 카카오페이 </label>
									</div>
									<!-- <div class="form-check" style="padding-right: 150px;">
										<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
										<label class="form-check-label" for="flexRadioDefault1"> 네이버페이 </label>
									</div>
									<div class="form-check" style="padding-right: 150px;">
										<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
										<label class="form-check-label" for="flexRadioDefault1"> 휴대폰결제 </label>
									</div>
									<div class="form-check" style="padding-right: 150px;">
										<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
										<label class="form-check-label" for="flexRadioDefault1"> 계좌이체 </label>
									</div>
									<div class="form-check" style="padding-right: 150px;">
										<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
										<label class="form-check-label" for="flexRadioDefault1"> 도서상품권 </label>
									</div>
									<div class="form-check " style="padding-right: 150px;">
										<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
										<label class="form-check-label" for="flexRadioDefault1"> 문화상품권 </label>
									</div> -->
								</div>
							</div>
							<div class="col-3 headname">카드종류</div>
							<div class="col-9 contents"></div>

							<div class="col-3 headname">할부분류</div>
							<div class="col-9 contents"></div>
						</div>
						<br>
						<div class="row">
							<div class="col-12 paybenefit">
								<ul>
									<li><카카오뱅크 체크카트 혜택></카카오뱅크></li>
									<li>3만원 이상 결제 시 2천원 캐시백</li>
									<li>온/오프라인에서 월 1회 사용 가능</li>
									<li>자세한 내용은 이벤트 탭에서 확인해주세요</li>
									<li>신용/체크카드 결제금액이 30만원 이상인 경우 공인인증서가 필요합니다.</li>
								</ul>
							</div>
						</div>
						<div class="row">
							<table style="">
								<tr>
									<th style="font-size: 15px;"><b>결제하실 금액</b></th>
								</tr>
								<tr>
									<th style="font-size: 15px;"><span
										style="font-size: 25px; text-align: right;"> <b
											id="price"></b></span>원</th>
								</tr>
							</table>
							<br></br>
							<table style="border: 1px solid black;">
								<tr>
									<th style="font-size: 15px;"><b>할인내역</b></th>
								</tr>
								<tr>
									<th style="font-size: 18px;"><b>총 할인금액</b></th>
								</tr>
								<tr>
									<th style="font-size: 15px;"><span
										style="font-size: 25px; text-align: right;"> <b
											id="couponPrice"></b></span>원</th>
								</tr>
							</table>
							<br></br>
							<table style="">
								<tr>
									<th colspan="2" style="font-size: 15px;"><b>결제내역</b></th>
								</tr>
								<tr style="border-bottom: 1px solid black;">
									<td style="font-size: 15px;"><p id="pay"></p></td>
									<td style="font-size: 15px;"><p id="totalPrice2"></p></td>
								</tr>
								<tr>
									<th colspan="2" style="font-size: 18px;"><b>남은 결제금액</b></th>
								</tr>
								<tr>
									<th colspan="2" style="font-size: 15px;"><span
										style="font-size: 25px; text-align: right;"> <b
											id="totalPrice"></b></span>원</th>
								</tr>
							</table>
						</div>
					</div>

					<div class="col"></div>
					<div class="col-3">
						<div class="row">
							<div class="col-12 headline">최종 결제정보</div>
							<div class="row totalbox">
								<div class="col-9">총 상품금액</div>
								<div class="col-3"><span id="totalPrice"></span>원</div>

								<div class="col-9">쿠폰할인금액</div>
								<div class="col-3">
									<span style="font-size:25px; color: green; "><b id="couponPrice"></b></span> 원
								</div>

								<div class="col-9">총 배송비</div>
								<div class="col-3"><span id="fee"></span>원
									
								</div>

								<div class="col-9">적립예정 포인트</div>
								<div class="col-3">
									<span id="point1"></span> p
								</div>

								<div class="col-9">최종 결제 금액</div>
								<div class="col-3 sticky">
									<span style="font-size: 24px; color: red; "><b id="totalPrice2"></b>원</span>
								</div>
								<div class="col-12">
									<button type="button" id="iamportPayment"
										class="btn btn-danger btn-lg text-light">결제하기</button>
								</div>
							</div>
							<div class="col-12">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value="" id=""
										name="" checked> <label class="form-check-label"
										for="defaultCheck1">지금 설정을 다음 주문에도 사용하겠습니다.<br>
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
															for="defaultCheck1"> 모두 동의 </label>
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
	<!-- iamport.payment.js -->
	<script type="text/javascript"
		src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
	<!-- Jquery ui -->
	<script
		src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>


	<!-- 아임포트 카카오 결제 API -->

	<script>

	var pdCount = ${rtCount};
	var totalPrice = (price1*pdCount);
	if(totalPrice < 10000){
		var deliFee = 2500;
	}else if(totalPrice >= 10000){
		var deliFee = 0;
	}else{
		/* by pass */
	}
	var finalPrice = totalPrice+deliFee;
	var finalPoint = (${item.oypdPrice}*0.05)*bookCount;
	/* 화면에 보여지는 부분 */
	$("#totalPrice").text(totalPrice.toLocaleString());
	$("#couponPrice").text("0");
	$("#totalPrice2").text(finalPrice.toLocaleString()); 
	$("#fee").text(deliFee.toLocaleString()); 
	$("#point").text(finalPoint.toLocaleString()); 
	$("#point1").text(finalPoint.toLocaleString()); 
	/* 쿠폰 할인 적용 */
	$(document).ready(function() {
		   $("#coupon1").click(function(){
		      var coupon1Price = $(this).attr('value');   
		      $("#couponPrice").text((coupon1Price)/1000 + ",000");
		      $("#totalPrice2").text((finalPrice-coupon1Price).toLocaleString());
		      $('#rtFinalPrice').val(totalPrice-coupon1Price);
		      $('#rtCoupon').val(coupon1Price); 
		      
		   });
		   $("#coupon2").click(function(){
		      var coupon2Price = $(this).attr('value');      
		      $("#couponPrice").text((coupon2Price)/1000 + ",000");
		      $("#totalPrice2").text((finalPrice-coupon2Price).toLocaleString());
		      $('#rtFinalPrice').val(totalPrice-coupon2Price);
		      $('#rtCoupon').val(coupon2Price); 
		   });
		   $("#coupon3").click(function(){
		      var coupon3Price = $(this).attr('value');      
		      $("#couponPrice").text((coupon3Price)/1000 + ",000");
		      $("#totalPrice2").text((finalPrice-coupon3Price).toLocaleString());
		      $('#rtFinalPrice').val(totalPrice-coupon3Price); 
		      $('#rtCoupon').val(coupon3Price); 
		   });
		});
		
	$("#rtCount").val(pdCount);
	$("#rtPoint").val(finalPoint);	  
	$("#rtFinalPrice").val(finalPrice); 


		$(document).ready(function() {
			$("#iamportPayment").click(function() {
				payment(); // 버튼 클릭하면 호출
			});
		})

		function payment(data) {
			var IMP = window.IMP; // 생략가능
			/* var payPrice = $("#hiddenPrice").attr('value'); */

			IMP.init('imp70109925'); // 가맹점 식별코드
			// IMP.request_pay(param, callback) 결제창 호출
			IMP.request_pay({
				pg : 'kakaopay', //pg사 선택 (kakao, kakaopay 둘다 가능)
				pay_method : 'card',
				merchant_uid : 'iamport_test_id' + new Date().getTime(), //주문번호
				/* 	    merchant_uid : 'merchant_' + new Date().getTime(), //주문번호 */

				name : '<c:out value="${item.oypdName}"/>', // 상품명
				amount : '<c:out value="${item.oypdName}"/>',
				/* 	    amount : '<c:out value="${rtPay}"/>', */
				/* 	    amount : amount, */
				//customer_uid 파라메터가 있어야 빌링키 발급을 시도함
				customer_uid : '<c:out value="${sessName}"/>'
						+ new Date().getTime(),
				buyer_email : "test@naver.com",
				buyer_name : "<c:out value="${sessName}"/>",
				buyer_tel : "010-1234-1234",
			}, function(rsp) { //callback
				if (rsp.success) {
					console.log('빌링키 발급 성공', rsp)
					//빌링키 발급이 완료되었으므로, 서버에 결제 요청
					//alert('결제가 완료되었습니다!');
				} else {
					var msg = '결제에 실패하였습니다.\n';
					msg += rsp.error_msg;
					alert(msg);
					return false;
				}

				$("#allLiveOrder").submit();
			});
		}
	</script>
</body>
</html>