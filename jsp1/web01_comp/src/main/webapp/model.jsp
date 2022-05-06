<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="./img/meta/favicon.ico">
    <link rel="apple-touch-icon" href="./img/meta/favicon.ico">
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
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
    <!-- 웹 아이콘 연결 -->
    <!-- XEIcon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <!-- 스타일 초기화 모듈 연결 -->
    <link rel="stylesheet" href="./css/normalize.css">
    <link rel="stylesheet" href="common.css">
    <link rel="stylesheet" href="sub_common.css">
    <style>
        .col3 {width: 25%; margin-top: 20px;}
        .grid_wrap {width: 100%; margin: auto;} 
        .grid_wrap li{position: absolute; float:left; height: 16.66667vw; background-position: center center; background-size: 70%; background-repeat: no-repeat; position: relative; cursor: pointer;}
        .grid_wrap li:hover {background-color: rgb(57, 56, 56);}
        .grid_wrap li.item1 {background-image: url(./img/content_imgbox/g70-desktop-630x240-ko.webp);}
        .grid_wrap li.item2 {background-image: url(./img/content_imgbox/g80ev-desktop-630x240-ko.webp);}
        .grid_wrap li.item3 {background-image: url(./img/content_imgbox/g80-desktop-630x240-ko.webp);}
        .grid_wrap li.item4 {background-image: url(./img/content_imgbox/g90-desktop-630x240-ko.webp);}
        .grid_wrap li.item5 {background-image: url(./img/content_imgbox/gv60-desktop-630x240-ko.webp);}
        .grid_wrap li.item6 {background-image: url(./img/content_imgbox/gv70ev-desktop-630x240-ko.webp);}
        .grid_wrap li.item7 {background-image: url(./img/content_imgbox/gv70-desktop-630x240-ko.webp);}
        .grid_wrap li.item8 {background-image: url(./img/content_imgbox/gv80-desktop-630x240-ko.webp);}
        .grid_wrap a {display:block; margin-top: 16px; margin-left: 16px; text-shadow: 1px 1px 1px;}
        .sel {background-color: rgb(0, 0, 0); color: aliceblue; border: 0;}
        
        
    </style>
    <title>MODEL</title>
</head>    
<body>
    <div class="wrap">
        <header id="hd">
			<%@ include file="nav.jsp" %>
        </header>
    <div id="content">
        <div class="content_wrap">
            <section class="page" id="page1">
                <figure class="sub_ban">
                    <img src="./img/model/page1/genesis-kr-road-trip-seoul-12-desktop-1920x960-ko.jpg" alt="ALL">
                    <div class="tit_box">
                        <h2 class="sub_tit">ALL</h2>
                        <p class="sub_com">제네시스라는 이름에는 열망의 창조,<br>
                            새로운 시작과 긍정적인 변화를 향한 우리의 염원이 담겨 있습니다.</p>
                    </div>
                </figure>
                <div class="bread_box">
                    <div class="bread_wrap">
                        <ul class="bread">
                            <li class="item1">
                                <a href="index" class="home">HOME</a>
                            </li>
                            <li class="item2">모델</li>
                            <li class="item3">
                                <select name="sel" id="sel1" class="sel">
                                    <option value="model.jsp#page1" selected>ALL</option>
                                    <option value="model.jsp#page2">SEDAN</option>
                                    <option value="model.jsp#page3">SUV</option>
                                </select>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="page_con">
                    <div class="page_wrap">
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
                    </div>
                </div>
            </section>
            <section class="page" id="page2" class="sel">
                <figure class="sub_ban">
                    <img src="./img/model/page2/genesis-kr-highlights-g90-lwb-desktop-1920x960-ko.jpg" alt="SEDAN">
                    <div class="tit_box">
                        <h2 class="sub_tit">SEDAN</h2>
                        <p class="sub_com">우리는 도로 위의 시간뿐만 아니라 일상에서도 함께할 수 있는<br>
                             기회를 만들고자 합니다. 이것이 우리가 관계를 시작하는<br>
                             방식이며, 영감을 얻고 진화해 나아가는 원천이기도 합니다.</p>
                    </div>
                </figure>
            <div class="bread_box">
                <div class="bread_wrap">
                    <ul class="bread">
                        <li class="item1">
                            <a href="index" class="home" >HOME</a>
                        </li>
                        <li class="item2">모델</li>
                        <li class="item3">
                            <select name="sel" id="sel2" class="sel">
                                <option value="model.jsp#page1">ALL</option>
                                <option value="model.jsp#page2" selected>SEDAN</option>
                                <option value="model.jsp#page3">SUV</option>
                            </select>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="page_con">
                <div class="page_wrap">
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
                    </ul>
                </div>
            </div>
        </section>

            <section class="page" id="page3">
                <figure class="sub_ban">
                    <img src="./img/model/page3/genesis-kr-overview-gv80-performance-22-desktop-1920x960-ko.jpg" alt="SUV">                
                    <div class="tit_box">
                        <h2 class="sub_tit">SUV</h2>
                        <p class="sub_com">제네시스 GV80, 제네시스의 첫 SUV가 새로운 여정을<br>
                        시작합니다. 역동적 우아함에 진보적 철학과 비전을<br>
                        더하여 프리미엄 SUV의 방향성을 제시합니다.</p>
                    </div>
                </figure>
                <div class="bread_box">
                    <div class="bread_wrap">
                        <ul class="bread">
                            <li class="item1">
                                <a href="index" class="home">HOME</a>
                            </li>
                            <li class="item2">모델</li>
                            <li class="item3">
                                <select name="sel" id="sel3" class="sel">
                                    <option value="model.jsp#page1">ALL</option>
                                    <option value="model.jsp#page2">SEDAN</option>
                                    <option value="model.jsp#page3" selected>SUV</option>
                                </select>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="page_con">
                    <div class="page_wrap">
                        <ul class="grid_wrap">
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
                    </div>
                </div>
            </section>
        </div>
        <script>
            $(document).ready(function(){
                $(".sel").change(function(){
                    location.href = this.value;
                });
            });    
            </script>
    </div>
    <footer id="ft">
		<%@ include file="ft.jsp" %>
    </footer>
    </div>
</body>
</html>