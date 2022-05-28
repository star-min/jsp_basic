<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
<jsp:include page="../common.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<%-- <c:if test="${empty name }"><c:redirect url="../member/login.jsp" /></c:if> --%>
<div id="content" class="content_wrap">
	<section class="con_wrap">
		<h2>제품등록</h2>
		<form action="${path1 }/AddGoodsCtrl" method="post">
			<table class="table" id="lst_tb">
				<tbody>
					<tr>
						<th>카테고리</th>
						<td>
							<c:if test="${sid=='admin' }">
							<select name="gcategory" required>
								<option value="sidedish">반찬</option>
								<option value="soup">국/찌개</option>
								<option value="noodle">면</option>
								<option value="rice">밥</option>
								<option value="porridge">죽</option>
								<option value="salad">샐러드</option>
								<option value="bakery">베이커리</option>
								<option value="brink">드링크</option>
							</select>
							<input type="hidden" name="bno" value="${goods.bno }">
							</c:if>
							<span>${goods.gcategory }</span>
						</td>
					</tr>
					<tr>
						<th>상품명</th>
						<td>
							<c:if test="${sid=='admin' }">
							<input type="text" name="gname" value="${goods.gname }" required>
							</c:if>
							<c:if test="${sid!='admin' }">
							<span>${goods.gcategory }</span>
							</c:if>
						</td>
					</tr>
					<tr>
						<th>상품가격</th>
						<td>
							<c:if test="${sid=='admin' }">
							<input type="number" name="gprice" min="1000" max="1000000" step="100" value="${goods.gprice }" required>
							</c:if>
							<c:if test="${sid!='admin' }">
							<span>${goods.gprice }</span>
							</c:if>
						</td>
					</tr>
					<tr>
						<th>상품 색상</th>
						<td>
							<c:if test="${sid=='admin' }">
							<input type="text" name="gcolor" value="${goods.gcolor }">
							</c:if>
							<c:if test="${sid!='admin' }">
							<span>${goods.gcolor }</span>
							</c:if>
						</td>
					</tr>
					<tr>
						<th>남은 수량</th>
						<td>
							<c:if test="${sid=='admin' }">
							<input type="number" name="amount" min="1" max="10000" value="${goods.amount }">
							</c:if>
							<c:if test="${sid!='admin' }">
							<span>${goods.amount }</span>
							</c:if>
						</td>
					</tr>
					<tr>
						<th>상품 규격</th>
						<td>
							<c:if test="${sid=='admin' }">
							<input type="text" name="gsize">
							</c:if>
							<c:if test="${sid!='admin' }">
							<span>${goods.gsize }</span>
							</c:if>
						</td>
					</tr>
					<tr>
						<th>상품 설명</th>
						<td>
							<c:if test="${sid=='admin' }">
							<textarea cols="10" rows="8" name="gcontent">${goods.gcontent }</textarea>
							</c:if>
							<c:if test="${sid!='admin' }">
							<p>${goods.gcontent }</p>
							</c:if>
						</td>
					</tr>
					<tr>
						<th>상품 이미지</th>
						<td>
							<c:if test="${sid=='admin' }">
							<input type="file" accept="*.jpeg,*.jpg, *.png, *.gif" name="gimage" value="${goods.gimage }">
							</c:if>
							<c:if test="${sid!='admin' }">
							<img src="${goods.gimage }" alt="${goods.gname }" />
							</c:if>
						</td>
					</tr>
					<tr>
						<th>인기도</th>
						<td>
							<c:if test="${sid=='admin' }">
							<input type="number" min="1" max="10" name="gimage" value="${goods.best }">
							</c:if>
							<c:if test="${sid!='admin' }">
							<c:forEach var="item" begin="0" end="${goods.best }" step="1" varStatus="status"> 
								<img src="./image/star1.png" alt="star" />
							</c:forEach>
							</c:if>
						</td>
					</tr>
					<c:if test="${sid=='admin' }">
					<tr>
						<th>등록일</th>
						<td>
							<span>${goods.regdate }</span>
						</td>
					</tr>
					</c:if>
					<tr>
						<td colspan="2">
							<c:if test="${sid=='admin' }">
							<input type="submit" value="제품 등록" class="button is-info"/>
							<input type="reset" value="취소" class="button is-info"/>
							</c:if>
							<c:if test="${sid!='admin' }">
							<a href="${path1 }/AddBasketCtrl?bno=${goods.bno }" class="button is-info">장바구니 담기</a>
							<a href="${path1 }/saleForm.jsp?bno=${goods.bno }" class="button is-info">바로 구매</a>
							</c:if>
							<a href="${path1 }/GetGoodsListCtrl" class="button is-info">목록</a>
						</td>
					</tr>
				</tbody>
			</table>
		</form>	
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