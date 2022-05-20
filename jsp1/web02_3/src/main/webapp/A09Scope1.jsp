<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("name", "page");
	request.setAttribute("name", "request");
	session.setAttribute("name", "session");
	application.setAttribute("name", "application");
	
	System.out.println("A09Scope1.jsp");
	System.out.println("체이지컨텍스트 속성 : "+pageContext.getAttributesScope("name"));
	System.out.println("요청체이지 속성 : "+request.getAttribute("name"));
	System.out.println("세션의 속성 : "+session.getAttribute("name"));
	System.out.println("애플리케이션의 속성 : "+application.getAttribute("name"));
	request.getRequestDispatcher("A09Scope2.jsp").forward(request,response);
%>