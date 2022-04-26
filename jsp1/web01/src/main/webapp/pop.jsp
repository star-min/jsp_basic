<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중복확인</title>
</head>
<body>
<h2>중복확인</h2>
<%
	request.setCharacterEncoding("UTF-8");
	String uid = request.getParameter("uid");
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet result = null;
	try{
		Class.forName("org.mariadb.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234");
		pstmt = conn.prepareStatement("select * from member where id=?");
		pstmt.setString(1, uid);
		result = pstmt.executeQuery();
	} catch (Exception e) {
		e.printStackTrace();
	}finally {
		try {
			result.close();
			pstmt.close();
			conn.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
%>
</body>
</html>