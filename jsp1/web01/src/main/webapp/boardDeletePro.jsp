<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 삭제</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	int bno = Integer.parseInt(request.getParameter("bno"));
%>
<%@ include file="connectPool.conf" %>
<%
	sql = "delete from board1 where bno=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, bno);
	cnt = pstmt.executeUpdate();
	if(cnt>0){
		response.sendRedirect("board1.jsp");
	} else {
		out.println("게시글을 삭제하지 못했습니다.");
		response.sendRedirect("boardDetail.jsp?bno="+bno);
	}
%>
<%@ include file="connectClose.conf" %>
</body>
</html>