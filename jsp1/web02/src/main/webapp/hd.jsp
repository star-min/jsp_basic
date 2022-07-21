<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kr.go.sokcho.model.MemberVO" %>
<%@ page import="kr.go.sokcho.model.ReviewVO" %>
<%
	String mid = (String) session.getAttribute("mid");
	String mname = (String) session.getAttribute("mname");
	if(mid!=null) mid=mid.trim().toLowerCase();
%>
<%-- <div class="hd_wrap">
	<nav id="gnb">
		<ul>
			<li><a href="" class="menu1">관광명소</a>
				<ul class="sub">
		<%
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = "";
			
			try {
				Class.forName("oracle.jdbc.OracleDriver");
				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
				sql = "select * from place order by ptype, prop";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					if(rs.getString("ptype").equals("A")) {
%>
							<li class="cate"><a href='PlaceCtrl?ptype=<%=rs.getString("ptype") %>&prop=<%=rs.getString("prop") %>'><%=rs.getString("propname") %></a></li>								
<%						
					}
				}	
%>
				</ul>
			</li>
			<li><a href="" class="menu1">문화축제</a>
				<ul class="sub">
	
<%
				sql = "select * from place order by ptype, prop";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					if(rs.getString("ptype").equals("B")) {
%>
							<li class="cate"><a href='PlaceCtrl?ptype=<%=rs.getString("ptype") %>&prop=<%=rs.getString("prop") %>'><%=rs.getString("propname") %></a></li>								
<%						
					}
				}	
%>
				</ul>
			</li>
			<li><a href="" class="menu1">숙박/음식/쇼핑</a>
				<ul class="sub">
	
<%
				sql = "select * from place order by ptype, prop";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					if(rs.getString("ptype").equals("C") || rs.getString("ptype").equals("D") || rs.getString("ptype").equals("E")) {
%>
							<li class="cate"><a href='PlaceCtrl?ptype=<%=rs.getString("ptype") %>&prop=<%=rs.getString("prop") %>'><%=rs.getString("propname") %></a></li>								
<%						
					}
				}	
%>
				</ul>
			</li>
			<li><a href="" class="menu1">체험관광</a>
				<ul class="sub">
	
<%
				sql = "select * from place order by ptype, prop";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					if(rs.getString("ptype").equals("F")) {
%>
							<li class="cate"><a href='PlaceCtrl?ptype=<%=rs.getString("ptype") %>&prop=<%=rs.getString("prop") %>'><%=rs.getString("propname") %></a></li>								
<%						
					}
				}	
%>
				</ul>
			</li>
			<li><a href="" class="menu1">교통</a>
				<ul class="sub">
	
<%
				sql = "select * from place order by ptype, prop";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					if(rs.getString("ptype").equals("G")) {
%>
							<li class="cate"><a href='PlaceCtrl?ptype=<%=rs.getString("ptype") %>&prop=<%=rs.getString("prop") %>'><%=rs.getString("propname") %></a></li>								
<%						
					}
				}	
%>
				</ul>
			</li>	
<%
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				try {
					rs.close();
					pstmt.close();
					conn.close();
				} catch(Exception e) {
					e.printStackTrace();
				}
			}
%>
			<li><a href="" class="menu1">커뮤니티</a>
				<ul class="sub">
					<li class="cate"><a href="GetUserReviewListCtrl" >이용후기</a></li>
					<li class="cate"><a href="" >자료실</a></li>
					<li class="cate"><a href="GetUserNnoticeListCtrl" >공지사항</a></li>
				</ul>
			<li>
		</ul>	
	</nav>
	<nav id="tnb">
		<ul>
		<% if(mid==null) { %>
			<li><span>손님</span></li>
			<li><a href="login.jsp">로그인</a></li>
			<li><a href="agreement.jsp">회원가입</a></li>
		<% } else if(mid.equals("admin")) { %>
			<li><span><%=mname %></span></li>
			<li><a href="/web02/GetMemberListCtrl">고객 목록</a></li>
			<li><a href="/web02/GetTourListCtrl">방문지 목록</a></li>
			<li><a href="/web02/GetNnoticeListCtrl">공지사항 목록</a></li>
			<li><a href="/web02/GetReviewListCtrl">관광후기 목록</a></li>
			<li><a href="/web02/LogoutCtrl">로그아웃</a></li>
			<% } else { %>
			<li><span><%=mname %></span></li>
			<li><a href="/web02/GetMypageCtrl">마이페이지</a></li>
			<li><a href="/web02/GetUserCtrl">정보수정</a></li>
			<li><a href="/web02/LogoutCtrl">로그아웃</a></li>
		<% } %>
		</ul>
	</nav>
