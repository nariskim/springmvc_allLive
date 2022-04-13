<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="CateServiceImpl"
	class="com.julyte.user.modules.cate.CateServiceImpl" />
<jsp:useBean id="CodeServiceImpl"
	class="com.julyte.user.modules.code.CodeServiceImpl" />
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://kit.fontawesome.com/893e1f7eb8.js"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<!-- jquery ui CSS -->
<link
	href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css"
	rel="stylesheet">

<title>AllLiveLogin</title>
<style type="text/css">
.container {
	justify-content: center; /* 수평 정렬 */
	align-items: center; /* 수직 정렬 */
	width: 330px;
}

a {
	text-decoration: none;
	color: gray;
	font-size: 13px;
}
</style>
</head>
<body>

	<form id="loginForm" name="loginForm" method="post"
		action="/allLive/loginForm">


		<div class="position-absolute top-50 start-50 translate-middle">
			<div style="text-align: center;">
				<img src="/resources/user/image/oy_lg.jpg" alt="..." width="200px">
			</div>
			<div class="container">
				<div class="form-floating mb-3" style="font-size: small;">
					<input type="email" class="form-control" id="oymbId" name="oymbId"
						placeholder="name@example.com" value="zxcv"> <label
						for="floatingInput">CJ ONE 통합회원 아이디 입력</label>
				</div>
				<div class="form-floating mb-3" style="font-size: small;">
					<input type="password" class="form-control" id="oymbPassword"
						name="oymbPassword" placeholder="Password" value="zxcv"> <label
						for="floatingPassword">비밀번호(8-12자 영문자+숫자+특수문자)</label>
				</div>
				<div class="input-group">
					<div class="form-check" style="font-size: medium;">
						<input class="form-check-input" type="checkbox" value=""
							id="flexCheckDefault"> <label class="form-check-label"
							for="flexCheckDefault"> 자동로그인&nbsp; </label>
					</div>
					<div class="form-check" style="font-size: medium;">
						<input class="form-check-input" type="checkbox" value=""
							id="flexCheckDefault"> <label class="form-check-label"
							for="flexCheckDefault"> 아이디 저장 </label>
					</div>
					<div class="form-check" style="font-size: medium;">
						<input class="form-check-input" type="checkbox" value="1"
							id="oymbAdminNy" name="oymbAdminNy"> <label
							class="form-check-label" for="flexCheckDefault"> 관리자 </label>
					</div>
				</div>
				<br>
				<div class="d-grid gap-2">
					<button class="btn btn-success text-white" type="button"
						id="btnLogin">로그인</button>
				</div>

				<br>




				<div style="text-align: center;">
					<a href="">아이디 찾기&nbsp;&nbsp;|</a> <a href="">&nbsp;비밀번호 찾기</a>
				</div>
				<hr>
				<div class="row">
					<div class="col-5" style="font-size: 10px; text-align: left;">
						<p>
							카카오/애플로 올리브영<br> 간편하게 시작하기
						</p>
					</div>

					<div class="col-3"></div>
					<div class="col-4">
						<div class="input-group" style="text-align: right;">
							<a href="javascript:KakaoLogin();"><img
								src="/resources/user/image/kako.png"></a> <a href=""><img
								src="/resources/user/image/aple.png"></a>
							<button class="btn btn-facebook" type="button" id="btn-facebook"
								onclick="fnFbCustomLogin();">
								<b> 페이스북</b> 로그인
							</button>
							<div id="naver_id_login"></div>


							<div style="text-align: center">
								<a href="${url}">NaverIdLogin</a>
							</div>
						</div>
					</div>
				</div>



				<br>
				<div class="d-grid gap-2">
					<button class="btn btn-outline-secondary text-dark" type="button">CJONE
						통합가입</button>
				</div>

			</div>
		</div>
	</form>
	<!--  -->



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/resources/js/validation.js"></script>
	<!-- jquery ui -->
	<script
		src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script async defer crossorigin="anonymous"
		src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v13.0&appId=4427218787378399"
		nonce="JutAfaKH"></script>
	<!-- &autoLogAppEvents=1 -->
	<script async defer crossorigin="anonymous"
		src="https://connect.facebook.net/en_US/sdk.js"></script>

	<script type="text/javascript">
		//페이스북 (로그인) 기본 설정

		function checkLoginState() { //로그인 클릭시 호출
			FB.getLoginStatus(function(response) {
				statusChangeCallback(response);
			});
		}

		function statusChangeCallback(response) { // FB.getLoginStatus()의 결과호출

			console.log(response); //사용자의 현재 로그인 상태.
			if (response.status === 'connected') { // 웹페이지와 페이스북에 로그인이 되어있다면
				testAPI();
			} else { // 웹페이지와 페이스북에 로그인이 되어있지 않다면
				console.log('Please log into this webpage.');
			}
		}

		function fnFbCustomLogin() {
			FB.login(function(response) {
				if (response.status === 'connected') {
					FB.api('/me', 'get', {
						fields : 'name,email'
					}, function(r) {
						console.log(r);
						console.log('Successful login for: ' + r.name);
						/* 	console.log(testAPI(response)); */
					})
				}
			}, {
				scope : 'public_profile,email'
			}); //profile, email 권한을 나중에 추가하려는 경우 FB.login() 함수로 다시 실행할 수 있다.
		}

		window.fbAsyncInit = function() {
			FB.init({
				appId : '4427218787378399', // 내 앱 ID.
				cookie : true,
				xfbml : true,
				version : 'v13.0'
			});
			FB.getLoginStatus(function(response) {
				statusChangeCallback(response); // 로그인 상태를 말해줌
			});
		};

		function testAPI(response) {
			console.log('Welcome!  Fetching your information.... ');
			FB.api('/me', function(response) {
				console.log('Thanks for logging in ' + response.name);
			});
		}
	</script>




	<script type="text/javascript">
		Kakao.init('041ca094f388711dee3ba9ae04f3fb99');
		console.log(Kakao.isInitialized());

		KakaoLogin = function() {
			Kakao.Auth.loginForm({ // Kakao.Auth.loginForm도 사용가능 (login은 카카오 로그인 세션이 존재하는 경우 로그인 팝업을 띄우지 않음)
				success : function(authObj) {
					console.log(authObj);

					Kakao.API.request({
						url : '/v2/user/me',
						success : function(res) {
							console.log(res);
						}
					})
				}
			})
		}

		/* function kakaoLogin() { window.Kakao.Auth.login({
		scope:'profile_image, account_email', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된
		ID값을 넣습니다. success: function(response) { console.log(response) // 로그인
		성공하면 받아오는 데이터 window.Kakao.API.request({ // 사용자 정보 가져오기 url:
		'/v2/user/me', success: (res) => { const kakao_account =
		res.kakao_account; console.log(kakao_account) } }); //
		window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드 }, fail:
		function(error) { console.log(error); }, redirectUri:
		'http://localhost:8080/allLive/allLiveMain' }); } */
	</script>
	<script>
		$("#btnLogin").on(
				"click",
				function() {
					/* 	if(validation()==false) return false; */
					$.ajax({
						async : true,
						cache : false,
						type : "post",
						url : "/allLive/loginProc",
						data : {
							"oymbId" : $("#oymbId").val(),
							"oymbPassword" : $("#oymbPassword").val()
						},
						success : function(response) {
							if (response.rt == "success") {
								location.href = "/allLive/allLiveMain2";
							} else {
								alert("회원없음");
							}
						},
						error : function(jqXHR, textStatus, errorThrown) {
							alert("ajaxUpdate " + jqXHR.textStatus + " : "
									+ jqXHR.errorThrown);
						}
					});
				});

		/*$("#btnLogin").on("click", function(){
		 if(validation()==false) return false; 
		 $.ajax({
		 async: true 
		 ,cache: false
		 ,type: "post"
		 ,url: "/allLive/loginProc"
		 ,data : { "oymbId" : $("#oymbId").val(), "oymbPassword" : $("#oymbPassword").val(), "oymbAdminNy" : $("#oymbAdminNy").val()}
		 ,success: function(response) {
		 if(response.rt == "success") {
		
		 location.href = "/allLive/allLiveReg";
		
		 } else if{
		 location.href = "/allLive/allLiveOrder";
		
		
		 } else {
		 alert("회원없음");
		 }
		 }
		 ,error : function(jqXHR, textStatus, errorThrown){
		 alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		 }
		 });
		 });*/
	</script>

</body>

</html>





