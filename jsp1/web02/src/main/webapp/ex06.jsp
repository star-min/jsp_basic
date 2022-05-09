<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Dao.Student" %>
<%
	Student stl = (Student) request.getAttribute("student");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	번호 : <%=stl.getNo() %><br>
	이름 : <%=stl.getName() %><br>
	국어 : <%=stl.getKor() %><br>
	영어 : <%=stl.getEng() %><br>
	수학 : <%=stl.getMat() %><br>
</body>
</html>