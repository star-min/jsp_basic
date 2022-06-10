<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.example.Human" %>
<%
	String[] names = {"신길호", "이규진", "김동협", "김태균"};
	ArrayList<Human> humanList = new ArrayList<Human>();
	Human h1 = new Human();
	h1.setCountry("대한민국");
	h1.setName("할로우");
	h1.setAge(100);
	h1.setHobby("피들스틱");
	humanList.add(h1);
	
	Human h2 = new Human();
	h1.setCountry("대한민국");
	h1.setName("할로우");
	h1.setAge(100);
	h1.setHobby("피들스틱");
	humanList.add(h1);
	
	Human h3 = new Human();
	h1.setCountry("대한민국");
	h1.setName("할로우");
	h1.setAge(100);
	h1.setHobby("피들스틱");
	humanList.add(h1);
	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- <h3>맵의 for문 활용</h3> -->
<%-- <c:forEach items="${map }" var="item">
	<p>${item.key} : ${item.value }</p>
</c:forEach> --%>
<hr>
<!-- <h3>맵 제네릭 for문 활용</h3> -->
<%-- <c:forEach items="${humanMap }" var="human">
	<p>${human.key }</p>
	<p>${human.value }</p>
</c:forEach> --%>
<hr><hr>

	<h3>일반 for문 처럼 활용</h3>
<c:set var="result" value="0"/>
<c:forEach var="i" begin="1" end="100" step="2">
	<c:set var="result" value="${result+i }"/>
</c:forEach>
<p> 결과 : ${result }</p>
<hr>
<c:forEach items="${ humanList}" var="human" varStatus="status">
	<p>${status.count } 번 학생</p>
	<p>이름 : ${human.name }</p>
	<p>국가 : ${human.country }</p>
	<p>나이 : ${human.age }</p>
	<p>이름 : ${human.hobby }</p>
</c:forEach>
<c:set var="hellow" value="헤헷-안녕!-코어문-너무-재밌어!">
</c:set>
<c:forTokens items="헤헷-안녕!-코어문-너무-재밌어!" delims="-" var="hellow">
	<p>${hellow }</p>
</c:forTokens>
<table>
	<thead>
		<tr><th>이름</th></tr>
	</thead>
	<tbody>
	<c:forTokens items="김성민-할로우맨-김유성-김민성-피들스틱-TFT모바일-두둥등장" delims="-" var="namedle">
		<tr><td>${namedle }</td></tr>
	</c:forTokens>
	</tbody>
</table>
</body>
</html>