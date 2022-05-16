<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	String cid = request.getParameter("uid");

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
		sql = "select * from customer where cid=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, cid);
		rs = pstmt.executeQuery();
		if(rs.next()){
			out.println("<p>해당 아이디는 사용하실 수 없는 아이디 입니다.");
		} else {
			out.println("<p>사용 가능한 아이디입니다.</p>");
			out.println("<p><a href='javascript:apply(\""+cid+"\")'>"+cid+"[적용]</a></p>");
			out.println("<p>적용을 눌러야만 입력하신 아이디를 사용하실 수 있습니다.</p>");
		}
%>
	<script>
	function apply(id){
		opener.document.joinform.cid.value = id;
		opener.document.joinform.cid.setAttribute("readonly", "readonly");
		opener.document.joinform.idck.value="ok";
		window.close();
	}
	</script>
<%		
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		try {
			rs.close();
			pstmt.close();
			conn.close();
		} catch(Exception e){
			e.printStackTrace();			
		}
		
	}
%>
</body>
</html>