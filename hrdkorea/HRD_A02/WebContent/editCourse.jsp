<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*" %>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	request.setCharacterEncoding("UTF-8");
  	String id = request.getParameter("id");
  	String[] name = {"김교수","이교수","박교수","우교수","최교수","강교수","황교수"};
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
		pstmt = conn.prepareStatement("select a.id, a.name, a.credit, a.lecturer, a.week, a.start_hour, a.end_end, b.name as man from course_tbl a inner join lecturer_tbl b on a.lecturer = b.idx where a.id=?");
  		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교과목 수정</title>
</head>
<body>
<header>
	<h3>수강신청 도우미 사이트</h3>
</header>
<content>
	<h2>교과목 수정</h2>
	<form action="editCourseCtrl.jsp" method="post">
		<table>
		<%while(rs.next()){ 
				%>
			<tbody>
				<tr>
					<th>교과목 코드</th>
					<td><input type="text" name="id" value="<%=rs.getString(1) %>"></td>
				</tr>
				<tr>
					<th>과목명</th>
					<td><input type="text" name="name" value="<%=rs.getString(2) %>"></td>
				</tr>
				<tr>
					<th>담당강사</th>
					<select>
					<%for(int i=0; i<7;i++){ %>
						<option value="<%= rs.getString(4) %>"> <%=name[i] %></option>
						<%} %>
					</select>
				</tr>
				<tr>
					<th>학점</th>
					<td><input type="text" name="credit" value="<%=rs.getString(3) %>"></td>
				</tr>
				<tr>
					<th>요일</th>
					<td>
						<input type="radio" name="week" value="1" checked="checked"><label>월</label>
						<input type="radio" name="week" value="2"><label>화</label>
						<input type="radio" name="week" value="3"><label>수</label>
						<input type="radio" name="week" value="4"><label>목</label>
						<input type="radio" name="week" value="5"><label>금</label>
						<input type="radio" name="week" value="6"><label>토</label>
					</td>
				</tr>
				<tr>
					<th>시작</th>
					<td><input type="text" name="start_hour" value="<%=rs.getString(6) %>"></td>
				</tr>
				<tr>
					<th>종료</th>
					<td><input type="text" name="end_end" value="<%=rs.getString(7) %>"></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="목록" onclick="location.href='index.jsp'">
						<input type="reset" value="취소">
						<input type="submit" value="완료" >
					</td>
				</tr>
			</tbody>
			<%} %>
		</table>
	</form>
</content>
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