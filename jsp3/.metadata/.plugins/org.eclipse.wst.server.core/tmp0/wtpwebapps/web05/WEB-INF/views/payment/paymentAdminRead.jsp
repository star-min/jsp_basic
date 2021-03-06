<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../common.jsp"></jsp:include>
<style>
<%@ include file="../inc/common.css" %>
#lst_tb th { min-width:140px; }
</style>
<title>결제 정보 보기</title>
</head>
<body>
<header id="header" class="header" >
	<%@ include file="../inc/header.jsp" %>
</header>
<div id="content" class="content_wrap">
	<section class="con_wrap">
		<c:if test="${sid=='admin' }">
		<h2 class="page_tit">상품 정보 수정</h2>
		</c:if>
		<c:if test="${sid!='admin' }">
		<h2 class="page_tit">결제 정보 수정</h2>
		</c:if>
		<form action="${path1 }/payment/adminUpdate.do" method="post">
			<table class="table" id="lst_tb">
				<tbody>
					<tr>
						<th>결제번호</th>
						<td>
							<input type="hidden" name="ono" value="${paymentAdminRead.ono }">
							<span>${paymentAdminRead.ono }</span>
						</td>
					</tr>
					<tr>
						<th>결제 방식</th>
						<td>
							<c:if test="${paymentAdminRead.paytype=='credit' }">
							<span>결제방식 : 카드결제 </span> /
							</c:if>
							<c:if test="${paymentAdminRead.paytype=='check' }">
							<span>결제방식 : 체크결제 </span> /
							</c:if>
							<c:if test="${paymentAdminRead.paytype=='account' }">
							<span>결제방식 : 계좌이체 </span> /
							</c:if>
							<input type="hidden" name="paytype" value="${paymentAdminRead.paytype }"> 
						</td>
					</tr>
					<tr>
						<th>판매금액</th>
						<td>
							<span>${paymentAdminRead.money }</span>
							<input type="hidden" name="money" value="${paymentAdminRead.money }">
						</td>
					</tr>
					<tr>
						<th>결제일</th>
						<td>
							<span>${payment.sdate }</span>
							<input type="hidden" name="sdate" value="${paymentAdminRead.sdate }">
						</td>
					</tr>
					<tr>
						<th>제품코드</th>
						<td>
							<span>${paymentAdminRead.gno }</span>
							<input type="hidden" name="gno" value="${paymentAdminRead.gno }">
						</td>
					</tr>
					<tr>
						<th>판매량</th>
						<td>
							<span>${paymentAdminRead.amount }</span>
							<input type="hidden" name="amount" value="${paymentAdminRead.amount }">
						</td>
					</tr>
					<tr>
						<th>구매자 아이디</th>
						<td>
							<span>${paymentAdminRead.id }</span>
							<input type="hidden" name="id" value="${paymentAdminRead.id }">
						</td>
					</tr>
					<tr>
						<th>수신자</th>
						<td>
							<span>${paymentAdminRead.rname }</span>
							<input type="hidden" name="rname" value="${paymentAdminRead.rname }">
						</td>
					</tr>
					<tr>
						<th>연락처</th>
						<td>
							<span>${paymentAdminRead.tel }</span><br>
							<input type="hidden" name="tel" value="${paymentAdminRead.rdate }">
						</td>
					</tr>
					<tr>
						<th>주소</th>
						<td>
							<span>${paymentAdminRead.addr1 }</span><br>
							<span>${paymentAdminRead.addr2 }</span> <span>${paymentAdminRead.postcode }</span>
							<input type="hidden" name="addr1" value="${paymentAdminRead.addr1 }">
							<input type="hidden" name="addr2" value="${paymentAdminRead.addr2 }">
							<input type="hidden" name="postcode" value="${paymentAdminRead.postcode }">
						</td>
					</tr>
					<tr>
						<th>요청 메시지</th>
						<td>
							<span>${paymentAdminRead.memo }</span><br>
							<input type="hidden" name="memo" value="${paymentAdminRead.memo }">
						</td>
					</tr>
					<tr>
						<th>송장 번호</th>
						<td>
							<c:if test="${!empty paymentAdminRead.transno }">
							<input type="text" name="transno" value="${paymentAdminRead.transno }">
							</c:if>
							<c:if test="${empty paymentAdminRead.transno }">
							<input type="text" name="transno">
							</c:if>
						</td>
					</tr>
					<tr>
						<th>배송 회사</th>
						<td>
							<c:if test="${!empty paymentAdminRead.transco }">
							<input type="text" name="transco" value="${paymentAdminRead.transco }">
							</c:if>
							<c:if test="${empty paymentAdminRead.transco }">
							<input type="text" name="transco">
							</c:if>
						</td>
					</tr>
					<tr>
						<th>배송 상태</th>
						<td>
							<c:if test="${!empty paymentAdminRead.rstatus }">
							<input type="text" name="rstatus" value="${paymentAdminRead.rstatus }">
							</c:if>
							<c:if test="${empty paymentAdminRead.transno }">
								<select name="rstatus">
									<option value="배송시작">배송시작</option>
									<option value="배송중">배송중</option>
									<option value="배송완료">배송완료</option>
								</select>
							</c:if>
						</td>
					</tr>
					<tr>
						<th>도착일</th>
						<td>
							<c:if test="${!empty paymentAdminRead.rdate }">
							<input type="text" name="rdate" value="${paymentAdminRead.rdate }">
							</c:if>
							<c:if test="${empty paymentAdminRead.rdate }">
								<input type="date" name="rdate">
							</c:if>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="배송지 입력" class="button is-info"/>
							<input type="reset" value="취소" class="button is-info"/>
							<a href="${path1 }/payment/delete.do?ono=${paymentAdminRead.ono }" class="button is-info">판매 정보 삭제</a>
							<a href="${path1 }/payment/adminList.do" class="button is-info">목록</a>
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
<footer id="footer" class="footer">
	<%@ include file="../inc/footer.jsp" %>
</footer>
</body>
</html>