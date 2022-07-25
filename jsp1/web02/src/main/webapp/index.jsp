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
<title>Insert title here</title>
</head>
<body>
<header id="hd">
	<div class="hd_wrap">
		<%@ include file="hd.jsp" %>
	</div>
</header>
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
                </ul>
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
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</body>
</html>