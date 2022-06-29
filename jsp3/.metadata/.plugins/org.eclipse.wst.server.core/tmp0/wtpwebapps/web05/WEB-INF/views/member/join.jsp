<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path1" value="{pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<body>
<div nid="root" class="root">
<div class="wrap">
	<c:import url="inc/header.jsp" />
	<div id="contents" class="contents">
		<h2 class="tit">회원가입</h2>
		<form:form action="${path1 }/member/join" method="post" modelAttribute="joinMemberBean">
			<div class="form-group">
				<form:label path="id">아이디</form:label>
				<div class="input-group">
					<form:input type="text" path="id" class="form-control" onkeypress="resetExistMember()"/>
					<div class="input-group-append">
						<button type="button" class="btn btn-primary" onclick="checkExistMember()">중복확인</button>
					</div>
				</div>
				<form:errors path="id" class="color:red; font-size:12px" />
			</div>
			<div class="form-group">
				<form:label path="pwd">비밀번호</form:label>
				<form:input type="password" path="pwd" class="form-control" />
				<form:errors path="pwd" class="color:red; font-size:12px" />
			</div>
			<div class="form-group">
				<form:label path="pwd2">비밀번호 확인</form:label>
				<form:input type="password" path="pwd2" class="form-control" />
				<form:errors path="pwd2" class="color:red; font-size:12px" />
			</div>
			<div class="form-group">
				<form:label path="uname">이름</form:label>
				<form:input type="text" path="uname" class="form-control" />
				<form:errors path="uname" class="color:red; font-size:12px" />
			</div>
			<div class="form-group">
				<form:label path="birth">생년월일</form:label>
				<form:input type="date" path="birth" class="form-control" />
			</div>
			<div class="form-group">
				<form:label path="phone">전화번호</form:label>
				<form:input type="tel" path="phone" class="form-control" />
			</div>
			<div class="form-group">
				<form:label path="email">이메일</form:label>
				<form:input type="email" path="email" class="form-control" />
			</div>
			<div class="form-group">
				<div class="text-right">
					<button type="submit" class="btn btn-primary">회원가입</button>
					<button type="reset" class="btn btn-primary">취소</button>
				</div>
			</div>
		</form:form>
	</div>
	<c:import url="inc/footer.jsp" />
</div>
</div>
</body>
</html>