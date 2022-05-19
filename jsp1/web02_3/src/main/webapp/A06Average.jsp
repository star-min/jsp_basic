<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int tot = Integer.parseInt(request.getParameter("tot"));
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>평균 점수 출력</title>
</head>
<body>
<%
	tot = (kor+eng)/2;
%>

<div>
	<h2>평균 점수는 <%=tot %> 입니다.</h2>
</div>
</body>
</html>