<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!doctype html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 -->


</head>
<body>
<br> aaaa: <c:out value="${resultCode}"/>
<br> aaaa: <c:out value="${resultMsg}"/>
<br> aaaa: <c:out value="${pageNo}"/>
<br> aaaa: <c:out value="${totalCount}"/>
<br> aaaa: <c:out value="${numOfRows}"/>
<br>
<c:forEach items="${items}" var="item" varStatus="status">	
	<c:out value="${item.YYYY}"/>
	<br><c:out value="${item.MM}"/>
	<br><c:out value="${item.KIT_PROD_QTY}"/>
	<br><c:out value="${item.KIT_EXPRT_QTY}"/>
	<br><c:out value="${item.KIT_STOCK_QTY}"/>
	<br>
</c:forEach>


</body>
</html>