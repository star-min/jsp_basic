<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 폼</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String uid = request.getParameter("uid");
	String upw = request.getParameter("upw");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");	
	String cnt = "";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet result = null;
	try {
	Class.forName("org.mariadb.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234");
	pstmt = conn.prepareStatement("insert into member values(?,?,?,?,?)");
	pstmt.setString(0, uid);
	pstmt.setString(1, upw);
	pstmt.setString(2, phone);
	pstmt.setString(3, address);
	pstmt.setString(4, uid);
	response.setCharacterEncoding("UTF-8");
	pstmt.executeUpdate();
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
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