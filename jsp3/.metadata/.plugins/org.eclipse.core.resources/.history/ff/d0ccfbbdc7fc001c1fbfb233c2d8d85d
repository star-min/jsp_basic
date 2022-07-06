<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 목록</title>
<jsp:include page="../common.jsp"></jsp:include>
<style>
<%@ include file="../inc/common.css" %>
.page_tit { border-bottom:1px solid #cdcdcd; margin-bottom:25px; }
#lst_tb2 { width:1280px; margin:20px; auto; }
#lst_tb2 li { float:left; width:300px; height:600px; margin-right:15px; margin-top:15px; 
overflow:hidden; }
#lst_tb2 li img { display:block; width:100%; }
#lst_tb2 li.nothing { width:100%; clear:both; text-align:center; font-weight:bold; 
height:60px; line-height:60px; border-top:1px solid #cdcdcd; border-bottom:1px solid #cdcdcd;
margin-top:20px; margin-bottom:15px; }
#btn_group { clear:both; }
</style>
</head>
<body>
<div nid="root" class="root">
<header id="header" class="header" >
	<%@ include file="../inc/header.jsp" %>
</header>
<div id="content" class="content_wrap">
	<section class="con_wrap">
		<div>
			
		</div>	
		<h2 class="page_tit">장바구니 목록</h2>
		<ul class="pro_lst" id="lst_tb2">
		<p>${bno }</p>
			<c:forEach items="${basketList }" var="basket" varStatus="status">
				<li>
					<div class="img_fr">
						<a href="${path1 }/basket/read.do?bno=${basket.bno }">장바구니 상세정보</a>
					</div>
					<div class="hidden item1">${status.count }</div>
<%-- 					<h3 class="item_tit">${basket.gname }</h3> --%>
					<p><img alt="${path1 }/images/${basket.gimage}" src="${basket.gimage }"></p>
					<p><span>색상 : ${basket.gcolor }</span></p>
					<p><span>남은 수량 : ${basket.amount }</span></p>
					<a href="${path1 }/payment/paymentWriteForm.do?bno=${basket.bno }&bno=${basket.bno }&ptaste=${basket.gcolor}" class="button is-primary">구매하기</a>
					<a href="delete.do?bno=${basket.bno }" class="button is-primary">장바구니 삭제</a>
				</li>
			 </c:forEach> 
			<c:if test="${basket==null }">
				<li class="nothing">더 이상 상품이 존재하지 않습니다.</li>
			</c:if>
		</ul>
		<c:if test="${sid=='admin' }">
		<div id="btn_group">
			<a href="${path1 }/goods/write_form.do" class="button is-info">제품 등록</a>
		</div>
		</c:if>	
	</section>
</div>
<footer id="footer" class="footer">
	<%@ include file="../inc/footer.jsp" %>
</footer>
</div>
</body>
</html>