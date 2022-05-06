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
    <title>MODEL</title>
    <style>
        .sel {background-color: rgb(0, 0, 0); color: aliceblue; border: 0;}
    </style>
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
                    <img src="./img/experience/page1/genesis-kr-space-key-visual-01-desktop-2560x900-ko.jpg" alt="스페이스">
                    <div class="tit_box">
                        <h2 class="sub_tit">제네시스 스페이스</h2>
                        <p class="sub_com">제네시스의 특별함을 제네시스 브랜드 스페이스에서 경험하세요.</p>
                    </div>
                </figure>
                <div class="bread_box">
                    <div class="bread_wrap">
                        <ul class="bread">
                            <li class="item1">
                                <a href="index" class="home">HOME</a>
                            </li>
                            <li class="item2">체험</li>
                            <li class="item3">
                                <select name="sel" id="sel1" class="sel">
                                    <option value="experience.jsp#page1" selected>스페이스</option>
                                    <option value="experience.jsp#page2">시승신청</option>
                                    <option value="experience.jsp#page3">전시장 찾기</option>
                                    <option value="experience.jsp#page4">드라이빙 익스피리언스</option>
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
                    <img src="./img/experience/page2/genesis-kr-overview-gv80-kv-image-11-desktop-2560x900-ko.jpg" alt="시승신청">
                    <div class="tit_box" id="experience_tit_box">
                        <h2 class="sub_tit" id="experience_sub_tit">시승신청</h2>
                        <p class="sub_com" id="experience_sub_com">시승 희망 장소를 선택해주세요.
                            <br>(드라이빙 라운지 / 제네시스 스페이스)</p>
                    </div>
                </figure>
            <div class="bread_box">
                <div class="bread_wrap">
                    <ul class="bread">
                        <li class="item1">
                            <a href="index" class="home" >HOME</a>
                        </li>
                        <li class="item2">체험</li>
                        <li class="item3">
                            <select name="sel" id="sel2" class="sel">
                                <option value="experience.jsp#page1">스페이스</option>
                                <option value="experience.jsp#page2" selected>시승신청</option>
                                <option value="experience.jsp#page3">전시장 찾기</option>
                                <option value="experience.jsp#page4">드라이빙 익스피리언스</option>
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
                    <!-- <img src="" alt="전시장 찾기"> -->
                    <div class="tit_box" id="experience_tit_box">
                        <h2 class="sub_tit" i="experience_sub_tit">전시장 찾기</h2>
                        <!-- <p class="sub_com"></p> -->
                    </div>
                </figure>
                <div class="bread_box">
                    <div class="bread_wrap">
                        <ul class="bread">
                            <li class="item1">
                                <a href="index" class="home">HOME</a>
                            </li>
                            <li class="item2">체험</li>
                            <li class="item3">
                                <select name="sel" id="sel3" class="sel">
                                    <option value="experience.jsp#page1">스페이스</option>
                                    <option value="experience.jsp#page2">시승신청</option>
                                    <option value="experience.jsp#page3" selected>전시장 찾기</option>
                                    <option value="experience.jsp#page4">드라이빙 익스피리언스</option>
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
                    <img src="./img/experience/page4/genesis-kr-driving-experience-key-visual-01-desktop-2560x900-ko.jpg" alt="드라이빙 익스피리언스">                
                    <div class="tit_box">
                        <h2 class="sub_tit">드라이빙 익스피리언스</h2>
                        <p class="sub_com">제네시스만의 디테일이 스며든 정통 드라이빙 프로그램</p>
                    </div>
                </figure>
                <div class="bread_box">
                    <div class="bread_wrap">
                        <ul class="bread">
                            <li class="item1">
                                <a href="index" class="home">HOME</a>
                            </li>
                            <li class="item2">체험</li>
                            <li class="item3">
                                <select name="sel" id="sel4" class="sel">
                                    <option value="experience.jsp#page1">스페이스</option>
                                    <option value="experience.jsp#page2">시승신청</option>
                                    <option value="experience.jsp#page3">전시장 찾기</option>
                                    <option value="experience.jsp#page4" selected>드라이빙 익스피리언스</option>
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