<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="com.example.Human" %>
<%-- <%
	String[] exNames = (String[]) request.getAttribute("names");
	ArrayList<String> exList = (ArrayList<String>) request.getAttribute("list");
	HashMap<String, Integer> exMap = (HashMap<String, Integer>) request.getAttribute("map");
	HashMap<String, String> exMap2 = (HashMap<String, String>) request.getAttribute("map2");
	Human exVo = (Human) request.getAttribute("vo");
	ArrayList<Human> exHumanList = (ArrayList<Human>) request.getAttribute("humanList");  
%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GetJavaData를 EL로 처리하기</title>
</head>
<body>
<h2>names 배열 데이터 단순 출력</h2>
<ul>
	<li>${names[0] }</li>
	<li>${names[1] }</li>
	<li>${names[2] }</li>
	<li>${names[3] }</li>
</ul>
<hr>
<h2>names 배열 데이터 반복 출력</h2>
<ul>
	<c:forEach items="${names }" var="name" varStatus="status">
	<li>${name }</li>
	</c:forEach>
</ul>
<hr>
<h2>list 리스트 데이터 단순 출력</h2>
<ul>
	<li>${list.get(0) }</li>
	<li>${list.get(1) }</li>
	<li>${list.get(2) }</li>
	<li>${list.get(3) }</li>
</ul>
<hr>
<h2>list 리스트 데이터 반복 출력</h2>
<ul>
	<c:forEach items="${list }" var="lst" varStatus="status">
	<li>${lst }</li>
	</c:forEach>
</ul>
<hr>
<h2>VO 데이터 출력</h2>
<ul>
	<li>국가 : ${vo.country }</li>
	<li>이름 : ${vo.name }</li>
	<li>나이 : ${vo.age }</li>
	<li>취미 : ${vo.hobby }</li>
</ul>
<h2>humanList 리스트 데이터 반복 출력</h2>
<c:forEach items="${humanList }" var="human" varStatus="status">
<ul>
	<li>순번 : ${status.count }</li>
	<li>소속국가 : ${human.country }</li>
	<li>이름 : ${human.name }</li>
	<li>나이 : ${human.age }</li>
	<li>취미 : ${human.hobby }</li>
</ul>
</c:forEach>
<hr>
<h2>map을 반복 출력</h2>
<ul>
	<c:forEach var="i" items="${map }">
	<li>${i.key } : ${i.value }</li>
	</c:forEach>
</ul>
<hr>
<h2>map2을 반복 출력</h2>
<ul>
	<c:forEach var="i" items="${map2 }">
	<li>${i.key } : ${i.value }</li>
	</c:forEach>
</ul>

<h2>표현식을 활용한 map의 반복 출력</h2>
<ul>
<%-- <%
	Iterator<String> keys = exMap.keySet().iterator();
	while(keys.hasNext()){
		String key = keys.next();
%>
	<li><%=key %> : <%=exMap.get(key) %></li>
<%
	}
%> --%>
</ul>
</body>
</html>