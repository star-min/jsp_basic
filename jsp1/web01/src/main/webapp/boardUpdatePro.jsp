<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="connectPool.conf" %>
<%
	request.setCharacterEncoding("UTF-8");
	int bno = Integer.parseInt(request.getParameter("bno"));
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String author = request.getParaeter("author");
	
	sql = "update board1 set title=?, content=?, regdate=now(), author=? where bno=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, content);
	pstmt.setString(3, author);
	pstmt.setInt(4, bno);
	cnt = pstmt.executeUpdate();
	if(cnt>0){
		response.sendRedirect("board1.jsp");
	} else {
		response.sendRedirect("boardUpdate.jsp?bno="+bno);
	}
%>
<%@ include file="connectClose.conf" %>