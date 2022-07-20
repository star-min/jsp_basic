<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header id="hd">
            <div class="hd_wrap">
                <a href="index.html" class="logo">
                    <img src="./img/art_547244_1624353913.jpg" alt="로고">
                </a>
                <nav id="gnb">
                    <ul>
                        <li>
                            <span>회사소개</span>
                            <ul class="sub">
                                <li><a href="company.html#page1">비전</a></li>
                                <li><a href="company.html#page2">사업소개</a></li>
                                <li><a href="company.html#page3">연혁</a></li>
                                <li><a href="company.html#page4">Cl/Bl</a></li>
                                <li><a href="company.html#page5">스포츠</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>지속가능경영</span>
                            <ul class="sub">
                                <li><a href="product.html#page1">[ESG스토리]</a></li>
                                <li><a href="product.html#page2">ESG추진방향</a></li>
                                <li><a href="product.html#page3">ESG추진체계</a></li>
                                <li><a href="product.html#page4">이해관계자 참여</a></li>
                                <li><a href="product.html#page5">지속경영자료실</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>경영정보</span>
                            <ul class="sub">
                                <li><a href="opreation.html#page1">지배구조</a></li>
                                <li><a href="opreation.html#page2">주주총회</a></li>
                                <li><a href="opreation.html#page3">정관</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>재무정보</span>
                            <ul class="sub">
                                <li><a href="midea.html#page1">재무하이라이트</a></li>
                                <li><a href="midea.html#page2">신용등급</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>주식정보</span>
                            <ul class="sub">
                                <li><a href="stock.html#page1">주주현황</a></li>
                                <li><a href="stock.html#page2">주주환원</a></li>
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
				<a href="./member/login.jsp">로그인</a>
				<a href="">방문객</a>
				<a href="./member/agree.jsp">회원가입</a>
				<%
					} else if(!sid.equals("admin")){
				%>
				<a href="./member/logout.jsp">로그아웃</a>
				<a href="./member/mypage.jsp"><%=sname%></a>
				<a href="./board/board1.jsp">게시판</a>
				<% } else { %>
				<a href="./member/mypage.jsp"><%=sname%></a>
				<a href="./board/board1.jsp">게시판관리</a>
				<a href="./member/memberList.jsp">회원목록</a>
				<a href="./member/logout.jsp">로그아웃</a>
				<% } %>
			<span id="msg_a"></span>
			</p>
            </div>
        </header>
</body>
</html>