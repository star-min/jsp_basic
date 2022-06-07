<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="" isErrorPage="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="java.net.InetAddress" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name = "Kimseongmin's JSP MAP Test";
	String[] color = {"red","green","blue"};
	
	Map map = new HashMap();
	map.put("name1", color[0]);
	map.put("name2", color[1]);
	map.put("name3", color[2]);
	
	request.setAttribute("name", name);
	request.setAttribute("color", color);
	request.setAttribute("map", map);
%>
	<h3>${name }</h3>
<%
	for(int i=0;i<color.length;i++){
%>
	<h3><%=color[i] %></h3>
<%	
	}
%>
	<h3>${map }</h3>
</body>
</html>