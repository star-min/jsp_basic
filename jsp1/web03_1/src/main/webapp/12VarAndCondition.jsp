<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="num1" scope="page" value="10"/>
	<c:set var="num2" scope="application" value="20" />
	<c:set var="num3" value="${ num1 + num2 }"/>
	<p>결과 : ${num1 } + ${num2 } = ${ num3}</p>
	
	<h2>액션 태그를 활용한 객체 활용</h2>
<jsp:useBean id="vo" scope="request" class="com.example.Human"></jsp:useBean>
<jsp:setProperty property="country" value="대한민국" name="vo"/>
<jsp:setProperty property="name" value="김성민" name="vo"/>
<jsp:setProperty property="age" value="26" name="vo"/>
<jsp:setProperty property="hobby" value="등산" name="vo"/>
<p>국가 : ${vo.country }<br> 이름 : ${vo.name }<br> 나이 : ${vo.age }</p>
<c:set target="${vo }" property="country" value="덴마크"/>
<c:set target="${vo }" property="name" value="김성민"/>
<c:set target="${vo }" property="age" value="26"/>
<c:set target="${vo }" property="hobby" value="독서"/>
<h2>remove</h2>
<c:set var="irum" value="장성필"/>
<p>이름 : ${irum }</p>
<c:remove var="irum"/>
<p>이름 : ${irum }</p>
<h3>객체(Reference type) 제거</h3>
<c:remove var="vo"/>
<h2>if</h2>
<c:if test="${num1>=num2 }">
	<p>${num1 }이 ${num2 } 보다 크다</p>
</c:if>
<c:if test="${num1<=num2 }">
	<p>${num1 }이 ${num2 } 보다 작다</p>
</c:if>
<c:if test="${num1==num2 }">
	<p>${num1 }이 ${num2 } 과 같다</p>
</c:if>
<c:choose>
	<c:when test="${num1>=num2 }">
		<p>${num1 } 이 ${num2 } 보다 크다</p>
	</c:when>
	<c:when test="${num1<=num2 }">
		<p>${num1 } 이 ${num2 } 보다 작다</p>
	</c:when>
	<c:otherwise>
		<p>${num1 } 이 ${num2 } 와 같다</p>
	</c:otherwise>
</c:choose>

</body>
</html>