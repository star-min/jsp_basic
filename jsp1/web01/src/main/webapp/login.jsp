<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ 디렉티브 %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="datatables.min.css">
<script src="datatables.min.js"></script>
</head>
<body>
<div class="wrap">
<header id="hd">
	<div class="hd_wrap">
		<%@ include file="nav.jsp" %>
	</div>
</header>
<div class="container-fluid">
	<h2>로그인</h2>
	<form id="frm1" name="login" action="loginPro.jsp" method="post">
		<ul>
			<li><input type="text" class="indata" id="uid" name="uid" placeholder="아이디 입력" required autofocus ></li>
			<li><input type="password" class="indata" id="upw" name="upw" placeholder="비밀번호 입력" required></li>
			<li class="btn_frame">
				<input type="submit" value="로그인" id="submit" class="btn btn-primary"> &nbsp; &nbsp; &nbsp; &nbsp;
				<input type="reset" value="취소" id="reset" class="btn btn-primary">
			</li>
		</ul>
	</form>	
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>