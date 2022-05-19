<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int tot;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점수 결과</title>
</head>
<body>
<div>
	<p><%= name %>님</p>
	<p>국어 : <%= kor %>점</p>
	<p>영어 : <%= eng %>점</p>
	<% tot=kor+eng; %>
	<p>총점 : <%= tot %>점</p>
	<%
		application.setAttribute("tot", tot);
		String pass = "불학격";
		if(tot>=140){
			pass="합격";
		}
		application.setAttribute("pass",pass);
	%>
	<p><a href="A06Average.jsp?tot=<%=tot %>">평균 구하기</a></p>
	<p><a href="A06Hakjum.jsp">학점 구하기</a></p>
	<p><a href="A06Pass.jsp">합격 여부</a></p>
</div>
</body>
</html>