<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰 회원관리 프로그램</title>
<link href="style1.css" rel="stylesheet">
<style>
</style>
</head>
<body>
	<header id="hd"><h1>쇼핑몰 회원관리 ver 1.0</h1></header>
	<nav id="gnb">
		<ul>
			<li><a href="joinForm.jsp">회원등록</a></li>
			<li><a href="memberList.jsp">회원목록조회/수정</a></li>
			<li><a href="moneyList.jsp">회원매출조회</a></li>
			<li><a href="index.jsp">홈으로</a></li>
		</ul>
	</nav>
	<section id="content">
		<h2>쇼핑몰 회원관리 프로그램</h2>
		<p>쇼핑몰 회원정보와 회원매출정보 데이터베이스를 구축하고, 회원관리 프로그램을 작성하는 프로그램이다.</p>
		<h3>프로그램 작성 순서</h3>
		<ol>
			<li>회원정보 테이블을 생성한다.</li>
			<li>매출정보 테이블을 생성한다.</li>
			<li>회원정보, 매출정보 테이블에 제시된 문제지와 참조데이터를 추가 생성한다.</li>
			<li>회원정보 입력 화면프로그램을 작성한다.</li>
			<li>회원정보 조회 프로그램을 작성한다.</li>
			<li>회원매출정보 조회 프로그램을 작성한다.</li>
		</ol>
	</section>
	<footer id="ft">
		<p>HRDKOREA Copyright&copy;2016 All rights reserved Human Resources Development Service of Korea</p>
	</footer>
</body>
</html>