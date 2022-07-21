<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="../environment.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 보기 및 수정</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
#hd { width:100%; }
#hd .hd_wrap { }
.content { min-height:90vh; }
.logo { display:block; width:180px; padding-top:8px; }
.logo img { display:block; width:100%; }
#tnb a { padding-left:20px;	 }
</style>
</head>
<body>
<div class="container-full">
<header id="hd" class="panel-heading navbar navbar-default">
	<div class="hd_wrap container">
		<%@ include file="header.jsp" %>
	</div>
</header>
<div class="content" class="panel-body">
	<div class="container-fluid">
		<h2>회원 정보 보기</h2>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		Class.forName("org.mariadb.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company", "root", "1234");
		String sql = "select * from member where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, sid);
		rs = pstmt.executeQuery();
		if(rs.next()){
%>
			<form action="memEdit.jsp" method="post">
				<table class="table">
					<tbody>
						<tr>
							<td>아이디 : </td>
							<td><input type="text" name="uid" value='<%=rs.getString("id") %>' readonly></td>
						 </tr>
						<tr>
							<td>비밀번호 : </td>
							<td><input type="text" name="upw" value='<%=rs.getString("pw") %>'></td>
						 </tr>
						<tr>
							<td>이름 : </td>
							<td><input type="text" name="name" value='<%=rs.getString("name") %>' readonly></td>
						 </tr>
						<tr>
							<td>연락처 : </td>
							<td><input type="tel" name="phone" value='<%=rs.getString("phone") %>'></td>
						 </tr>
						<tr>
							<td>주소 : </td>
							<td><input type="text" name="address" value='<%=rs.getString("address") %>'></td>
						 </tr>
						 <tr>
						 	<td colspan="2">
						 		<input type="submit" value="정보변경" class="btn btn-primary"/> &nbsp; &nbsp; &nbsp;&nbsp;
				<%
					if(!sid.equals("admin")){
				%>						 		
						 		<a href="secession.jsp" class="btn btn-primary">탈퇴</a>&nbsp; &nbsp; &nbsp;&nbsp;
				<%
					}
				%>						 		
						 		<input type="reset" value="취소" class="btn btn-primary"/>
						 	</td>
						 </tr>
					</tbody>
				</table>
			</form>
<%			
		}
	} catch(Exception e){
		e.printStackTrace();
	} finally{
		try{
			rs.close();
			pstmt.close();
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>
	</div>
	<div id="message">
<%
	if(message!="") {
		out.println("<p>"+message+"</p>");
	}
%>	
	</div>
</div>
<footer id="ft" class="panel-footer">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>