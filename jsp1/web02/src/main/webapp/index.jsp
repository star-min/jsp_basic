<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<title>Insert title here</title>
</head>
<body>
<header id="hd">
	<div class="hd_wrap">
		<%@ include file="hd.jsp" %>
	</div>
</header>
<div class="content">
	<h2>여기는 콘텐츠 영역</h2>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</body>
</html>