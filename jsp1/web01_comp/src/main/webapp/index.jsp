<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 검색(메타) 정보 -->
    <meta name="url" content="https://www.genesis.com/">
    <meta name="title" content="제네시스">
    <meta name="description" content="제네시스, G60, G70, G80, G90, GV60, GV70, GV80">
    <meta name="keywords" content="제네시스, G60, G70, G80, G90, GV60, GV70, GV80, 자동차, 현대차, 현대자동차, GENESIS">
    <!-- 오픈 그래프 -->
    <meta property="og:url" content="https://www.genesis.com/">
    <meta property="og:title" content="제네시스">
    <meta property="og:description" content="제네시스, G60, G70, G80, G90, GV60, GV70, GV80">
    <meta property="og:image" content="./img/meta.logo.png">
    <!-- 기본 플러그인 연결 -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <!-- 웹 폰트/폰트 모듈 연결 -->
    <!-- font-family: 'Noto Sans KR', sans-serif; -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400&display=swap" rel="stylesheet">
    <!-- 웹 아이콘 연결 -->
    <!-- XEIcon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <!-- 스타일 초기화 모듈 연결 -->
    <link rel="stylesheet" href="./css/normalize.css">
    <link rel="stylesheet" href="./css/common.css">
    <title>제네시스(GENESIS)</title>
    <style>
        /* 비주얼 영역 */
         #vs {clear: both; width: 100%; overflow: hidden; position: relative;}
        .img_box {width: 600%;}
        .img_box li {float: left; width: 16.66667%; position: relative;}
        .img_box li a {display: block;}
        .img_box li a img{display: block; width: 100%; height: auto;}
        .img_box .tit_box {position: absolute; top: 100px; left: 150px; padding: 20px 0 0 20px; z-index: 50px;}
        .img_box .tit_box .vs_tit {font-size: 80px; text-shadow: 1px 1px 1px; line-height: 100px; margin-bottom: 20px;}
        .img_box .tit_box .vs_com {font-size: 28px; text-shadow: 1px 1px 1px; line-height: 40px;}
   
        /* 콘텐츠 영역 */
        /* 그리드 영역 */
        .grid_box {clear:both; width: 90%; margin: 0 auto; overflow: hidden; position: relative;}
        .grid_wrap {width: 200%; margin: auto;} 
        .grid_wrap li{position: absolute; float:left; height: 16.66667vw; background-position: center center; background-size: 70%; background-repeat: no-repeat; position: relative; cursor: pointer;}
        .grid_wrap li:hover {background-color: rgb(57, 56, 56); border: 1px solid darkorange; box-sizing: border-box;}
        .grid_wrap li.item1 {background-image: url(./img/main/about/genesis-kr-admin-model-list-thumbnail-g70-desktop-630x240-ko.png);}
        .grid_wrap li.item2 {background-image: url(./img/main/about/genesis-kr-admin-model-list-thumbnail-electrified-g80-desktop-630x240-ko.png);}
        .grid_wrap li.item3 {background-image: url(./img/main/about/genesis-kr-admin-model-list-thumbnail-g80-desktop-630x240-ko.png);}
        .grid_wrap li.item4 {background-image: url(./img/main/about/genesis-kr-admin-model-list-thumbnail-g90-desktop-630x240-ko.png);}
        .grid_wrap li.item5 {background-image: url(./img/main/about/genesis-kr-admin-model-list-thumbnail-gv60-desktop-630x240-ko.png);}
        .grid_wrap li.item6 {background-image: url(./img/main/about/genesis-kr-admin-model-list-thumbnail-electrified-gv70-desktop-630x240-ko.png);}
        .grid_wrap li.item7 {background-image: url(./img/main/about/JK_GNB_Thumbnail.png);}
        .grid_wrap li.item8 {background-image: url(./img/main/about/genesis-kr-admin-model-list-thumbnail-gv80-desktop-630x240-ko.png);}
        .grid_wrap a {display:block; margin-top: 16px; margin-left: 16px; text-shadow: 1px 1px 1px;}
        .grd_btn_group {position: relative; bottom: 10vw; width: 100%; margin-bottom: 30px;}
        .grd_btn_group button {display: block; float:left; border: none; width: 80px; height: 80px; background-color: rgba(0, 0, 0, 0); cursor: pointer;}
        #grd_l {float: left; margin-left: 8px;}
        #grd_r {float: right; margin-right: 8px;}
        .col3 {width: 12.5%;}
        
        /* 버튼 */
        .btn_group {clear: both; position: absolute; bottom: 10px; margin-left: 100px;}
        .prev_btn {background-color: rgba(0, 0, 0, 0.061);}
        .next_btn {background-color: rgba(0, 0, 0, 0.061);} 
        .m_box {clear: both; width: 100%; overflow: hidden;}
        .m_box .m_wrap {clear: both; width: 100%; height: auto;}

    </style>
