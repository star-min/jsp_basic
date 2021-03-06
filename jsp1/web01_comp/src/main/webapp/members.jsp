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
                    <img src="./img/members/page1/genesis-kr-membership-guide-keyvisual-desktop-1920x484-ko.jpg" alt="제네시스 멤버십">
                    <div class="tit_box">
                        <h2 class="sub_tit">제네시스 멤버십</h2>
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
                            <li class="item2">멤버스</li>
                            <li class="item3">
                                <select name="sel" id="sel1" class="sel">
                                    <option value="members.html#page1" selected>제네시스 멤버십</option>
                                    <option value="members.html#page2">제네시스 커넥티드 서비스</option>
                                    <option value="members.html#page3">디지털 서비스</option>
                                    <option value="members.html#page4">차량관리 서비스</option>
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
                    <img src="./img/members/page2/genesis-kr-service-introduction-genesis-connected-services-hero-01-desktop-1920x484-ko.jpg" alt="제네시스 멤버십">
                    <div class="tit_box">
                        <h2 class="sub_tit">제네시스 멤버십</h2>
                        <p class="sub_com">고객님의 더 편안하고 안전한 드라이빙을 위해 어떤 상황에서도 운전자와 차를 보호하는 진보된 기술을 생각했습니다.</p>
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
                                <option value="members.html#page1">제네시스 멤버십</option>
                                <option value="members.html#page2" selected>제네시스 커넥티드 서비스</option>
                                <option value="members.html#page3">디지털 서비스</option>
                                <option value="members.html#page4">차량관리 서비스</option>
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
                    <img src="./img/members/page3/my-genesis-app-01_KV.jpg" alt="디지털 서비스">                
                    <div class="tit_box">
                        <h2 class="page_title">디지털 서비스</h2>
                        <p class="sub_com">제네시스와 함께하는 고객의 일상에 편의를 더할 기술을 고민했습니다.</p>
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
                                    <option value="members.html#page1">제네시스 멤버십</option>
                                    <option value="members.html#page2">제네시스 커넥티드 서비스</option>
                                    <option value="members.html#page3" selected>디지털 서비스</option>
                                    <option value="members.html#page4">차량관리 서비스</option>
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
                    <img src="./img/members/page4/genesis-kr-bluetooth-compatibility-guide-vehicle-management-service-01-desktop-1920x484-ko.jpg" alt="차량관리 서비스">
                    <div class="tit_box">
                        <h2 class="page_title">디지털 서비스</h2>
                        <p class="sub_com">자동차 생활에 스트레스 없는 고객 경험과 세심하고 스마트한 차량관리 서비스를 선사합니다.</p>
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
                                    <option value="members.html#page1">제네시스 멤버십</option>
                                    <option value="members.html#page2">제네시스 커넥티드 서비스</option>
                                    <option value="members.html#page3">디지털 서비스</option>
                                    <option value="members.html#page4" selected>차량관리 서비스</option>
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