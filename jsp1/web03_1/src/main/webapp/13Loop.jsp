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
	
</body>
</html>