<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kr.go.sokcho.model.NnoticeVO" %>
<%
	//보내진 customList 객체를 받아 customer로 분리하여 출력
	NnoticeVO nno = (NnoticeVO) request.getAttribute("nno");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객 정보</title>
<style>
.tb1 { display:table; width:900px; margin:20px auto; border-collapse: collapse; }
.tb1 tr { display:table-row; }
.tb1 th, .tb1 td { display:table-cell; line-height:36px; border-bottom:1px solid #333; text-align: center; }
.tb1 th { border-top:1px solid #333; background-color:#ccc; }
</style>
</head>
<body>
<div class="container">
<header id="hd">
	<%@ include file="hd.jsp" %>
</header>
<div id="content">
<form action="/web02/EditMemberCtrl" method="post">
	<table class="tb2">
		<tbody>
	<%
		if(nno!=null){
	%>
			<tr>
				<th>글번호</th>
				<td><input type="text" name="nno" value="<%=nno.getTno() %>" readonly></td>
			</tr>
			<tr>
				<th>제목</th>	
				<td><input type="text" name="ntitle" value="<%=nno.getNtitle() %>"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><%=nno.getNcontent() %></td>
			</tr>
			<tr>
				<th>추가 이미지</th>
				<td><%=nno.getNpic() %></td>
			</tr>
			<tr>
				<th>첨부 자료</th>
				<td><%=nno.getResdate() %></td>
			</tr>
			<tr>
				<th>작성일</th>
				<td><%=nno.getResdate() %></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><%=nno.getNname() %></td>
			</tr>
			<tr>
				<th>읽은 횟수</th>
				<td><%=nno.getViewcnt() %></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="수정" class="frm_btn"> &nbsp; &nbsp; &nbsp; &nbsp;
					<input type="reset" value="취소" class="frm_btn"> &nbsp; &nbsp; &nbsp; &nbsp;
					<a href="/web02/GetNoticeListCtrl" class="frm_btn">목록</a> &nbsp; &nbsp; &nbsp; &nbsp;
					<a href="/web02/DelNoticeCtrl?nno=<%=nno.getTno() %>" class="frm_btn">삭제</a>
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