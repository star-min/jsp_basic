<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	int tot = (int) session.getAttribute("tot");
	String hak = "";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학점 구하기</title>
</head>
<body>
<%
	if(tot>=180){
		out.println("A");
	} else if(tot>=170){
		out.println("B");
	} else if(tot>=160){
		out.println("c");
	} else if(tot>=150){
		out.println("d");
	} else {
		out.println("다음 기회에..");
	}
%>
<div>
	<h2>학점은 <%= hak %>입니다.</h2>
</div>
</body>
</html>