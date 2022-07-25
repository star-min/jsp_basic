<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kr.go.sokcho.model.MemberVO" %>
<%@ page import="kr.go.sokcho.model.ReviewVO" %>
<%
	String mid = (String) session.getAttribute("sid");
	String mname = (String) session.getAttribute("sname");
	if(mid!=null) mid=mid.trim().toLowerCase();
%>
<!-- 스타일 초기화 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="./css/normalize.css">
<!-- 헤더푸터 스타일 -->
<link rel="stylesheet" href="./css/common.css">

<!-- 폰트 스타일 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<style>
    @font-face {
    font-family: 'swagger';
    src: url("fonts/SDSwaggerTTF.ttf");
    font-weight: normal;
    font-style: normal;}
    @font-face {
    font-family: 'jalnan';
    src: url("fonts/Jalnan.ttf");
    font-weight: normal;
    font-style: normal;}
</style>
<style>
/* 스타일 초기화 */
* { margin: 0; padding: 0; }
body, html { width:100%; font-family: 'Noto Sans KR', sans-serif; }
ul { list-style: none; }
a { text-decoration: none; }
input, button { outline:0; border:0; }
table, .table { display:table; border-collapse: collapse; }
tr, .tr { display:table-row; }
td, th, .td, .th { display:table-cell; }
.clrfx:after { content:""; display:block; width:100%; clear:both; } /* 클리어 픽스 처리 */
.container { clear:both; width: 100%; }

/* 메인화면 */
#content { clear:both; width: 100%; }
#vs {width: 100%; overflow: hidden;}
.img_box { width: 400%;}
.img_box li { float: left; width: 25%; position: relative; height: 875px;}
.img_box li a {display: block;}
.img_box li a img { display: block; width: 100%; height: auto;}
.img_box .tit_box { position: relative; top: 50px; left: 50px; color: #fff; 
    text-shadow: 1px 1px 1px #000; padding-left: 40px;} 
.vs_tit { font-size:43px; line-height: 1.6; font-family: 'jalnan' }
.vs_com { font-size: 20px; padding-top: 40px;  font-family: 'GangwonEdu'}
.btn_group { position:absolute; bottom:0px; left:90px; z-index:40; }
.btn_group button { display:block; width: 80px; height: 80px; float:left; 
background-color:rgba(255, 255, 255, 0.6); border:none; outline: none; color:#fff; }
.btn_group button i[class*='xi'] { color: rgb(0, 0, 0); }
.btn_group button:hover i[class*='xi'] { cursor:pointer; color:rgb(255, 0, 0); }
.hi {margin-bottom: -100px; z-index: 1; position: relative;}

/* 메인화면 안에 작은 버튼형 사진들 */
.searchs { letter-spacing: -1px; color: #212121; font-size: 17px; line-height: 1.5; background-repeat: no-repeat; padding: 0;
    border: 0; box-sizing: border-box; margin: 0 auto; position: absolute; left: 50%; bottom: 65px; width: 1400px; margin-left: -700px;}
.btn_type01 {    width: 234px; height: 163px; display: block; font-size: 0; image-rendering: -webkit-optimize-contrast; }
.v1 { position: absolute; bottom: 180px; right: 250px; background: url(./img/01off.png) no-repeat center center; width: 252px; height: 175px;}
.v2 {position: absolute; bottom: 173px; right: -10px; background: url(./img/02off.png) no-repeat center center;
    width: 252px; height: 175px;}
.v3 {position: absolute; bottom: 0px; right: 250px; background: url(./img/03off.png) no-repeat center center; width: 252px; height: 175px;}
.v4 {position: absolute; bottom: 0px; right: 0px; background: url(./img/04off.png) no-repeat center center; width: 252px; height: 175px;}
.v5 {position: absolute; bottom: 180px; right: 499px; background: url(./img/05off.png) no-repeat center center; width: 252px; height: 175px;}
.v6 {position: absolute; bottom: 0px; right: 499px; background: url(./img/06off.png) no-repeat center center; width: 252px; height: 175px;}

/* 메인화면 아래 컨텐츠 */
.searchs::before {content: ''; display: block; width: 1055px; height: 742px; position: absolute; right: -273px; bottom: -132px;}
#links { display: block; padding: 40px 0; }
#links .inner { width: 1200px;}
.inner { margin: 0 auto;}
#links a { letter-spacing: -1px; line-height: 1.5;border: 0; box-sizing: border-box; text-decoration: none;
    color: #454545; word-wrap: break-word;display: block;float: left;text-align: center; background: url() no-repeat top center;
    background-size: 148px; padding: 140px 0 0 0;font-size: 18px; width: 16.66%; margin: 0 !important; }
#links a:nth-child(1) { background: url(./img/pig1.png) no-repeat top center; }
#links a:nth-child(2) { background: url(./img/pig2.png) no-repeat top center; }
#links a:nth-child(3) { background: url(./img/pig3.png) no-repeat top center; }
#links a:nth-child(4) { background: url(./img/pig4.png) no-repeat top center; }
#links a:nth-child(5) { background: url(./img/pig5.png) no-repeat top center; }
#links a:nth-child(6) { background: url(./img/pig6.png) no-repeat top center; }
#links ::after { display: block;}
</style>
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
            <a href="index.jsp" class="logo">
                <img src="./img/logo.png" alt="로고">
            </a>
            <nav id="gnb">
                <ul>
<!--                     <li><span>추천여행</span>
                        <ul class="sub">
                            <li class="cate"><a href="PlaceCtrl.html?ptype=A&amp;prop=11">맞춤형 속초여행</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=A&amp;prop=12">이야기로 보는 속초</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=A&amp;prop=13">축제 및 행사</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=A&amp;prop=14">지도로 떠나는 속초</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=A&amp;prop=15">차트로 보는 속초</a></li>
                            <li class="cate"><a href="PlaceCtrl.html?ptype=A&amp;prop=16">이달의 속초</a></li>
                        </ul>
                    </li> -->
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
                            <li class="cate"><a href="GetUserReviewListCtrl">이용후기</a></li>
                            <li class="cate"><a href="GetTourListCtrl">관광지</a></li>
                            <li class="cate"><a href="GetUserNnoticeListCtrl">공지사항</a></li>
                        </ul>
                    </li>
                </ul>	
            </nav>
            <nav id="tnb">
		<ul>
		<% if(mid==null) { %>
			<li><a href="login.jsp">로그인</a></li>
			<li><a href="agreement.jsp">회원가입</a></li>
		<% } else if(mid.equals("admin")) { %>
			<li><span style="font-size: 10px"><%=mname %></span></li>
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