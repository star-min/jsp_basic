<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="e404.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kr.go.yeosu.model.CustomerVO" %>
<%@ page import="kr.go.yeosu.model.ImpressionVO" %>
<%
	//보내진 customList 객체를 받아 customer로 분리하여 출력
	CustomerVO cus = (CustomerVO) request.getAttribute("cus");
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
				<td><%=cus.getCid() %></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><%=cus.getUpw() %></td>
			</tr>
			<tr>
				<th>고객명</th>
				<td><%=cus.getUname() %></td>
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
				<td><%=cus.getRegdate() %></td>
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
		Connection conn2 = null;
		PreparedStatement pstmt2 = null;
		ResultSet rs2 = null;
		String sql2 = "";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn2 = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			sql2 = "select * from impression where cid=?";
			pstmt2 = conn.prepareStatement(sql2);
			pstmt2.setString(1, sid);
			rs2 = pstmt.executeQuery();
			while(rs2.next()) {			
					
%>
		<tr>
			<td><%=rs2.getInt("ino") %></td>
			<td><%=rs2.getString("ititle") %></td>
			<td><%=rs2.getString("iplace") %></td>
			<td><%=rs2.getDate("itodate") %></td>
			<td><%=rs2.getDate("ifromdate") %></td>
		</tr>
<%					
			} 
			if(!rs2.next()) {
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
				rs2.close();
				pstmt2.close();
				conn2.close();
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