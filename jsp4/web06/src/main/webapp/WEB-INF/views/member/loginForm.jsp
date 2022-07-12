<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<style>
<%@ include file="loginForm.css" %>

</style>
</head>
<body>
<div nid="root" class="root">
<%@ include file="../inc/header.jsp" %>
<div nid="form1" class="form1">
    <link href="https://fonts.googleapis.com/css2?family=Parisienne&amp;display=swap" rel="stylesheet">
    <div class="header">
        <div class="brand">ksmstat</div>
        <div class="message">로그인</div>
    </div>
    <div class="form">
    <form action="${path1 }/member/signin.do" method="post" name="loginForm" class="login-form">
        <div class="first">
            <label for="text">아이디</label>
            <input type="text" id="id" name="id" placeholder="아이디 필수 입력" required>
        </div>
        <div class="second">
            <label for="password">패스워드</label>
            <input type="password" id="pwd" name="pwd" placeholder="패스워드 필수 입력" required>
        </div>
        <button type="submit">로그인</button>
    </form>
    </div>
</div>
<%@ include file="../inc/footer.jsp" %>
</div>
</body>
</html>