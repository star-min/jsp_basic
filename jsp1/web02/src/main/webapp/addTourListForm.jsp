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
<form action="AddAddTourListCtrl" method="post">
	<table class="tb1">
		<tbody>
			<tr>
				<th>장소 아이디</th>
				<td><input type="text" name="pid" required></td>
			</tr>
			<tr>
				<th>장소 이름</th>
				<td><input type="text" name="pname" required></td>
			</tr>
			<tr>
				<th>장소 구분</th>
				<td><input type="text" name="ptype" required></td>
			</tr>
			<tr>
				<th>장소 설명</th>
				<td><textarea cols="100" rows="5" name="pcoment"></textarea></td>
			</tr>
			<tr>
				<th>장소 이미지</th>
				<td><input type="file" name="pimg1"></td>
			</tr>
			<tr>
				<th>장소 이미지2</th>
				<td><input type="file" name="pimg2"></td>
			</tr>
			<tr>
				<th>장소 썸네일</th>
				<td><input type="file" name="pimg3"></td>
			</tr>
			<tr>
				<th>장소 이미지3</th>
				<td><input type="file" name="pimg4"></td>
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