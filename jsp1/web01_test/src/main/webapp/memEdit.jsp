<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	String uid = request.getParameter("uid");
	String upw = request.getParameter("upw");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String msg = "";
	
	/* DB 연결자, 상태정보자, 결과저장 객체 선언 */
	Connection conn = null;
	PreparedStatement pstmt = null;
	int cnt = 0;
	//ResultSet rs = null;
	try { //드라이버 로딩, DB 연결, 상태정보 On
		Class.forName("org.mariadb.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mariadb://localhost:3308/company", "root", "1234");
		String sql="update member set pw=?, phone=?, address=? where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, upw);
		pstmt.setString(2, phone);
		pstmt.setString(3, address);
		pstmt.setString(4, uid);
		cnt = pstmt.executeUpdate();
		response.setCharacterEncoding("UTF-8");
		if(cnt>=1){ //성공적으로 변경이 이루어 졌을 경우
			msg = "sucess~!";
			response.sendRedirect("index.jsp?msg="+msg);
			/* response.sendRedirect(encodeURI("index.jsp?msg="+msg)); */
		} else {  //변경이 실패되었을 경우
			msg = "failure~!";
			response.sendRedirect("mypage.jsp?msg="+msg);		
		}
	} catch(Exception e) {
		//드라이버 로딩 실패, DB 연결 오류
		e.printStackTrace();
	} finally {
		try {
			pstmt.close();
			conn.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
%>