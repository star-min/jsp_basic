<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
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
		<h2>게시판 글쓰기</h2>
		<form action="boardInsertPro.jsp" name="boardform" method="post" onsubmit="return writeCheck(this)">
			<table class="table">
				<tbody>
					<tr>
						<td class="necessary">제목</td>
						<td><input type="text" name="btitle" id="btitle" maxlength="80" size="70" required autofocus></td>
					 </tr>
					<tr>
						<td class="necessary">글내용 : </td>
						<td>
							<textarea name="bcontent" id="bcontent" cols="80" rows="6"></textarea>
						</td>
					 </tr>
					<tr>
						<td class="necessary">작성자 : </td>
						<td><input type="text" name="author" id="author" value="관리자" required></td>
					 </tr>
					 <tr>
					 	<td colspan="2">
					 		<input type="submit" value="글등록" class="btn btn-primary"/> &nbsp; &nbsp; &nbsp;&nbsp;
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
	</div>
</div>
<footer id="ft" class="panel-footer">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>