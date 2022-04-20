<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%		// <% = 스크립트릿(scriptlet)
	String[] dp1 = {"회사소개","지속가능경영","경영정보","재무정보","주식정보"};
	String[][] dp2 = {{"비전","사업소개","연혁","CI/BI","스포츠"},
			{"[ESG스토리]","ESG추진방향","ESG추진채계","이해관계자 참여","지속경영자료실"},
			{"지배구조", "주주총회","정관"},
			{"재무하이라이트","신용등급"},
			{"주주현황","주주환원","배당조회","주가정보"}
	};
	
%>
<%--    	 <%= 표현식(expression)%>		 --%>
<a class="Logo" herf="index.jsp"><img alt="" src=""></a>
<nav id="gnb">
	<ul>
	<% for(int i=0;i<dp1.length;i++){ %>
		<li>
			<span class="dp1"><%=dp1[i]%></span>
			<ul class="sub">
			<% for(int j=0;j<dp2[i].length;j++){ %>
				<li><a class="dp2" href=""><%= dp2[i][j] %></a></li>
			<%} %>
			</ul>
		</li>
	<% } %>
	</ul>
</nav>