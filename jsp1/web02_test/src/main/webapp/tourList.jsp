<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="kr.go.yeosu.model.*" %>
<%
	//Ctrl에서 보내온 list 객체를 받아 해당 VO 객체로 분리하여 출력
	List<TourlistVO> list = (ArrayList<TourlistVO>) request.getAttribute("list");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방문지에 대한 모든 정보 목록</title>
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
		<tr><th>번호</th><th>방문지코드</th><th>방문지명</th><th>유형</th></tr>
	</thead>
	<tbody>
<%
	for(int i=0;i<list.size();i++){
		//해당VO의 객체 선언
		TourlistVO vo = list.get(i);
%>
		<tr><td><%=vo.getPpno() %></td><td><%=vo.getPid() %></td><td><a href="/web02/GetTourCtrl?pid=<%=vo.getPid() %>"><%=vo.getPname() %></a></td><td><%=vo.getPtype() %></td></tr>
<%
	}
%>
		<tr>
			<td colspan="4">
				<a href="addTourlistForm.jsp">방문지 추가</a>
			</td>
		</tr>
	</tbody>
</table>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>