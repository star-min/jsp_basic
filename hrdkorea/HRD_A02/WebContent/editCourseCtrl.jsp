<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*" %>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String credit =request.getParameter("credit");
	String lecturer = request.getParameter("lecturer");
	String week = request.getParameter("week");
	String start_hour = request.getParameter("start_hour");
	String end_end = request.getParameter("end_end");
	
	String sql="update course_tbl set name=?, credit=?, lecturer=?, week=?, start_hour=?, end_end=? where id=?";
	
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, name);
		pstmt.setInt(2, Integer.parseInt(credit));
		pstmt.setString(3, lecturer);
		pstmt.setInt(4, Integer.parseInt(week));
		pstmt.setInt(5, Integer.parseInt(start_hour));
		pstmt.setInt(6, Integer.parseInt(end_end));
		pstmt.setString(7, id);
		
		int res = pstmt.executeUpdate();
		if(res>0){
			%>
			<script>
				alert("교과목 수정 완료");
				history.back();
			</script>
		<%			
				} else {
		%>
			<script>
				alert("교과목 수정 실패");
				history.back();
			</script>	
		<%			
				}
	} catch(Exception e){
		e.printStackTrace();
	} finally{
		if(pstmt!=null) {pstmt.close();}
		if(conn!=null) {conn.close();}
	}
%>