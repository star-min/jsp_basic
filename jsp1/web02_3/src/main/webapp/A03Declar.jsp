<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언문 연습</title>
</head>
<body>
<%!
	public int cnt = 1;
	public String name = "seong";
	
	public int onAdd(int x, int y) {
		return x+y;
	}
%>
<%
	int a = 20, b = 30;
	out.println("<div>"+a+"+"+b+"="+onAdd(a, b)+"</div>");
%>
	<div>70+80=<%=onAdd(70,80) %></div>
<%
	String name = request.getParameter("name");
if(name.equals("seong")){
	cnt = 77;
	a = 40;
}
%>
	<h4>지역변수와 전역변수의 결과값</h4>
	<div><%=cnt %> && <%=a %></div>
<%
	String path = application.getRealPath("A03Declar.jsp");
	out.println(path);
%>
</body>
</html>