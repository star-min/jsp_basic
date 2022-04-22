<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  /*
	스크립트릿(scriptlet)  */
	String[] dp1 = {"회사소개","상품소개","서비스","커뮤니티","고객센터"};
	String[][] dp2 = {{"회사개요","인사말","회사연혁","오시는길"},
			{"모니터","스마트폰","태블릿","화상기기"},
			{"온라인서비스","방문서비스","택배서비스"},
			{"게시판","자료실","갤러리"},
			{"이용후기","당부하는말","부정신고센터"}};
	String[][] lnk = {{"sub1.jsp#page1","sub1.jsp#page2","sub1.jsp#page3","sub1.jsp#page4"},
			{"sub2.jsp#page1","sub2.jsp#page2","sub2.jsp#page3","sub2.jsp#page4"},
			{"service1.jsp","service2.jsp","service3.jsp"},
			{"board1.jsp","board2.jsp","board3.jsp"},
			{"user1.jsp","user2.jsp","user3.jsp"}};
%>
<%-- <%=표현식(expression) %> --%>
<a class="logo" href="index.jsp"><img src="./images/samsung_logo.svg" alt="로고"></a>
<nav id="gnb">
<ul>
<%
	for(int i=0;i<dp1.length;i++) {
%>
	<li>
		<span class="dp1"><%=dp1[i] %></span>
		<ul class="sub">
<%
		for(int j=0;j<dp2[i].length;j++) {
%>
			<li><a class="dp2" href="<%=lnk[i][j] %>"><%=dp2[i][j] %></a></li>
<%
		}
%>
		</ul>
	</li>
<%
	}
%>
</ul>
</nav>
<p id="tnb">
	<a href="login.jsp">로그인</a>
	<a href="">상단2</a>
	<a href="">상단3</a>
</p>