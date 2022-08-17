<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*" %>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
		pstmt = conn.prepareStatement("select * from course_tbl");
		rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<header>
	<h2>수강신청 도우미 사이트</h2>
</header>
<content>
	<h3>총 개의 교과목이 있습니다.</h3>
	<table>
		<thead>
			<tr>
				<th>과목코드</th>
				<th>과목명</th>
				<th>학점</th>
				<th>담당강사</th>
				<th>요일</th>
				<th>시작시간</th>
				<th>종료시간</th>
				<th>관리</th>
			</tr>
		</thead>
		<tbody>
		<%
			while(rs.next()){
				String week = "월";
				if(rs.getString(5).equals("2")) week = "화";
				if(rs.getString(5).equals("3")) week = "수";
				if(rs.getString(5).equals("4")) week = "목";
				if(rs.getString(5).equals("5")) week = "금";
				if(rs.getString(5).equals("6")) week = "토";
				
				String name = "김교수";
				if(rs.getString(4).equals("2")) name = "이교수";
				if(rs.getString(4).equals("3")) name = "박교수";
				if(rs.getString(4).equals("4")) name = "우교수";
				if(rs.getString(4).equals("5")) name = "최교수";
				if(rs.getString(4).equals("6")) name = "강교수";
				if(rs.getString(4).equals("7")) name = "황교수";
		%>
			<tr>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getInt(3) %></td>
				<td><%=name %></td>
				<td><%=week %></td>
				<td><%=rs.getInt(6) %></td>
				<td><%=rs.getInt(7) %></td>
				<td>
				<a href="editCourse.jsp?id=<%=rs.getString(1) %>">수정</a>/
				<a href="">삭제</a>
				</td>
			</tr>
		<%
			}
		%>
		</tbody>
	</table>
	<input type="button" onclick="location.href='addCourse.jsp'" value="작성" style="float: right;">
</content>
<footer>
	<p>Copyright (C) 2018 정보처리산업기사 All Right Reserved</p>
</footer>
<%
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if(rs!=null){ rs.close();}
		if(pstmt!=null) {pstmt.close();}
		if(conn!=null) {conn.close();}
	}
%>
</body>
</html>