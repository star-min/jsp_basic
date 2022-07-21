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
<style type="text/css">
.form1 {
    padding: 50px 25px;
    max-width: 500px;
    margin: 0 auto;
    margin-bottom: 30px;
    margin-top: 50px;
}

.form1 .header {
    text-align: center;
}

.form1 .header .brand {
    font-weight: bold;
    font-size: 50px;
    font-family: "Parisienne", cursive;
    color: #1259a7;
}

.form1 .header .message {
    margin: 25px 0 70px 0;
    font-size: 20px;
    font-weight: normal;
    color: #262626;
}

.form1 .form label {
    display: block;
    margin-bottom: 12.5px;
}

.form1 .form .first {
    margin-bottom: 35px;
}

.form1 .form .second {
    margin-bottom: 35px;
}

.form1 .form input {
    height: 50px;
    border-radius: 0;
    width: 100%;
    border: 1px solid #ddd;
    padding: 15px;
}

.form1 .form input:focus {
    outline: 0;
    box-shadow: none;
    border-color: #146ece;
}

.form1 .form button {
    font-size: 16px;
    height: 50px;
    display: inline-block;
    cursor: pointer;
    background: #1259a7;
    width: 100%;
    border: 1px solid #1259a7;
    box-shadow: none;
    color: #fff;
}

.form1 .form button:hover {
    background: #146ece;
    background-color: #146ece;
}
</style>
</head>
<body>
<div class="wrap">
<header id="hd">
	<div class="hd_wrap">
		<%@ include file="header.jsp" %>
	</div>
</header>
<!-- <div class="container-fluid">
	<h2>로그인</h2>
	
		<ul>
			<li><input type="text" class="indata" id="uid" name="uid" placeholder="아이디 입력" required autofocus ></li>
			<li><input type="password" class="indata" id="upw" name="upw" placeholder="비밀번호 입력" required></li>
			<li class="btn_frame">
				<input type="submit" value="로그인" id="submit" class="btn btn-primary"> &nbsp; &nbsp; &nbsp; &nbsp;
				<input type="reset" value="취소" id="reset" class="btn btn-primary">
			</li>
		</ul>
	</form>	
</div> -->
<div nid="form1" class="form1">
    <link href="https://fonts.googleapis.com/css2?family=Parisienne&amp;display=swap" rel="stylesheet">
    <div class="header">
        <div class="brand">login</div>
        <div class="message">아이디와 비밀번호를 입력해주세요.</div>
    </div>
    <div class="form">
    <form id="frm1" name="login" action="loginPro.jsp" method="post">
        <div class="first">
            <label for="email">아이디</label>
            <input type="text" id="uid" name="uid" required placeholder="아이디를 입력">
        </div>
        <div class="second">
            <label for="password">패스워드</label>
            <input type="password" id="upw" name="upw" required placeholder="패스워드를 입력">
        </div>
        <button type="submit">로그인</button>
    </form>
    </div>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>