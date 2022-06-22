<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<jsp:useBean id="CodeServiceImpl" class="com.julyte.user.modules.code.CodeServiceImpl"/>


<!DOCTYPE html> 
<html lang="ko">  
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicons -->
    <link rel="shortcut icon" href="https://ifh.cc/g/lBA5vD.png" type="image/x-icon" /> <!-- olive 아이콘 -->
    <!-- Page Title -->
    <title>All Live Young</title>


<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">



<script src="https://kit.fontawesome.com/893e1f7eb8.js" crossorigin="anonymous"></script>

<style type="text/css">
.bigHeader {
	margin-left: 6%;
	margin-right: 6%;
}
main {
	margin-top: 5%;
	margin-bottom: 15%;
	margin-left: 15%;
	margin-right: 15%;
}

.bottom-border {
	border-bottom: 2px groove black;
}

.sidebar-link {
	transition: all .4s;
}

.sidebar-link:hover {
	background-color: silver;
	border-radius: 5px;
}

.current {
	background-color: Greenyellow;
	border-radius: 7px;
	box-shadow: 2px 5px 10px gray;
}

.current:hover {
	background-color: Greenyellow;
	border-radius: 7px;
	box-shadow: 2px 5px 10px gray;
	transform: translateY(-1px);
}

.search-input {
	background: transparent;
	border: none;
	border-radius: 0;
	border-bottom: 2px solid black;
	transition: all .4s;
}

.search-input:focus {
	background: transparent;
	box-shadow: none;
	border-bottom: 2px solid GreenYellow;
}

.search-button {
	border-radius: 50%;
	padding: 10px 16px;
	transition: all .4s;
}

.search-button:hover {
	background-color: GreenYellow;
	transform: translateY(-1px);
}

.icon-parent {
	position: relative;
}

.icon-bullet:after {
	content: "";
	position: absolute;
	top: 7px;
	left: 15px;
	height: 12px;
	width: 12px;
	background-color: GreenYellow;
	border-radius: 50%;
}

.table-wrapper {
	overflow: auto;
}

.container {
	justify-content: center; /* 수평 정렬 */
	align-items: center; /* 수직 정렬 */
	width: auto;
	height: auto;
	color: black;
}

