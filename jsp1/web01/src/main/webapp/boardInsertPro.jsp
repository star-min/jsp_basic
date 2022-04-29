<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<% 
	request.setCharacterEncoding("UTF-8");
	String title = request.getParameter("title");
	String author = request.getParameter("author");
	String content = request.getParameter("content");
%>
<%@ include file="connectPool.conf" %>
<%
	sql= "insert into board1(title, author, content) value (?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, author);
	pstmt.setString(3, content);
	cnt = pstmt.executeUpdate();
	if(cnt>0){
		response.sendRedirect("board1.jsp");
	} else {
		response.sendRedirect("boardInsert.jsp");
	}
%>
<%@ include file="connectClose.conf" %>