</div> --%>
<header id="hd">
        <div class="hd_wrap">
            <a href="index.html" class="logo">
                <img src="./img/logo.png" alt="로고">
            </a>
            <nav id="gnb">
                <ul>
                    <li><span>추천여행</span>
                        <ul class="sub">
                            <li class="cate"><a href="PlaceCtrl.html?ptype=A&amp;prop=11">맞춤형 속초여행</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=A&amp;prop=12">이야기로 보는 속초</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=A&amp;prop=13">축제 및 행사</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=A&amp;prop=14">지도로 떠나는 속초</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=A&amp;prop=15">차트로 보는 속초</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=A&amp;prop=16">이달의 속초</a></li>
                        </ul>
                    </li>
                    <li><span>관광지</span>
                        <ul class="sub">
                            <li class="cate"><a href="PlaceCtrl.html?ptype=B&amp;prop=11">자연</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=B&amp;prop=12">볼거리</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=B&amp;prop=13">체험</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=B&amp;prop=14">시설</a></li>
                        </ul>
                    </li>
                    <li><span>문화</span>
                        <ul class="sub">
                            <li class="cate"><a href="PlaceCtrl.html?ptype=F&amp;prop=11">박물관</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=F&amp;prop=12">전시/미술관</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=F&amp;prop=13">문화/문화제</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=F&amp;prop=14">유적/안보</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=F&amp;prop=15">기타</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=F&amp;prop=16">백년가게</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=F&amp;prop=17">속초명장</a></li>
                        </ul>
                    </li>
                    <li><span>숙박/음식점</span>
                        <ul class="sub">
                            <li class="cate"><a href="PlaceCtrl.html?ptype=C&amp;prop=11">음식</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=C&amp;prop=12">모범음식점</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=C&amp;prop=13">착한가격업소</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=C&amp;prop=14">안심식당</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=C&amp;prop=15">숙박</a></li>
                        </ul>
                    </li>
                    <li><span>코스로보는 속초</span>
                        <ul class="sub">
                            <li class="cate"><a href="PlaceCtrl.html?ptype=G&amp;prop=11">힐링코스</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=G&amp;prop=12">연인.친구 코스</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=G&amp;prop=13">당일코스</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=G&amp;prop=14">1박2일코스</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=G&amp;prop=15">2박3일코스</a></li>
                        </ul>
                    </li>
                    <li><span>여행길라잡이</span>
                        <ul class="sub">
                            <li class="cate"><a href="GetUserReviewListCtrl.html">이용후기</a></li>
                            <li class="cate"><a href="GetUserDataListCtrl.html">자료실</a></li>
                            <li class="cate"><a href="GetUserNnoticeListCtrl.html">공지사항</a></li>
                        </ul>
                    </li>
                </ul>	
            </nav>
            <nav id="tnb">
		<ul>
		<% if(mid==null) { %>
			<li><span>손님</span></li>
			<li><a href="login.jsp">로그인</a></li>
			<li><a href="agreement.jsp">회원가입</a></li>
		<% } else if(mid.equals("admin")) { %>
			<li><span><%=mname %></span></li>
			<li><a href="/web02/GetMemberListCtrl">고객 목록</a></li>
			<li><a href="/web02/GetTourListCtrl">방문지 목록</a></li>
			<li><a href="/web02/GetNnoticeListCtrl">공지사항 목록</a></li>
			<li><a href="/web02/GetReviewListCtrl">관광후기 목록</a></li>
			<li><a href="/web02/LogoutCtrl">로그아웃</a></li>
			<% } else { %>
			<li><span><%=mname %></span></li>
			<li><a href="/web02/GetMypageCtrl">마이페이지</a></li>
			<li><a href="/web02/GetUserCtrl">정보수정</a></li>
			<li><a href="/web02/LogoutCtrl">로그아웃</a></li>
		<% } %>
		</ul>
	</nav>
        </div>
    </header>