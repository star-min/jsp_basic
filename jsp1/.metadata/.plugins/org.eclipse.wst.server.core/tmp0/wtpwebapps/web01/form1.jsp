<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String address = request.getParameter("address");
	int qty = Integer.parseInt(request.getParameter("qty"));
	String email = request.getParameter("email");
	String url = request.getParameter("url");
	String date = request.getParameter("date");
	String comment = request.getParameter("comment");
	String baseball = request.getParameter("baseball");
	String victory = request.getParameter("victory");
	String file = request.getParameter("file");
	
	String[] favorite = request.getParameterValues("favorite");
	String[] playoff = request.getParameterValues("playoff");
	%>
	
	<div class="panel-heading">
		<h2>Form</h2>
	</div>
	<div class="panel-body">
		<fieldset>
			<legend>폼의 데이터 전송실습</legend>
			<table class="table">
				<tbody>
					<tr>
						<th>이름</th>
						<td><%= name %></td>
					</tr>
					<tr>
						<th>아이디</th>
						<td><%= id %></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><%= pw %></td>
					</tr>
					<tr>
						<th>주소</th>
						<td><%= address %></td>
					</tr>
					<tr>
						<th>주문수량</th>
						<td><%= qty %></td>
					</tr>
					<tr>
						<th>E-Mail</th>
						<td><%= email %></td>
					</tr>
					<tr>
						<th>URL</th>
						<td><%= url %></td>
					</tr>
					<tr>
						<th>날짜</th>
						<td><%= date %></td>
					</tr>
					<tr>
						<th>코멘트</th>
						<td><%= comment %></td>
					</tr>
					<tr>
						<th>야구팀</th>
						<td><%= baseball %></td>
					</tr>
					<tr>
						<th>우승 예상팀</th>
						<td><%= victory %></td>
					</tr>
					<tr>
						<th>4강 진출 예상팀?</th>
						<td>
							<ul>
							<%
							for(String f : favorite){
							%>
								<li><%=f %></li>
							<%
							}
							%>
							</ul>
						</td>
					</tr>
					<tr>
						<th>플레이오프 진출 예상팀?</th>
						<td>
							<ul>
							<%
							for(String p : playoff){
							%>
								<li><%=p %></li>
							<%
							}
							%>
							</ul>
						</td>
					</tr>
				</tbody>
			</table>
		</fieldset>
	</div>
</body>
</html>