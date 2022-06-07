<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="" isErrorPage="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="java.net.InetAddress" %>
<%@ page import="com.example.Human" %>
<%
	String name = "김성민";
	int num = 1004;
	int num1 = 80, num2 = 62, num3;
	Human human = new Human();
	human.setCountry("South Korea");
	human.setName("seong min kim");
	human.setHobby("coding");
	human.setAge(26);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expression OR ExpressionLanguage</title>
</head>
<body>
	<h2>표현식(Expression)</h2>
	<p>1. jsp의 문자열 출력 : <%="Hello JSP" %></p>
	<p>2. jsp의 문자열 출력2 : <% out.println("<strong>Hello JSP</strong>"); %></p>
	<p>3. jsp의 숫자 출력 <%=1004 %></p>
	<p>4. jsp 변수의 문자열 값 출력 <%=name %></p>
	<p>5. jsp 변수의 숫자값 출력 <%=num %></p>
	<p>6. jsp 변수의 문자열+숫자값 연산된 결과 출력 <%=name+num %></p>
	<p>7. jsp 변수의 숫자의 연산된 결과 출력 <%=num1+num2 %></p>
	<p>8. jsp 변수의 비교 결과 출력 <%=num1>num2 %></p>
	<p>9. jsp 변수의 나머지 연산결과 출력 <%=num1%num2 %></p>
	<p>10. jsp 변수의 뺄셈 연산결과 출력 <%=num1-num2 %></p>
	<p>11. jsp 변수의 곱하기 연산결과 출력 <%=num1*num2 %></p>
	<p>12. jsp 변수의 나누기 연산결과 출력 <%=num1/num2 %></p>
	<p>13. jsp 변수의 삼항 연산결과 출력 <%=num1>100 ? "큰수" : "작은수" %></p>
	<p>14. jsp의 객체 접근 : <%=human.getName() %></p>
<!-- <%--	<p>15. jsp의 객체 접근 : <%=human.name() %></p> 표현식은 객체의 직접 접근이 힘듬  --%>--> 
	<p>15. jsp의 표현식 연산 : <%= num3=num1+num2 %></p>
	<hr>
	<h2>표현 언어(Expression Language) : -즉시(Real) 실행</h2>
	<p>1. jsp의 표현어 문자열 출력 : ${"Hello EL" }</p>
	<p>2. jsp의 표현어 숫자 출력 : ${1004 }</p>
	<p>3. jsp 표현어 변수의 문자열값 출력 : ${name }</p>
	<p>4. jsp 표현어 변수의 숫자값 출력 : ${num }</p>
	<p>5. jsp 표현어 문자열+숫자 연산된 결과 : ${name+num }</p>
	<p>6. jsp 표현어 숫자 더하기 연산된 결과 : ${num1+num2 }</p>
	<p>7. jsp 표현어 숫자 뺴기 연산된 결과 : ${num1-num2 }</p>
	<p>8. jsp 표현어 숫자 곱하기 연산된 결과 : ${num1*num2 }</p>
	<p>9. jsp 표현어 숫자 나누기 연산된 결과 : ${num1/num2 }</p>
	<p>10. jsp 표현어 숫자 나머지 연산된 결과 : ${num1%num2 }</p>
	<p>11. jsp 표현어 삼항 연산자 연산된 결과 : ${num1>100 ? "큰수": "작은수" }</p>
	<p>2. jsp의 표현어 숫자 출력 : ${human.getName() }</p>
	<p>2. jsp의 표현어 숫자 출력 : ${human.name }</p>

</body>
</html>