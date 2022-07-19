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
<title>질문 및 답변</title>
<style>
</style>
<link rel="stylesheet" href="qna.css">
</head>
<body>
<header id="header" class="header" >
	<%@ include file="../inc/header.jsp" %>
</header>
<article id="con" class="content">
<h2 class="page_tit">질문 및 답변</h2>
<div class="table_lst_wrap">
	<table class="table_lst" style=" margin-bottom: 300px">
		<thead>
			<tr>
				<th>번호</th><th>제목</th><th>작성일</th><th>작성자</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${qnaList }" var="qna">
			<tr>
				<td>
					<c:if test="${qna.qstep==0 }">
					${qna.qno }
					</c:if>
				</td>
				<td>
					<div class="indent" style="padding-left:${qna.qindent }px">
						<c:if test="${qna.qstep==0 }">
						<a href="${path1 }/qna/read.do?qno=${qna.qno }">${qna.qtitle }</a>
						</c:if>
						<c:if test="${qna.qstep>0 }">
						<a href="${path1 }/qna/replyRead.do?qno=${qna.qno }">${qna.qtitle }</a>
						</c:if>	
					</div>
				</td>
				<td>
					<fmt:parseDate var="qdate" value="${qna.qwritedate }" pattern="yyyy-MM-dd"/>
					<fmt:formatDate value="${qdate}" pattern="yyyy-MM-dd"/>
				</td>
				<td>
					${qna.qwriter }
				</td>
			</tr>
		</c:forEach>
		<c:if test="${!empty sid }">
			<tr>
				<td colspan="4">
					<a href="${path1 }/qna/writeForm.do" class="btn btn-writer" style="width:70px">질문하기</a>
				</td>
			</tr>
			</c:if>
		</tbody>
	</table>
</div>
</article>
<footer id="footer" class="footer">
	<%@ include file="../inc/footer.jsp" %>
</footer>

</body>
</html>