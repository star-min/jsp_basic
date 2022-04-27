<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중복확인</title>
</head>
<body>
<fieldset>
<div class="form">
	<h2>아이디 검색하기!</h2>
	<form action="idCheckPro.jsp" method="post" onsubmit="return invalidCheck(this)">
		<input type="text" name="id" id="id" placeholder="8~12 문자 및 숫자로 입력" required autofocus>
		<input type="submit" value="중복확인">
	</form>
	<script>
	function invalidCheck(f) {
		var id = f.id.value;
		id = id.trim();
		id(id.length<8 || id.length>12){
			alert("아이디는 글자수가 8이상 ~ 12이하 이어야 합니다.")
			return false;
		}
	}
	</script>
</fieldset>
</div>

</body>
</html>