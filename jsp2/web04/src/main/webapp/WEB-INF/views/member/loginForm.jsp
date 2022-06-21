<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
<link rel="stylesheet" href="${path1 }/include/reset.css">
<link rel="stylesheet" href="${path1 }/member/common.css">

<style>
.form { position: relative; z-index: 1; background: #FFFFFF; max-width: 360px;
  margin: 0 auto 100px; margin-top:200px; padding-top: 100px; padding-bottom: 200px;
  text-align: center; box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);}
.form input { font-family: "Roboto", sans-serif; outline: 0; background: #f2f2f2; width: 100%;
  border: 0; margin: 0 0 15px; padding: 15px; box-sizing: border-box; font-size: 14px;}
.form button { font-family: "Roboto", sans-serif; text-transform: uppercase; outline: 0;
   background: #2c51c0; width: 100%; border: 0; padding: 15px;
  color: #FFFFFF; font-size: 14px; -webkit-transition: all 0.3 ease; transition: all 0.3 ease; cursor: pointer;}
.form button:hover,.form button:active,.form button:focus { background: #4a6ac7;}
.form .message { margin: 15px 0 0; color: #b3b3b3; font-size: 12px;}
.form .message a { color: #343a40; text-decoration: none;}
.form .register-form { display: none;}
</style>

</head>
<body>
	<header id="header" class="header" name="header">
			<%@ include file="../include/header.jsp" %>
	</header>
<article id="con" class="content">
	<c:if test="${!empty msg }">
	<script>
	alert("로그인 실패");
	document.loginForm.userid.focus();
	</script>
	</c:if>
<div id="ct">
  <div class="loginbox">
      <div class="login-page">
    <div class="form">
      <form action="${path1 }/member/signin.do" method="post" name="loginForm" class="login-form">
        <input type="text" placeholder="userid" name="userid" id="userid" required />
        <input type="password" placeholder="password" name="userpw" id="userpw" required />
        <button type="submit">login</button>
        <p class="message">아이디가 없으십니까? <a href="./agreement.html">회원가입</a></p>
      </form>
    </div>
      </div>
  </div>
</div>
	<script>
	function loginFaiure() {
		alert("로그인 실패");
	}
	</script>
</article>
<footer id="footer" class="footer" name="footer">
	<%@ include file="../include/footer.jsp" %>
</footer>
</body>
</html>