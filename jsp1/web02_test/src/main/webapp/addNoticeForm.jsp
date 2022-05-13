<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 쓰기</title>
</head>
<body>
<header id="hd">
	<%@ include file="hd.jsp" %>
</header>
<div id="content">
<form action="AddNoticeCtrl" method="post">
	<table class="tb1">
		<tbody>
			<tr>
				<th>글 제목</th>
				<td><input type="text" name="ntitle" required></td>
			</tr>
			<tr>
				<th>글 내용</th>
				<td><textarea cols="100" rows="5" name="nconetnt"></textarea></td>
			</tr>
			<tr>
				<th>첨부 이미지</th>
				<td><input type="file" name="npic"></td>
			</tr>
			<tr>
				<th>첨부 자료</th>
				<td><input type="file" name="ndata"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="nname" value="admin"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="글 등록"> &nbsp; &nbsp; &nbsp; &nbsp;
					<input type="reset" value="취소">
				</td>
			</tr>
		</tbody>
	</table>
</form>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>