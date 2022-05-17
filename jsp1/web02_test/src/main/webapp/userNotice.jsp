<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="kr.go.yeosu.model.*" %>
<%
	//Ctrl에서 보내온 list 객체를 받아 해당 VO 객체로 분리하여 출력
	NoticeVO vo = (NoticeVO) request.getAttribute("vo");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 목록</title>
<style>
.tb2 { display:table; width:1100px; margin:20px auto; border-collapse: collapse; }
.tb2 tr { display:table-row; }
.tb2 th, .tb2 td { display:table-cell; line-height:36px; border-bottom:1px solid #333; text-align: center; 
font-size:14px; }
.tb2 tr:frist-child th, .tb2 tr:frist-child td { border-top:1px solid #333; } 
.tb2 th { background-color:#ccc; }
.tb2 td.img_data { max-width:170px; }
.tb2 td.img_data img { max-width:170px; height:auto; }
.tb2 td p.coment { max-width:170px; line-height:24px;}
</style>
</head>
<body>
<div class="container">
<header id="hd">
	<%@ include file="hd.jsp" %>
</header>
<div id="content">
	<table class="tb2">
		<tbody>
	<%
		if(vo!=null){
	%>
			<tr>
				<th>글번호</th>
				<td><%=vo.getNno() %></td>
			</tr>
			<tr>
				<th>제목</th>	
				<td><%=vo.getNtitle() %></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><%=vo.getNconetnt() %></td>
			</tr>
			<tr>
				<th>추가 이미지</th>
				<td><img src="<%=vo.getNpic() %>" alt="<%=vo.getNtitle() %>">
				</td>
			</tr>
			<tr>
				<th>첨부 자료</th>
				<td><a href="<%=vo.getNdata() %>"><%=vo.getNtitle() %></a></td>
			</tr>
			<tr>
				<th>작성일</th>
				<td><%=vo.getResdate() %></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><%=vo.getNname() %></td>
			</tr>
			<tr>
				<th>읽은 횟수</th>
				<td><%=vo.getViewcnt() %></td>
			</tr>
			<tr>
				<td colspan="2">
					<a href="/web02/GetUserNoticeListCtrl" class="frm_btn">목록</a> &nbsp; &nbsp; &nbsp; &nbsp;
				</td>
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