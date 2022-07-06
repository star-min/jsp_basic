<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
<jsp:include page="../common.jsp"></jsp:include>
<style>
<%@ include file="../inc/common.css" %>
.page_tit { border-bottom:1px solid #cdcdcd; margin-bottom:25px; }
#lst_tb2 { width:1280px; margin:20px; auto; }
#lst_tb2 li { float:left; width:300px; height:400px; margin-right:15px; margin-top:15px; 
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
<jsp:include page="../inc/header.jsp"></jsp:include>
<div id="content" class="content_wrap">
	<section class="con_wrap">
		<div>
			
		</div>	
		<h2 class="page_tit">상품 목록</h2>
		<form method="post" action="${path1 }/GetGoodsSearchCtrl" class="frm_fr">
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
		<ul class="pro_lst" id="lst_tb2">
			<c:forEach items="${goodsListDom }" var="goods" varStatus="status">
				<li>
					<div class="img_fr">
						<img src="${path1 }/images/${goods.gimage }" alt="${goods.gname }">
					</div>
					<div class="hidden item1">${status.count }</div>
					<h3 class="item_tit"><a href="${path1 }/goods/read.do?gno=${goods.gno }">${goods.gname }</a></h3>
					<p class="item_com"><fmt:formatNumber value="${goods.gprice }" groupingUsed="true"/></p>
					
					<p class="item_data">
						<span>색상 : ${goods.gcolor }</span><br>
						<span>크기(중량) : ${goods.gsize }</span>
					</p>
					<p><span>남은 수량 : ${goods.amount }</span>
				</li>
			</c:forEach>
			<c:if test="${goods==null }">
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
<jsp:include page="../inc/footer.jsp"></jsp:include>
</div>
</body>
</html>