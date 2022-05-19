<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kr.go.yeosu.model.CustomerVO" %>
<%@ page import="kr.go.yeosu.model.ImpressionVO" %>
<%@ page import="kr.go.yeosu.model.TourlistVO" %>
<%@ page import="kr.go.yeosu.model.NoticeVO" %>
<%
	List<TourlistVO> list = (ArrayList<TourlistVO>) request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관광 정보</title>
<style>
.tb1 { display:table; width:900px; margin:20px auto; border-collapse: collapse; }
.tb1 tr { display:table-row; }
.tb1 th, .tb1 td { display:table-cell; line-height:36px; border-bottom:1px solid #333; text-align: center; }
.tb1 th { border-top:1px solid #333; background-color:#ccc; }
.page_ra { display:none; }
.page_ra + .page { display:none; }
.page_ra:checked + .page { display:block; }
</style>
</head>
<body>
<div class="container">
<header id="hd">
	<%@ include file="hd.jsp" %>
</header>
<div id="content">
	<figure id="visual">
		<img src="./img/vis02.jpg">
	</figure>
	<div class="bread_box">
	<%
	for(int i=0;i<list.size();i++){
		//해당VO의 객체 선언
		TourlistVO vo = list.get(i);
%>
		<label for="<%=vo.getPid() %>"><%=vo.getPname() %></label>
<%
	}
%>
	</div>
	<div class="con">
<%
	for(int i=0;i<list.size();i++){
		TourlistVO vo = list.get(i);
		if(i==0) {
%>
		<input type="radio" name="page_ra" id="<%=vo.getPid() %>" class="page_ra" checked>
		<section class="page" id="page0">
			<div class="page_wrap">
				<h2 class="page_tit"><%=vo.getPname() %></h2>
<%
			if(vo.getPcoment()!=null) {
%>
				<p class="page_coment"><%=vo.getPcoment() %></p>
<%				
			}
			if(vo.getPimg1()!=null) {
%>
				<figure class="page_img1"><img src="<%=vo.getPimg1() %>" alt="<%=vo.getPname() %>" /></figure>
<%				
			}
			if(vo.getPimg2()!=null) {
%>
				<figure class="page_img2"><img src="<%=vo.getPimg2() %>" alt="<%=vo.getPname() %>" /></figure>
<%				
			}
			if(vo.getPimg3()!=null) {
%>
				<figure class="page_img3"><img src="<%=vo.getPimg3() %>" alt="<%=vo.getPname() %>" /></figure>
<%				
			}
			if(vo.getPimg4()!=null) {
%>
				<figure class="page_img4"><img src="<%=vo.getPimg4() %>" alt="<%=vo.getPname() %>" /></figure>
<%				
			}
%>						
			</div>	
		</section>
<%
		} else {
%>
		<input type="radio" name="page_ra" id="<%=vo.getPid() %>" class="page_ra">
		<section class="page" id="page<%=i %>">
			<div class="page_wrap">
				<h2 class="page_tit"><%=vo.getPname() %></h2>
<%
			if(vo.getPcoment()!=null) {
%>
				<p class="page_coment"><%=vo.getPcoment() %></p>
<%				
			}
			if(vo.getPimg1()!=null) {
%>
				<figure class="page_img1"><img src="<%=vo.getPimg1() %>" alt="<%=vo.getPname() %>" /></figure>
<%				
			}
			if(vo.getPimg2()!=null) {
%>
				<figure class="page_img2"><img src="<%=vo.getPimg2() %>" alt="<%=vo.getPname() %>" /></figure>
<%				
			}
			if(vo.getPimg3()!=null) {
%>
				<figure class="page_img3"><img src="<%=vo.getPimg3() %>" alt="<%=vo.getPname() %>" /></figure>
<%				
			}
			if(vo.getPimg4()!=null) {
%>
				<figure class="page_img4"><img src="<%=vo.getPimg4() %>" alt="<%=vo.getPname() %>" /></figure>
<%				
			}
%>		
			</div>	
		</section>
<%
		}
	}
%>
	</div>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>