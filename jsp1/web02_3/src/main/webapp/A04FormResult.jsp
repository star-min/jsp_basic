<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.*" %>
<%
	//전송방식이 post인 경우는 반드시 인코딩 방식을 UTF-8로 지정해야함. post방식은 인코딩되어 전송되는 방식이므로
	request.setCharacterEncoding("UTF-8");
	String uploadPath = request.getRealPath("upload");
	int size = 10*1024*1024;
	String filename1 = "";
	
	// 일반 폼 데이터 받아오기
/*	
 	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String address = request.getParameter("address");
	int qty = Integer.parseInt(request.getParameter("qty"));
	String email = request.getParameter("email");
	String url = request.getParameter("url");
	String date = request.getParameter("date");
	String comment = request.getParameter("comment");
	String baseball = request.getParameter("baseball");
	String base = request.getParameter("base");
	String upload = request.getParameter("upload"); 
	
	String[] four = request.getParameterValues("four");
	String[] five = request.getParameterValues("five");
*/
//	multipart로 받을 경우
	
	String name = "";
	String id = "";
	String pw = "";
	String address = "";
	int qty = 0;
	String email = "";
	String url = "";
	String date = "";
	String comment = "";
	String baseball = "";
	String base = "";
	String upload = "";	 
	try {
		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "UTF-8");
		
		Enumeration files = multi.getFileNames();

		name = multi.getParameter("name");
		id = multi.getParameter("id");
		pw = multi.getParameter("password");
		address = multi.getParameter("address");
		qty = Integer.parseInt(multi.getParameter("qty"));
		email = multi.getParameter("email");
		url = multi.getParameter("url");
		date = multi.getParameter("date");
		comment = multi.getParameter("comment");
		baseball = multi.getParameter("baseball");
		base = multi.getParameter("base");
		upload = multi.getParameter("upload"); 
		
		String[] four = multi.getParameterValues("four");
		String[] five = multi.getParameterValues("five");
		
		String file1 = (String) files.nextElement();
		filename1 = multi.getFilesystemName(file1); 
	} catch(Exception e){
		e.printStackTrace();
	}


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼 데이터 전송결과</title>
</head>
<body>
<h3>/html/form.html에서 전달되어진 데이터</h3>
<div>
	<p>Name :<%=name %></p>
	<p>id :<%=id %></p>
	<p>Password :<%=pw %></p>
	<p>Address :<%=address %></p>
	<p>Qty :<%=qty %></p>
	<p>E-mail :<%=email %></p>
	<p>Url :<%=url %></p>
	<p>Date :<%=date %></p>
	<p>Comment :<br><%=comment %></p>
	<p>Baseball :<%=baseball %></p>
	<p>base :<%=base %></p>
	<p>file :<%=upload %></p>
</div>
</body>
</html>