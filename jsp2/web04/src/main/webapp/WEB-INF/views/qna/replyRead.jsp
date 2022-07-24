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
<title>답변 상세보기</title>
<link rel="stylesheet" href="${path1 }/include/reset.css">
<link rel="stylesheet" href="${path1 }/include/common.css">
</head>
<body>
<header id="header" class="header" name="header" >
	<%@ include file="../include/header.jsp" %>
</header>
<article id="con" class="content">
<div>
	<img alt="${path1 }/images/bg_sub_top1.jpg" src="${path1 }/images/lolomain_img.jpg" style=" width: 100%">
</div>
<h2 class="page_tit">답변 상세보기</h2>
	<form action="${path1 }/qna/update.do" method="post">
	<div class="table_form_wrap">
		<table class="table_form">
			<tbody>
				<tr>
					<th><label for="title">번호</label></th>
					<td>
						<c:if test="${(sid==qna.qwriter) || sid=='admin'}">	
						<input type="text" name="qno" id="qno" size="100" class="single100" value="${qna.qno }" readonly>
						</c:if>
						<c:if test="${(sid!=qna.qwriter) && sid!='admin'}">
							<span>${qna.qno }</span>						
						</c:if>
					</td>
				</tr>
				<tr>
					<th><label for="qtitle">제목</label></th>
					<td>
						<c:if test="${(sid==qna.qwriter) || sid=='admin'}">	
						<input type="text" name="qtitle" id="qtitle" size="100" class="single100" value="${qna.qtitle }" required>
						</c:if>
						<c:if test="${(sid!=qna.qwriter) && sid!='admin'}">
							<span>${qna.qtitle }</span>						
						</c:if>
					</td>
				</tr>
				<tr>
					<th><label for="qcontent">내용</label></th>
					<td>
						<c:if test="${(sid==qna.qwriter) || sid=='admin'}">	
						<textarea name="qcontent" id="qcontent" cols="100" rows="8" class="multi100" required>${qna.qcontent }</textarea>
						</c:if>
						<c:if test="${(sid!=qna.qwriter) && sid!='admin'}">
							<p>${qna.qcontent }</p>						
						</c:if>
					</td>
				</tr>
				<tr>
					<th><label for="qwriter">작성자</label></th>
					<td>
						<input type="text" name="qwriter" id="qwriter" size="40" class="single40" value="${qna.qwriter }" readonly>
						<input type="hidden" name="qroot" value="${qna.qroot }" />
						<input type="hidden" name="qstep" value="1" />
						<input type="hidden" name="qindent" value="14" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<c:if test="${(sid==qna.qwriter) || sid=='admin'}">					
						<input type="submit" class="btn btn-writer" value="답변 수정">
						<input type="reset" class="btn btn-primary" value="취소">
						<a href="${path1 }/qna/replyDelete.do?qno=${qna.qno }" class="btn btn-primary">답변 삭제</a>
						</c:if>
						<a href="${path1 }/qna/list.do" class="btn btn-primary">글 목록</a>
					</td>
				</tr>	
			</tbody>
		</table>
	</div>
	</form>
</article>
<footer id="footer" class="footer" name="footer">
	<%@ include file="../include/footer.jsp" %>
</footer>
</body>
</html>