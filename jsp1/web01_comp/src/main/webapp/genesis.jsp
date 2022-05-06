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
                    <img src="./img/genesis/page1/genesis-kr-the-brand-experience-partnership-18-desktop-mobile-1220x660-ko.jpg" alt="ALL">
                    <div class="tit_box">
                        <h2 class="sub_tit">GENESIS</h2>
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
                                    <option value="genesis.html#page1" selected>브랜드</option>
                                    <option value="genesis.html#page2">콘셉트카</option>
                                    <option value="genesis.html#page3">모터쇼</option>
                                    <option value="genesis.html#page4">로드트립</option>
                                </select>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="page_con">
                    <div class="page_wrap">                            
                    </div>
                </div>
            </section>
            <section class="page" id="page2" clas="sel">
                <figure class="sub_ban">
                    <img src="./img/genesis/page2/concept-car-keyvisual-genesis-x-speedium-coupe-pc-2560x900-kr.jpg" alt="콘셉트카">
                    <div class="tit_box">
                        <h2 class="sub_tit">제네시스 콘셉트</h2>
                        <p class="sub_com">혁신의 아름다움을 형상화한 디자인</p>
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
                                <option value="genesis.html#page1">브랜드</option>
                                <option value="genesis.html#page2" selected>콘셉트카</option>
                                <option value="genesis.html#page3">모터쇼</option>
                                <option value="genesis.html#page4">로드트립</option>
                            </select>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="page_con">
                <div class="page_wrap">
                        
                </div>
            </div>
        </section>
            <section class="page" id="page3">
                <figure class="sub_ban">
                    <img src="./img/genesis/page3/genesis-kr-motor-show-key-visual-01-desktop-2560x900-ko.jpg" alt="모터쇼">
                    <div class="tit_box">
                        <h2 class="sub_tit">제네시스 모터쇼</h2>
                        <p class="sub_com">제네시스만의 독창적인 부스와 최신의 라인업을 소개합니다.</p>
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
                                    <option value="genesis.html#page1">브랜드</option>
                                    <option value="genesis.html#page2">콘셉트카</option>
                                    <option value="genesis.html#page3" selected>모터쇼</option>
                                    <option value="genesis.html#page4">로드트립</option>
                                </select>
                            </li>
                        </ul>
                    </div>
                </div>
                    <div class="page_con">
                        <div class="page_wrap">
                    </div>
                </div>
            </section>
            <section class="page" id="page4">
                <figure class="sub_ban">
                    <img src="./img/genesis/page4/genesis-kr-road-trip-key-visual-01-desktop-2560x900-ko.jpg" alt="로드트립">                
                    <div class="tit_box">
                        <h2 class="sub_tit">제네시스 로드트립</h2>
                        <p class="sub_com">제네시스와 내셔널지오그래픽 트래블러가 함께하는 서사적 여행<br>
                            제네시스 로드트립을 통해 자세한 정보를 확인하세요.</p>
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
                                <select name="sel" id="sel4" class="sel">
                                    <option value="genesis.html#page1">브랜드</option>
                                    <option value="genesis.html#page2">콘셉트카</option>
                                    <option value="genesis.html#page3">모터쇼</option>
                                    <option value="genesis.html#page4" selected>로드트립</option>
                                </select>
                            </li>
                        </ul>
                    </div>
                </div>
                    <div class="page_con">
                        <div class="page_wrap">
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