<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="" isErrorPage="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="java.net.InetAddress" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Direct</title>
</head>
<body>
	<h2>디렉티브(Directive) 태그</h2>
	<p>JSP 페이지를 어떻게 처리할 것인지 설정하는 태그</p>
	<h3>page</h3>
	<p>jsp 페이지에 대한 정보를 설정</p>
	<code>
	<%-- <%@ page ... %> --%>
	</code>
	<h3>include</h3>
	<p>JSP 페이지의 특정 영역에 다른 문서의 내용을 포함</p>
	<code>
	<%--  <%@ include %>  --%>
	</code>
	<h3>taglib</h3>
	<p>JSP 페이지에서 사용할 태그 라이브러리를 지정</p>
	<code>
	<%--  <%@ taglib %>  --%>
	</code>	
</body>
</html>