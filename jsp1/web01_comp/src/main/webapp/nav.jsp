<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <div class="hd_wrap">
      <a href="index.jsp" class="logo">
          <img src="./img/logo/logo.png" alt="로고">
      </a>
      <nav id="gnb">
          <ul>
              <li>
                  <span>모델</span>
                  <ul class="sub">
                      <li><a href="model.jsp#page1">ALL</a></li>
                      <li><a href="model.jsp#page2">SEDAN</a></li>
                      <li><a href="model.jsp#page3">SUV</a></li>
                  </ul>
              </li>
              <li>
                  <span>구매</span>
                  <ul class="sub">
                      <li><a href="buy.jsp#page1">구매 프로그램</a></li>
                      <li><a href="buy.jsp#page2">전기차 구매가이드</a></li>
                      <li><a href="buy.jsp#page3">제네시스 스펙트럼</a></li>
                  </ul>
              </li>
              <li>
                  <span>체험</span>
                  <ul class="sub">
                      <li><a href="experience.jsp#page1">스페이스</a></li>
                      <li><a href="experience.jsp#page2">시승신청</a></li>
                      <li><a href="experience.jsp#page3">제네시스 드라이빙 익스피리언스</a></li>
                  </ul>
              </li>
              <li>
                  <span>멤버스</span>
                  <ul class="sub">
                      <li><a href="members.jsp#page1">제네시스 멤버십</a></li>
                      <li><a href="members.jsp#page2">제네시스 커넥티드 서비스</a></li>
                      <li><a href="members.jsp#page3">디지털 서비스</a></li>
                  </ul>
              </li>
              <li>
                  <span>제네시스</span>
                  <ul class="sub">
                      <li><a href="genesis.jsp#page1">브랜드</a></li>
                      <li><a href="genesis.jsp#page2">콘셉트카</a></li>
                      <li><a href="genesis.jsp#page3">모터쇼</a></li>
                      <li><a href="genesis.jsp#page4">로드트립</a></li>
                  </ul>
              </li>
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
		<span id="msg_a"></span>
		<% } %>
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
				msg_a.innerHTML = msg;
				alert(msg);
			}
		}
	</script>
  </div>