<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- 	<%@ = 페이지 디랙티브 	--%>
    <%
    	request.setCharacterEncoding("UTF-8");
	    String uid = request.getParameter("uid");
	    String upw = request.getParameter("upw");
	    
	    if(uid.equals("zxzx123") && upw.equals("1234")){
	    	session.setAttribute("uid", uid);
	    	session.setAttribute("name", "성민띠");
	    } else if(uid.equals("root") && upw.equals("a1234")){
	    	session.setAttribute("uid", uid);
	    	session.setAttribute("name", "관리자");
	    } else {
	    	response.sendRedirect("login.jsp");
	    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<div class="wrap"></div>
<header id="hd">
	<div class="hd_wrap">
		<%@ include file="nav.jsp" %>
	</div>
</header>
<div class="content">
	<h2>로그인 정보</h2>
		<p>아이디 : <%= uid %></p>
		<p>비밀번호 : <%= upw %></p>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</body>
</html>