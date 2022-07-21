<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	String email = request.getParameter("email");
	String nickname = request.getParameter("nickname");
	
	String id = (String) application.getAttribute("a");
	application.setAttribute("a", "yeeun79");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매개변수 받기</title>
</head>
<body>
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
	<p>링크 : <a href="ExResParameter.jsp?email=kkt09072@naver.com&nickname=1004">데이터 전송</a></p>
</body>
</html>