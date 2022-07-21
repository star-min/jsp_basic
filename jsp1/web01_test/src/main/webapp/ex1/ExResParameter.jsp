<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 2차 전송받은 페이지</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	String email = request.getParameter("email");
	String nickname = request.getParameter("nickname");
	
	String id = (String) application.getAttribute("a");
%>

<%
	if(name!=null && tel!=null){
%>
	<p>이름 : <%=name %></p>
	<p>전화번호 : <%=tel %></p>
<%		
	}
%>
<%
	if(nickname!=null && email!=null){
%>
	<p>별명 : <%=nickname %></p>
	<p>이메일 : <%=email %></p>
<%		
	}
%>
	<p>아이디 : <%=id %></p>
	<p>링크 : <a href="ExSetParameter.jsp">원래 페이지로</a></p>
</body>
</html>