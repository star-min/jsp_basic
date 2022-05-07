<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 약관 및 동의</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
    <!-- 웹 폰트/폰트 모듈 연결 -->
    <!-- font-family: 'Noto Sans KR', sans-serif; -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
    <!-- 웹 아이콘 연결 -->
    <!-- XEIcon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <!-- 스타일 초기화 모듈 연결 -->
    <link rel="stylesheet" href="./css/normalize.css">
    <link rel="stylesheet" href="./css/common.css">
</head>
<body>
<header id="hd">
	<div class="hd_wrap">
		<%@ include file="nav.jsp" %>
	</div>
</header>
<textarea rows="10" cols="20" readonly >본 회원약관은 SKtelcom(이하 '갑'라 한다)이 운영하는 인터넷관련 서비스(이하 '서비스'라 한다)를 이용함에 있어 관리자와 이용자(이하 '회원'라 한다)의 권리, 의무 및 책임사항을 규정함을 목적으로 한다.
</textarea><br>
<input type="checkbox" name="ck1" id="ck1"> 회원약관에 동의합니다.
<br><br><br>
<textarea rows="10" cols="20" readonly>SKtelcom이(가) 취급하는 모든 개인정보는 개인정보보호법 등 관련 법령상의 개인정보보호 규정을 준수하여 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 처리방침을 두고 있습니다.</textarea>
<input type="checkbox" name="ck2" id="ck2"> 개인정보처리방침에 동의합니다.
<br><br><br>
<button id="btn1" onclick="fnc1()">회원가입</button>
<script type="text/javascript">
	function fnc1(){
		var ck1 = document.getElementById("ck1");
		var ck2 = document.getElementById("ck2");
		if(ck1.checked && ck2.checked) {
			location.href = "join.jsp";
			return false;
		} else {
			alert("약관에 동의하지 않으셨습니다.");
			return false;
		}
	}
</script>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</body>
</html>