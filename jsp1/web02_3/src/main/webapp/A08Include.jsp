<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = (String) pageContext.getAttribute("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>Name : <%=name %></p>
<%
	out.println("<p>Name2 : "+name+"</p>");
%>
	<p>Name3 : ${name }</p>
</body>
</html>