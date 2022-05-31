<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
<jsp:include page="../common.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<%-- <c:if test="${empty name }"><c:redirect url="../member/login.jsp" /></c:if> --%>
<div id="content" class="content_wrap">
	<section class="con_wrap">
		<form method="post" action="${path1 }/GetPowderSearchCtrl" class="frm_fr">
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
		<h2>보충제 목록</h2>
		<table class="table" id="lst_tb">
			<thead>
				<tr>
					<th class="item1">번호</th>
					<th class="item2">카테고리</th>
					<th class="item3">보충제 명</th>
					<th class="item4">가격</th>
					<th class="item7">내용</th>
					<th class="item8">제품사진</th>
					<th class="item9">제품등록일</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${list }" var="vo" varStatus="status">
				<tr>
					<td>${vo.pno }</td>
					<td>${vo.pgory }</td>
					<td><a href="${path1 }/GetPowderCtrl?num=${vo.pno }">${vo.pname }</a></td>
					<td>${vo.pprice }원</td>
					<td>${vo.pcomment }</td>
					<td>${vo.pimage }</td>
					<td>${vo.pinday }</td>
				</tr>
			</c:forEach>
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