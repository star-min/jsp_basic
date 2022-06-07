<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="com.example.Human" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UFT-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String pageName = (String) pageContext.getAttribute("name");
	String reqName = (String) request.getAttribute("name");
	String sesName = (String) session.getAttribute("name");
	String appName = (String) application.getAttribute("name");
	
	String[] hobby = {"선택안함","선택안함","선택안함","선택안함","선택안함","선택안함","선택안함"};
	hobby = request.getParameterValues("hobby");
	String formName = request.getParameter("id"); 
	//표현식
	//단일 데이터는 request.getParameter("파라미터명")로 받음
	//배열(복수) 데이터는 request.getParameterValues("파라미터명")로 받음
	//표현언어
	//단일 데이터는 ${param.파라미터명 } 로 받음
	//배열(복수) 데이터는 ${paramValues.파라미터명[인덱스] } 받음

	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FormData EL 사용하기</title>
</head>
<body>
	<h3>pageContext : ${pageName }</h3>
	<h3>request : ${reqName }</h3>
	<h3>session : ${sesName }</h3>
	<h3>application : ${appName }</h3>
	<hr>
	<p>아이디 : <%=formName %> = ${param.id }</p>
	<p>선택한 취미</p>
	<p>
	첫 번째 취미 : <%=hobby[0] %> = ${paramValues.hobby[0] }<br>
	두 번째 취미 : <%=hobby[1] %> = ${paramValues.hobby[1] }<br>
<%-- 	세 번째 취미 : <%=hobby[2] %> = ${paramValues.hobby[2] }<br>
	네 번째 취미 : <%=hobby[3] %> = ${paramValues.hobby[3] --%> }<br>
	</p>
</body>
</html>