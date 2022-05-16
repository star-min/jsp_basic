<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="e404.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kr.go.sokcho.model.MemberVO" %>
<%@ page import="kr.go.sokcho.model.ReviewVO" %>
<%
	//보내진 customList 객체를 받아 customer로 분리하여 출력
	MemberVO cus = (MemberVO) request.getAttribute("cus");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 정보</title>
<style>
.tb1 { display:table; width:900px; margin:20px auto; border-collapse: collapse; }
.tb1 tr { display:table-row; }
.tb1 th, .tb1 td { display:table-cell; line-height:36px; border-bottom:1px solid #333; text-align: center; }
.tb1 th { border-top:1px solid #333; background-color:#ccc; }
</style>
</head>
<body>
<div class="container">
<header id="hd">
	<%@ include file="hd.jsp" %>
</header>
<div id="content">
	<table class="tb2">
		<tbody>
	<%
		if(cus!=null){
	%>
			<tr>
				<th>아이디</th>
				<td><%=cus.getMid() %></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><%=cus.getMpw() %></td>
			</tr>
			<tr>
				<th>고객명</th>
				<td><%=cus.getMname() %></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><%=cus.getTel() %></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><%=cus.getEmail() %></td>
			</tr>
			<tr>
				<th>생년월일</th>	
				<td><%=cus.getBirth() %></td>
			</tr>
			<tr>
				<th>가입일</th>
				<td><%=cus.getJoinday() %></td>
			</tr>
			<tr>
				<td colspan="2">
					<a href="/web02/GetUserCtrl">수정</a> &nbsp; &nbsp; &nbsp; &nbsp;
					<a href="/web02/DelUserCtrl">탈퇴</a>
				</td>
			</tr>
	<%
		}
	%>
		</tbody>
	</table>
	<br><br>
	<h3></h3>
	<table class="tb1">
		<thead>
			<tr>
				<th>순번</th><th>제목</th><th>장소</th><th>시작일</th><th>종료일</th>
			</tr>
		</thead>
		<tbody>
<%	
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			sql = "select * from impression where cid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sid);
			rs = pstmt.executeQuery();
			while(rs.next()) {			
					
%>
		<tr>
			<td><%=rs.getInt("ino") %></td>
			<td><%=rs.getString("ititle") %></td>
			<td><%=rs.getString("iplace") %></td>
			<td><%=rs.getDate("itodate") %></td>
			<td><%=rs.getDate("ifromdate") %></td>
		</tr>
<%					
/* 					rs.getString("icontent");
					rs.getString("ipic1");
					rs.getString("ipic2");
					rs.getString("cid");
					rs.getString("ipw");
					rs.getDate("idate");
					rs.getInt("viewcnt"); */
			} 
			if(!rs.next()) {
%>
		<tr>
			<td colspan="5">기록하신 이용후기가 없습니다.</td>
		</tr>	
<%				
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}	
%>
		</tbody>
	</table>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>