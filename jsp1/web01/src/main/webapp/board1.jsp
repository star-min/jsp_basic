<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="datatables.min.css">
<script src="datatables.min.js"></script>
<script>
$(document).ready( function () {
    $('#myTable').DataTable();
});
</script>
</head>
<body>
<div class="container-full">
<header id="hd" class="panel-heading navbar navbar-default">
	<div class="hd_wrap container">
		<%@ include file="header.jsp" %>
	</div>
</header>
</div>
<div class="content" class="panel-body">
	<div class="container-fluid">
		<h2>게시판글보기</h2>
		<table class="table" id="myTable">
			<thead>
				<tr>
					<th>글번호</th>
					<th>제목</th>
					<th>작성자</th>
				</tr>
			</thead>
			<tbody>	
<%@ include file="connectPool.conf" %>
<%
	sql = "select * from board1";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	while(rs.next()){
%>
	<tr>
		<td><%=rs.getInt("bno") %></td>
		<td><a href='boardDetail.jsp?bno=<%=rs.getInt("bno") %>'><%=rs.getString("title") %></a></td>
		<td><%=rs.getString("author") %></td>
	</tr>
<%
	}
%>
<%@ include file="connectClose.conf" %>
	<tr>
		<td>
			<a href="boardInsert.jsp"><input type="button" value="글작성" class="btn btn-primary"></a>
		</td>
	</tr>
 			</tbody>
		</table>
	</div>
</div>
<footer id="ft" class="panel-footer">
	<%@ include file="ft.jsp" %>
</footer>
</body>
</html>