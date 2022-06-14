<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<jsp:useBean id="CateServiceImpl" class="com.julyte.user.modules.cate.CateServiceImpl" />
<jsp:useBean id="CodeServiceImpl" class="com.julyte.user.modules.code.CodeServiceImpl" />


<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/893e1f7eb8.js" crossorigin="anonymous"></script>

    <!-- Favicons -->
    <link rel="shortcut icon" href="https://ifh.cc/g/lBA5vD.png" type="image/x-icon" /> <!-- olive 아이콘 -->
    <!-- Page Title -->
    <title>All Live Young</title>


<style>

/* 	#floatMenu {
		position: absolute;
		right: 200px;
		width: 310px;
		border: 2px solid #c8c8c8; 
		border-radius: 15px;
		padding-top: 10px;
		padding-bottom: 20px;
	} */
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

.contents2 {
	padding: 15px 20px;
	border-bottom: 1px solid #e6e6e6;
	font-size: 14px;
	color: #222;
	line-height: 28px;
	vertical-align: middle;
	text-align: center;
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

	<form id="allLiveOrder" name="allLiveOrder" method="post" action="/allLive/allLiveSuccess">
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
							<input class="form-check-input" type="checkbox" value="" id="" name="" checked>
							<label class="form-check-label" for="defaultCheck1"> 기본 배송지 설정 </label>
						</div>
					</div>
					<br>

					<div class="col-3 headname">배송지선택</div>

					<div class="col-9 contents">
						<div class="row">
							<div class="col-6 form-check">
								<input class="form-check-input" type="radio" name="address" id="addressDefault" value="1" checked>
								<label class="form-check-label" for="addressDefault"> 기본배송지 </label>
							</div>
							<div class="col-6 form-check">
								<input class="form-check-input" type="radio" name="address" id="addressNew" value="0">
								<label class="form-check-label" for="addressNew"> 신규배송지 </label>
							</div>

						</div>
					</div>


					<div class="col-3 headname">배송지명</div>
					<div class="col-9 contents"><input type="text" class="form-control" id="oymaTitle" name="oymaTitle" value="<c:out value="${item2.oymaTitle}"/>">
					</div>



					<div class="col-3 headname">받는분</div>
					<div class="col-9 contents">

						<div class="row">
							<div class="col-6">
								<input type="text" class="form-control" id="oymbName" name="oymbName" value="<c:out value="${item2.oymbName}"/>">
							</div>
							<div class="col-4"></div>
							<div class="col-2">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value="" id="orderer" name="orderer" checked>
									<label class="form-check-label" for="orderer"> 주문자정보와 동일 </label>
								</div>
							</div>
						</div>
					</div>

<c:forEach items="${listPhone}" var="item"
						varStatus="statusTelecom">
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


					<div class="col-3 headname">휴대전화</div>
					<div class="col-9 contents">
							<div class="input-group">
									<select class="form-select" id="oympTelecomCd"
										name="oympTelecomCd">
										<option value="" selected>::통신사::</option>
										<c:forEach items="${codeTelecom}" var="itemTelecom"
											varStatus="statusTelecom">
											<option value="<c:out value="${itemTelecom.oycdSeq}"/>"
												<c:if test="${oympTelecom1 eq itemTelecom.oycdSeq}">selected</c:if>><c:out
													value="${itemTelecom.oycdName}" /></option>
										</c:forEach>
									</select> <input type="text" class="form-control" id="oympNumber"
										name="oympNumber" value="<c:out value="${oympNumber1}"/>">
								</div>
					</div>

<c:forEach items="${listEmail}" var="item" varStatus="statusEmail">
							<c:choose>
								<c:when test="${item.oymeDefaultNy eq 1}">
									<c:set var="oymeAccount1" value="${item.oymeEmailAccount}" />
									<c:set var="oymeDomain1" value="${item.oymeEmailDomainCd}" />
								</c:when>
								<c:when test="${item.oymeDefaultNy eq 0}">
									<c:set var="oymeAccount0" value="${item.oymeEmailAccount}" />
									<c:set var="oymeDomain0" value="${item.oymeEmailDomainCd}" />
								</c:when>
								<c:otherwise></c:otherwise>
							</c:choose>
						</c:forEach>

					<div class="col-3 headname">이메일</div>
					<div class="col-9 contents">
						<div class="input-group">
									<input type="text" class="form-control" id="oymeEmailAccount"
										name="oymeEmailAccount"
										value="<c:out value="${oymeAccount1}"/>"> <span
										class="input-group-text">@</span> <select class="form-select"
										id="oymeEmailDomainCd" name="oymeEmailDomainCd">
										<option value="" selected>::선택::
											<c:forEach items="${codeEmail}" var="itemEmail"
												varStatus="statusEmail">
												<option value="<c:out value="${itemEmail.oycdSeq}"/>"
													<c:if test="${oymeDomain1 eq itemEmail.oycdSeq}">selected</c:if>><c:out
														value="${itemEmail.oycdName}" /></option>
											</c:forEach>
									</select>
								</div>
					</div>

					<div class="col-3 headname">주소</div>
					<div class="col-9 contents">
						<div class=input-group>
							<input type="text" class="form-control" id="oymaZipCode" name="oymaZipCode" placeholder="우편번호" value="<c:out value="${item2.oymaZipCode}"/>">
							<input type="button" class="btn btn-outline-dark" onclick="sample6_execDaumPostcode();" value="우편번호 찾기">
						</div>
						<input type="text" class="form-control" id="oymaAddress1" name="oymaAddress1" placeholder="주소" value="<c:out value="${item2.oymaAddress1}"/>">
						<input type="text" class="form-control" id="oymaAddress2" name="oymaAddress2" placeholder="상세주소" value="<c:out value="${item2.oymaAddress2}"/>">
						<input type="text" class="form-control" id="oymaAddress3" name="oymaAddress3" placeholder="참고항목" value="<c:out value="${item2.oymaAddress3}"/>">
						<input class="field form-control" id="oymaLat" name="oymaLat" />
						<input class="field form-control" id="oymaLng" name="oymaLng" />
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


					<div class="col-9 contents2">
						<div class="row">
							<div class="col-4">
								<c:forEach items="${listUploaded}" var="itemUploaded" varStatus="statusUploaded">
									<c:if test="${itemUploaded.type eq 0 && itemUploaded.size ne 0}">
										<img src="<c:out value="${itemUploaded.path}"/><c:out value="${itemUploaded.uuidName}"/>" width="150px" height="150px">
									</c:if>
								</c:forEach>
							</div>
							<div class="col-8"><br>
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
					<div class="col-1 contents2"><br><br>
						<fmt:formatNumber value="${item.oypdPrice}" />
						<span>원</span>
					</div>
					<div class="col-1 contents2"><br><br>
					<%=request.getParameter("result")%> 개
					</div>
					<div class="col-1 contents2"><br>
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
					<div class="col headline">쿠폰</div>
				</div>
				<div class="row">
					<div class="col-8">
						<div class="row">
							<div class="col-2 headname">사용가능 쿠폰</div>
							<div class="col-2 headname">쿠폰 번호</div>
							<div class="col-2 headname">쿠폰 금액</div>
							<div class="col-4 headname">유효기간</div>
							<div class="col-2 headname"></div>
						
						<div class="col-2 contents2">7월정기쿠폰</div>
							<div class="col-2 contents2">JULYCOUPON</div>
							<div class="col-2 contents2">6,000원</div>
							<div class="col-4 contents2">2022-05-10 ~ 2022-12-31</div>
							<div class="col-2 contents2"><button type="button" id="coupon1" value="6000" style="color: blue;">
															<u>사용하기</u>
														</button></div>
							
							<div class="col-2 contents2">여름아부탁해!</div>
							<div class="col-2 contents2">SUMMER5000</div>
							<div class="col-2 contents2">5,000원</div>
							<div class="col-4 contents2">2022-05-12 ~ 2022-12-31</div>
							<div class="col-2 contents2"><button type="button" id="coupon2" value="5000" style="color: blue;">
															<u>사용하기</u>
														</button></div>
							
							<div class="col-2 contents2">신규회원가입</div>
							<div class="col-2 contents2">NEWMEMBER</div>
							<div class="col-2 contents2">10,000원</div>
							<div class="col-4 contents2">2022-05-22 ~ 2022-12-31</div>
							<div class="col-2 contents2"><button type="button" id="coupon3" value="10000" style="color: blue;">
															<u>사용하기</u>
														</button></div>
						</div>
							
							<!-- <div class="col-12 headline">포인트/기프트카드사용</div>
					<div class="col-3 headname">올리브영 기프트카드</div>
					<div class="col-9 contents"></div>
					<div class="col-3 headname">CJ 기프트카드</div>
					<div class="col-9 contents"></div>
					<div class="col-3 headname">CJ ONE 포인트</div>
					<div class="col-9 contents"></div>
					<div class="col-3 headname">예치금</div>
					<div class="col-9 contents"></div> -->
						<br>
						<div class="row">
							<div class="col headline">적립</div>
						</div>
						<div class="row">
							<div class="col-3 headname">적립 유형</div>
							<div class="col-3 headname">적립률</div>
							<div class="col-3 headname">적립 포인트</div>
							<div class="col-3 headname">적립 날짜</div>
						
							<div class="col-3 contents2">기본적립</div>
							<div class="col-3 contents2">5%</div>
							<div class="col-3 contents2"><span id="point"></span> P</div>
							<c:set var="ymd" value="<%=new java.util.Date()%>" /> 
							<div class="col-3 contents2"><fmt:formatDate value="${ymd}" pattern="yyyy-MM-dd" /></div>
					
					</div>
						<br>
						<div class="row">
							<div class="col-12 headline">결제수단</div>
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
										<input class="form-check-input" type="radio" name="kpay" id="kpay" checked>
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
						</div>
					</div>

					<div class="col"></div>
					<div class="col-3">
						<div class="row">
							<div class="col-12 headline">최종 결제정보</div>
							<div class="row totalbox" id="floatMenu">
								<div class="col-6" style="margin-bottom: 20px; margin-top: 20px;">총 상품금액</div>
								<div class="col-6" style="margin-bottom: 20px; margin-top: 20px;"><span id="totalPrice"></span>원</div>

								<div class="col-6" style="margin-bottom: 20px;">쿠폰할인금액</div>
								<div class="col-6" style="margin-bottom: 20px;">
									<span style="font-size:25px; color: green; ">
									<b id="couponPrice"></b></span> 원
								</div>

								<div class="col-6" style="margin-bottom: 20px;">총 배송비</div>
								<div class="col-6" style="margin-bottom: 20px;"><span id="fee"></span>원
									
								</div>

								<div class="col-6" id="savingPoint" style="margin-bottom: 20px;">적립예정 포인트</div>
								<div class="col-6" style="margin-bottom: 20px;">
									<span id="point1"></span> p
								</div>

								<div class="col-6" style="margin-bottom: 20px;">최종 결제 금액</div>
								<div class="col-6 sticky" style="margin-bottom: 20px;">
									<span style="font-size: 24px; color: red; ">
									<b id="totalPrice2"></b>원</span>
								</div>
								<div class="col-3"></div>
								<div class="col-6">
									<button type="button" id="iamportPayment" class="btn btn-danger btn-lg text-light">결제하기</button>
								</div>
								<div class="col-3"></div>
							</div>
							<div class="col-12">
							<br>
							</div>
							<div class="col-12">
							<br>
							</div>
							<div class="col-12">
								<div class="row">
									<div class="accordion" id="">
										<div class="accordion-item">
											<h2 class="accordion-header" id="panelsStayOpen-headingOne">
												<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne"> 주문 상품정보 및 결제대행 서비스 이용약관에<br>모두 동의하십니까?
													<div class="form-check">
														<input class="form-check-input" type="checkbox" value="" id="checkboxAll" name="checkboxAll">
														<label class="form-check-label" for="defaultCheck1"> 모두 동의 </label>
													</div>
												</button>
											</h2>
											<div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
												<div class="accordion-body">
													<hr>
													<strong>주문상품정보에 대한 동의</strong>
													<div class="form-check">
														<input class="form-check-input" type="checkbox" value="" id="checkboxSeq" name="checkboxSeq">
														<label class="form-check-label" for="defaultCheck1">주문하실 상품, 가격, 배송정보, 할인내역등을 최<br>종 확인하였으며, 구매에 동의합니다.<br>(전상거래법 제8조 제2항)
														</label>
													</div>
													<hr>
													<strong>결제대행 서비스 이용약관 동의</strong>
													<div class="form-check">
														<input class="form-check-input" type="checkbox" value="" id="checkboxSeq" name="checkboxSeq">
														<label class="form-check-label" for="defaultCheck1">전자금융거래 기본약관</label>
														<button type="button" id="" name="" class="btn btn-outline-light text-dark">약관보기</button>
													</div>
													<div class="form-check">
														<input class="form-check-input" type="checkbox" value="" id="checkboxSeq" name="checkboxSeq">
														<label class="form-check-label" for="defaultCheck1">개인정보 수집 및 이용 동의</label>
														<button type="button" id="" name="" class="btn btn-outline-light text-dark">약관보기</button>
													</div>
													<div class="form-check">
														<input class="form-check-input" type="checkbox" value="" id="checkboxSeq" name="checkboxSeq">
														<label class="form-check-label" for="defaultCheck1">개인정보 제공 및 위탁 동의</label>
														<button type="button" id="" name="" class="btn btn-outline-light text-dark">약관보기</button>
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
	
	<script type="text/JavaScript" src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!-- iamport.payment.js -->
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
	<!-- Jquery ui -->
	<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>



	<script type="text/javascript">
	
/*  	$(document).ready(function() {
		// 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
		var floatPosition = parseInt($("#floatMenu").css('top'));
		// 250px 이런식으로 가져오므로 여기서 숫자만 가져온다. parseInt( 값 );
		$(window).scroll(function() {
			// 현재 스크롤 위치를 가져온다.
			var scrollTop = $(window).scrollTop();
			var newPosition = scrollTop + floatPosition + "px";
			// 애니메이션 없이 바로 따라감
			 $("#floatMenu").css('top', newPosition);
			 
			$("#floatMenu").stop().animate({
				"top" : newPosition
			}, 500);
		}).scroll();
	}); 
	 */
	function sample6_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ''; // 주소 변수
						var extraAddr = ''; // 참고항목 변수

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						if (data.userSelectedType === 'R') {
							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName
										: data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraAddr !== '') {
								extraAddr = ' (' + extraAddr + ')';
							}
							// 조합된 참고항목을 해당 필드에 넣는다.
							document.getElementById("oymaAddress3").value = extraAddr;

						} else {
							document.getElementById("oymaAddress3").value = '';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('oymaZipCode').value = data.zonecode;
						document.getElementById("oymaAddress1").value = addr;
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("oymaAddress2").focus();

						/* lat and lng from address s */

						// 주소-좌표 변환 객체를 생성
						var geocoder = new daum.maps.services.Geocoder();

						// 주소로 좌표를 검색
						geocoder.addressSearch(
										addr,
										function(result, status) {

											// 정상적으로 검색이 완료됐으면,
											if (status == daum.maps.services.Status.OK) {

												document.getElementById('oymaLat').value = result[0].x;
												document.getElementById('oymaLng').value = result[0].y;

												/* 						
														var coords = new daum.maps.LatLng(result[0].y, result[0].x);
												
														y = result[0].x;
														x = result[0].y;
												
														// 결과값으로 받은 위치를 마커로 표시합니다.
														var marker = new daum.maps.Marker({
															map: map,
															position: coords
														});
												
														// 인포윈도우로 장소에 대한 설명표시
														var infowindow = new daum.maps.InfoWindow({
															content: '<div style="width:150px;text-align:center;padding:5px 0;">좌표위치</div>'
														});
												
														infowindow.open(map,marker);
												
														// 지도 중심을 이동
														map.setCenter(coords);
														
														document.getElementById("ifmaLatArray0").value=x;
														document.getElementById("ifmaLngArray0").value=y;
												 */
											}
										});
						/* lat and lng from address e */
					}
				}).open();
	}
	<!-- 아임포트 카카오 결제 API -->
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
		
		var price1 = <c:out value="${item.oyspSalePrice}"/>;
		var oliveCount = ${rtCount};
		var totalPrice = (price1*oliveCount);
		if(totalPrice < 20000){
			var deliFee = 2500;
		}else if(totalPrice >= 20000){
			var deliFee = 0;
		}else{
			/* by pass */
		}
		var finalPrice = totalPrice+deliFee;
		var finalPoint = (${item.oyspSalePrice}*0.05)*oliveCount;
		
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
			
		$("#rtCount").val(oliveCount);
		$("#rtPoint").val(finalPoint);	  
		$("#rtFinalPrice").val(finalPrice); 
		
		$('#checkboxAll').click(function() {
			if ($("#checkboxAll").is(':checked'))
				$("input[name=checkboxSeq]").prop("checked", true);
			else
				$("input[name=checkboxSeq]").prop("checked", false);
		});
		$("input[name=checkboxSeq]").click(function() {

			var total = $("input[name=checkboxSeq]").length;
			var checked = $("input[name=checkboxSeq]:checked").length;

			if (total != checked)
				$("checkboxAll").prop("checked", false);
			else
				$("checkboxAll").prop("checked", true);
		});


	</script>
</body>
</html>