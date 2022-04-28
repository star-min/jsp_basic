<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page insert="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header id="hd">
	<div class="hd_wrap">
		<%@ include file="nav.jsp" %>
	</div>
</header>
<%@ include file="connectPool.conf" %>
<%
	sql = "select * from board";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	while(rs.next()){
%>
	<tr>
		<td><%=rs.getInt("bno") %></td>
		<td><%=rs.getString("title") %></td>
		<td><%=rs.getString("author") %></td>
		<td><%=rs.getString("regdate") %></td>
	</tr>
<%
	}
%>
<%@ include file="connectClose.conf" %>
</body>
</html>