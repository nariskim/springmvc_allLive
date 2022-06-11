<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.julyte.user.modules.code.CodeServiceImpl"/>

<!DOCTYPE HTML>
<html>

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Surjith S M">
    
    <!-- Favicons -->
    <link rel="shortcut icon" href="https://ifh.cc/g/lBA5vD.png" type="image/x-icon" /> <!-- olive 아이콘 -->
    <!-- Page Title -->
    <title>All Live Young</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/resources/xdmin/assets/css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">
    <!-- Themify Icon -->
    <link rel="stylesheet" href="/resources/xdmin/assets/css/themify-icons.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/resources/xdmin/assets/css/font-awesome.min.css">
    <!-- Hover Effects -->
    <link href="/resources/xdmin/assets/css/set1.css" rel="stylesheet">
    <!-- Main CSS -->
    <link rel="stylesheet" href="/resources/xdmin/assets/css/style.css">
</head>

<body>
    <!--============================= HEADER =============================-->
    <div class="nav-menu sticky-top">
        <div class="bg transition">
            <div class="container-fluid fixed">
                <div class="row">
                    <div class="col-md-12">
                        <nav class="navbar navbar-expand-lg">
                            <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                                <ul class="navbar-nav">
                                    <li class="nav-item" style="padding : 10px;">
                                        <c:out value="${sessName}"/>
                                    </li>
                                    <li> </li>
                                    <li><a href="" id="btnLogout" class="btn btn-outline-success top-btn"> logout</a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--//END HEADER -->
    <!--============================= SUBPAGE HEADER BG =============================-->
    <section class="subpage-bg">
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-md-10">
                    <div class="titile-block title-block_subpage">
                        <h2>portfolio</h2>
                        <p> <a href="index.html"> 상품구매 페이지(All Live Young)</a> / 회원관리 페이지</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--// SUBPAGE HEADER BG -->
    <!--============================= PRICING =============================-->
    <section class="main-block">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 article-first">
                    <div class="pricing-wrap">
                        <div class="pricing-head">
                            <h2>상품구매</h2>
                            <span>웹 / HTML</span>
                        </div>
                        <ul class="pricing-text-block">
                            <li><img src="/resources/xdmin/image/allLiveUser.png" width="100%" height="339px"/></li>
                            <li>홈 / 상품상세 / 주문 / 결제 / 결제완료</li>
                        </ul>
                        <div class="pricing-signup">
                            <a href="/allLive/allLiveMain" class="btn btn-success">입장하기</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 article-first">
                    <div class="pricing-wrap">
                        <div class="pricing-head">
                            <h2>회원관리</h2>
                            <span>웹 / HTML</span>
                        </div>
                        <ul class="pricing-text-block">
                            <li><img src="/resources/xdmin/image/allLiveAdmin.png" width="100%" height="339px"/></li>
                            <li>회원리스트 / 회원상세 / 회원등록 / 회원수정 / 회원삭제</li>
                        </ul>
                        <div class="pricing-signup">
                            <a href="/member/memberList" class="btn btn-success">입장하기</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!--//END PRICING -->






<!-- jQuery, Bootstrap JS. -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="/resources/xdmin/assets/js/jquery-3.2.1.min.js"></script>
<script src="/resources/xdmin/assets/js/popper.min.js"></script>
<script src="/resources/xdmin/assets/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/js/validation.js"></script>

<!-- Jquery ui -->
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>

<script>
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

	validation = function(){
		if(!checkNull($("oymbId"), $.trim($("#oymbId").val()), "아이디를 입력해 주세요!")) return false;
		if(!checkNull($("oymbPassword"), $.trim($("#oymbPassword").val()), "비밀번호를 입력해 주세요!")) return false;
	}
</script>

</body>

</html>
