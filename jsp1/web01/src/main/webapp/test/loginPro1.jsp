<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String uid = request.getParameter("uid");
	String upw = request.getParameter("upw");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="reset.css">
<link rel="stylesheet" href="common.css">
</head>
<body>
<div class="wrap">
<header id="hd">
	<div class="hd_wrap">
		<%@ include file="nav1.jsp" %>
	</div>
</header>
<div class="content">
	<h2>로그인 정보</h2>
	<p>아이디 : <%=uid %></p>	
	<p>비밀번호 : <%=upw %></p>
</div>
<footer id="ft">
	<%@ include file="ft1.jsp" %>
</footer>
</div>
</body>
</html>