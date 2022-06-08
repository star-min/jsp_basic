<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="b" scope="request" class="com.example.Human"></jsp:useBean>
<%
	b.setCountry("우리집");
	b.setName("나");
	b.setAge(15);
	b.setHobby("독서");
%>
<jsp:forward page="07HumanUseBean.jsp"></jsp:forward>