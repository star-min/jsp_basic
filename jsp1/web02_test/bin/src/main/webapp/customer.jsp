<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="e404.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kr.go.yeosu.model.CustomerVO" %>
<%
	//보내진 customList 객체를 받아 customer로 분리하여 출력
	CustomerVO cus = (CustomerVO) request.getAttribute("cus");
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
<form action="/web02/EditCustomerCtrl" method="post">
	<table class="tb2">
		<tbody>
	<%
		if(cus!=null){
	%>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="cid" value="<%=cus.getCid() %>" readonly></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="text" name="upw" value="<%=cus.getUpw() %>"></td>
			</tr>
			<tr>
				<th>고객명</th>
				<td><input type="text" name="uname" value="<%=cus.getUname() %>"></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="tel" name="tel" value="<%=cus.getTel() %>"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="email" name="email" value="<%=cus.getEmail() %>"></td>
			</tr>
			<tr>
				<th>생년월일</th>	
				<td><input type="date" name="birth" value="<%=cus.getBirth() %>"></td>
			</tr>
			<tr>
				<th>가입일</th>
				<td><%=cus.getRegdate() %></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="수정" class="frm_btn"> &nbsp; &nbsp; &nbsp; &nbsp;
					<input type="reset" value="취소" class="frm_btn"> &nbsp; &nbsp; &nbsp; &nbsp;
					<a href="/web02/GetCustomerListCtrl">목록</a> &nbsp; &nbsp; &nbsp; &nbsp;
					<a href="/web02/DelCustomerCtrl?cid=<%=cus.getCid() %>">삭제</a>
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