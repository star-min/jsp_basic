<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	String userid = request.getParameter("userid");
	String userpw = request.getParameter("userpw");
	String loginType = request.getParameter("loginType");
	if(loginType.equals("user")) {
%>
	<jsp:forward page="10ParamRecieve.jsp">
		<jsp:param name="username" value="일반고객" />
	</jsp:forward>
<%		
	} else {
%>
	<jsp:forward page="10ParamRecieve.jsp">
		<jsp:param name="username" value="관리자" />
	</jsp:forward>
<%		
	}
%>
</body>
</html>