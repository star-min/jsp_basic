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
<style>
ul { list-style:none; }
#hd { width:100%; }
#hd .hd_wrap { }
.content { min-height:90vh; }
.logo { display:block; width:180px; padding-top:8px; }
.logo img { display:block; width:100%; }
#tnb a { padding-left:20px;	 }
#frm1 { width:260px; margin:0 auto; }
.form_wrap li { height:42px; }
.title { text-align:center; }
</style>
</head>
<body>
<div class="wrap">
<div class="container-full">
<header id="hd" class="panel-heading navbar navbar-default">
	<div class="hd_wrap container">
		<%@ include file="nav.jsp" %>
	</div>
</header>
<div class="content" class="panel-body">
	<div class="container-fluid">
		<h2 class="title">로그인</h2>
		<form id="frm1" name="login" action="loginPro.jsp" method="post" role="form" class="form-horizontal">
			<ul class="form_wrap">
				<li><input type="text" class="indata" id="uid" name="uid" placeholder="아이디 입력" required autofocus></li>
				<li><input type="password" class="indata" id="upw" name="upw" placeholder="비밀번호 입력" required></li>
				<li class="btn_frame" style="padding-left:10px">
					<input type="submit" value="로그인" id="submit" class="btn btn-primary"> &nbsp; &nbsp; &nbsp; &nbsp;
					<input type="reset" value="취소" id="reset" class="btn btn-primary">
				</li>
			</ul>
		</form>	
	</div>
</div>
<footer id="ft" class="panel-footer">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</div>
</body>
</html>