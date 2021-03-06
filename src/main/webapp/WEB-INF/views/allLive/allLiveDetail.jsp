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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<script src="https://kit.fontawesome.com/893e1f7eb8.js" crossorigin="anonymous"></script>

    <!-- Favicons -->
    <link rel="shortcut icon" href="https://ifh.cc/g/lBA5vD.png" type="image/x-icon" /> <!-- olive 아이콘 -->
    <!-- Page Title -->
    <title>All Live Young</title>

<style>
.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap a, .map_wrap a:hover, .map_wrap a:active {
	color: #000;
	text-decoration: none;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 500px;
}

#menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 250px;
	margin: 10px 0 30px 10px;
	padding: 5px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0.7);
	z-index: 1;
	font-size: 12px;
	border-radius: 10px;
}

.bg_white {
	background: #fff;
}

#menu_wrap hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 2px solid #5F5F5F;
	margin: 3px 0;
}

#menu_wrap .option {
	text-align: center;
}

#menu_wrap .option p {
	margin: 10px 0;
}

#menu_wrap .option button {
	margin-left: 5px;
}

#placesList li {
	list-style: none;
}

#placesList .item {
	position: relative;
	border-bottom: 1px solid #888;
	overflow: hidden;
	cursor: pointer;
	min-height: 65px;
}

#placesList .item span {
	display: block;
	margin-top: 4px;
}

#placesList .item h5, #placesList .item .info {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#placesList .item .info {
	padding: 10px 0 10px 55px;
}

#placesList .info .gray {
	color: #8a8a8a;
}

#placesList .info .jibun {
	padding-left: 26px;
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png)
		no-repeat;
}

#placesList .info .tel {
	color: #009900;
}

#placesList .item .markerbg {
	float: left;
	position: absolute;
	width: 36px;
	height: 37px;
	margin: 10px 0 0 10px;
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png)
		no-repeat;
}

#placesList .item .marker_1 {
	background-position: 0 -10px;
}

#placesList .item .marker_2 {
	background-position: 0 -56px;
}

#placesList .item .marker_3 {
	background-position: 0 -102px
}

#placesList .item .marker_4 {
	background-position: 0 -148px;
}

#placesList .item .marker_5 {
	background-position: 0 -194px;
}

#placesList .item .marker_6 {
	background-position: 0 -240px;
}

#placesList .item .marker_7 {
	background-position: 0 -286px;
}

#placesList .item .marker_8 {
	background-position: 0 -332px;
}

#placesList .item .marker_9 {
	background-position: 0 -378px;
}

#placesList .item .marker_10 {
	background-position: 0 -423px;
}

#placesList .item .marker_11 {
	background-position: 0 -470px;
}

#placesList .item .marker_12 {
	background-position: 0 -516px;
}

#placesList .item .marker_13 {
	background-position: 0 -562px;
}

#placesList .item .marker_14 {
	background-position: 0 -608px;
}

#placesList .item .marker_15 {
	background-position: 0 -654px;
}

#pagination {
	margin: 10px auto;
	text-align: center;
}

#pagination a {
	display: inline-block;
	margin-right: 10px;
}

#pagination .on {
	font-weight: bold;
	cursor: default;
	color: #777;
}

.row-detail {
	margin-top: 5%;
	margin-left: 15%;
	margin-right: 15%;
	margin-bottom: 5%;
}

.nav-m {
	width: 100%;
}

.nav-item-m {
	width: 10%;
	text-align: center;
}

.nav-tabs-p {
	width: 100%;
}

.nav-item-p {
	width: 25%;
	text-align: center;
}

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

#mainimage {
	width: 400px;
	height: 400px;
	display: block;
	margin-left: auto;
	margin-right: auto;
	margin-top: 100px;
	margin-botton: auto;
	display: block;
}

#brand {
	display: inline-block;
	color: #000;
	line-height: 24px;
	padding-right: 13px;
}

#pdname {
	margin-top: 10px;
	font-size: 26px;
	line-height: 34px;
	color: #000;
}

#priceB {
	font-size: 16px;
	line-height: 20px;
	color: #a9a9a9;
	text-decoration: line-through;
}

