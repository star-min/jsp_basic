<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글목록</title>
<jsp:include page="../common.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<%-- <c:if test="${empty name }"><c:redirect url="../member/login.jsp" /></c:if> --%>
<div id="content" class="content_wrap">
	<section class="con_wrap">
		<div>
			<%-- <h3>${name }님 &nbsp; &nbsp; <a href="../LogoutCtrl">로그아웃</a></h3> --%>
		</div>	
		<h2>장바구니 목록</h2>
		<table class="table" id="lst_tb">
			<thead>
				<tr>
					<th class="item1">제품 번호</th>
					<th class="item2">맛</th>
					<th class="item3">개수</th>
					<th class="item4">등록일</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${list }" var="vo" varStatus="status">
				<tr>
					<td>${status.count }</td>
					<td><a href="${path1 }/GetBoardCtrl?num=${vo.seq }">${vo.title }</a></td>
					<td>${vo.nickname }</td>
					<td>${vo.regdate }</td>
				</tr>
			</c:forEach>
			<c:if test="${sid=='admin' }">
				<tr>
					<td colspan="4"><a href="${path1 }/board/addBoardForm.jsp" class="button is-info">글 등록</a></td>
				</tr>
			</c:if>	
			</tbody>
		</table>
	</section>
	<script>
	$(document).ready(function(){
		$("#lst_tb_filter").css("display","none");
	});
	</script>	
</div>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>