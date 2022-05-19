<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = (String) request.getAttribute("name");
	int kor = (int) request.getAttribute("kor");
	int eng = (int) request.getAttribute("eng");
	int tot = (int) request.getAttribute("tot");
	double avg = (double) request.getAttribute("avg");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 출력</title>
</head>
<body>
<h3>결과 출력</h3>
<div>
	<p>${name }님</p>
	<p>국어 : ${kor }</p>
	<p>영어 : ${eng }</p>
	<p>총점 : ${tot }</p>
	<p>평균 : ${avg }</p>
</div>
</body>
</html>