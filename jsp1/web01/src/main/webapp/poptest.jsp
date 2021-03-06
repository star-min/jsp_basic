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
<div class="wrap">
<header id="hd">
	<div class="hd_wrap">
		<%@ include file="nav.jsp" %>
	</div>
</header>
	<nav>
		<ul>
			<li>
			<p>아이디 검색</p>
				<input type="text" class="indata" id="pk" name="pk" placeholder="아이디 입력" required autofocus>
				<input type="button" id="popopen" value="중복확인"	><br>
			</li>
			<li>
				<p>사용하기</p>
				<input type="button" title="사용하기" onclick="join.jsp">
			</li>
			<li>
				<p>취소하기</p>
				<input type="button" title="사용하기" onclick="index.jsp">
			</li>
		</ul>
	</nav>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("pk");
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet result = null;
	try{
		Class.forName("org.mariadb.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234");
		pstmt = conn.prepareStatement("select * from member where id=?");
		pstmt.setString(1, id);
		result = pstmt.executeQuery();
		
		if(result.next()){
			String uid = result.getString("id");
			
		} else {
			response.sendRedirect("");
		}
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
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>