<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String uid = request.getParameter("uid");
	if(uid==null || uid=="") uid="";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 확인</title>
</head>
<body>
<div class="wrap">
	<h3>아이디 중복 확인</h3>
	<form action="idCheckPro.jsp" method="post" onsubmit="return invalidCheck(this)">
		<label for="cid">아이디</label>
		<input type="text" name="uid" id="uid" placeholder="아이디 입력" value="<%=uid %>" />
		<input type="submit" value="중복확인"> 
	</form>
	<script>
	function invalidCheck(f) {
		var uid= f.uid.value;
		uid = uid.trim();
		if(uid.length<8 || uid.length>12){
			alert("아이디는 글자수가 8자 이상~12자 이하 이어야 합니다.");
			return false;
		}
	}
	</script>
</div>
</body>
</html>