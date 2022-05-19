<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트릿 While문 연습</title>
<link rel="styleseet" href="https://unpkg.com/bootstrap@3.3.7/dist/css/bootstrap.min.css">
</head>
<body>
<div class="panel-heading">
	<h2>For문 연습</h2>
</div>
<div class="panel-body">
<%
	int i = 2;
	int y = 2;
	int total = 0;
	while(i < 15){
		%>
		<br><br><h4><%= y %>단</h4>
		<%
		y=1;
		while(y<15){
		out.println("<p><strong>"+i+" * "+y+" = "+(i*y)+"</strong></p>");
%></div><%
			y++;
		}
		i = i+1;
	};
%>
</div>
</body>
</html>