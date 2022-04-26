<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 약관 및 동의</title>
</head>
<body>
<textarea rows="30" cols="90" readonly>회원약관</textarea><br>
<input type="checkbox" name="ck1" id="ck1"> 회원약관에 동의합니다.
<br><br><br>
<textarea rows="30" cols="90" readonly>개인정보처리방침</textarea>
<input type="checkbox" name="ck2" id="ck2"> 개인정보처리방침에 동의합니다.
<br><br><br>
<button id="btn1" onclick="fnc1()">회원가입</button>
<script type="text/javascript">
	function fnc1(){
		var ck1 = document.getElementById("ck1").value;
		var ck2 = document.getElementById("ck2").value;
		if(ck1.checked && ck2.checked) {
			location.href = "join.jsp";
			return false;
		} else {
			alert("약관에 동의하지 않으셨습니다.");
			return false;
		}
	}
</script>
</body>
</html>