<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 폼</title>
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
	<form id="frm1" name="join" action="joinPro.jsp" method="post">
		<tbody>
			<tr>
				<td>아이디 : </td>
				<td>
					<input type="text" class="indata" id="uid" name="uid" placeholder="아이디 입력" required autofocus>
					<input type="button" id="popopen" value="중복확인"	><br>
				</td>
			</tr>
			<tr>
				<td>비밀번호 : </td>
				<td>
					<input type="password" class="indata" id="upw" name="upw" placeholder="비밀번호 입력" required><br>
				</td>
			</tr>
			<tr>
				<td>비밀번호 확인 : </td>
				<td>
					<input type="password" class="indata" id="upw" name="upw" placeholder="비밀번호 확인" required><br>
				</td>
			</tr>
			<tr>
				<td>이름 : </td>
				<td>
					<input type="text" class="indata" id="name" name="name" placeholder="이름 입력" required><br>
				</td>
			</tr>		
			<tr>
				<td>전화번호 : </td>
				<td>
					<input type="text" class="indata" id="phone" name="phone" placeholder="전화번호 입력"  required><br>
				</td>
			</tr>
			<tr>
				<td>주소 : </td>
				<td>
					<input type="text" class="indata" id="address" name="address" placeholder="주소 입력" size=50 required><br>
				</td>
			</tr>							
		</tbody>
	</form>	
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>