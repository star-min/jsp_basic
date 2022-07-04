<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 정보 보기</title>
<jsp:include page="../common.jsp"></jsp:include>
<style>
<%@ include file="../inc/common.css" %>
#lst_tb th { min-width:140px; }
</style>
</head>
<body>
<div nid="root" class="root">
<jsp:include page="../inc/header.jsp"></jsp:include>
<div id="content" class="content_wrap">
	<section class="con_wrap">
		<c:if test="${sid=='admin' }">
		<h2 class="page_tit">상품 정보 수정</h2>
		</c:if>
		<c:if test="${sid!='admin' }">
		<h2 class="page_tit">상품 정보 보기</h2>
		</c:if>
<h2 class="page_tit">장바구니 상세보기</h2>
		<ul class="pro_lst" id="lst_tb2">
				<li>
					<h3 class="item_tit">제품명 : ${gname }</h3>
					<p class="item_data">
						<span class="img_fr"><img src="${path1 }/images/${gimage}" alt=" ${gname }" /></span>
						<span>가격 : ${gprice }</span><br>
						<span>색상 : ${gcolor }</span><br>
						<span>크기(중량) : ${gsize }</span>
					</p>
					<p><span>남은 수량 : ${amount}</span></p>
					<br><br><a href="${path1 }/SailFormCtrl?gno=${gno }&bno=${bno }&gcolor=${gcolor}&gsize=${gsize }" class="button is-primary">구매하기</a>
					<a href="${path1 }/basket/delete?bno=${bno }" class="button is-primary">장바구니 삭제</a><br><br>
				</li>
			<c:if test="${vo==null }">
				<li class="nothing">더 이상 상품이 존재하지 않습니다.</li>
			</c:if>
		</ul>	
	</section>
	<script>
	$(document).ready(function(){
		$("#lst_tb_filter").css("display","none");
	});
	</script>	
</div>
<jsp:include page="../inc/footer.jsp"></jsp:include>
</div>
</body>
</html>