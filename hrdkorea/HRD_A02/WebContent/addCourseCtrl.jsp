<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*" %>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	int credit =Integer.parseInt(request.getParameter("credit"));
	String lecturer = request.getParameter("lecturer");
	String week = request.getParameter("week");
	int start_hour = Integer.parseInt(request.getParameter("start_hour"));
	int end_end = Integer.parseInt(request.getParameter("end_end"));
	
	String sql="insert into course_tbl values (?,?,?,?,?,?,?)";
	
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setInt(3, credit);
		pstmt.setString(4, lecturer);
		pstmt.setInt(5, Integer.parseInt(week));
		pstmt.setInt(6, start_hour);
		pstmt.setInt(7, end_end);
		
		int res = pstmt.executeUpdate();
		if(res>0){
			%>
			<script>
				alert("교과목 추가 완료");
				history.back();
			</script>
		<%			
				} else {
		%>
			<script>
				alert("교과목 추가 실패");
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