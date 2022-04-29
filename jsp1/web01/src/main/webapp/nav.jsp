<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%		// <% = 스크립트릿(scriptlet)
	String[] dp1 = {"회사소개","지속가능경영","경영정보","재무정보","주식정보"};
	String[][] dp2 = {{"비전","사업소개","연혁","CI/BI","스포츠"},
			{"[ESG스토리]","ESG추진방향","ESG추진채계","이해관계자 참여","지속경영자료실"},
			{"지배구조", "주주총회","정관"},
			{"재무하이라이트","신용등급"},
			{"주주현황","주주환원","배당조회","주가정보"}
	};
	String[][] lnk = {{"sub1.jsp#page1","sub1.jsp#page2","sub1.jsp#page3","sub1.jsp#page4","sub1.jsp#page5"},
			{"sub2.jsp#page1","sub2.jsp#page2","sub2.jsp#page3","sub2.jsp#page4","sub2.jsp#page5"},
			{"service1.jsp","service2.jsp","service3.jsp"},
			{"board1.jsp","board2.jsp"},
			{"user1.jsp","user2.jsp","user3.jsp","user3.jsp"}};
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
				<li><a class="dp2" href="<%=lnk[i][j] %>"><%= dp2[i][j] %></a></li>
			<%} %>
			</ul>
		</li>
	<% } %>
	</ul>
</nav>
<p id="tnb">
	<%
		String sid = (String) session.getAttribute("uid");
		String sname = (String) session.getAttribute("name");
		if(sid == null){
	%>
	<a href="login.jsp">로그인</a>
	<a href="">방문객</a>
	<a href="agree.jsp">회원가입</a>
	<%
		} else if(!sid.equals("admin")){
	%>
	<a href="logout.jsp">로그아웃</a>
	<a href="mypage.jsp"><%=sname%></a>
	<a href="board1.jsp">게시판</a>
	<% } else { %>
	<a href="mypage.jsp"><%=sname%></a>
	<a href="board1.jsp">게시판관리</a>
	<a href="memberList.jsp">회원목록</a>
	<a href="">상품관리</a>
	<a href="logout.jsp">로그아웃</a>
	<% } %>
<span id="msg_a"></span>
</p>
<script>
	//주소 입력줄로 받은 msg를 받아 출력하는 부분임
	var url = location.href;  //url입력줄의 메시지를 포함한 주소를 저장
	var pos = url.indexOf("?msg=");
	var msg = url.substr(pos+5); //메시지만 추출
	var msg_a = document.getElementById("msg_a"); //해당 msg_a 아이디 요소 선택
	msg_a.innerHTML = msg;
	//msg_a.innerHTML = decodeURI(msg);
	if(pos>0) {
		if(msg!=""){
			alert(msg);
		}
	}
</script>
