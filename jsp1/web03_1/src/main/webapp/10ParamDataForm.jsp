<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>jsp 액션태그의 param 활용 폼</h2>
	<form action="10Param.jsp" method="post">
		아이디 : <input type="text" name="userid" /><br><br>
		비밀번호 : <input type="password" name="userpw" /><br><br>
		사용자 모드<br>
			<input type="radio" name="loginType" value="user" checked="checked" />일반사용자<br>
			<input type="radio" name="loginType" value="manager" />관리자<br><br><br>
		<input type="submit" value="로그인"/>
	</form>
</body>
</html>
<!-- 10Param.jsp?userid=kkt&userpw=1234&loginType=user -->