</head>
<body>
    <div class="wrap">
        <header id="hd">
			<%@ include file="nav.jsp" %>
        </header>
        <div id="content">
            <div id="vs">
                <ul class="img_box">
                    <li>
                        <a href="">
                            <img src="./img/main/banner/genesis-main-keyvisual-electrified-g80-main-hero-desktop-2560x900-kr.jpg" alt="비주얼배너1" class="pic">
                            <div class="tit_box">
                                <p class="vs_com">GENESIS</p>
                                <h2 class="vs_tit">GV70</h2>
                                <p class="vs_com">2022년형 출시</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/main/banner/genesis-main-keyvisual-electrified-gv70-main-hero-01-desktop-2560x900.jpg" alt="비주얼배너2" class="pic">
                            <div class="tit_box">
                                <p class="vs_com">ELECTRIFIED</p>
                                <h2 class="vs_tit">GV70</h2>
                                <p class="vs_com">또 다른 감동을 충전하는 시간</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/main/banner/genesis-main-keyvisual-futuring-genesis-pc-2560x900-kr.jpg" alt="비주얼배너3" class="pic">
                            <div class="tit_box">
                                <p class="vs_com">GENESIS</p>
                                <h2 class="vs_tit">G90</h2>
                                <p class="vs_com">한국자동차기자협회 2022 올해의 차 수상</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/main/banner/genesis-main-keyvisual-g90-main-hero-01-desktop-2560x900-ko.jpg" alt="비주얼배너4" class="pic">
                            <div class="tit_box">
                                <p class="vs_com">GENESIS</p>
                                <h2 class="vs_tit">GV60</h2>
                                <p class="vs_com">당신과의 교감을 위해</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/main/banner/genesis-main-keyvisual-gv60-main-hero-02-desktop-2560x900-en-1.jpg" alt="비주얼배너5" class="pic">
                            <div class="tit_box">
                                <p class="vs_com">미래를 향한 대담한 비전</p>
                                <h2 class="vs_tit">FUTURING GENESIS</h2>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/main/banner/genesis-main-keyvisual-gv70-22my-main-hero-desktop-2560x900-1.jpg" alt="비주얼배너6" class="pic">
                            <div class="tit_box">
                                <p class="vs_com">ELECTRIFIED</p>
                                <h2 class="vs_tit">G80</h2>
                                <p class="vs_com">전기차 그 이상의 시작</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <div class="btn_group">
                    <button class="prev_btn"><i class="xi-angle-left"></i></button>
                    <button class="next_btn"><i class="xi-angle-right"></i></button>
                </div>
            </div>
            <script>
                $(document).ready(function(){
                    wd = $(window).width();
                    var intv = setInterval(function(){
                        ani1();
                    }, 3000);
                    function ani1(){
                        $(".img_box").not(":animated").animate({"margin-left":-wd+"px"}, 800, function(){
                        $(".img_box li").eq(0).appendTo($(".img_box"));
                        $(".img_box").css("margin-left","0px");
                        });
                     }

                    function ani2(){
                        $(".img_box").css("margin-left",-wd+"px");
                        $(".img_box li:last-child").prependTo($(".img_box"));
                        $(".img_box").not(":animated").animate({"margin-left":"0px"}, 800);
                    }
                    $(".btn_group .next_btn").click(function(){
                        clearInterval(intv);
                        ani1();
                        intv = setInterval(function(){ ani1(); }, 5000);
                    });
                    $(".btn_group .prev_btn").click(function(){
                        clearInterval(intv);
                        ani2();
                        intv = setInterval(function(){ ani1(); }, 5000);
                    });

                    function ani3(){
                        $(".grid_wrap").not(":animated").animate({"margin-left":-25+"%"}, 400, function(){
                            $(".grid_wrap li").eq(0).appendTo($(".grid_wrap"));
                            $(".grid_wrap").css("margin-left","0px");
                        });
                    }
                    function ani4(){
                        $(".grid_wrap").css("margin-left",-25+"%");
                        $(".grid_wrap li:last-child").prependTo($(".grid_wrap"));
                        $(".grid_wrap").not(":animated").animate({"margin-left":"0px"}, 400);
                    }
                    $(".grd_btn_group .grd_next_btn").click(function(){
                        clearInterval(intv);
                        ani3();
                    });
                    $(".grd_btn_group .grd_prev_btn").click(function(){
                        clearInterval(intv);
                        ani4();
                    });
               });
            </script>
             <div class="grid_box">
                <ul class="grid_wrap">
                    <li class="col3 item1">
                        <a href="">
                            <p class="col_com">GENESIS</p>
                            <h3 class="col_tit">G70</h3>
                            <span class="arrow"></span>
                    </a>
                    </li>
                    <li class="col3 item2">
                        <a href="">
                            <p class="col_com">ELECTRIFIED</p>
                            <h3 class="col_tit">G80</h3>
                            <span class="arrow"></span>
                        </a>
                    </li>
                    <li class="col3 item3">
                        <a href="">
                            <p class="col_com">GENESIS</p>
                            <h3 class="col_tit">G80</h3>
                            <span class="arrow"></span>
                        </a>
                    </li>
                    <li class="col3 item4">
                        <a href="">
                            <p class="col_com">GENESIS</p>
                            <h3 class="col_tit">G90</h3>
                            <span class="arrow"></span>
                        </a>
                    </li>
                    <li class="col3 item5">
                        <a href="">
                            <p class="col_com">GENESIS</p>
                            <h3 class="col_tit">GV60</h3>
                            <span class="arrow"></span>
                        </a>
                    </li>
                    <li class="col3 item6">
                        <a href="">
                            <p class="col_com">ELECTRIFIED</p>
                            <h3 class="col_tit">GV70</h3>
                            <span class="arrow"></span>
                        </a>
                    </li>
                    <li class="col3 item7">
                        <a href="">
                            <p class="col_com">GENESIS</p>
                            <h3 class="col_tit">GV70</h3>
                            <span class="arrow"></span>
                        </a>
                    </li>
                    <li class="col3 item8">
                        <a href="">
                            <p class="col_com">GENESIS</p>
                            <h3 class="col_tit">GV80</h3>
                            <span class="arrow"></span>
                        </a>
                    </li>
                </ul>
                <div class="grd_btn_group">
                    <button class="grd_prev_btn" id="grd_l"><i class="xi-angle-left"></i></button>
                    <button class="grd_next_btn" id="grd_r"><i class="xi-angle-right"></i></button>
                </div>
            </div>
            <div class="m_box">
                <div class="m_wrap">
                    <span>
                        <video src="./img/main/video/genesis-kr-main-film-ev-gv70-desktop-1920x1080-ko.webm" controls autoplay ></video>
                    </span>
                </div>
            </div>
        </div>
        <footer id="ft">
			<%@ include file="ft.jsp" %>
        </footer>
    </div>
</body>
</html>