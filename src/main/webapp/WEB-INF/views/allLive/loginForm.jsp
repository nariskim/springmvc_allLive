<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="CateServiceImpl" class="com.julyte.user.modules.cate.CateServiceImpl"/>
<jsp:useBean id="CodeServiceImpl" class="com.julyte.user.modules.code.CodeServiceImpl"/>
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
				<img src="/resources/user/image/oy_lg.jpg" alt="..."
					width="200px">
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
							<a href="javascript:kakaoLogin();"><img src="/resources/common/xdmin/image/kako.png"></a>
							<a href=""><img src="/resources/common/xdmin/image/aple.png"></a>
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

    
    <script>
        window.Kakao.init('041ca094f388711dee3ba9ae04f3fb99');

        function kakaoLogin() {
            window.Kakao.Auth.login({
                scope: 'profile, account_email', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
                success: function(response) {
                    console.log(response) // 로그인 성공하면 받아오는 데이터
                    window.Kakao.API.request({ // 사용자 정보 가져오기 
                        url: '/v2/user/me',
                        success: (res) => {
                            const kakao_account = res.kakao_account;
                            console.log(kakao_account)
                        }
                    });
                    // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
                },
                fail: function(error) {
                    console.log(error);
                }
            });
        }

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





