<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>글 목록</title>
</head>
<body>
<h2>글 목록</h2>
<table class="table">
	<thead>
		<tr>
			<th>글 번호</th><th>제목</th><th>작성일</th><th>작성자</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${list }" var="${board }">
		<tr>
			<td>${board.seq }</td>
			<td><a href="">${board.title }</a></td>
			<td>${board.regdate }</td>
			<td>${board.nickname }</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</body>
</html>