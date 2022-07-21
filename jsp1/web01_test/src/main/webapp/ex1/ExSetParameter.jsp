<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 전송 페이지</title>
</head>
<body>
	<%
		String id = "kkt09072";
		application.setAttribute("a", id);
	%>
	<form action="ExGetParameter.jsp" method="get">
		이름 : <input type="text" name="name"><br>
		전화번호 : <input type="tel" name="tel"><br>
		<input type="submit" value="전송">
	</form>
	<br><a href="ExGetParameter.jsp?email=kkt09072@naver.com&nickname=1004">천사</a>
</body>
</html>