<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*" %>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	request.setCharacterEncoding("UTF-8");
	int custno = Integer.parseInt(request.getParameter("custno"));
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
		//가장 마지막에 추가된 회원 번호를 불러와 그 번호의 다음 번호를 발생시킴 
		pstmt = conn.prepareStatement("select * from member_tbl_02 where custno=?");
		pstmt.setInt(1, custno);
		rs=pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록 화면</title>
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
	<script>
	function check_form(f){
		if(f.custname.value.trim()==""){
			alert("회원성명이 입력되지 않았습니다.");
			f.custname.focus();
			return false;
		}
		if(f.phone.value.trim()==""){
			alert("전화번호가 입력되지 않았습니다.");
			f.phone.focus();
			return false;
		}
		if(f.address.value.trim()==""){
			alert("주소가 입력되지 않았습니다.");
			f.address.focus();
			return false;
		}
		if(f.joindate.value.trim()==""){
			alert("가입일자가 입력되지 않았습니다.");
			f.joindate.focus();
			return false;
		}
		if(f.grade.value.trim()==""){
			alert("고객등급이 입력되지 않았습니다.");
			f.grade.focus();
			return false;
		}
		if(f.city.value.trim()==""){
			alert("도시코드가 입력되지 않았습니다.");
			f.city.focus();
			return false;
		}
	}
	</script>
	<section id="content">
		<h2>홈쇼핑 회원 등록</h2>
		<div class="form_wrap">
			<form action="updateProcess.jsp" method="post" onsubmit="return check_form(this)">
				<table class="table1">
				<% if(rs.next()) {%>
					<tbody>
						<tr>
							<th>회원번호(자동발생)</th>
							<td><input type="text" value="<%=rs.getInt(1) %>" size="8" name="custno" readonly></td>
						</tr>
						<tr>
							<th>회원성명</th>
							<td><input type="text" value="<%=rs.getString(2) %>" size="8" name="custname"></td>
						</tr>
						<tr>
							<th>회원전화</th>
							<td><input type="text" value="<%=rs.getString(3) %>" size="20" name="phone"></td>
						</tr>
						<tr>
							<th>회원주소</th>
							<td><input type="text" value="<%=rs.getString(4) %>" size="40" name="address"></td>
						</tr>
						<tr>
							<th>가입일자</th>
							<td><input type="text" value="<%=rs.getString(5).substring(0,10) %>" maxlength="8" size="8" name="joindate"></td>
						</tr>
						<tr>
							<th>고객등급[A:VIP,B:일반,C:직원]</th>
							<td><input type="text" value="<%=rs.getString(6) %>" size="8" name="grade"></td>
						</tr>
						<tr>
							<th>도시코드</th>
							<td><input type="text" value="<%=rs.getString(7) %>" size="8" name="city"></td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="submit" value="수정"> &nbsp; &nbsp;
								<input type="button" value="조회" onclick="location.href='memberList.jsp'">
							</td>
						</tr>
					</tbody>
				<% } %>	
				</table>
			</form>
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