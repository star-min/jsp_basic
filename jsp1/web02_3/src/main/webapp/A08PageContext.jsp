<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("name", "김성민");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>pageContext + include</h3>
	<%@ include file="A08Include.jsp" %>
	<jsp:include page="A08Include.jsp"></jsp:include>
</body>
</html>