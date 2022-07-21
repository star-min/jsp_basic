<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 파비콘 -->
<link rel="apple-touch-icon" sizes="57x57" href="./img/favicon.ico/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="./img/favicon.ico/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="./img/favicon.ico/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="./img/favicon.ico/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="./img/favicon.ico/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="./img/favicon.ico/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="./img/favicon.ico/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="./img/favicon.ico/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="./img/favicon.ico/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="./img/favicon.ico/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="./img/favicon.ico/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="./img/favicon.ico/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="./img/favicon.ico/favicon-16x16.png">
<link rel="manifest" href="./img/favicon.ico/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="./img/favicon.ico/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
<!-- 문서 메타 -->
<meta name="url" content="https://www.sokchotour.com/tour">
    <meta name="title" content="가족,친구,연인과 함께 속초 관광">
    <meta name="subject" content="가족,친구,연인과 함께 속초 관광" />
    <meta name="description" content="sokchotour 속초투어,속초관광,속초명소,속초행사,속초숙박">
    <meta name="keywords" content="속초관광,sokchotour,속초 숙소, 속초맛집, 속초숙소, 속초 설악산가는길, 설악산 속초가는길, 속초명소, 속초행사, 속초군부대, 속초외국인관광, 속초포켓몬, 속초안내">
<!-- 오픈 그래프 -->
    <meta property="og:url" content="https://www.sokchotour.com/tour">
    <meta property="og:title" content="sokchotour">
    <meta property="og:description" content="sokchotour 속초투어,속초관광,속초명소,속초행사,속초숙박">
    <meta property="og:image" content="./img/logo.png">

<!-- 슬릭 -->
    <script src="./js/jquery-1.9.1.js"></script>
    <script src="./js/jquery-ui-1.9.2.custom.js"></script>
    <link rel="stylesheet" href="./css/slick.css">
    <link rel="stylesheet" href="./css/slick-theme.css">
    <link rel="stylesheet" href="./css/slickstyle.css">
    <script src="./js/slick.js"></script>
    <script>
        $(function(){
            var sw = true;
            $(".ban_box").slick({autoplay: true, autoplaySpeed: 4000});
            $("#play_btn").click(function(){
                if(sw){
                    $("#play_btn").addClass("on");
                    $(".ban_box").slick("slickPause");
                } else {
                    $("#play_btn").removeClass("on");
                    $(".ban_box").slick("slickPlay");
                }
                sw= !sw;
            });
        });	
    </script>
<!-- 기본 플러그인연결 -->
<!-- <script src="https://code.jquery.com/jquery-latest.js"></script> -->

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
	    <div id="content">
        <figure id="vs">
            <div class="hi"></div>
            <ul class="ban_box">
                <li class="">
                    <a href="">
                        <img src="./img/baner01.jpg " alt="또다른세계" class="pic">
                        <div class="tit_box">
                            <!-- <h2 class="vs_tit">또 다른 세계</h2>  -->
                            <!-- <p class="vs_com"> 그곳... 속초</p> -->
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="./img/baner02.jpg " alt="또다른세계" class="pic">
                        <div class="tit_box">
                            <!-- <h2 class="vs_tit">또 다른 세계</h2>
                            <p class="vs_com"> 그곳... 속초</p> -->
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="./img/baner03.jpg " alt="또다른세계" class="pic">
                        <div class="tit_box">
                            <!-- <h2 class="vs_tit">또 다른 세계</h2>
                            <p class="vs_com"> 그곳... 속초</p> -->
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="./img/baner04.jpg " alt="또다른세계" class="pic">
                        <div class="tit_box">
                            <!-- <h2 class="vs_tit">또 다른 세계</h2>
                            <p class="vs_com"> 그곳... 속초</p> -->
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="./img/baner05.jpg " alt="또다른세계" class="pic">
                        <div class="tit_box">
                            <!-- <h2 class="vs_tit">또 다른 세계</h2>
                            <p class="vs_com"> 그곳... 속초</p> -->
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="./img/baner06.jpg " alt="또다른세계" class="pic">
                        <div class="tit_box">
                            <!-- <h2 class="vs_tit">또 다른 세계</h2>
                            <p class="vs_com"> 그곳... 속초</p> -->
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="./img/baner07.jpg " alt="또다른세계" class="pic">
                        <div class="tit_box">
                            <!-- <h2 class="vs_tit">또 다른 세계</h2>
                            <p class="vs_com"> 그곳... 속초</p> -->
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="./img/baner08.jpg " alt="또다른세계" class="pic">
                        <div class="tit_box">
                            <!-- <h2 class="vs_tit">또 다른 세계</h2>
                            <p class="vs_com"> 그곳... 속초</p> -->
                        </div>
                    </a>
                </li>
                <li>
                    <a href="">
                        <img src="./img/baner09.jpg " alt="또다른세계" class="pic">
                        <div class="tit_box">
                            <!-- <h2 class="vs_tit">또 다른 세계</h2>
                            <p class="vs_com"> 그곳... 속초</p> -->
                        </div>
                    </a>
                </li>
        </figure>
    <div class="searchs">
        <a href="" class="open btn-type01 v5"></a>
        <a href="" class="btn-plan noto-s btn-type01 v1"></a>
        <a href="" class="staroad btn-type01 v2"></a>
        <a href="" class="open btn-type01 v6"></a>
        <a href="" class="btn-keyword btn-type01 v3"></a>
        <a href="" class="open btn-type01 v4"></a>
    </div>
    <section id="links">
        <div class="inner clf">
            <a href="" class="pig1"> 속초관광소식</a>
            <a href="" class="pig2">관광홍보물 신청</a>
            <a href="" class="pig3">이달의 속초</a>
            <a href="" class="pig4">교통정보</a>
            <a href="" target="_blank" class="pig5">문화관광해설사</a>
            <a href="" target="_blank" class="pig6">속초지도</a>
        </div>
    </section>
</div>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</body>
</html>