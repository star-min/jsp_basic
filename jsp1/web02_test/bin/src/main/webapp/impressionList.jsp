<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="kr.go.yeosu.model.*" %>
<%
	//Ctrl에서 보내온 list 객체를 받아 해당 VO 객체로 분리하여 출력
	List<ImpressionVO> list = (ArrayList<ImpressionVO>) request.getAttribute("list");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용후기 목록</title>
<style>
.tb1 { display:table; width:1100px; margin:20px auto; border-collapse: collapse; }
.tb1 tr { display:table-row; }
.tb1 th, .tb1 td { display:table-cell; line-height:36px; border-bottom:1px solid #333; text-align: center; 
font-size:14px; }
.tb1 th { border-top:1px solid #333; background-color:#ccc; }
.tb1 td.img_data { max-width:170px; }
.tb1 td.img_data img { max-width:170px; height:auto; }
.tb1 td p.coment { max-width:170px; line-height:24px;}
</style>
</head>
<body>
<div class="container">
<header id="hd">
	<%@ include file="hd.jsp" %>
</header>
<div id="content">
<table class="tb1">
	<thead>
		<tr><th>글번호</th><th>장소명</th><th>시작일</th><th>종료일</th><th>작성자</th><th>비밀번호</th><th>작성일</th></tr>
	</thead>
	<tbody>
<%
	for(int i=0;i<list.size();i++){
		//해당VO의 객체 선언
		ImpressionVO vo = list.get(i);
%>
		<tr>
			<td><%=vo.getIno() %></td>
			<td><a href="/web02/GetImpressionCtrl?ino=<%=vo.getIno() %>"><%=vo.getIplace() %></a></td>
			<td><%=vo.getItodate() %></td>
			<td><%=vo.getIfromdate() %></td>
			<td><%=vo.getCid() %></td>
			<td><%=vo.getIpw() %></td>
			<td><%=vo.getIdate() %></td>
		</tr>
<%
	}
%>
	</tbody>
</table>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>