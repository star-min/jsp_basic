<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<html>
<head>
	<script src="https://code.jquery.com/jquery-latest.js"></script>
	<script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
	<link rel="apple-touch-icon" href="../../img_total/favicon_ios_n.png" />
<link rel="icon" href="../../img_total/n_favicon_n_16.png" />
<link rel="shortcut icon" href="https://kostat.go.kr/img_total/favicon_kostat.ico" />
<link href="css/NotoSansKR-Hestia_Main.css" media="all" rel="stylesheet" type="text/css" />
<link href="css/style_content.css" media="all" rel="stylesheet" type="text/css" />
<link href="css/style_layout_master.css" media="all" rel="stylesheet" type="text/css" />
<link href="css/master.css" media="all" rel="stylesheet" type="text/css" />
<link href="css/reset_new_n.css" media="all" rel="stylesheet" type="text/css" />
	<title>Home</title>
</head>
<body>
<div class="wrap">
	<header id="header" class="header">
	<%@ include file="inc/header.jsp" %>
	</header>

	<%@ include file="inc/main.jsp" %>

	<footer id="footer" class="footer">
	<%@ include file="inc/footer.jsp" %>
	</footer>
</div>
</body>
</html>
