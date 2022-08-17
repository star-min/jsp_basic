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
		pstmt = conn.prepareStatement("select m1.custno, m1.custname, m1.grade, sum(m2.price) as hap from member_tbl_02 m1 inner join money_tbl_02 m2 on m1.custno=m2.custno group by m1.custno, m1.custname, m1.grade order by m1.custno desc");
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
		<h2>회원 매출 조회</h2>
		<div class="list_wrap">
			<table class="table3">
				<thead>
					<tr>
						<th class="col1">회원번호</th>
						<th class="col2">회원성명</th>
						<th class="col3">고객등급</th>
						<th class="col4">매출</th>
					</tr>
				</thead>
				<tbody>
				<% 
					while(rs.next()) {
						String grade = "직원";
						if(rs.getString(3).equals("A")) grade = "VIP";
						if(rs.getString(3).equals("B")) grade = "일반";
				%>
					<tr>
						<td><%=rs.getInt(1) %></td>
						<td><%=rs.getString(2) %></td>
						<td><%=grade %></td>
						<td><%=rs.getInt(4) %></td>
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