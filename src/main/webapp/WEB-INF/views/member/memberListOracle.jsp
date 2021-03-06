<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:useBean id="CodeServiceImpl" class="com.julyte.user.modules.code.CodeServiceImpl" />

<!DOCTYPE html>
<html lang="ko">  
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>List.AllLiveYoung</title>
 
<script src="https://kit.fontawesome.com/893e1f7eb8.js" crossorigin="anonymous"></script>

<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
<!-- jquery ui CSS -->
<link
	href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css"
	rel="stylesheet">



<style type="text/css">
main {
	margin-top: 2%;
	margin-bottom: 20%;
	margin-left: auto;
	margin-right: auto;
}
.bigHeader {
	margin-left: 6%;
	margin-right: 6%;
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

.select-input {
	background: transparent;
	border: none;
	border-radius: 0;
	border-bottom: 2px solid black;
	transition: all .4s;
}

.select-input:focus {
	background: transparent;
	box-shadow: none;
	border-bottom: 2px solid GreenYellow;
}

.search-button {
	border-radius: 100%;
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
	justify-content: center; /* ?????? ?????? */
	align-items: center; /* ?????? ?????? */
	width: auto;
	height: auto;
	color: black;
}

.pagination {
	justify-content: center;
}
</style>
</head>
<body>

	<form id="formList" name="formList" method="post" action="/member/memberList">
		<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
		<input type="hidden" name="checkboxSeqArray" id="checkboxSeqArray">
		<input type="hidden" id="oymbSeq" name="oymbSeq">



				<div class="row">
					<div style="font-size: small;">
						<ul class="nav justify-content-end">
					<!-- 		<li class="nav-item"><a class="nav-link text-dark" href="#">????????????</a>
							</li>
							<li class="nav-item"><a class="nav-link text-dark"
								href="javascript:goLogin();">?????????</a></li>
							<li class="nav-item"><a class="nav-link text-dark" href="#">????????????</a>
							</li>
							<li class="nav-item"><a class="nav-link text-dark" href="#">????????????</a>
							</li>
							<li class="nav-item"><a class="nav-link text-dark" href="#">????????????</a>
							</li>
							<li class="nav-item"><a class="nav-link text-dark" href="#">????????????</a>
							</li>
							<li class="nav-item"><a class="nav-link text-dark" href="#">Global</a>
							</li> -->

						</ul>

					</div>
				</div>
		<!-- navbar s -->
		<div class="row bigHeader">
			<header class="navbar navbar-dark sticky-top ml-auto">

				<div class="col-auto col-sm-5">
					<img src="/resources/xdmin/image/oliveimage.PNG" width="120%">
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
				<div class="col-10 col-sm-5"></div>

				<div class="col-auto col-sm-2">

			<ul class="nav justify-content-end">
							<li class="nav-item"><a class="nav-link text-dark" href="#"><c:out value="${sessName}"/>??? ???????????????.</a>
							</li>
							<li class="nav-item"><a href="#" class="nav-link"><i
						class="fas fa-sign-out-alt text-danger fa-lg"></i></a></li>
							<li class="nav-item"> </li>
							
						</ul>
				</div>


			</header>
		</div>

		<!-- navbar e -->



		<!-- <nav id="sidebarMenu"
	class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse show">
	<div class="position-sticky pt-3">
		<ul class="navbar-nav flex-column mt-4">
			Dashboard
			<li class="nav-item"><a href="#"
				class="nav-link text-dark p-3 mb-2 sidebar-link"> <i
					class="fas fa-home text-dark fg-lg mr-3"></i>&nbsp&nbsp???
			</a></li>
			Profile
			<li class="nav-item"><a href="#"
				class="nav-link text-dark p-3 mb-2 sidebar-link"> <i
					class="fas fa-shopping-cart text-dark fg-lg mr-3"></i>&nbsp&nbsp??????
					??????
			</a></li>
			Inbox
			<li class="nav-item"><a href="#"
				class="nav-link text-dark p-3 mb-2 sidebar-link"> <i
					class="fas fa-truck-fast text-dark fg-lg mr-3"></i>&nbsp&nbsp??????
					/ ??????
			</a></li>
			Sales
			<li class="nav-item"><a href="#"
				class="nav-link text-dark p-3 mb-2 sidebar-link"> <i
					class="fas fa-calendar-check text-dark fg-lg mr-3"></i>&nbsp&nbsp?????????
			</a></li>
			Analytics
			<li class="nav-item"><a href="#"
				class="nav-link text-dark p-3 mb-2 sidebar-link"> <i
					class="fas fa-chart-line text-dark fg-lg mr-3"></i>&nbsp&nbsp??????
					??????
			</a></li>
			Tables
			<li class="nav-item"><a href="#"
				class="nav-link text-dark p-3 mb-2 current"> <i
					class="fas fa-user fa-table text-dark fg-lg mr-3"></i>&nbsp&nbsp??????
					??????
			</a></li>
			Settings
			<li class="nav-item"><a href="#"
				class="nav-link text-dark p-3 mb-2 sidebar-link"> <i
					class="fas fa-headphones text-dark fg-lg mr-3"></i>&nbsp&nbsp??????
					??????
			</a></li>
			Documentations
			<li class="nav-item"><a href="#"
				class="nav-link text-dark p-3 mb-2 sidebar-link"> <i
					class="fas fa-table fa-file-alt text-dark fg-lg mr-3"></i>&nbsp&nbsp?????????
					??????
			</a></li>
		</ul>

	</div>
</nav> -->
		<main>
			<div class="container-fluid">
				<div class="row">


					<div class="container" style="border:7px solid #CACACA; border-radius:10px; padding-left: 150px; padding-top: 70px; padding-right: 150px; padding-bottom: 70px;">



						<div class="row">
							<div class="col-12 col-sm-12 col-lg-3">
								<select name="scOptionDate" id="scOptionDate"
									class="form-select select-input">
									<option value=""
										<c:if test="${empty vo.scOptionDate}">selected</c:if>>::??????::




									
									<option value="1"
										<c:if test="${vo.scOptionDate eq 1 }">selected</c:if>>?????????</option>



									<option value="2"
										<c:if test="${vo.scOptionDate eq 2 }">selected</c:if>>?????????</option>



									<option value="3"
										<c:if test="${vo.scOptionDate eq 3 }">selected</c:if>>????????????</option>

								</select>



							</div>
							<div class="col-12 col-sm-6 col-lg-4">
								<fmt:parseDate var="scDateStart" value="${vo.scDateStart}"
									pattern="yyyy-MM-dd HH:mm:ss" />
								<input type="text" id="scDateStart" name="scDateStart"
									value="<fmt:formatDate value="${scDateStart}" pattern="yyyy-MM-dd" />"
									placeholder="?????????" class="form-control me-2 search-input"
									autocomplete="off">
							</div>
							<div class="col-12 col-sm-6 col-lg-4">
								<fmt:parseDate var="scDateEnd" value="${vo.scDateEnd}"
									pattern="yyyy-MM-dd HH:mm:ss" />
								<input type="text" id="scDateEnd" name="scDateEnd"
									value="<fmt:formatDate value="${scDateEnd}" pattern="yyyy-MM-dd" />"
									placeholder="?????????" class="form-control search-input"
									autocomplete="off">
							</div>
							<div class="col-sm-none col-lg-1"></div>
						</div>

						<br>

						<div class="row">
							<div class="col-12 col-sm-12 col-lg-3">
								<select class="form-select select-input" name="scOymbDelNy"
									id="scOymbDelNy">
									<option value=""
										<c:if test="${empty vo.scOymbDelNy}">selected</c:if>>::????????????::</option>
									<option value="1"
										<c:if test="${vo.scOymbDelNy eq 1 }">selected</c:if>>Y</option>
									<option value="0"
										<c:if test="${vo.scOymbDelNy eq 0 }">selected</c:if>>N</option>
								</select>

							</div>

							<div class="col-12 col-sm-4 col-lg-3">
								<select name="scOption" id="scOption"
									class="form-select select-input">
									<option value=""
										<c:if test="${empty vo.scOption}">selected</c:if>>::????????????::</option>

									<option value="1"
										<c:if test="${vo.scOption eq 1 }">selected</c:if>>????????????</option>
									<option value="2"
										<c:if test="${vo.scOption eq 2 }">selected</c:if>>????????????</option>
									<option value="3"
										<c:if test="${vo.scOption eq 3 }">selected</c:if>>??????</option>
									<option value="4"
										<c:if test="${vo.scOption eq 4 }">selected</c:if>>??????(??????)</option>
									<option value="5"
										<c:if test="${vo.scOption eq 4 }">selected</c:if>>?????????</option>
									<option value="6"
										<c:if test="${vo.scOption eq 4 }">selected</c:if>>??????</option>
									<option value="7"
										<c:if test="${vo.scOption eq 4 }">selected</c:if>>?????????</option>
									<option value="8"
										<c:if test="${vo.scOption eq 4 }">selected</c:if>>?????????</option>

								</select>
							</div>
							<div class="col-12 col-sm-4 col-lg-3">
								<input type="text" id="scValue" name="scValue"
									class="form-control search-input" placeholder="?????????"
									value="<c:out value="${vo.scValue}"/>">
							</div>


							<div class="col-12 col-sm-12 col-lg-1">

								<button type="submit" id="btnSubmit" name="search"
									class="btn btn-secondary search-button">
									<i class="fas fa-search text-light"></i>
								</button>
							</div>
							<div class="col-12 col-sm-12 col-lg-1">
								<a href="/durian/durianList"><button type="button"
										class="btn btn-secondary search-button">
										<i class="fa-solid fa-rotate-right text-light"></i>
									</button></a>





							</div>
							<div class="col-12 col-sm-12 col-lg-1"></div>
							<div class="col-12 col-sm-4 col-lg-2"></div>
							<div class="col-12 col-sm-4 col-lg-2"></div>
							<div class="col-12 col-sm-4 col-lg-2"></div>
							<div class="col-12 col-sm-4 col-lg-2"></div>

						</div>

					</div>
				</div>
			</div>
			<br>
			<br>

			<div class="table-wrapper">
				<div class="container">
					<br>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#">?????? ??????</a></li>
							<li class="breadcrumb-item active" aria-current="page">??????
								?????????</li>
						</ol>
					</nav>

					<div class="row">
						<div class="col-9"></div>
						<div class="col-3" style="text-aling: right;">
							<button type="button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="????????????(??????)" id="uelete" name="uelete"
								class="btn btn-outline-warning btn-lg">
								<i class="fa-solid fa-user-minus"></i>
							</button>
							<button type="button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="????????????(??????)" id="btnSubmit_del" name="btnSubmit_del"
								class="btn btn-outline-danger btn-lg">
								<i class="fa-solid fa-user-xmark"></i>
							</button>

							<a href="javascript:goForm();">
								<button type="button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="????????????" class="btn btn-outline-success btn-lg">
									<i class="fa-solid fa-user-plus"></i>
								</button>
							</a>
						</div>
					</div>

					<br> <br>
					<table class="table table-hover">
						<thead>
							<tr>
								<th scope="col">
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value=""
											id="checkboxAll" name="checkboxAll">
									</div>
								</th>
								<th scope="col">????????????</th>
								<th scope="col">????????????</th>
								<th scope="col">??????</th>
								<th scope="col">??????(??????)</th>
								<th scope="col">?????????</th>
								<th scope="col">??????</th>
								<th scope="col">?????????</th>
								<th scope="col">?????????</th>
								<th scope="col">????????????</th>
								<th scope="col">????????????</th>
								<th scope="col">????????????</th>

							</tr>
						</thead>

						<tbody>
							<c:set var="listCodeGender"
								value="${CodeServiceImpl.selectListCachedCode('2')}" />
							<c:set var="listCodeGrade"
								value="${CodeServiceImpl.selectListCachedCode('19')}" />
							<c:choose>
								<c:when test="${fn:length(list) eq 0}">
									<tr>
										<td class="text-center" colspan="12">There is no data!</td>
									</tr>
								</c:when>
								<c:otherwise>

									<c:forEach items="${list}" var="item" varStatus="status">
										<tr>
											<th scope="row">
												<div class="form-check">
													<input class="form-check-input" type="checkbox"
														name="checkboxSeq" id="checkboxSeq"
														value="<c:out value="${item.oymbSeq}"/>">
												</div>
											</th>
											<th scope="row"><c:out value="${item.oymbSeq}" /></th>
											<td><c:forEach items="${listCodeGrade}" var="itemGrade"
													varStatus="statusGrade">
													<c:if test="${item.oymbGradeCd eq itemGrade.oycdSeq}">
														<c:out value="${itemGrade.oycdName}" />
													</c:if>
												</c:forEach></td>
											<td><a
												href="javascript:goView(<c:out value="${item.oymbSeq}"/>);">
													<c:out value="${item.oymbName}" />
											</a></td>
											<td><c:out value="${item.oymbNameEng}" /></td>
											<td><c:out value="${item.oymbId}" /></td>
											<td><c:forEach items="${listCodeGender}"
													var="itemGender" varStatus="statusGender">
													<c:if test="${item.oymbGenderCd eq itemGender.oycdSeq}">
														<c:out value="${itemGender.oycdName}" />
													</c:if>
												</c:forEach></td>
											<td><c:set var="phoneNumber" value="${item.oympNumber}" />
												<c:choose>
													<c:when test="${fn:length(phoneNumber) eq 10 }">
														<c:out value="${fn:substring(phoneNumber,0,3)}" />
														<c:out value="${fn:substring(phoneNumber,3,6)}" />
														<c:out value="${fn:substring(phoneNumber,6,10)}" />
													</c:when>
													<c:otherwise>
														<c:out value="${fn:substring(phoneNumber,0,3)}" />
														<c:out value="${fn:substring(phoneNumber,3,7)}" />
														<c:out value="${fn:substring(phoneNumber,7,11)}" />
													</c:otherwise>
												</c:choose></td>
											<td><c:out value="${item.oymeEmailFull}" /></td>
											<td><c:choose>
													<c:when test="${item.oymbDelNy eq 0 }">N</c:when>
													<c:otherwise>Y</c:otherwise>
												</c:choose></td>
											<td><fmt:formatDate value="${item.regDateTime}"
													pattern="yyyy-MM-dd HH:mm:ss" /></td>
											<td><fmt:formatDate value="${item.modDateTime}"
													pattern="yyyy-MM-dd HH:mm:ss" /></td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
					<br>
					<hr>
					<br>

				</div>
			</div>


			<nav aria-label="Page navigation example">
				<ul class="pagination">



					<c:if test="${vo.startPage gt vo.pageNumToShow}">
						<li class="page-item"><a class="page-link"
							style="color: black;"
							href="javascript:goPage(<c:out value='${vo.startPage - 1}'/>);"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
					</c:if>
					<c:forEach begin="${vo.startPage}" end="${vo.endPage}"
						varStatus="i">
						<c:choose>
							<c:when test="${i.index eq vo.thisPage}">
								<li class="page-item active"><a class="page-link"
									style="color: black;"
									href="javascript:goPage(<c:out value='${i.index}'/>);">${i.index}</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a class="page-link"
									style="color: black;"
									href="javascript:goPage(<c:out value='${i.index}'/>);">${i.index}</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>


					<c:if test="${vo.endPage ne vo.totalPages}">
						<li class="page-item"><a class="page-link"
							style="color: black;"
							href="javascript:goPage(<c:out value='${vo.endPage + 1}'/>);"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span>
						</a></li>
					</c:if>
				</ul>
			</nav>

		</main>
		<!--  -->
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
				<p class="text-center text-muted">?? 2021 All Live Young, Inc</p>
			</footer>
		</div>




	</form>


	<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/resources/js/validation.js"></script>
	<!-- jquery ui -->
	<script
		src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>


	<script type="text/javascript">
		$(document).ready(function() {
			$("#scDateStart").datepicker();
		});

		$(document).ready(function() {
			$("#scDateEnd").datepicker();
		});

		$.datepicker.setDefaults({
			dateFormat : 'yy-mm-dd',
			prevText : '?????? ???',
			nextText : '?????? ???',
			monthNames : [ '1???', '2???', '3???', '4???', '5???', '6???', '7???', '8???',
					'9???', '10???', '11???', '12???' ],
			monthNamesShort : [ '1???', '2???', '3???', '4???', '5???', '6???', '7???', '8???',
					'9???', '10???', '11???', '12???' ],
			dayNames : [ '???', '???', '???', '???', '???', '???', '???' ],
			dayNamesShort : [ '???', '???', '???', '???', '???', '???', '???' ],
			dayNamesMin : [ '???', '???', '???', '???', '???', '???', '???' ],
			showMonthAfterYear : true,
			yearSuffix : '???'
		});

		/* $("#btnSubmit").on(
		 "click",
		 function() {

		 if (!checkNull($("#scOymbDelNy"), $("#scOymbDelNy").val(),
		 "?????? ?????? ?????? ???????????????."))
		 return false;

		 if (!checkNull($("#scOymbName"), $("#scOymbName").val(),
		 "???????????? ??????????????????."))
		 return false;

		 if (!checkNull($("#scOption"), $("#scOption").val(),
		 "?????? ?????? ?????? ???????????????."))
		 return false;

		 if (!checkNull($("#scValue"), $("#scValue").val(),
		 "???????????? ??????????????????."))
		 return false;
		 }); */

		goPage = function(seq) {
			// form ????????? ????????????
			$("#thisPage").val(seq);
			$("#formList").submit();
			// ??? ????????? ????????? ????????????.
		}

		goView = function(seq) {
			$("#oymbSeq").val(seq);
			$("#formList").attr("action", "/member/memberView");
			$("#formList").submit();
		}

		goForm = function() {
			$("#formList").attr("action", "/member/memberForm");
			$("#formList").submit();
		}

		$("#btnSubmit_del").on("click", function() {

			alert("???????");
			confirm("?????? ??????? ?????? ??????");
		});

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

		var checkboxSeqArray = [];
		$("#uelete").on("click", function() {
			var answer = confirm("????????? ???????");

			if (answer) {
				$("input[name=checkboxSeq]:checked").each(function() { //????????????????????? ???????????? 
					checkboxSeqArray.push($(this).val()); //??????????????? checkboxSeqArray??? ??????????????? ?????? ?????????
				});

				$("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray);
				$("#formList").attr("action", "/member/multiUele");
				$("#formList").submit();

			} else {
				return false;
			}

		});

		/* $("#uelete").on("click" function(){
		 $("input[name=checkboxSeq]:checked").each(Function(){
		 checkboxArray.push($(this).val());
		 });
		 $("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray); 
		 $("#formList").attr("action", "/durian/multiUele");
		 $("#formList").submit();
		 });

		 var goUrlMulitUele = "/durian/durianMultiUele";
		 var goUrlMulitDele = "/durian/durianMultiDele";
		 var seq = $("input:hidden[name=oymbSeq]");
		 var form = $("form[name=formList]");
		 var checkboxSeqArray = [];

		 $().on("click", function(){
		 if($("input[name=checkboxSeq]:checked").length > 0){
		 $().val(1);
		 $().text("??????");
		 $().text("????????? ???????");
		 $().show();
		 $().hide();
		 $().modal("show");
		 } else {
		 $().text("??????");
		 $().text("????????? ??????!");
		 $().modal("show");
		 }
		
		 });

		 $().on("click", function(){
		 if($("input[name=checkboxSeq]:checked").length > 0){
		 $().val(2);
		 $().text("??????");
		 $().text("????????? ???????");
		 $().show();
		 $().hide();
		 $().modal("show");
		 } else {
		 $().text("??????");
		 $().text("????????? ??????!");
		 $().modal("show");
		 }
		
		 });


		 $().on("click" function(){
		 $().each(Function(){
		 checkboxArray.push($(this).val());
		 });
		 $().modal("hide");
		 from.attr("action" , goUrlMultiDele).submit();
		 });
		 */
	</script>
</body>

</html>





