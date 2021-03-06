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
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet result = null;
	try{
		Class.forName("org.mariadb.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company","root","1234");
		String sql = "select * from member where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		result = pstmt.executeQuery();
		if(result.next()){
			out.println("<p>해당 아이디는 사용하실 수 없는 아이디 입니다.</p>");
		} else {
			out.println("<p>사용 가능한 아이디 입니다.</p>");
			out.println("<a href='javascript:apply(\""+id+"\")'>"+id+"[적용]</a>");
			out.println("<p>적용을 눌러야만 입력하신 아이디를 사용할 수 있습니다.</p>");
%>
			<script>
			function apply(fid){
				opener.document.joinform.uid.value = fid;
				opener.document.joinform.idck.value = "yes";
				window.close();
			}
			</script>
<%
		}
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		try {
			result.close();
			pstmt.close();
			conn.close();
		} catch (Exception e){
			e.printStackTrace();
		}
	}
%>
</body>
</html>