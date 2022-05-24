<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path1" value="${pageContext.request.contextPath }" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css" />
<title>회원 정보 상세보기</title>
<jsp:include page="../common.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<div id="content">
	<section class="con_wrap">
		<h2>글 상세보기</h2>
		<form action="${path1 }/EditMemberCtrl" method="post">
			<table class="table" id="lst_tb">
				<tbody>
					<tr>
						<th>아이디</th>
						<td>
							<input type="text" name="hid" value="${member.hid }" readonly>
						</td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td>
							<input type="password" name="hpw" value="${member.hpw }">
						</td>
					</tr>
					<tr>
						<th>이름</th>
						<td>
							<input type="text" name="hname" required>
						</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td>
							<input type="text" name="email" value="${member.email }">
						</td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td>
							<input type="tel" name="tel" value="${member.tel }">
						</td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td>
							<input type="date" name="birth" value="${member.birth }">
						</td>
					</tr>
					<tr>
						<th>가입일</th>
						<td>
							${member.joinday }
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="수정" class="button is-info"/>
							<input type="reset" value="취소" class="button is-info"/>
							<a href="${path1 }/DelMemberCtrl?uid=${member.hid }" class="button is-info">탈퇴</a>
							<a href="${path1 }/GetMemberListCtrl" class="button is-info">목록</a>
						</td>
					</tr>
				</tbody>
			</table>
		</form>	
	</section>
</div>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>