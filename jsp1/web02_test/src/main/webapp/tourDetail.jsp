<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="kr.go.yeosu.model.*" %>
<%
	//Ctrl에서 보내온 list 객체를 받아 해당 VO 객체로 분리하여 출력
	TourlistVO vo = (TourlistVO) request.getAttribute("vo");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>해당 방문지 정보 수정</title>
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
<form action="EditTourlistCtrl" method="post">
	<table class="tb2">
		<tbody>
	<%
		if(vo!=null){
			//해당VO의 객체 선언
	%>
			<tr>
				<th>번호</th>
				<td><input type="text" name="ppno" value="<%=vo.getPpno() %>" readonly></td>
			</tr>
			<tr>
				<th>방문지코드</th>	
				<td><input type="text" name="pid" value="<%=vo.getPid() %>" readonly></td>
			</tr>
			<tr>
				<th>방문지명</th>
				<td><input type="text" name="pname" value="<%=vo.getPname() %>"></td>
			</tr>
			<tr>
				<th>유형</th>
				<td><input type="text" name="ptype" value="<%=vo.getPtype() %>"></td>
			</tr>
			<tr>
				<th>방문지 설명</th>
				<td><textarea name="pcoment" cols="100" rows="5"><%=vo.getPcoment() %></textarea></td>
			</tr>
			<tr>
				<th>이미지1</th>
				<td class="img_data">
					<label for="inimg1">
					<% if(vo.getPimg1()!=null) { %>
						<img src='<%=vo.getPimg1() %>' alt='<%=vo.getPname() %>1'>
					<% } else { %>
						<img src="./img/noimg.png" alt="해당이미지없음">
					<% } %>	
					</label>
					<input type="file" name="pimg1" id="inimg1" accept="image/png, image/jpeg. image/gif" value="<%=vo.getPimg1() %>">
				</td>
			</tr>
			<tr>
				<th>이미지2</th>
				<td class="img_data">
					<label for="inimg2">
					<% if(vo.getPimg2()!=null) { %>
						<img src='<%=vo.getPimg2() %>' alt='<%=vo.getPname() %>2'>
					<% } else { %>
						<img src="./img/noimg.png" alt="해당이미지없음">
					<% } %>	
					</label>
					<input type="file" name="pimg2" id="inimg2" accept="image/png, image/jpeg. image/gif" value="<%=vo.getPimg2() %>">
				</td>
			</tr>
			<tr>
				<th>이미지3</th>
				<td class="img_data">
					<label for="inimg3">
					<% if(vo.getPimg3()!=null) { %>
						<img src='<%=vo.getPimg3() %>' alt='<%=vo.getPname() %>3'>
					<% } else { %>
						<img src="./img/noimg.png" alt="해당이미지없음">
					<% } %>	
					</label>
					<input type="file" name="pimg3" id="inimg3" accept="image/png, image/jpeg. image/gif" value="<%=vo.getPimg3() %>">
				</td>
			</tr>
			<tr>
				<th>이미지4</th>
				<td class="img_data">
					<label for="inimg4">
					<% if(vo.getPimg4()!=null) { %>
						<img src='<%=vo.getPimg4() %>' alt='<%=vo.getPname() %>4'>
					<% } else { %>
						<img src="./img/noimg.png" alt="해당이미지없음">
					<% } %>	
					</label>
					<input type="file" name="pimg4" id="inimg4" accept="image/png, image/jpeg. image/gif" value="<%=vo.getPimg4() %>">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="수정" class="frm_btn"> &nbsp; &nbsp; &nbsp; &nbsp;
					<input type="reset" value="취소" class="frm_btn"> &nbsp; &nbsp; &nbsp; &nbsp;
					<a href="/web02/GetTourListCtrl" class="frm_btn">목록</a> &nbsp; &nbsp; &nbsp; &nbsp;
					<a href="/web02/DelTourlistCtrl?ppno=<%=vo.getPpno() %>" class="frm_btn">삭제</a>
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