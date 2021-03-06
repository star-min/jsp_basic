<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
<jsp:include page="common2.css"></jsp:include>
<style>
<%@ include file="../inc/common.css" %>
</style>
</head>
<body>
<div nid="root" class="root">
<jsp:include page="../inc/header.jsp"></jsp:include>
<div id="content" class="content_wrap">
	<section class="con_wrap">
		<h2>상품 등록</h2>
		<form action="${path1 }/goods/insert.do" method="post" ><!-- enctype="multipart/form-data" -->
			<table class="table" id="lst_tb">
				<tbody>
					<tr>
						<th>카테고리</th>
						<td>
							<select name="gcategory" class="select is-primary" required>
								<option value="living">LivingTent</option>
								<option value="dom">DomTent</option>
								<option value="alpha">AlphaTent</option>
								<option value="shadow">ShadowTent</option>
								<option value="car">CarTent</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>상품명</th>
						<td>
							<input type="text" name="gname" class="input is-primary" required>
						</td>
					</tr>
					<tr>
						<th>상품가격</th>
						<td>
							<input type="number" name="gprice" min="1000" max="1000000" step="100" class="input is-primary" required>
						</td>
					</tr>
					<tr>
						<th>상품 색상</th>
						<td>
							<select name="gcolor" class="select is-primary" required>
								<option value="black">black</option>
								<option value="cream">cream</option>
								<option value="brown">brown</option>
								<option value="cooper">cooper</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>상품 수량</th>
						<td>
							<input type="number" name="amount" min="1" max="10000" class="input is-primary">
						</td>
					</tr>
					<tr>
						<th>상품 규격</th>
						<td>
							<select name="gsize" class="select is-primary" required>
								<option value="big">9~12 peoples</option>
								<option value="normal">5~8 peoples</option>
								<option value="small">2~4 peoples</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>상품 설명</th>
						<td>
							<textarea cols="10" rows="8" name="gcontent" class="textarea is-primary"></textarea>
						</td>
					</tr>
					<tr>
						<th>상품 이미지</th>
						<td>
							<input type="file" accept="*.jpeg,*.jpg, *.png, *.gif" name="gimage" class="input is-primary">
						</td>
					</tr>
					<tr>
						<th>인기도</th>
						<td>
							<input type="number" min="1" max="10" name="best" class="input is-primary">
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="제품 등록" class="button is-info"/>
							<input type="reset" value="취소" class="button is-info"/>
							<a href="${path1 }/goods/list.do" class="button is-info">목록</a>
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
<jsp:include page="../inc/footer.jsp"></jsp:include>
</div>
</body>
</html>