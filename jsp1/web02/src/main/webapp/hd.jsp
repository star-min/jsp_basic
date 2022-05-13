<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String mid = (String) session.getAttribute("mid");
	String mname = (String) session.getAttribute("mname");
	if(mid!=null) mid=mid.trim().toLowerCase();
%>
<div class="hd_wrap">
	<nav id="gnb">
	
	</nav>
	<nav id="tnb">
		<ul>
			<li><a href="/web02/GetMemberListCtrl">고객 목록</a></li>
			<li><a href="/web02/GetTourListCtrl">방문지 목록</a></li>
			<li><a href="/web02/GetNnoticeListCtrl">공지사항 목록</a></li>
			<li><a href="/web02/GetReviewListCtrl">이용후기 목록</a></li>
		</ul>
	</nav>
</div>