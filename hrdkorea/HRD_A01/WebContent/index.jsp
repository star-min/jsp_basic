<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>쇼핑몰 회원관리 프로그램</title>
</head>
<body>
	<header>
		<h1>쇼핑몰 회원관리 var 1.0</h1>
	</header>
	<menu>
		<ul>
			<li><a href="joinForm.jsp">회원등록</a></li>
			<li><a href="memberList.jsp">회원목록조회/수정</a></li>
			<li><a href="moneyList.jsp">회원매출조회</a></li>
			<li><a href="index.hrmll">홈으로</a></li>
		</ul>
	</menu>
	<section>
		<h2>쇼핑몰 회원관리 프로그램</h2>
		<p>쇼핑몰 회원정보와 회원매출 정보 데이터베이스를 구축하고 회원관리 프로그램을 작성하는 프로그램이다.</p>
		<h3>프로그램 작성순서</h3>
		<ol>
			<li>회원정보 테이블을 생성한다.</li>
			<li>매출정보 테이블을 생성한다.</li>
			<li>회원정보 매출정보 테이블에 제시된 문제지의 참조데이터를 추가 생성한다.</li>
			<li>회원정보 입력 화면프로그램을 작성한다.</li>
			<li>회원정보 조회 프로그램을 작성한다.</li>
			<li>회원매출정보 조회 프로그램을 작성한다.</li>
		</ol>
	</section>
	<footer>
		<p>HRDKOREA Copyright@2010 All rights reserved, Human Resources Development Service of Korea.</p>
	</footer>
</body>
</html>