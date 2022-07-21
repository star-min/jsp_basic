<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	int bno = Integer.parseInt(request.getParameter("bno"));
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
#hd { width:100%; }
#hd .hd_wrap { }
.content { min-height:90vh; }
.logo { display:block; width:180px; padding-top:8px; }
.logo img { display:block; width:100%; }
#tnb a { padding-left:20px;	 }
.necessary::before { content:"*"; color:red; padding-right:10px;	 }
.opt::before { content:" "; padding-left:16px;	 }
</style>
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
<%@ include file="connectPool.conf" %>
<%
	sql = "select * from board1 where bno=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, bno);
	rs = pstmt.executeQuery();
	if(rs.next()){
%>		
		<form action="boardUpdatePro.jsp" name="boardform" method="post" onsubmit="return writeCheck(this)">
			<table class="table">
				<tbody>
					<tr>
						<td class="necessary">글 번호</td>
						<td><%=bno %><input type="hidden" name="bno" id="bno" value='<%=bno %>' required></td>
					 </tr>
					<tr>
						<td class="necessary">제목</td>
						<td><input type="text" name="title" id="title" maxlength="80" size="70" value='<%=rs.getString("title") %>' required></td>
					 </tr>
					<tr>
						<td class="necessary">글내용 : </td>
						<td>
							<textarea name="content" id="content" cols="80" rows="6"><%=rs.getString("content") %></textarea>
						</td>
					 </tr>
					<tr>
						<td class="necessary">작성자 : </td>
						<td><input type="text" name="author" id="author" value='<%=rs.getString("author") %>' required></td>
					 </tr>
					<tr>
						<td class="necessary">작성일 : </td>
						<td><%=rs.getDate("regdate") %></td>
					 </tr>
					 <tr>
					 	<td colspan="2">
					 		<input type="submit" value="수정" class="btn btn-primary"/> &nbsp; &nbsp; &nbsp;&nbsp;
					 		<input type="reset" value="취소" class="btn btn-primary"/> &nbsp; &nbsp; &nbsp;&nbsp;
					 		<a href="board1.jsp" class="btn btn-primary">목록</a>
					 	</td>
					 </tr>
				</tbody>
			</table>
			<script>
			function writeCheck(f) {
				var memo = f.bcontent.value;
				if(memo.length>=480){
					alert("글 내용은 480글자 이내이어야 합니다.");
					return false;
				}
			} 
			</script>
		</form>
<%
	}
%>
<%@ include file="connectClose.conf" %>
	</div>
</div>
<footer id="ft" class="panel-footer">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>