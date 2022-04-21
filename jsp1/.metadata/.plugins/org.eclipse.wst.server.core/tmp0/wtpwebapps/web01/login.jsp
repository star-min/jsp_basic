<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- 	<%@ = 페이지 디랙티브 	--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<div class="wrap"></div>
<header id="hd">
	<div class="hd_wrap">
		<%@ include file="nav.jsp" %>
	</div>
</header>
<div class="content">
	<h2>로그인</h2>
	<form action="loginPro.jsp" id="frm1" name="login" method="post"> 
		<ul>
			<li><input type="text" id="uid" name="uid" class="indata" autofocus placeholder="아이디입력" required >아이디</li>
			<li><input type="password" id="upw" name="upw" class="indata" placeholder="비밀번호입력" required >비밀번호</li>
			<li class="btn_frame">
				<input type="submit" value="로그인" id="submit" class="btn">
				<input type="reset" value="취소" id="reset" class="btn">
			</li>
		</ul>
	</form>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</body>
</html>