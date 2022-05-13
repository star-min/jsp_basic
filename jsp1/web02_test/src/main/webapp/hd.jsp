<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//로그인 여부 : sid와 sname이 null이 아니라면, 로그인 한 것임.
	String sid = (String) session.getAttribute("sid");
	String sname = (String) session.getAttribute("sname");
	if(sid!=null) sid=sid.trim().toLowerCase();
%>
<div class="hd_wrap">
	<nav id="gnb">
	
	</nav>
	<nav id="tnb">
		<ul>
			<li><a href="/web02/GetCustomerListCtrl">고객 목록</a></li>
			<li><a href="/web02/GetTourListCtrl">방문지 목록</a></li>
			<li><a href="/web02/GetNoticeListCtrl">공지사항 목록</a></li>
			<li><a href="/web02/GetImpressionListCtrl">이용후기 목록</a></li>
		</ul>
	</nav>
</div>