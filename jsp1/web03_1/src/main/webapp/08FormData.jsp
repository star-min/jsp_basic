<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션 태그를 활용한 폼 데이터 전송</title>
</head>
<body>
<h2>액션 태그를 활용하여 데이터 전송</h2>
<form action="08GetProperty.jsp">
	<table class="table">
		<tbody>
			<tr>
				<th>소속국가</th>
				<td><input type="text" name="country"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>나이</th>
				<td><input type="number" name="age" min="1" max="200" step="1"></td>
			</tr>
			<tr>
				<th>취미</th>
				<td><input type="text" name="hobby"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="등록" class="btn btn-default"> &nbsp; &nbsp;
					<input type="reset" value="취소" class="btn btn-default">
				</td>
			</tr>
		</tbody>
	</table>
</form>
</body>
</html>