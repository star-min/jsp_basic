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
<form action="EditNoticeCtrl" method="post">
	<table class="tb2">
		<tbody>
	<%
		if(vo!=null){
	%>
			<tr>
				<th>글번호</th>
				<td><input type="text" name="nno" value="<%=vo.getNno() %>" readonly></td>
			</tr>
			<tr>
				<th>제목</th>	
				<td><input type="text" name="ntitle" value="<%=vo.getNtitle() %>"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="ncontent" cols="100" rows="5"><%=vo.getNconetnt() %></textarea></td>
			</tr>
			<tr>
				<th>추가 이미지</th>
				<td><img src="<%=vo.getNpic() %>" alt="<%=vo.getNtitle() %>">
					<input type="hidden" name="npic" value="<%=vo.getNpic() %>"/>
				</td>
			</tr>
			<tr>
				<th>첨부 자료</th>
				<td><input type="file" name="ndata" value="<%=vo.getNdata() %>"></td>
			</tr>
			<tr>
				<th>작성일</th>
				<td><%=vo.getResdate() %></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="nname" value="<%=vo.getNname() %>"></td>
			</tr>
			<tr>
				<th>읽은 횟수</th>
				<td><%=vo.getViewcnt() %></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="수정" class="frm_btn"> &nbsp; &nbsp; &nbsp; &nbsp;
					<input type="reset" value="취소" class="frm_btn"> &nbsp; &nbsp; &nbsp; &nbsp;
					<a href="/web02/GetNoticeListCtrl" class="frm_btn">목록</a> &nbsp; &nbsp; &nbsp; &nbsp;
					<a href="/web02/DelNoticeCtrl?nno=<%=vo.getNno() %>" class="frm_btn">삭제</a>
				</td>
			</tr>
	<%
		}
	%>
		</tbody>
	</table>
</form>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>