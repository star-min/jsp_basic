<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
.tb2 { display:table; width:1100px; margin:20px auto; border-collapse: collapse; }
.tb2 tr { display:table-row; }
.tb2 th, .tb2 td { display:table-cell; line-height:36px; border-bottom:1px solid #333; text-align: center; 
font-size:14px; }
.tb2 tr:frist-child th, .tb2 tr:frist-child td { border-top:1px solid #333; } 
.tb2 th { background-color:#ccc; }
.tb2 td.img_data { max-width:170px; }
.tb2 td.img_data img { max-width:170px; height:auto; }
.tb2 td p.coment { max-width:170px; line-height:24px;}
</style>
</head>
<body>
<div class="container">
<header id="hd">
	<%@ include file="hd.jsp" %>
</header>
<div id="content">
<form action="JoinProCtrl" method="post" name="joinform" id="joinform" onsubmit="return joinCheck(this)">
	<table class="tb2">
		<tbody>
	<%
	%>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="cid" class="in_data" value="" required>
					<input type="button" value="아이디 중복체크" id="idchk_btn" onclick="idCheck()">
					<input type="hidden" name="idck" value="" >
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="upw" class="in_data" value="" required></td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td><input type="password" name="upw2" class="in_data" value="" required></td>
			</tr>
			<tr>
				<th>고객명</th>
				<td><input type="text" name="uname" class="in_data" value="" required></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="tel" name="tel" class="in_data" value="" required></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="email" name="email" class="in_data" value="" required></td>
			</tr>
			<tr>
				<th>생년월일</th>	
				<td><input type="date" name="birth" class="in_data" value=""></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="가입" class="frm_btn"> &nbsp; &nbsp; &nbsp; &nbsp;
					<input type="reset" value="취소" class="frm_btn"> &nbsp; &nbsp; &nbsp; &nbsp;
				</td>
			</tr>
		</tbody>
	</table>
</form>
<script>
function idCheck() {
	var uid = document.joinform.cid.value;
	window.open("idCheckForm.jsp?uid="+uid,"popwin", "width=400, height=300");
}
function joinCheck(f){
	if(f.idck.value!="ok"){
		alert("아이디 중복검사를 진행하지 않으셨습니다.");
		return false;
	}
	if(f.upw.value!=f.upw2.value){
		alert("입력하신 비밀번호와 비밀번호 확인이 서로 다릅니다.");
		return false;
	}
}
</script>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>