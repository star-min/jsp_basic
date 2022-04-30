<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="connectPool.conf" %>
<%
	request.setCharacterEncoding("UTF-8");
	int bno = Integer.parseInt(request.getParameter("bno"));
	
	sql = "delete from board where bno=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, bno);
	cnt = pstmt.executeUpdate();
	if(cnt>0){ //삭제 성공
		response.sendRedirect("board1.jsp");
	} else { //삭제 실패
		response.sendRedirect("boardDetail.jsp?bno="+bno);
	}
%>
<%@ include file="connectClose.conf" %>