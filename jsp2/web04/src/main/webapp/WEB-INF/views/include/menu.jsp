<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath"}/>

<nav id="gnb" class="menu">
	<ul>
		<li><a href= "${path }/test">테스트1</a></li>
		<li><a href= "${path }/test/doA">테스트A</a></li>
		<li><a href= "${path }/test/doB">테스트B</a></li>
		<li><a href= "${path }/test/doC">테스트C</a></li>
		<li><a href= "${path }/test/doD">테스트D</a></li>
	</ul>
</nav>