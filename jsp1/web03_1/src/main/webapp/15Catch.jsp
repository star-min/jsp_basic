<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl - catch</title>
</head>
<body>
<h2>Recieve</h2>
<p>lon : ${param.x }, lat : ${param.y }</p>

<c:catch var="error">
<%
	int x = Integer.parseInt(request.getParameter("x"));
	int y = Integer.parseInt(request.getParameter("y"));
%>
<br>
	lon : <%=x %>, lat : <%=y %>
</c:catch>
<c:if test="${!empty error }">
	<p>에러 : ${error }</p>
</c:if>
</body>
</html>