#priceR {
	font-size: 28px;
	color: #e02020;
	font-weight: 500;
}
.bi-plus-square,
.bi-dash-square{
    font-size: 21px;
    line-height: 22px;
    color: black;
    margin-left: 5px;
}	
#btn,
#btn:hover,
#btn:active,
#btn:visited,
#btn:focus{
	border: 1px #7B8ED1 solid;
	background: #7B8ED1;
	color: white;
	width: 18%;
	height: 50px;
}
</style>

</head>


<body>

	<form id="allLiveDetail" name="allLiveDetail" method="post">
		<input type="hidden" id="oypdSeq" name="oypdSeq" value="<c:out value="${vo.oypdSeq}"/>">
		
		<%@include file="../include/pageHeader.jsp"%>

		<!-- <div class="row"></div> -->

		<main>
		 
			<div class="container-main">

				<div class="row">
					<div class="col-6">

						<c:forEach items="${listUploaded}" var="itemUploaded" varStatus="statusUploaded">
							<c:choose>
								<c:when test="${itemUploaded.type eq 0 && itemUploaded.size ne 0}">
									<img id="mainimage" src="<c:out value="${itemUploaded.path}"/><c:out value="${itemUploaded.uuidName}"/>">
								</c:when>
								<c:when test="${itemUploaded.type eq 0 && itemUploaded.size eq 0}">
									<p style="font-size: 13px; font-style: italic;">선택된 파일이 없습니다!</p>
								</c:when>
								<c:otherwise></c:otherwise>
							</c:choose>
						</c:forEach>
					
					</div>
					<div class="col-6">
						<div id="brand">
							<c:out value="${item.oypdBrand}" />
						</div>
						<br>

						<div id="pdname">
							<c:out value="${item.oypdName}" />
						</div>

						<br>
						<div id="priceB">
							<fmt:formatNumber value="${item.oypdPrice}" />
							<span>원</span>
						</div>
						<div id="priceR">
							<strong><fmt:formatNumber value="${item.oyspSalePrice}" /></strong>
							<span>원</span>
						</div>

						<b>혜택 정보</b> <br> <span class="badge rounded-pill bg-danger">세일</span>
						<span class="badge rounded-pill bg-success">쿠폰</span>
						<span class="badge rounded-pill bg-info">오늘드림</span><br>
						<p>
							231명이 보고있어요<br>
						<hr>
						<br>

						<div class="col-12">
							<b>배송정보</b>
						</div>
						<br>
						<div class="row">
							<div class="col-2">
								<p>일반배송</p>
							</div>

							<div class="col-10">
								<p>| 2,500원 ( 20,000 원 이상 무료배송 )</p>
								<p>올리브영 배송 | 평균 6일 이내 배송</p>
							</div>
							<div class="col-2">
								<p>오늘드림</p>
							</div>

							<div class="col-10">
								<p>| 2,500원 또는 5,000원</p>
							</div>
						</div>


						<br>
						<hr>
						<br>


						<div class="col-12">
							<b>결제혜택</b>
						</div>
						<br>
						<div class="col-12">
							<p>THE CJ 카드 추가 10%할인</p>
							<p>CJ ONE 포인트 최대 2% 적립 예상</p>
						</div>

						<br>
						<hr>
						<br>
						
						<input type="text" id="result" name="result" style="width: 50px;" value="1"><i class="bi bi-plus-square" role="button" onclick='count("plus")'></i> <i class="bi bi-dash-square" role="button" onclick='count("minus")'></i></p>
						
						<br>
						<hr>
						<br>
							<button type="button" onclick="location.href='javascript:goPurchase(<c:out value="${item.oypdSeq}"/>)'" class="btn btn-success">바로구매</button>
							<button type="button" onclick="shareKakaotalk();" class="btn" style="background-color:#FFE227; color:#1A1A1A;">카카오톡 공유하기</button>
					</div>
				</div>
				<br>
				<hr>
				<br>
				<div class="row">
					<div class="col-3">
						<p class="title">증정품 안내</p>
					</div>
					<div class="col-6">
						<span class="txt">전 회원 바이오힐보 상품 30,000원 이상 구매 시, 
						<span class="num">증정품 1개</span> 선착순 증정 </span>
					</div>
					<div class="col-3">
						
					</div>
				</div>
				<hr>
				<div class="row">
					<div class="col-12">구매 가능 매장을 확인해보세요</div>
				</div>
				<hr>
				<div class="row">
					<div class="map_wrap">

						<div id="map"
							style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
						<div id="menu_wrap" class="bg_white">
							<div class="option">
								<div>
									<form onsubmit="searchPlaces(); return false;">
										키워드 : <input type="text" value="올리브영" id="keyword" size="15">
										<button type="submit">검색하기</button>
									</form>
								</div>
							</div>
							<hr>
							<ul id="placesList"></ul>
							<div id="pagination"></div>
						</div>
					</div>
				</div>
				<ul class="nav nav-tabs-p">
					<li class="nav-item nav-item-p"><a class="nav-link active" aria-current="page" href="#">상품설명</a></li>
					<li class="nav-item nav-item-p"><a class="nav-link" href="#">구매정보</a></li>
					<li class="nav-item nav-item-p"><a class="nav-link" href="#">리뷰</a></li>
					<li class="nav-item nav-item-p"><a class="nav-link">Q&A</a></li>
				</ul>
				<div class="row row-detail">
					<c:forEach items="${listUploaded}" var="itemUploaded"
						varStatus="statusUploaded">
						<c:choose>
							<c:when
								test="${itemUploaded.type eq 1 && itemUploaded.size ne 0}">
								<img id="mainImage"
									src="<c:out value="${itemUploaded.path}"/><c:out value="${itemUploaded.uuidName}"/>"
									width="510px">
							</c:when>

							<c:when test="${itemUploaded.type eq 1 && itemUploaded.size eq 0}">
								<p style="font-size: 13px; font-style: italic;">선택된 파일이 없습니다!</p>
							</c:when>
							<c:otherwise></c:otherwise>
						</c:choose>
					</c:forEach>
				</div>
			</div>
		</main>
		<div class="container-footer">
	<%@ include file="/WEB-INF/views/include/footer.jsp" %><!-- footer -->
		</div>
	</form>
	<script type="text/JavaScript" src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6f78c252f58489b7d8095745c904b8af&libraries=services"></script>
	<script>
	  
		// 마커를 담을 배열입니다
		var markers = [];

		// 지도를 생성합니다    
		
		if (navigator.geolocation) {

			// GeoLocation을 이용해서 접속 위치를 얻어옵니다
			navigator.geolocation.getCurrentPosition(function(position) {

				var lat = position.coords.latitude, // 위도
				lon = position.coords.longitude; // 경도
				
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				mapOption = {
					center : new kakao.maps.LatLng(lat, lon), // 지도의 중심좌표
					level : 3
				// 지도의 확대 레벨 
				};
				var map = new kakao.maps.Map(mapContainer, mapOption);
				var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
				message = '<div style="padding:5px;">내 위치</div>'; // 인포윈도우에 표시될 내용입니다

				// 마커와 인포윈도우를 표시합니다
				displayMarker(locPosition, message);

				function displayMarker(locPosition, message) {

					// 마커를 생성합니다
					var marker = new kakao.maps.Marker({
						map : map,
						position : locPosition
					});

					var iwContent = message, // 인포윈도우에 표시할 내용
					iwRemoveable = true;

					// 인포윈도우를 생성합니다
					var infowindow = new kakao.maps.InfoWindow({
						content : iwContent,
						removable : iwRemoveable
					});

					// 인포윈도우를 마커위에 표시합니다 
					infowindow.open(map, marker);

					// 지도 중심좌표를 접속위치로 변경합니다
					map.setCenter(locPosition);
				}
				// 지도에 마커와 인포윈도우를 표시하는 함수입니다
				

				// 장소 검색 객체를 생성합니다
				var ps = new kakao.maps.services.Places();

				// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
				var infowindow = new kakao.maps.InfoWindow({
					zIndex : 1
				});

				// 키워드로 장소를 검색합니다
				searchPlaces();

				// 키워드 검색을 요청하는 함수입니다
				function searchPlaces() {

					var keyword = document.getElementById('keyword').value;

					if (!keyword.replace(/^\s+|\s+$/g, '')) {
						alert('키워드를 입력해주세요!');
						return false;
					}

					// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
					ps.keywordSearch(keyword, placesSearchCB, {
						radius : 2000,
						position : locPosition
					});

				}

				// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
				function placesSearchCB(data, status, pagination) {
					if (status === kakao.maps.services.Status.OK) {

						// 정상적으로 검색이 완료됐으면
						// 검색 목록과 마커를 표출합니다
						displayPlaces(data);

						// 페이지 번호를 표출합니다
						displayPagination(pagination);

					} else if (status === kakao.maps.services.Status.ZERO_RESULT) {

						alert('검색 결과가 존재하지 않습니다.');
						return;

					} else if (status === kakao.maps.services.Status.ERROR) {

						alert('검색 결과 중 오류가 발생했습니다.');
						return;

					}
				}

				// 검색 결과 목록과 마커를 표출하는 함수입니다
				function displayPlaces(places) {

					var listEl = document.getElementById('placesList'), menuEl = document
							.getElementById('menu_wrap'), fragment = document
							.createDocumentFragment(), bounds = new kakao.maps.LatLngBounds(), listStr = '';

					// 검색 결과 목록에 추가된 항목들을 제거합니다
					removeAllChildNods(listEl);

					// 지도에 표시되고 있는 마커를 제거합니다
					removeMarker();

					for (var i = 0; i < places.length; i++) {

						// 마커를 생성하고 지도에 표시합니다
						var placePosition = new kakao.maps.LatLng(places[i].y,
								places[i].x), marker = addMarker(placePosition, i), itemEl = getListItem(
								i, places[i]); // 검색 결과 항목 Element를 생성합니다

						// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
						// LatLngBounds 객체에 좌표를 추가합니다
						//   	bounds.extend(placePosition);

						// 마커와 검색결과 항목에 mouseover 했을때
						// 해당 장소에 인포윈도우에 장소명을 표시합니다
						// mouseout 했을 때는 인포윈도우를 닫습니다
						(function(marker, title) {


					
					/* 		itemEl.onmouseover = function() {
								displayInfowindow(marker, title);
							}; */

							itemEl.onmouseout = function() {
								infowindow.close();
							};
						})(marker, places[i].place_name);

						fragment.appendChild(itemEl);
					}

					// 검색결과 항목들을 검색결과 목록 Element에 추가합니다
					listEl.appendChild(fragment);
					menuEl.scrollTop = 0;

					// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
					// 	map.setBounds(bounds);
				}

				// 검색결과 항목을 Element로 반환하는 함수입니다
				function getListItem(index, places) {

					var el = document.createElement('li'), itemStr = '<span class="markerbg marker_'
							+ (index + 1)
							+ '"></span>'
							+ '<div class="info">'
							+ '   <h5>' + places.place_name + '</h5>';

					if (places.road_address_name) {
						itemStr += '    <span>' + places.road_address_name + '</span>'
								+ '   <span class="jibun gray">' + places.address_name
								+ '</span>';
					} else {
						itemStr += '    <span>' + places.address_name + '</span>';
					}

					itemStr += '  <span class="tel">' + places.phone + '</span>'
							+ '</div>';

					el.innerHTML = itemStr;
					el.className = 'item';

					return el;
				}

				// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
				function addMarker(position, idx, title) {
					var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
					imageSize = new kakao.maps.Size(36, 37), // 마커 이미지의 크기
					imgOptions = {
						spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
						spriteOrigin : new kakao.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
						offset : new kakao.maps.Point(13, 37)
					// 마커 좌표에 일치시킬 이미지 내에서의 좌표
					}, markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize,
							imgOptions), marker = new kakao.maps.Marker({
						position : position, // 마커의 위치
						image : markerImage
					});

					marker.setMap(map); // 지도 위에 마커를 표출합니다
					markers.push(marker); // 배열에 생성된 마커를 추가합니다

					return marker;
				}

				// 지도 위에 표시되고 있는 마커를 모두 제거합니다
				function removeMarker() {
					for (var i = 0; i < markers.length; i++) {
						markers[i].setMap(null);
					}
					markers = [];
				}

				// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
				function displayPagination(pagination) {
					var paginationEl = document.getElementById('pagination'), fragment = document
							.createDocumentFragment(), i;

					// 기존에 추가된 페이지번호를 삭제합니다
					while (paginationEl.hasChildNodes()) {
						paginationEl.removeChild(paginationEl.lastChild);
					}

					for (i = 1; i <= pagination.last; i++) {
						var el = document.createElement('a');
						el.href = "#";
						el.innerHTML = i;

						if (i === pagination.current) {
							el.className = 'on';
						} else {
							el.onclick = (function(i) {
								return function() {
									pagination.gotoPage(i);
								}
							})(i);
						}

						fragment.appendChild(el);
					}
					paginationEl.appendChild(fragment);
				}

				// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
				// 인포윈도우에 장소명을 표시합니다
				function displayInfowindow(marker, title) {
					var content = '<div style="padding:5px;z-index:1;">' + title
							+ '</div>';

					infowindow.setContent(content);
					infowindow.open(map, marker);
				}

				// 검색결과 목록의 자식 Element를 제거하는 함수입니다
				function removeAllChildNods(el) {
					while (el.hasChildNodes()) {
						el.removeChild(el.lastChild);
					}
				}
			});

		} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

			var locPosition = new kakao.maps.LatLng(33.450701, 126.570667), message = 'geolocation을 사용할수 없어요..'

			displayMarker(locPosition, message);
		}

		
	</script>
	<script type="text/javascript">
		
		goLogin = function() {
			$("#allLiveDetail").attr("action", "/allLive/loginForm");
			$("#allLiveDetail").submit();
		}

		goPurchase = function(seq) {
			$("#oypdSeq").val(seq);
			$("#allLiveDetail").attr("action", "/allLive/allLiveOrder");
			$("#allLiveDetail").submit();
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
		
		function count(type)  {
			if(type === 'plus') {
		    
				var tmp = document.getElementById("result").value;
				tmp++;
				document.getElementById("result").value = tmp;
			}else if(type === 'minus')  {
		   
				var tmp = document.getElementById("result").value;
					if(tmp<2){
						alert("최소수량은 1개입니다");
						return true;
					}else{
						tmp--;
					}
				document.getElementById("result").value = tmp;
			}
			 
		}
		
		var oliveCount = document.getElementById("result").value;
		var price1 = <c:out value="${item.oyspSalePrice}"/>;
		var totalPrice = (${item.oyspSalePrice*item.result});
/* 		var totalPrice = (price1*oliveCount); */
	
		/* 화면에 보여지는 부분 */
		$("#totalPrice").text(totalPrice.toLocaleString());
		$("#rtCount").val(oliveCount);

		var olive = '<c:out value="${item.oypdName}"/>';
		var seq = '<c:out value="${item.oypdSeq}"/>';

		function shareKakaotalk() {
		    Kakao.init("6f78c252f58489b7d8095745c904b8af");      // 사용할 앱의 JavaScript 키를 설정
		    Kakao.Link.sendDefault({
		          objectType:"feed"
		        , content : {
		              title: "이 상품 어떠세요?"   // 콘텐츠의 타이틀
		            , description: "추천상품 : " + olive + "\n" // 콘텐츠 상세설명
		            , imageUrl: "https://ifh.cc/g/mRNCMB.png"   // 썸네일 이미지
		            , link : {
		                 mobileWebUrl: "https://pp.allliveyoung.a9xlab.com/allLive/allLiveDetail?oypdSeq=" + seq // 모바일 카카오톡에서 사용하는 웹 링크 URL
		                  ,webUrl:"https://pp.allliveyoung.a9xlab.com/allLive/allLiveDetail?oypdSeq=" + seq // PC버전 카카오톡에서 사용하는 웹 링크 URL
		            }
		    
		        }
		        , buttons : [
		            {
		                  title:" 상품 보러가기 "    // 버튼 제목
		                , link : {
		                     mobileWebUrl:"https://pp.allliveyoung.a9xlab.com/allLive/allLiveDetail?oypdSeq=" + seq  // 모바일 카카오톡에서 사용하는 웹 링크 URL
		                   ,webUrl:"https://pp.allliveyoung.a9xlab.com/allLive/allLiveDetail?oypdSeq=" + seq // PC버전 카카오톡에서 사용하는 웹 링크 URL
		                }
		            }
		        ]
		    });
		}
		
	</script>
</body>
</html>