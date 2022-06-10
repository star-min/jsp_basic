<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="today" value="<%=new Date() %>"/>
<p>${today }</p>
<p>
	<fmt:timeZone value="UTC">
		<fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/>
	</fmt:timeZone>
</p>
<p>
	<fmt:timeZone value="Asia/Seoul">
		<fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/>
	</fmt:timeZone>
</p>
<p>
	<fmt:timeZone value="Asia/Tokyo">
		<fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/>
	</fmt:timeZone>
</p>
<p>
	<fmt:timeZone value="Asia/Beijing">
		<fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/>
	</fmt:timeZone>
</p>
<p>
	<fmt:timeZone value="America/New_York">
		<fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/>
	</fmt:timeZone>
</p>
<p>
	<fmt:timeZone value="GMT-8">
		<fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/>
	</fmt:timeZone>
</p>
</body>
</html>