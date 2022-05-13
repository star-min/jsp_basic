<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="kr.go.sokcho.model.*" %>
<%
	//Ctrl에서 보내온 list 객체를 받아 해당 VO 객체로 분리하여 출력
	List<ReviewVO> rev = (ArrayList<ReviewVO>) request.getAttribute("rev");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관광 후기 목록</title>
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
		<tr><th>번호</th><th>제목</th><th>방문지명</th><th>관광 시작일</th><th>관광 종료일</th><th>관광 소감</th><th>방문 사진1</th><th>방문 사진2</th><th>작성자</th><th>글 비밀번호</th><th>작성일</th><th>본횟수</th></tr>
	</thead>
	<tbody>
<%
	for(int i=0;i<rev.size();i++){
		//해당VO의 객체 선언
		ReviewVO vo = rev.get(i);
%>
		<tr><td><%=vo.getRno() %></td><td><%=vo.getRtitle() %></td><td><%=vo.getRplace() %></td><td><%=vo.getRtodate() %></td><td><p class="coment"><%=vo.getIcontent() %></p></td>
		<td class="img_data">
		<% if(vo.getIpic1()!=null) { %>
			<img src='<%=vo.getIpic1() %>' alt='<%=vo.getRplace() %>1'>
		<% } %>	
		</td>
		<td class="img_data">
		<% if(vo.getIpic2()!=null) { %>
			<img src='<%=vo.getIpic2() %>' alt='<%=vo.getRplace() %>2'>
		<% } %>	
		</td>
		<td><%=vo.getRid() %></td><td><%=vo.getRpw() %></td><td><%=vo.getRdate() %></td><td><%=vo.getViewcnt() %></td>

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