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
<h2>format date</h2>
<c:set var="today" value="<%=new Date() %>"/>
<p>${today }</p>
<h3>type 속성</h3>
<p>type : both - <fmt:formatDate value="${today }" type="both"/></p>
<p>type : both - <fmt:formatDate value="${today }" type="date"/></p>
<p>type : both - <fmt:formatDate value="${today }" type="time"/></p>
<h3>dateStyle 속성</h3>
<h4>date</h4>
<p>dateStyle : full - <fmt:formatDate value="${today }" type="date" dateStyle="full"/></p>
<p>dateStyle : long - <fmt:formatDate value="${today }" type="date" dateStyle="long"/></p>
<p>dateStyle : medium - <fmt:formatDate value="${today }" type="date" dateStyle="medium"/></p>
<p>dateStyle : short - <fmt:formatDate value="${today }" type="date" dateStyle="short"/></p>
<h4>both의 경우</h4>
<p>dateStyle : full - <fmt:formatDate value="${today }" type="both" timeStyle="full"/></p>
<p>dateStyle : long - <fmt:formatDate value="${today }" type="both" timeStyle="long"/></p>
<p>dateStyle : medium - <fmt:formatDate value="${today }" type="both" timeStyle="medium"/></p>
<p>dateStyle : short - <fmt:formatDate value="${today }" type="both" timeStyle="short"/></p>
<br>
<p>dateStyle : full - <fmt:formatDate value="${today }" type="both" dateStyle="full"/></p>
<p>dateStyle : long - <fmt:formatDate value="${today }" type="both" dateStyle="long"/></p>
<p>dateStyle : medium - <fmt:formatDate value="${today }" type="both" dateStyle="medium"/></p>
<p>dateStyle : short - <fmt:formatDate value="${today }" type="both" dateStyle="short"/></p>
<h3>pattern</h3>
<p><fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/></p>
<p><fmt:formatDate value="${today }" pattern="yy/M/d E a H:m:s"/></p>
</body>
</html>