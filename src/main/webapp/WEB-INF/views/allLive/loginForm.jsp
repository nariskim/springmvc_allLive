<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:useBean id="CateServiceImpl" class="com.julyte.user.modules.cate.CateServiceImpl" />
<jsp:useBean id="CodeServiceImpl" class="com.julyte.user.modules.code.CodeServiceImpl" />

<!DOCTYPE HTML> 
<html lang="ko">   
<head>
<meta charset="uTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

 
<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/893e1f7eb8.js" crossorigin="anonymous"></script>

<!-- jquery ui CSS -->
<link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">

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

<!-- content에 자신의 OAuth2.0 클라이언트ID를 넣습니다. -->
<!-- google -->
<meta name="google-signin-client_id" content="128484483787-h95dbrgr17toacol178o5dh0j82e8fj5.apps.googleusercontent.com">

</head>
<body>

	<form id="loginForm" name="loginForm" method="post" action="/allLive/loginForm">


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
							<!-- kakao -->
							<a href="javascript:kakaoLogin()">
							<img src="/resources/user/image/kako.png"></a>
							<!-- apple -->
							<a href=""><img src="/resources/user/image/aple.png"></a>
							<!-- facebook -->
							<button class="btn btn-facebook" type="button" id="btn-facebook" onclick="fnFbCustomLogin();">
								<img src="/resources/user/image/facebookicon.png">
							</button>
							<!-- google -->
							<button class="btn btn-lg" id="GgCustomLogin" onclick="javascript:void(0)">구글</button>
							<!-- naver -->
							<div class="col-auto linksq" style="margin-left: auto;" onclick="location.href='${url}';">
								<div id="naver_id_login" style="display: none;"></div>
								<div class="circle linksns naverlogin" style="float: none;">
								</div>
								<div class="linksns linksen">
									<div>네이버 로그인</div>
								</div>
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


	<!-- bootstrap -->
	<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>

	<!-- ajax -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<!-- validation -->
	<script src="/resources/js/validation.js"></script>

	<!-- jquery ui -->
	<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

	<!-- kakao -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

	<!-- facebook -->
	<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v13.0&appId=4427218787378399" nonce="JutAfaKH"></script>

	<!-- &autoLogAppEvents=1 -->
	<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js"></script>

	<!-- google -->
	<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>


	<!-- naver -->
	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

	<!-- 네이버로그인 -->
	<script type="text/javascript">
 	//네이버
  	var naver_id_login = new naver_id_login("Yr9iP4o9mCjNYcIIv2yF", "http://localhost/allLive/NaverProc"); // client ID, callBack URL
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setButton("white", 2,40);
  	naver_id_login.setDomain("http://localhost/allLive/loginForm");	// service URL
  	naver_id_login.setState(state);
  	naver_id_login.setPopup();
  	naver_id_login.init_naver_id_login();
	</script>


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




	<script>
window.Kakao.init('09c29750f01b8ca73dc6135b998baf4b');	// 자바스크립트 키 입력
console.log(Kakao.isInitialized()); 
function kakaoLogin() {
    window.Kakao.Auth.login({
        scope: 'profile_nickname', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
        success: function(response) {
            console.log(response) // 로그인 성공하면 받아오는 데이터
            window.Kakao.API.request({ // 사용자 정보 가져오기 
                url: '/v2/user/me',
                success: (res) => {
                    const kakao_account = res.kakao_account; 
                    const profile_nickname = res.properties.nickname; 
                    console.log(kakao_account)		// 받아온 정보들을 출력
                    console.log(profile_nickname)		// 받아온 정보들을 출력
                    $.ajax({
            			async: true 
            			,cache: false
            			,type: "post"
            			,url: "/allLive/KakaoProc"
            			,data : {"oymbName" : profile_nickname}
            			,success: function(response) {
            				if(response.item == "success") {
            					location.href = "/allLive/allLiveMain";
            				} else {
            					alert("카카오 로그인 실패");
            				}
            			}
            			,error : function(jqXHR, textStatus, errorThrown){
            				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
            			}
            		})
                }
            });
            // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
        }, fail: function(err) { //다른 로그인 일때 실행
    	    $.ajax({
        		
        		type: "post"
        		,url: "/allLive/logoutProc"
        		
        		,success: function(response) {
        			if(response.rt == "success") {
        				location.href = "/allLive/KakaoProc";
        			} 
        		}
        		,error : function(jqXHR, textStatus, errorThrown){
        			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
        		}
        		
        	}); 
      }
      
    })

}

</script>

	<!-- 구글로그인 -->
	<script>

//처음 실행하는 함수
function init() {
	gapi.load('auth2', function() {
		gapi.auth2.init();
		options = new gapi.auth2.SigninOptionsBuilder();
		options.setPrompt('select_account');
        // 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
		options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
        // 인스턴스의 함수 호출 - element에 로그인 기능 추가
        // GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
		gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
	})
}

function onSignIn(googleUser) {
	var access_token = googleUser.getAuthResponse().access_token
	$.ajax({
        // key에 자신의 API 키를 넣습니다.
		 data: {personFields:'birthdays', key:'AIzaSyADnSRkHji_5mqq1KC9hPqX05B0F8Ngxbg', 'access_token': access_token}
		, method:'GET'
	})
	.done(function(e){
        //프로필을 가져온다.
     
		 var profile = googleUser.getBasicProfile();
		var id= profile.getId();
		var username = profile.getName();
		
		console.log(username);
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/allLive/GoogleProc"	// controller의 loginProc value (url)
			,data : {"oymbName" : profile.getName()}	// mvmmName : 회원 이름 컬럼 (맞게 수정하세요)
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/allLive/allLiveMain2"; //로그인 완료 후 진입 화면 (홈화면이나 indexView)
				} else {
					alert("구글 로그인 실패");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		})
	})
	.fail(function(e){
		console.log(e);
	})
}

function onSignInFailure(t){	
	console.log(t);
}
</script>


	<script>
		$("#btnLogin").on(
				"click",
				function() {
					/* 	if(validation()==false) return false; */
					if(!checkNull($("oymbId"), $.trim($("#oymbId").val()), "아이디를 확인해 주세요!")) return false;
					if(!checkNull($("oymbPassword"), $.trim($("#oymbPassword").val()), "비밀번호를 확인해 주세요!")) return false;
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
								location.href = "/allLive/allLiveMain";
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





