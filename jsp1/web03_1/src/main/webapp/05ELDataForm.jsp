<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="com.example.Human" %>
<%
	pageContext.setAttribute("name", "kim");
	request.setAttribute("name", "lee");
	session.setAttribute("name", "park");
	application.setAttribute("name", "cho");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 전송</title>
</head>
<body>
	<h2>EL FormData Trans</h2>
	<form action="05ELParam.jsp" method="post">
		아이디 : <input type="text" name="id"><br><br><br>
		당신은 어떤 취미를 갖고 계십니까?<br>
		야구 : <input type="checkbox" name="hobby" value="야구"><br>
		낚시 : <input type="checkbox" name="hobby" value="낚시"><br>
		등산 : <input type="checkbox" name="hobby" value="등산"><br>
		독서 : <input type="checkbox" name="hobby" value="독서"><br>
		<br>
		<input type="submit" value="전송"> &nbsp; &nbsp; &nbsp;
		<input type="reset" value="취소">
	</form>
</body>
</html>