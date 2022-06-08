<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="b" class="com.example.Human" />
<jsp:setProperty name="b" property="*" />
<%-- <jsp:setProperty name="b" property="country" value="<%=b.getCountry() %>" />
<jsp:setProperty name="b" property="name" value="<%=b.getName() %>" />
<jsp:setProperty name="b" property="age" value="<%=b.getAge() %>" />    
<jsp:setProperty name="b" property="hobby" value="<%=b.getHobby() %>" /> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션 태그 setProperty, getProperty</title>
</head>
<body>
<h2>getProperty 액션 태그를 활용하여 데이터를 출력</h2>
<table class="table">
	<tbody>
		<tr>
			<th>소속국가</th>
			<td>
				<jsp:getProperty name="b" property="country" /><br>
<%-- 				<%=b.getCountry() %> --%>
			</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>
				<jsp:getProperty name="b" property="name" /><br>
<%-- 				<%=b.getName() %> --%>
			</td>
		</tr>
		<tr>
			<th>나이</th>
			<td>
				<jsp:getProperty name="b" property="age" /><br>
<%-- 				<%=b.getAge() %> --%>
			</td>
		</tr>
		<tr>
			<th>취미</th>
			<td>
				<jsp:getProperty name="b" property="hobby" /><br>
<%-- 				<%=b.getHobby() %> --%>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<a href="07Human.jsp">07Human.jsp로 이동</a>
			</td>
		</tr>
	</tbody>
</table>
</body>
</html>