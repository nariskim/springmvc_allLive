<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE HTML>
<html lang="ko"> 
<head>  
<meta charset="uTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">

<!-- jquery ui CSS -->
<link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">

<script src="https://kit.fontawesome.com/893e1f7eb8.js" crossorigin="anonymous"></script>

<title>DurianLogin</title>
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
	<form id="loginForm" name="loginForm" method="post" action="/durian/loginForm">
		<!--  -->

		<div class="position-absolute top-50 start-50 translate-middle">
			<div style="text-align: center;">
				<img src="" alt="..." width="200px">
			</div>
			<div class="container">
				<div class="form-floating mb-3" style="font-size: small;">
					<input type="text" class="form-control" id="oymbId" name="oymbId"
						placeholder="name@example.com" value="zxcv"> <label
						for="floatingInput">CJ ONE 통합회원 아이디 입력</label>
				</div>
				<div class="form-floating mb-3" style="font-size: small;">
					<input type="text" class="form-control" id="oymbPassword"
						name="oymbPassword" placeholder="Password" value="zxcv"> <label
						for="floatingPassword">비밀번호(8-12자 영문자+숫자+특수문자)</label>
				</div>
				<div class="input-group">
					<div class="form-check" style="font-size: medium;">
						<input class="form-check-input" type="checkbox" value=""
							id="flexCheckDefault"> <label class="form-check-label"
							for="flexCheckDefault">자동로그인</label>
					</div>
					<div class="form-check" style="font-size: medium;">
						<input class="form-check-input" type="checkbox" value=""
							id="flexCheckDefault"> <label class="form-check-label"
							for="flexCheckDefault">아이디 저장</label>
					</div>
				</div>
				<br>
				<div class="d-grid gap-2">
					<button class="btn btn-success text-white" id="btnLogin"
						name="btnLogin" type="button">로그인</button>
				</div>

				<br>




				<div style="text-align: center;">
					<a href="">아이디 찾기&nbsp;&nbsp;|</a> <a href="">비밀번호 찾기</a>
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
							<a href="javascript:kakaoLogin()"> <img
								src="/resources/user/image/kako.png"></a>
						</div>
						

					</div>
				</div>



				<br>
				<div class="d-grid gap-2">
					<button class="btn btn-outline-secondary text-dark" type="button">CJONE 통합가입</button>
				</div>

			</div>
		</div>
	</form>
	<!--  -->



	<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/resources/js/validation.js"></script>



	<script type="text/javascript">
		$("#btnLogin").on(
				"click",
				function() {
					/* 	if(validation()==false) return false; */
					$.ajax({
						async : true,
						cache : false,
						type : "post",
						url : "/member/loginProc",
						data : {
							"oymbId" : $("#oymbId").val(),
							"oymbPassword" : $("#oymbPassword").val()
						},
						success : function(response) {
							if (response.rt == "success") {
								location.href = "/index/indexView";
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
		
		
		<!-- 카카오 로그인-->
		window.Kakao.init('6f78c252f58489b7d8095745c904b8af');	// 자바스크립트 키 입력
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
		           			,url: "/member/KakaoProc"
		           			,data : {"oymbName" : profile_nickname}
		           			,success: function(response) {
		           				if(response.item == "success") {
		           					location.href = "/index/indexView";
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

</body>

</html>





