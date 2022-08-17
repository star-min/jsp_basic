<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*" %>
<%-- <%
	Connection conn = null;
	PreparedStatement pstat = null;
	ResultSet rs = null;
	String sql = "";
	int cnt = 0;
	
	req.setCharacterEncoding("UTF-8");
	String Custname = req.getParameter("custname");
	String Phone = req.getParameter("phone");
	String Address = req.getParameter("address");
	String Grade = req.getParameter("grade");
	String City = req.getParameter("city");
	
	sql = "insert into member_tbl_02 values((select nvl(max(seq), 0)+1 from member_tbl_02),?,?,?,sysdate,?,?)";
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection
				("jdbc:oracle:thin:@//localhost:1521/xe","system", "1234");
		
		pstat = conn.prepareStatement(sql);
		pstat.setString(1, custname);
		pstat.setString(2, phone);
		pstat.setString(3, address);
		pstat.setString(4, grade);
		pstat.setString(5, city);
		cnt = pstat.executeUpdate();
	} catch (Exception e) {
		System.out.println("잘못된 요청으로 업무를 처리하지 못했습니다.");
		e.printStackTrace();
	} finally {
		con.close();
		pstat.close();
	}
%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
function check_form(f) {
	if(f.custname.value.trim()==""){
		alert("가입일자가 입력되지 않았습니다.")
		f.joindate.focus();
		return false;
	}
}
</script>
<body>
	<h2>홈쇼핑 회원 등록</h2>
	<form action="memberList.jsp" method="post" onsubmit="return check_form(this)">
	<table>
		<tbody>
			<tr>
				<th>회원번호(자동발생)</th>
				<td><input type="text" name="custno"></td>
			</tr>
				<tr>
				<th>회원성명</th>
				<td><input type="text" name="custname"></td>
			</tr>
				<tr>
				<th>회원전화</th>
				<td><input type="text"></td>
			</tr>
				<tr>
				<th>회원주소</th>
				<td><input type="text"></td>
			</tr>
				<tr>
				<th>가입일자</th>
				<td><input type="text"></td>
			</tr>
				<tr>
				<th>고객등급[A:VIP,B:일반,C:직원]</th>
				<td><input type="text"></td>
			</tr>
			<tr>
				<th>도시코드</th>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="등록">
					<input type="button" value="조회" >
				</td>
			</tr>
		</tbody>
	</table>
</form>
</body>
</html>