</style>
</head>
<body>
	<form id="formUpdt" name="formUpdt" method="post" action="/member/memberUpdt">

	<input type="hidden" id="scOymbDelNy" name="scOymbDelNy" value="<c:out value="${vo.scOymbDelNy}"/>">
	<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}"/>">
	<input type="hidden" id="scOption" name="scOption" value="<c:out value="${vo.scOption}"/>">
	<input type="hidden" id="scValue" name="scValue" value="<c:out value="${vo.scValue}"/>">
	<input type="hidden" id="oymbSeq" name="oymbSeq" value="<c:out value="${vo.oymbSeq}"/>">
	<input type="hidden" id="scOptionDate" name="scOptionDate" value="<c:out value="${vo.scOptionDate}"/>">
	<input type="hidden" id="scDateStart" name="scDateStart" value="<c:out value="${vo.scDateStart}"/>">
	<input type="hidden" id="scDateEnd" name="scDateEnd" value="<c:out value="${vo.scDateEnd}"/>">

			<!-- navbar s -->
		<div class="row bigHeader">
			<header class="navbar navbar-dark sticky-top ml-auto">

				<div class="col-auto col-sm-5">
					<a href=/member/memberList><img src="/resources/xdmin/image/oliveimage.PNG" width="120%"></a>
				</div>

				<div class="col-auto d-md-none">

					<div class="container-fluid">
						<button
							class="navbar-toggler position-relative d-md-none collapsed"
							type="button" data-bs-toggle="collapse"
							data-bs-target="#sidebarMenu" aria-controls="sidebarMenu"
							aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

					</div>


				</div>
				<div class="col-auto col-sm-5"></div>

				<div class="col-auto col-sm-2">

			<ul class="nav justify-content-end">

					<c:if test="${sessSeq ne null}">
						<li class="nav-item"><a class="nav-link text-dark"><c:out
									value="${sessName }" /> 님, 반갑습니다👋</a></li>
						<li class="nav-item"><a class="nav-link text-dark" role="button" id="btnLogout">로그아웃</a></li>
					</c:if>
							
						</ul>
				</div>


			</header>
		</div>

		<!-- navbar e -->



		<div class="container-fluid">
			<main>
				
				<div class="container">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">회원 관리</a></li>
							<li class="breadcrumb-item"><a href="#">회원 리스트</a></li>
							<li class="breadcrumb-item"><a href="#">회원 정보 조회</a></li>
							<li class="breadcrumb-item active" aria-current="page">회원 정보 변경</li>
						</ol>
					</nav>
			
					
									
						<button type="button" onclick="javascript:goView();" class="btn btn-outline-primary btn-lg">
							<i class="fa-solid fa-user"></i> 회원 상세
						</button>
					
					<br>
					<hr>
					<br>


					<div class="row">

						<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
							<label for="formFile" class="form-label">이름 (한글)</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
							<input type="text" class="form-control" id="oymbName" name="oymbName" value="<c:out value="${item.oymbName}"/>">
						</div>
						<div class="col-12 col-sm-4 col-lg-2"
							style="margin-top: 20px; margin-bottom: 20px;">
							<label for="formFile" class="form-label">이름 (영문)</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4"
							style="margin-top: 20px; margin-bottom: 20px;">
							<input type="text" class="form-control" id="oymbNameEng"
								name="oymbNameEng" value="<c:out value="${item.oymbNameEng}"/>">
							<div id="NameEngHelpBlock" class="form-text">예시:김나리 'nr'</div>
						</div>

					</div>

					<div class="row">

						<div class="col-12 col-sm-4 col-lg-2"
							style="margin-top: 20px; margin-bottom: 20px;">
							<label for="formFile" class="form-label">아이디</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4"
							style="margin-top: 20px; margin-bottom: 20px;">
							<input type="text" class="form-control" id="oymbId" name="oymbId"
								value="<c:out value="${item.oymbId}"/>">
						</div>
						<div class="col-12 col-sm-4 col-lg-2"
							style="margin-top: 20px; margin-bottom: 20px;">
							<label for="formFile" class="form-label">닉네임</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4"
							style="margin-top: 20px; margin-bottom: 20px;">
							<input type="text" class="form-control" id="oymbNickName"
								name="oymbNickName"
								value="<c:out value="${item.oymbNickName}"/>">
						</div>

					</div>

					<div class="row">

						<div class="col-12 col-sm-4 col-lg-2"
							style="margin-top: 20px; margin-bottom: 20px;">
							<label for="formFile" class="form-label">비밀번호</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4"
							style="margin-top: 20px; margin-bottom: 20px;">
							<input type="password" id="oymbPassword" name="oymbPassword"
								class="form-control pw" aria-describedby="passwordHelpBlock"
								value="<c:out value="${item.oymbPassword}"/>">
							<div id="passwordHelpBlock" class="form-text">8-20자리의 영문
								대소문자, 숫자, 특수문자를 조합하여 설정</div>
						</div>
						<div class="col-12 col-sm-4 col-lg-2"
							style="margin-top: 20px; margin-bottom: 20px;">
							<label for="formFile" class="form-label">비밀번호 확인</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4"
							style="margin-top: 20px; margin-bottom: 20px;">
							<input type="password" id="oymbPassword2" class="form-control pw"
								aria-describedby="passwordHelpBlock">
							<div id="passwordHelpBlock" class="form-text"></div>
						</div>

					</div>

					<div class="row">

						<div class="col-12 col-sm-4 col-lg-2"
							style="margin-top: 20px; margin-bottom: 20px;">
							<label for="formFile" class="form-label">생년월일</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4"
							style="margin-top: 20px; margin-bottom: 20px;">
							<input type="text" class="form-control" id="" name="" value="">
						</div>
						<div class="col-12 col-sm-4 col-lg-2"
							style="margin-top: 20px; margin-bottom: 20px;">
							<label for="formFile" class="form-label">성별</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4"
							style="margin-top: 20px; margin-bottom: 20px;">
							<select class="form-select" id="oymbGenderCd" name="oymbGenderCd">
								<option value="" selected>::성별::</option>
								<c:forEach items="${codeGender}" var="itemGender"
									varStatus="statusGender">
									<option value="<c:out value="${itemGender.oycdSeq}"/>"
										<c:if test="${item.oymbGenderCd eq itemGender.oycdSeq }">selected</c:if>><c:out
											value="${itemGender.oycdName}" /></option>
								</c:forEach>
							</select>
						</div>

					</div>


					<div class="row">

						<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
							<label for="formFile" class="form-label">비밀번호 질문</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
							<div class="mb-3">
								<select class="form-select" id="oyjqQuestionCd" name="oyjqQuestionCd">
									<option value="" selected>::선택::</option>
									<c:forEach items="${codeJoinQna}" var="itemJoinQna" varStatus="statusJoinQna">
										<option value="<c:out value="${itemJoinQna.oycdSeq}"/>" <c:if test="${item.oyjqQuestionCd eq itemJoinQna.oycdSeq }">selected</c:if>>
											<c:out value="${itemJoinQna.oycdName}" /></option>
									</c:forEach>
								</select>
							</div>
						</div>
						<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
							<label for="formFile" class="form-label">비밀번호 답변</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
							<input type="text" class="form-control" id="oyjqAnswer" name="oyjqAnswer" value="<c:out value="${item.oyjqAnswer}"/>">
						</div>

					</div>

					<div class="row">

						<div class="col-12 col-sm-4 col-lg-2"
							style="margin-top: 20px; margin-bottom: 20px;">
							<label for="formFile" class="form-label">주소</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
							<div class=input-group>
								<input type="text" class="form-control" id="oymaZipCode" name="oymaZipCode" placeholder="우편번호" value="<c:out value="${item.oymaZipCode}"/>">
								<input type="button" class="btn btn-outline-dark" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
							</div>
							<input type="text" class="form-control" id="oymaAddress1" name="oymaAddress1" placeholder="주소" value="<c:out value="${item.oymaAddress1}"/>">
							<input type="text" class="form-control" id="oymaAddress2" name="oymaAddress2" placeholder="상세주소" value="<c:out value="${item.oymaAddress2}"/>">
							<input type="text" class="form-control" id="oymaAddress3" name="oymaAddress3" placeholder="참고항목" value="<c:out value="${item.oymaAddress3}"/>">

						</div>

						<div class="col-12 col-sm-4 col-lg-2"
							style="margin-top: 20px; margin-bottom: 20px;">
							<label for="formFile" class="form-label">국적</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4"
							style="margin-top: 20px; margin-bottom: 20px;">
							<select class="form-select" id="oynaSeq" name="oynaSeq">
								<option value=" ">선택해주세요</option>
								<option value="1"
									<c:if test="${item.oynaSeq eq 1 }">selected</c:if>>한국</option>
								<option value="2"
									<c:if test="${item.oynaSeq eq 2 }">selected</c:if>>미국</option>
								<option value="5"
									<c:if test="${item.oynaSeq eq 5 }">selected</c:if>>프랑스</option>
								<option value="3"
									<c:if test="${item.oynaSeq eq 3 }">selected</c:if>>영국</option>
								<option value="4"
									<c:if test="${item.oynaSeq eq 4 }">selected</c:if>>독일</option>
								<option value="6"
									<c:if test="${item.oynaSeq eq 6 }">selected</c:if>>폴란드</option>
								<option value="7"
									<c:if test="${item.oynaSeq eq 7 }">selected</c:if>>호주</option>
								<option value="8"
									<c:if test="${item.oynaSeq eq 8 }">selected</c:if>>중국</option>
							</select>
						</div>

					</div>

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


					<div class="row">
						<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
							<label for="formFile" class="form-label">연락처(필수)</label>
						</div>

						<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
							<div class="input-group">
								<input type="hidden" id="oympDefaultNyArray0" name="oympDefaultNyArray" value="1">
								<select class="form-select" id="oympTelecomCdArray0" name="oympTelecomCdArray">
									<option selected>::통신사::</option>
									<c:forEach items="${codeTelecom}" var="itemTelecom" varStatus="statusTelecom">
										<option value="<c:out value="${itemTelecom.oycdSeq}"/>" <c:if test="${oympTelecom1 eq itemTelecom.oycdSeq }">selected</c:if>>
											<c:out value="${itemTelecom.oycdName}" /></option>
									</c:forEach>
								</select>
								<input type="text" class="form-control" id="oympNumberArray0" name="oympNumberArray" value="<c:out value="${oympNumber1}"/>" placeholder="'-'제외">
							</div>
						</div>

						<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
							<label for="formFile" class="form-label">연락처(선택)</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
							<div class="input-group">
								<input type="hidden" id="oympDefaultNyArray1" name="oympDefaultNyArray" value="0">
								<select class="form-select" id="oympTelecomCdArray1" name="oympTelecomCdArray">
									<option selected>::통신사::</option>
									<c:forEach items="${codeTelecom}" var="itemTelecom" varStatus="statusTelecom">
										<option value="<c:out value="${itemTelecom.oycdSeq}"/>" <c:if test="${oympTelecom0 eq itemTelecom.oycdSeq }">selected</c:if>>
											<c:out value="${itemTelecom.oycdName}" /></option>
									</c:forEach>
								</select>
								<input type="text" class="form-control" id="oympNumberArray1" name="oympNumberArray" value="<c:out value="${oympNumber0}"/>" placeholder="'-'제외">
							</div>
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

					<div class="row">
						<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
							<label for="formFile" class="form-label">이메일 (필수)</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
							<div class="input-group">
								<input type="hidden" id="oymeDefaultNyArray0" name="oymeDefaultNyArray" value="1">
								<input type="text" class="form-control" id="oymeEmailAccountArray0" name="oymeEmailAccountArray" value="<c:out value="${oymeAccount1}"/>">
								<span class="input-group-text">@</span>
								<select class="form-select" id="oymeEmailDomainCdArray0" name="oymeEmailDomainCdArray">
									<option value="" selected>::선택:: <c:forEach items="${codeEmail}" var="itemEmail" varStatus="statusEmail">
											<option value="<c:out value="${itemEmail.oycdSeq}"/>" <c:if test="${oymeDomain1 eq itemEmail.oycdSeq}">selected</c:if>>
												<c:out value="${itemEmail.oycdName}" /></option>
										</c:forEach>
								</select>
							</div>
						</div>

						<div class="col-12 col-sm-4 col-lg-2"
							style="margin-top: 20px; margin-bottom: 20px;">
							<label for="formFile" class="form-label">이메일 (선택)</label>
						</div>
						<div class="col-12 col-sm-8 col-lg-4"
							style="margin-top: 20px; margin-bottom: 20px;">
							<div class="input-group">
								<input type="hidden" id="oymeDefaultNyArray1" name="oymeDefaultNyArray" value="0">
								<input type="text" class="form-control" id="oymeEmailAccountArray1" name="oymeEmailAccountArray" value="<c:out value="${oymeAccount0}"/>">
								<span class="input-group-text">@</span>
								<select class="form-select" id="oymeEmailDomainCdArray1" name="oymeEmailDomainCdArray">
									<option value="" selected>::선택::
										<c:forEach items="${codeEmail}" var="itemEmail" varStatus="statusEmail">
											<option value="<c:out value="${itemEmail.oycdSeq}"/>" <c:if test="${oymeDomain0 eq itemEmail.oycdSeq}">selected</c:if>>
												<c:out value="${itemEmail.oycdName}" /></option>
										</c:forEach>
								</select>
							</div>
						</div>
					</div>

					<br>
					<hr>
					<br>
					<div class="row">
					<div class="col-12 col-sm-4 col-lg-2"
						style="margin-top: 20px; margin-bottom: 20px;">
						<label for="formFile" class="form-label">피부타입</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4"
						style="margin-top: 20px; margin-bottom: 20px;">
						<input type="radio" class="btn-check" id="oymbSkinType141" name="oymbSkinTypeCd" value="141"  <c:if test="${item.oymbSkinTypeCd eq 141}">checked</c:if>>
						<label class="btn btn-outline-dark" for="oymbSkinType141">민감성</label>
						<input type="radio" class="btn-check" id="oymbSkinType142" name="oymbSkinTypeCd" value="142" <c:if test="${item.oymbSkinTypeCd eq 142}">checked</c:if>>
						<label class="btn btn-outline-dark" for="oymbSkinType142">지성</label>
						<input type="radio" class="btn-check" id="oymbSkinType143" name="oymbSkinTypeCd" value="143" <c:if test="${item.oymbSkinTypeCd eq 143}">checked</c:if>>
						<label class="btn btn-outline-dark" for="oymbSkinType143">중성</label>
						<input type="radio" class="btn-check" id="oymbSkinType144" name="oymbSkinTypeCd" value="144" <c:if test="${item.oymbSkinTypeCd eq 144}">checked</c:if>>
						<label class="btn btn-outline-dark" for="oymbSkinType144">건성</label>
						<input type="radio" class="btn-check" id="oymbSkinType145" name="oymbSkinTypeCd" value="145" <c:if test="${item.oymbSkinTypeCd eq 145}">checked</c:if>> 
						<label class="btn btn-outline-dark" for="oymbSkinType145">트러블</label>
					</div>
					<div class="col-12 col-sm-4 col-lg-2"
						style="margin-top: 20px; margin-bottom: 20px;">
						<label for="formFile" class="form-label">퍼스널컬러</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4"
						style="margin-top: 20px; margin-bottom: 20px;">

						<input type="radio" class="btn-check" id="oymbPersonalColor146" name="oymbPersonalColorCd" value="146" <c:if test="${item.oymbPersonalColorCd eq 146}">checked</c:if>>
						<label class="btn btn-outline-dark" for="oymbPersonalColor146">봄 웜</label>
						<input type="radio" class="btn-check" id="oymbPersonalColor147" name="oymbPersonalColorCd" value="147" <c:if test="${item.oymbPersonalColorCd eq 147}">checked</c:if>>
						<label class="btn btn-outline-dark" for="oymbPersonalColor147">여름 쿨</label>
						<input type="radio" class="btn-check" id="oymbPersonalColor148" name="oymbPersonalColorCd" value="148" <c:if test="${item.oymbPersonalColorCd eq 148}">checked</c:if>>
						<label class="btn btn-outline-dark" for="oymbPersonalColor148">가을 웜</label>
						<input type="radio" class="btn-check" id="oymbPersonalColor149" name="oymbPersonalColorCd" value="149" <c:if test="${item.oymbPersonalColorCd eq 149}">checked</c:if>>
						<label class="btn btn-outline-dark" for="oymbPersonalColor149">겨울 쿨</label>

					</div>
				</div>

				<div class="row">
					<div class="col-12 col-sm-4 col-lg-2"
						style="margin-top: 20px; margin-bottom: 20px;">
						<label for="formFile" class="form-label">관심 분야</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4"
						style="margin-top: 20px; margin-bottom: 20px;">
						<input type="checkbox" class="btn-check" id="oymbInterests150" name="oymbInterestsCd" value="150" <c:if test="${item.oymbInterestsCd eq 150}">checked</c:if>>
						<label class="btn btn-outline-dark" for="oymbInterests150">스킨 케어</label>
						<input type="checkbox" class="btn-check" id="oymbInterests151" name="oymbInterestsCd" value="151" <c:if test="${item.oymbInterestsCd eq 151}">checked</c:if>>
						<label class="btn btn-outline-dark" for="oymbInterests151">메이크업</label>
						<input type="checkbox" class="btn-check" id="oymbInterests152" name="oymbInterestsCd" value="152" <c:if test="${item.oymbInterestsCd eq 152}">checked</c:if>>
						<label class="btn btn-outline-dark" for="oymbInterests152">헤어 케어</label>
						<input type="checkbox" class="btn-check" id="oymbInterests153" name="oymbInterestsCd" value="153" <c:if test="${item.oymbInterestsCd eq 153}">checked</c:if>>
						<label class="btn btn-outline-dark" for="oymbInterests153">바디 케어</label>
						<input type="checkbox" class="btn-check" id="oymbInterests154" name="oymbInterestsCd" value="154" <c:if test="${item.oymbInterestsCd eq 154}">checked</c:if>>
						<label class="btn btn-outline-dark" for="oymbInterests154">이너 케어</label>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="row">

					<div class="col-12 col-sm-4 col-lg-2"
						style="margin-top: 20px; margin-bottom: 20px;">
						<label for="formFile" class="form-label">모바일 수신동의</label>
					</div>

					<div class="col-12 col-sm-8 col-lg-4"
						style="margin-top: 20px; margin-bottom: 20px;">
						<div class="input-group">
							<input type="radio" class="btn-check" id="oymbSmsConsent1" name="oymbSmsConsentNy" value="1" <c:if test="${item.oymbSmsConsentNy eq 1}">checked</c:if>>
							<label class="btn btn-outline-dark" for="oymbSmsConsent1">동의</label>
							<input type="radio" class="btn-check" id="oymbSmsConsent0" name="oymbSmsConsentNy" value="0" <c:if test="${item.oymbSmsConsentNy eq 0}">checked</c:if>>
							<label class="btn btn-outline-dark" for="oymbSmsConsent0">비동의</label>
						</div>
					</div>

					<div class="col-12 col-sm-4 col-lg-2" style="margin-top: 20px; margin-bottom: 20px;">
						<label for="formFile" class="form-label">이메일 수신동의</label>
					</div>

					<div class="col-12 col-sm-8 col-lg-4" style="margin-top: 20px; margin-bottom: 20px;">
						<div class="input-group">
							<input type="radio" class="btn-check" id="oymbEmailConsent1" name="oymbEmailConsentNy" value="1" <c:if test="${item.oymbEmailConsentNy eq 1}">checked</c:if>>
							<label class="btn btn-outline-dark" for="oymbEmailConsent1">동의</label>
							<input type="radio" class="btn-check" id="oymbEmailConsent0" name="oymbEmailConsentNy" value="0" <c:if test="${item.oymbEmailConsentNy eq 0}">checked</c:if>> 
							<label class="btn btn-outline-dark" for="oymbEmailConsent0">비동의</label>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-12 col-sm-4 col-lg-2"
						style="margin-top: 20px; margin-bottom: 20px;">
						<label for="formFile" class="form-label">PUSH 수신동의</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4"
						style="margin-top: 20px; margin-bottom: 20px;">
						<div class="input-group">
							<input type="radio" class="btn-check" id="oymbPushConsent1" name="oymbPushConsentNy" value="1" <c:if test="${item.oymbPushConsentNy eq 1}">checked</c:if>>
							<label class="btn btn-outline-dark" for="oymbPushConsent1">동의</label>
							<input type="radio" class="btn-check" id="oymbPushConsent0" name="oymbPushConsentNy" value="0" <c:if test="${item.oymbPushConsentNy eq 0}">checked</c:if>>
							<label class="btn btn-outline-dark" for="oymbPushConsent0">비동의</label>
						</div>
					</div>
					<div class="col-12 col-sm-4 col-lg-2"
						style="margin-top: 20px; margin-bottom: 20px;">
						<label for="formFile" class="form-label">개인정보 유효기간</label>
					</div>
					<div class="col-12 col-sm-8 col-lg-4"
						style="margin-top: 20px; margin-bottom: 20px;">
						<input type="radio" class="btn-check" id="oymbSavedCd1" name="oymbSavedCd" value="6" <c:if test="${item.oymbSavedCd eq 6}">checked</c:if>>
						<label class="btn btn-outline-dark" for="oymbSavedCd1">1년</label>
						<input type="radio" class="btn-check" id="oymbSavedCd5" name="oymbSavedCd" value="8" <c:if test="${item.oymbSavedCd eq 8}">checked</c:if>>
						<label class="btn btn-outline-dark" for="oymbSavedCd5">5년</label>
						<input type="radio" class="btn-check" id="oymbSavedCd10" name="oymbSavedCd" value="9" <c:if test="${item.oymbSavedCd eq 9}">checked</c:if>>
						<label class="btn btn-outline-dark" for="oymbSavedCd10">10년</label>
						<input type="radio" class="btn-check" id="oymbSavedCd4" name="oymbSavedCd" value="10" <c:if test="${item.oymbSavedCd eq 10}">checked</c:if>>
						<label class="btn btn-outline-dark" for="oymbSavedCd4">평생회원</label>
					</div>
				</div>
						<br>
						<hr>
						<br>
						<div style="text-align:right;">
						<button type="button" onclick="javascript:goSubmit();" class="btn btn-outline-success btn-lg">
							<i class="fa-solid fa-circle-check"></i> 수정 완료
						</button></div>
						
				</div>
			</main>
		</div>


		<div class="container">
<%@ include file="/WEB-INF/views/include/footer.jsp" %><!-- footer -->
		</div>

	</form>
	<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript">

<!-- 비밀번호 일치 체크 -->

$('.pw').focusout(function () {
    var pwd1 = $("#oymbPassword").val();
    var pwd2 = $("#oymbPassword2").val();

    if ( pwd1 != '' && pwd2 == '' ) {
        null;
    } else if (pwd1 != "" || pwd2 != "") {
        if (pwd1 == pwd2) {
            $("#alert-success").css('display', 'inline-block');
            $("#alert-danger").css('display', 'none');
        } else {
            $("#alert-success").css('display', 'none');
            $("#alert-danger").css('display', 'inline-block');
        }
    }
});

function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
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
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("oymaAddress3").value = extraAddr;
            
            } else {
                document.getElementById("oymaAddress3").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("oymaZipCode").value = data.zonecode;
            document.getElementById("oymaAddress1").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("oymaAddress2").focus();
        }
    }).open();
}

goView = function() {
	$("#formUpdt").attr("action", "/member/memberView");
	$("#formUpdt").submit();
}

goSubmit = function() {
	$("#formUpdt").attr("action", "/member/memberUpdt");
	$("#formUpdt").submit();
}

</script>


</body>
</html>