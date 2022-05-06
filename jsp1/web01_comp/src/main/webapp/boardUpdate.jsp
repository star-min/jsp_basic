<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% 
	request.setCharacterEncoding("UTF-8");
	int bno = Integer.parseInt(request.getParameter("bno"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글작성</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="datatables.min.css">
<script src="datatables.min.js"></script>
</head>
<body>
<div class="container-full">
<header id="hd" class="panel-heading navbar navbar-default">
	<div class="hd_wrap container">
		<%@ include file="nav.jsp" %>
	</div>
</header>
<div class="content" class="panel-body">
	<div class="container-fluid">
	<h2>게시판 글 수정</h2>
	<%@ include file = "connectPool.conf" %>
<% 	
	sql = "select * from board where bno=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, bno);
	rs = pstmt.executeQuery();
	if(rs.next()){
%>
	<form id="boardform" name="boardform" action="boardUpdatePro.jsp" method="post" onsubmit="return writeCheck(this)">
		<table class="table">
			<tbody>
				<tr>
					<th class="necessary">번호</th>
					<td>
						<%=bno%><input type="hidden" name="bno" id="bno" value='<%=bno%>' required><br>
					</td>
				</tr>
				<tr>
					<th class="necessary">제목 </th>
					<td>
						<input type="text" id="title" name="title" maxlength="80" size="70" value='<%= rs.getString(title) %>' required autofocus >
					</td>
				</tr>
				<tr>
					<th class="necessary">작성자</th>
					<td>
						<input type="text" class="author"id="author" name="author" value='<%= rs.getString(author) %>' required><br>
					</td>
				</tr>
				<tr>
					<td class="necessary">작성일 : </td>
					<td><%=rs.getDate("regdate") %></td>
				</tr>
				<tr>
					<th class="necessary">내용</th>
					<td>
						<textarea name="content" id="content" rows="6" cols="80"><% rs.getString("content")%></textarea><br>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="수정완료" id="submit" class="btn btn-primary">
						<input type="reset" value="취소" id="reset" class="btn btn-primary">
						<a href="board1.jsp" class="btn btn-primary">목록</a>
					</td>
				</tr>	
			</tbody>		
		</table>
		<script>
		function writeCheck(f) {
			var memo = f.bcontent.value;
			if(memo.length>=480){
				alert("글내용은 480글자 이내여야함");
				return false;
			}
		}
		</script>
	</form>	
	</div>
</div>

<%@ include file = "connectClose.conf" %>

<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>