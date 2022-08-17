<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*" %>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
		//가장 마지막에 추가된 회원 번호를 불러와 그 번호의 다음 번호를 발생시킴 
		pstmt = conn.prepareStatement("select * from member_tbl_02");
		rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>
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
		<h2>회원 목록 조회/수정</h2>
		<div class="list_wrap">
			<table class="table2">
				<thead>
					<tr>
						<th class="col1">회원번호</th>
						<th class="col2">회원성명</th>
						<th class="col3">전화번호</th>
						<th class="col4">주소</th>
						<th class="col5">가입일</th>
						<th class="col6">고객등급</th>
						<th class="col7">거주지역</th>
					</tr>
				</thead>
				<tbody>
				<% 
					while(rs.next()) {
						String grade = "직원";
						if(rs.getString(6).equals("A")) grade = "VIP";
						if(rs.getString(6).equals("B")) grade = "일반";
				%>
					<tr>
						<td><a href="getMember.jsp?custno=<%=rs.getInt(1) %>"><%=rs.getInt(1) %></a></td>
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getString(3) %></td>
						<td><%=rs.getString(4) %></td>
						<td><%=rs.getString(5).substring(0,10) %></td>
						<td><%=grade %></td>
						<td><%=rs.getString(7) %></td>
					</tr>
				<% 
					} 
				%>
				</tbody>
			</table>
		</div>
	</section>
	<footer id="ft">
		<p>HRDKOREA Copyright&copy;2016 All rights reserved Human Resources Development Service of Korea</p>
	</footer>
	<%
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		if(rs!=null) rs.close();
		if(pstmt!=null) pstmt.close();
		if(conn!=null) conn.close();
	}
	%>
</body>
</html>