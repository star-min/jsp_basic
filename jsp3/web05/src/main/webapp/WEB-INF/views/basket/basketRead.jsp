<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />  
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../common.jsp"></jsp:include>
<style>
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
<h2 class="page_tit">장바구니 상세보기</h2>
		<ul class="pro_lst" id="lst_tb2">
				<li>
					<h3 class="item_tit">제품명 : ${basket.gname }</h3>
					<p class="item_data">
						<span class="img_fr"><img src="${path1 }/images/${basket.gimage}" alt=" ${basket.gname }" /></span>
						<span>가격 : ${basket.gprice }</span><br>
						<span>색상 : ${basket.gcolor }</span><br>
						<span>크기(중량) : ${basket.gsize }</span>
					</p>
					<p><span>남은 수량 : ${basket.amount}</span></p>
					<br><br><a href="${path1 }/payment/paymentWriteForm.do?gno=${basket.gno }&bno=${basket.bno }&gcolor=${basket.gcolor}&gsize=${basket.gsize }" class="button is-primary">구매하기</a>
					<a href="${path1 }/basket/delete?bno=${basket.bno }" class="button is-primary">장바구니 삭제</a><br><br>
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