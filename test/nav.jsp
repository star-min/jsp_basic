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
<a class="logo navbar-header" href="index.jsp"><img src="./images/samsung_logo.svg" alt="로고"></a>
<nav id="gnb" class="nav navbar-nav navbar-left">
<ul class="nav navbar-nav">
<%
	for(int i=0;i<dp1.length;i++) {
%>
	<li class="dropdown">
		<a href="#" class="dropdown-toggle" data-toggle="dropdown"><%=dp1[i] %><span class="caret"></span></a>
		<ul class="dropdown-menu">
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
<p id="tnb" class="nav navbar-nav navbar-right" style="padding-top:18px;">
	<%  
		String sid = (String) session.getAttribute("uid");
		String sname = (String) session.getAttribute("name");
		if(sid==null) {	//방문자
	%>
	<a href="login.jsp">로그인</a>
	<a href="">손님</a>
	<a href="agree.jsp">회원가입</a>
	<%
		} else if(!sid.equals("admin")){ //일반회원
	%>
	<a href="logout.jsp">로그아웃</a>
	<a href="mypage.jsp"><%=sname %></a>
	<a href="board1.jsp">게시판</a>
	<%
		} else {	//관리자
	%>
	<a href="mypage.jsp"><%=sname %></a>
	<a href="board1.jsp">게시판 관리</a>
	<a href="memberList.jsp">회원관리</a>
	<a href="">상품관리</a>
	<a href="logout.jsp">로그아웃</a>
	<span id="msg_a"></span>
	<%
		}
	%>
</p>
<script>
	//주소 입력줄로 받은 msg를 받아 출력하는 부분임
	var url = location.href;  //url입력줄의 메시지를 포함한 주소를 저장
	var pos = url.indexOf("?msg=");
	var msg = url.substr(pos+5); //메시지만 추출
	var msg_a = document.getElementById("msg_a"); //해당 msg_a 아이디 요소 선택
	//msg_a.innerHTML = decodeURI(msg);
	if(pos>0) {
		if(msg!=""){
			msg_a.innerHTML = msg;
			alert(msg);
		}
	}
</script>