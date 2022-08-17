<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*" %>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	request.setCharacterEncoding("utf-8");
	String custno = request.getParameter("custno");
	String custname = request.getParameter("custname");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String joindate = request.getParameter("joindate");
	String grade = request.getParameter("grade");
	String city = request.getParameter("city");
	
	String sql = "insert into member_tbl_02 values (?,?,?,?,?,?,?)";
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
 
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, Integer.parseInt(custno));
		pstmt.setString(2, custname);
		pstmt.setString(3, phone);
		pstmt.setString(4, address);
		pstmt.setString(5, joindate);
		pstmt.setString(6, grade);
		pstmt.setString(7, city);

		int res = pstmt.executeUpdate();
		if(res>0) {
%>
	<script>
		alert("회원등록이 완료되었습니다.!");
		history.back();
	</script>
<%			
		} else {
%>
	<script>
		alert("회원등록이 실패되었습니다.!");
		history.back();
	</script>	
<%			
		}
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		if(pstmt!=null) pstmt.close();
		if(conn!=null) conn.close();
	}
%>