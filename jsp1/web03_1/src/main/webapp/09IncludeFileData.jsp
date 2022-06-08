<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = "김기태"; 
	String pageNum1 = "header.jsp";
	String pageNum2 = "footer.jsp";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션 태그 include 실습</title>
</head>
<body>
<jsp:include page="<%=pageNum1 %>" flush="false"/>
<%-- <jsp:include page="09include.jsp?name=<%=name %>" /> --%>
<jsp:param name="name" value="여승원" />
<jsp:include page="<%=pageNum2 %>" flush="false"/>
<a href="09include.jsp?name=<%=name %>">데이터 전송</a>
</body>
</html>