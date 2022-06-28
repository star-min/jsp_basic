<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<html>
<head>
	<title>Home</title>
</head>
<body>
<div class="wrap">
	<header id="header" class="header">
	<%@ include file="inc/header.jsp" %>
	</header>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
	<footer id="footer" class="footer">
	<%@ include file="inc/footer.jsp" %>
	</footer>
</div>
</body>
</html>
