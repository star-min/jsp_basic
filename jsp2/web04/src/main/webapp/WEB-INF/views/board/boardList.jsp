<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>글 목록</title>
<link rel="stylesheet" href="${path1 }/include/reset.css">
<link rel="stylesheet" href="${path1 }/include/common.css">
</head>
<body>
<header id="header" class="header" name="header" style="padding-bottom: 300px">
	<%@ include file="../include/header.jsp" %>
</header>
<article id="con" class="content">
<div class="table_lst_wrap">
<h2>글 목록</h2>
		<form method="post" action="${path1 }/GetBoardSearchCtrl" class="frm_fr">
			<table class="table" id="search_tb">
				<tr>
					<td>
						<select name="searchCondition" required>
							<option value="title">제목</option>
							<option value="content">내용</option>
						</select>
						<input type="text" name="searchKeyword" required />
						<input type="submit" value="검색" class="button is-info"/>
					</td>
				</tr>
			</table>
		</form>
	<table class="table_lst">
		<thead>
			<tr>
				<th>글 번호</th><th>제목</th><th>작성일</th><th>작성자</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${boardList }" var="list">
			<tr>
				<td>${lsit.seq }</td>
				<td><a href="${path1 }/board/read.do?seq=${list.seq }">${list.title }</a></td>
				<td><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd" /></td>
				<td>${list.nickname }</td>
				<td>${list.regdate }</td>
				<td>
					<c:if test="${list.nickname=='admin' }">관리자</c:if>
					<c:if test="${list.nickname!='admin' }">김성민</c:if>
				</td>
			</tr>
		</c:forEach>
		<c:if test="${sid=='admin' }">
			<tr>
				<td colspan="4">
					<a href="${path1 }/board/write_form.do" class="btn btn-writer" style="width:70px">글 등록</a>
				</td>
			</tr>
			</c:if>
		</tbody>
	</table>
</div>
</article>
<footer id="footer" class="footer" name="footer">
	<%@ include file="../include/footer.jsp" %>
</footer>
</body>
</html>