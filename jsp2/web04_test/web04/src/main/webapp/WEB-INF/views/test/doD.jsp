<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>테스트 D</title>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<header id="header">
	<%@ include file="../include/menu.jsp" %>
</header>
<h1>테스트 D</h1>
<div id="content">
	<h2>${msg }</h2>
		${member.userid } / ${member.userpw } <br><br> 
</div>
</body>
</html>