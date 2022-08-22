<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*" %>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	request.setCharacterEncoding("UTF-8");
/*  	String name = request.getParameter("name");  */
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
		pstmt = conn.prepareStatement("select * from lecturer_tbl");
/*  		pstmt.setString(1, name);  */
		rs = pstmt.executeQuery();
%>
<!DOCTYPE html >
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<header>
	<h3>수강신청 도우미 사이트</h3>
</header>
<content>
	<h2>교과목 추가</h2>
	<form action="addCourseCtrl.jsp" method="post">
		<table>
			<tbody>
				<tr>
					<th>교과목 코드</th>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<th>과목명</th>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<th>담당강사</th>
					<select>
					<%
					while(rs.next()){
					%>
						<option value="<%= rs.getString(1) %>"> <%=rs.getString(2) %></option>
					<%
					}
					%>
					</select>
				</tr>
				<tr>
					<th>학점</th>
					<td><input type="number" name="credit"></td>
				</tr>
				<tr>
					<th>요일</th>
					<td>
						<input type="radio" name="week" value="1"><label>월</label>
						<input type="radio" name="week" value="2"><label>화</label>
						<input type="radio" name="week" value="3"><label>수</label>
						<input type="radio" name="week" value="4"><label>목</label>
						<input type="radio" name="week" value="5"><label>금</label>
						<input type="radio" name="week" value="6"><label>토</label>
					</td>
				</tr>
				<tr>
					<th>시작</th>
					<td><input type="text" name="start_hour"></td>
				</tr>
				<tr>
					<th>종료</th>
					<td><input type="text" name="end_end"></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="목록" onclick="location.href='index.jsp'">
						<input type="submit" value="완료" >
					</td>
				</tr>
			</tbody>
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