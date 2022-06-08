<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Param 데이터 받아 출력하기</title>
</head>
<body>
<h2>Param 으로 보내온 데이터 받기</h2>
<%=request.getParameter("username") %>님이 로그인 하셨습니다.<br><br>
<a href="javascript:history.go(-1)">뒤로</a>
</body>
</html>