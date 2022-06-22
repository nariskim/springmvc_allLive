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
.container-header {
	margin-top: 1%;
	margin-bottom: 3%;
	margin-left: 6%;
	margin-right: 6%;
}

#carousel-inner {
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
	width: 215px;
	height: 215px;
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

	<form id="allLiveMain" name="allLiveMain" method="get">
		<input type="hidden" id="oypdSeq" name="oypdSeq">

		<%@include file="../include/pageHeader.jsp"%>

		<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
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


		<!-- <div class="row"></div> -->
		<main>

			<div class="container-main">
				

				<div class="row mb-2">
					<div class="col-12">
						<br>
						<h1>인기상품</h1>
						<br>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-1" style="color: red;"></i>
						</h3>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-2"></i>
						</h3>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-3"></i>
						</h3>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-4"></i>
						</h3>
					</div>
					<c:forEach items="${list}" var="item" varStatus="status">
						<c:if test="${item.oyspTypeCd eq 1417}">
							<div class="col-12 col-sm-3">
								<a href="javascript:goView(<c:out value="${item.oypdSeq}"/>);">
									<div class="card" id="mainall">
										<img id="mainimage"
											src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>">
										<div class="card-body">
											<div class="pdText">
												<div class="pdbrand">
													<c:out value="${item.oypdBrand}" />
												</div>
												<br>
												<div class="pdNameB">
													<c:out value="${item.oypdName}" />
												</div>
											</div>
											<br><br>
											<div class="priceB">
												<fmt:formatNumber value="${item.oypdPrice}" />
												<span>원</span>
											</div>
											<div class="priceR">
												<fmt:formatNumber value="${item.oyspSalePrice}" />
												<span>원</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<br>
						</c:if>
					</c:forEach>
					<%-- 					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-5"></i>
						</h3>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-6"></i>
						</h3>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-7"></i>
						</h3>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-8"></i>
						</h3>
					</div>
					<c:forEach items="${list}" var="item" varStatus="status" begin="4"
						end="7">
						<c:if test="${item.oyspTypeCd eq 1417}">
							<div class="col-12 col-sm-3">
								<a href="javascript:goView(<c:out value="${item.oypdSeq}"/>);">
									<div class="card" id="mainall">
										<img id="mainimage"
											src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>">
										<div class="card-body">
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
											<div class="priceB">
												<fmt:formatNumber value="${item.oypdPrice}" />
												<span>원</span>
											</div>
											<div class="priceR">
												<fmt:formatNumber value="${item.oyspSalePrice}" />
												<span>원</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<br>
						</c:if>
					</c:forEach>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-9"></i>
						</h3>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-1"></i><i class="fa-regular fa-0"></i>
						</h3>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-11"></i>
						</h3>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-12"></i>
						</h3>
					</div>
					<c:forEach items="${list}" var="item" varStatus="status" begin="8"
						end="11">
						<c:if test="${item.oyspTypeCd eq 1417}">
							<div class="col-12 col-sm-3">
								<a href="javascript:goView(<c:out value="${item.oypdSeq}"/>);">
									<div class="card" id="mainall">
										<img id="mainimage"
											src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>">
										<div class="card-body">
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
											<div class="priceB">
												<fmt:formatNumber value="${item.oypdPrice}" />
												<span>원</span>
											</div>
											<div class="priceR">
												<fmt:formatNumber value="${item.oyspSalePrice}" />
												<span>원</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<br>
						</c:if>
					</c:forEach>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-13"></i>
						</h3>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-14"></i>
						</h3>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-15"></i>
						</h3>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-16"></i>
						</h3>
					</div>
					<c:forEach items="${list}" var="item" varStatus="status" begin="12"
						end="15">
						<c:if test="${item.oyspTypeCd eq 1417}">
							<div class="col-12 col-sm-3">
								<a href="javascript:goView(<c:out value="${item.oypdSeq}"/>);">
									<div class="card" id="mainall">
										<img id="mainimage"
											src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>">
										<div class="card-body">
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
											<div class="priceB">
												<fmt:formatNumber value="${item.oypdPrice}" />
												<span>원</span>
											</div>
											<div class="priceR">
												<fmt:formatNumber value="${item.oyspSalePrice}" />
												<span>원</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<br>
						</c:if>
					</c:forEach>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-17"></i>
						</h3>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-18"></i>
						</h3>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-19"></i>
						</h3>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-20"></i>
						</h3>
					</div>
					<c:forEach items="${list}" var="item" varStatus="status" begin="16"
						end="19">
						<c:if test="${item.oyspTypeCd eq 1417}">
							<div class="col-12 col-sm-3">
								<a href="javascript:goView(<c:out value="${item.oypdSeq}"/>);">
									<div class="card" id="mainall">
										<img id="mainimage"
											src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>">
										<div class="card-body">
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
											<div class="priceB">
												<fmt:formatNumber value="${item.oypdPrice}" />
												<span>원</span>
											</div>
											<div class="priceR">
												<fmt:formatNumber value="${item.oyspSalePrice}" />
												<span>원</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<br>
						</c:if>
					</c:forEach>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-21"></i>
						</h3>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-22"></i>
						</h3>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-23"></i>
						</h3>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-24"></i>
						</h3>
					</div>
					<c:forEach items="${list}" var="item" varStatus="status" begin="20"
						end="23">
						<c:if test="${item.oyspTypeCd eq 1417}">
							<div class="col-12 col-sm-3">
								<a href="javascript:goView(<c:out value="${item.oypdSeq}"/>);">
									<div class="card" id="mainall">
										<img id="mainimage"
											src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>">
										<div class="card-body">
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
											<div class="priceB">
												<fmt:formatNumber value="${item.oypdPrice}" />
												<span>원</span>
											</div>
											<div class="priceR">
												<fmt:formatNumber value="${item.oyspSalePrice}" />
												<span>원</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<br>
						</c:if>
					</c:forEach>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-25"></i>
						</h3>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-26"></i>
						</h3>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-27"></i>
						</h3>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-28"></i>
						</h3>
					</div>
					<c:forEach items="${list}" var="item" varStatus="status" begin="24"
						end="27">
						<c:if test="${item.oyspTypeCd eq 1417}">
							<div class="col-12 col-sm-3">
								<a href="javascript:goView(<c:out value="${item.oypdSeq}"/>);">
									<div class="card" id="mainall">
										<img id="mainimage"
											src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>">
										<div class="card-body">
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
											<div class="priceB">
												<fmt:formatNumber value="${item.oypdPrice}" />
												<span>원</span>
											</div>
											<div class="priceR">
												<fmt:formatNumber value="${item.oyspSalePrice}" />
												<span>원</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<br>
						</c:if>
					</c:forEach>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-29"></i>
						</h3>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-30"></i>
						</h3>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-31"></i>
						</h3>
					</div>
					<div class="col-12 col-sm-3">
						<h3>
							<i class="fa-regular fa-32"></i>
						</h3>
					</div>
					<c:forEach items="${list}" var="item" varStatus="status" begin="28"
						end="31">
						<c:if test="${item.oyspTypeCd eq 1417}">
							<div class="col-12 col-sm-3">
								<a href="javascript:goView(<c:out value="${item.oypdSeq}"/>);">
									<div class="card" id="mainall">
										<img id="mainimage"
											src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>">
										<div class="card-body">
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
											<div class="priceB">
												<fmt:formatNumber value="${item.oypdPrice}" />
												<span>원</span>
											</div>
											<div class="priceR">
												<fmt:formatNumber value="${item.oyspSalePrice}" />
												<span>원</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<br>
						</c:if>
					</c:forEach> --%>
				</div>
			</div>

		</main>


		<div class="container-footer">
<%@ include file="/WEB-INF/views/include/footer.jsp" %><!-- footer -->
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
		
		$("#btnLogout").on("click", function(){
			/* if(validation() == false) return false; */
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				,url: "/member/logoutProc"
				/* ,data : { "mvmmId" : $("#mvmmId").val(), "mvmmPassword" : $("#mvmmPassword").val()} */
				,success: function(response) {
					if(response.rt == "success") {
						location.href = "/allLive/loginForm";
					} else {
						// by pass
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});	
		});
	</script>

</body>
</html>