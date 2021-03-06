<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 폼</title>
<style>

</style>
</head>
<body>
<div class="wrap">
<header id="hd">
	<div class="hd_wrap">
		<%@ include file="nav.jsp" %>
	</div>
</header>
<div class="content">
	<h2>회원가입</h2>
	<form id="joinform" name="joinform" action="joinPro.jsp" method="post" >
		<tbody>
			<tr>
				<td>아이디 : </td>
				<td>
					<input type="text" id="uid" name="uid" placeholder="아이디 입력" required autofocus >
					<input type="button" id="popopen" value="중복확인" onclick="idCheck()"><br>
					<input type="hidden" id="idck" name="idck" value="">
				</td>
			</tr>
			<tr>
				<td>비밀번호 : </td>
				<td>
					<input type="password" class="upw"id="upw" name="upw" placeholder="비밀번호 입력" required><br>
				</td>
			</tr>
			<tr>
				<td>비밀번호 확인 : </td>
				<td>
					<input type="password" id="upw2" name="upw2" placeholder="비밀번호 확인" required><br>
				</td>
			</tr>
			<tr>
				<td>이름 : </td>
				<td>
					<input type="text" id="name" name="name" placeholder="이름 입력" required><br>
				</td>
			</tr>
			<tr>
				<td>성별 : </td>
				<td>
					<input type="radio" id="gender" name="gender" value="m">남
					<input type="radio" id="gender" name="gender" value="f">여<br>
				</td>
			</tr>
			<tr>
				<td>전화번호 : </td>
				<td>
					<input type="text" id="phone" name="phone" placeholder="전화번호 입력" ><br>
				</td>
			</tr>
			<tr>
				<td>이메일 : </td>
				<td>
					<input type="email" id="email" name="email" placeholder="이메일 입력" required><br>
				</td>
			</tr>
			<tr>
				<td>생년월일 : </td>
				<td>
					<input type="date" id="birth" name="birth"><br>
				</td>
			</tr>
			<tr>
				<td>주소 : </td>
				<td>
					<input type="text" id="address" name="address" placeholder="주소 입력" size=50><br>
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="회원가입" id="submit" class="btn">
				</td>
				<td>
					<input type="reset" value="취소" id="reset" class="btn">
				</td>
			</tr>					
		</tbody>
		<script>
		function idCheck() {
			window.open("pop.jsp", "idwin", "width=400, height=300");
		}
		</script>
	</form>	
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>