<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="./img/favicon.ico">
    <link rel="apple-touch-icon" href="./img/favicon.ico">

    <meta name="url" content="https://www.sktelecom.com/index.html">
    <meta name="title" content="SKtelecom">
    <meta name="description" content="SKtelecom 기업정보,주가정보,경영정보,메타버스">
    <meta name="keywords" content="SK텔레콤,SKtelecom,메타버스">

    <meta property="og:url" content="https://www.sktelecom.com/index.html">
    <meta property="og:title" content="SKtelecom">
    <meta property="og:description" content="SKtelecom 기업정보,주가정보,경영정보,메타버스">
    <meta property="og:image" content="./img/art_547244_1624353913.jpg">
    
<script src="https://code.jquery.com/jquery-latest.js"></script>
	<link rel="stylesheet" href="reset.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <link rel="stylesheet" href="normalize.css">
    <link rel="stylesheet" href="common.css">
    <link rel="stylesheet" href="sub_common.css">
    
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
    @font-face {
    font-family: 'GangwonEdu';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEdu_OTFBoldA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
    }
    </style>
<style>
i[class*='xi'] { font-size:28px; color:#000; }
i[class*='xi']:hover { color:rgb(226, 55, 25); }

.wrap { clear:both; width: 100%; }

/* position: fixed; background-color: rgba(255, 255, 255, 0.7) */
#hd { clear:both; width: 100%; top: 0px; z-index: 999; } 

.hd_wrap { clear:both; width: 1280px; margin: 0 auto; }
.logo { display:block; width: 230px; float:left;  }
.logo img { display:block; width: 100%; }
#gnb { float:left; margin-top: 15px;}

#gnb > ul > li { float:left; padding-left: 50px; padding-right: 20px; 
position: relative; }
#gnb > ul > li > span { display:block; line-height: 36px; cursor:pointer; }
#gnb ul li .sub {display: none; position: absolute; left: 10px; top: 36px; z-index: 999;
padding-left: 10px; width: 160px; height: 200px; background-color: #fff;}
#gnb ul li .sub li { line-height: 38px;}
#gnb ul li:hover .sub {display: block; padding-left: 40px;}

#gnb ul li .sub li:hover a { color: green;}
#gnb ul li:hover span { color: forestgreen;}
#tnb a:hover { color: forestgreen;}

#tnb { float:right; padding-top: 20px; padding-bottom: 20px;}
#tnb a { padding-left: 20px; font-size: 0.8em;}

/* 푸터부분 */
#ft { clear:both; width: 100%; }
.ft_wrap { clear:both; width: 1280px; margin: 0 auto;}
.fnb { float:left; }
.fnb a { display:block; float:left; margin:14px; 
    margin-left: 0; margin-right: 28px; font-size:12px; }
.fnb a:after { content:"|"; padding-left: 28px;  }
.fnb a:last-child::after { content:""; }
.sub { float:right;}
.sub ul li { float:left; margin-left: 28px; }
.copyright { clear:both; padding-bottom: 23px; font-size:12px; }

    #content { clear:both; width: 100%; }
    #vs {width: 100%; overflow: hidden;}
    .img_box { width: 400%;}
    .img_box li { float: left; width: 25%; position: relative; height: 875px;}
    .img_box li a {display: block;}
    .img_box li a img { display: block; width: 100%; height: auto;}
    .img_box .tit_box { position: absolute; top: 50px; left: 50px; color: #fff; 
        text-shadow: 1px 1px 1px #000; padding-left: 40px;} 
    .vs_tit { font-size:43px; line-height: 1.6; font-family: 'jalnan' }
    .vs_com { font-size: 20px; padding-top: 40px;  font-family: 'GangwonEdu'}
    .btn_group { position:absolute; bottom:0px; left:90px; z-index:40; }
    .btn_group button { display:block; width: 80px; height: 80px; float:left; 
    background-color:rgba(255, 255, 255, 0.6); border:none; outline: none; color:#fff; }
    .btn_group button i[class*='xi'] { color: rgb(0, 0, 0); }
    .btn_group button:hover i[class*='xi'] { cursor:pointer; color:rgb(255, 0, 0); }

    .grid_box { clear: both; width: 100%;}
    .grid_wrap { clear: both; width: 100%;}
    .grid_wrap li { float: left; height: 16.66667vw; background-position: center center;}
    .grid_wrap li.item1 { background-color: #d0dee8; } 
    .grid_wrap li.item2 { background-color: skyblue; } 
    .grid_wrap li.item3 { background-image: url(./img/meta.jpg) } 
    .grid_wrap li.item4 { background-image: url(./img/ai.jpg);}
    .grid_wrap li.item5 { background-image: url(./img/service.png);}

    .col1 { width: 8.33333%; }
    .col2 { width: 20%; }
    .col3 { width: 25%; }
    .col4 { width: 33.33333%; }
    .col5 { width: 41.66667%; }
    .col6 { width: 50%; }
    .grid_wrap li a { display: block; padding: 28px;}
    .col_tit, .col_com { color:#000; }
    .col_tit { padding-top: 18px; font-size: 25px; }
    .col_tit.w , .col_com.w { color:#fff; text-shadow:1px 1px 1px rgb(63, 38, 38); padding-top: 0; }
    .col_com {color: #000;}
    .col_com { font-size:18px; padding-top: 20px; font-weight: 200;  }
    .col_com.w { font-size: 18px; padding-top: 20px;}

    .arrow { display: block; padding: 50px; width: 150px; height: 100px; margin: 0 auto; z-index: 99999;
    color: orange;  font-family: jalnan; font-size: 20px; }
    .arrow:hover { transform: scale(1.5); transition: .5s; }
</style>
<title>Insert title here</title>
</head>
<body>
<div class="wrap">
        <header id="hd">
            <div class="hd_wrap">
                <a href="index.html" class="logo">
                    <img src="./img/art_547244_1624353913.jpg" alt="로고">
                </a>
                <nav id="gnb">
                    <ul>
                        <li>
                            <span>회사소개</span>
                            <ul class="sub">
                                <li><a href="company.html#page1">비전</a></li>
                                <li><a href="company.html#page2">사업소개</a></li>
                                <li><a href="company.html#page3">연혁</a></li>
                                <li><a href="company.html#page4">Cl/Bl</a></li>
                                <li><a href="company.html#page5">스포츠</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>지속가능경영</span>
                            <ul class="sub">
                                <li><a href="product.html#page1">[ESG스토리]</a></li>
                                <li><a href="product.html#page2">ESG추진방향</a></li>
                                <li><a href="product.html#page3">ESG추진체계</a></li>
                                <li><a href="product.html#page4">이해관계자 참여</a></li>
                                <li><a href="product.html#page5">지속경영자료실</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>경영정보</span>
                            <ul class="sub">
                                <li><a href="opreation.html#page1">지배구조</a></li>
                                <li><a href="opreation.html#page2">주주총회</a></li>
                                <li><a href="opreation.html#page3">정관</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>재무정보</span>
                            <ul class="sub">
                                <li><a href="midea.html#page1">재무하이라이트</a></li>
                                <li><a href="midea.html#page2">신용등급</a></li>
                            </ul>
                        </li>
                        <li>
                            <span>주식정보</span>
                            <ul class="sub">
                                <li><a href="stock.html#page1">주주현황</a></li>
                                <li><a href="stock.html#page2">주주환원</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                <p id="tnb">
                    <a href="">로그인</a>
                    <a href="">사이트맵</a>
                    <a href="">오시는길</a>
                </p>
            </div>
        </header>
        <div id="content">
            <figure id="vs">
                <ul class="img_box">
                    <li>
                        <a href="vision.html">
                            <img src="./img/sk01.jpg " alt="비전" class="pic">
                            <div class="tit_box">
                                <h2 class="vs_tit">AI & Digital Infra <br>서비스 컴퍼니</h2>
                                <p class="vs_com">SK텔레콤은 안정적인 유.무선 통신 인프라와 AI기반 ICT 기술과 서비스를 통해, <br>고객의 ICT 경험이 삶의 풍요로움을 실현할 수 있도록 <br>혁신의 여정을 이어갑니다.</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="esgpopel.html">
                            <img src="./img/sk02.jpg " alt="ESG추진방향" class="pic">
                            <div class="tit_box">
                                <h2 class="vs_tit">ESG 경영을 통한 <br>지속 가능한 성장</h2>
                                <p class="vs_com">SK텔레컴은 ICT기술을 기반으로 탄소 배출 절감.사회 안전망 구축 등 <br>지속 가능한 사회를 위해 노력하고 있습니다.</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="ai.html">
                            <img src="./img/sk03.jpg" style="max-width: 100%; height: auto;" alt="SKT AI" class="pic">
                            <div class="tit_box">
                                <h2 class="vs_tit">사람과 AI가 공종하는 <br>행복한 세상</h2>
                                <p class="vs_com">SK텔레콤은 사람과 AI가 함께 공존하며, <br>더 행복하고 라음다운 세상을 실현할 수 있도록 연구를 지속하고 있습니다.</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="service.html">
                            <img src="./img/sk04.jpg" alt="서비스" class="pic">
                            <div class="tit_box">
                                <h2 class="vs_tit">SK텔레콤-SK스퀘어가 <br>만드는 ICT 시너지</h2>
                                <p class="vs_com">SK텔레콤과 SK스퀘어가 함께 <br>ICT 서비스.기술 혁신을 이어 나갑니다.</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <div class="btn_group">
                    <button class="prev_btn"><i class="xi-arrow-left"></i></botton>
                    <button class="next_btn"><i class="xi-arrow-right"></i></button>
                </div>
                <script>
                    $(document).ready(function(){
                        wd = $(window).width();
                        var intv = setInterval(function(){
                            ani1();
                        }, 3000);
                        function ani1(){
                            $(".img_box").not(":animated").animate({"margin-left":-wd+"px"}, 600, function(){
                                $(".img_box li").eq(0).appendTo($(".img_box"));
                                $(".img_box").css("margin-left","0px");
                            });
                        }
                        function ani2(){
                            $(".img_box").css("margin-left",-wd+"px");
                            $(".img_box li:last-child").prependTo($(".img_box"));
                            $(".img_box").not(":animated").animate({"margin-left":"0px"}, 600);
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
                    });    
                    </script>
    
            </figure>
            <div class="grid_box">
                <ul class="grid_wrap">
                    <li class="col2 item1">
                        <a href="">
                            <h3 class="col_tit">통신</h3>
                            <p class="col_com">5G 시대에도 <br>대한민국 대표 통신기업</p>
                            <span class="arrow">-바로가기-</span>
                        </a>
                    </li>
                    <li class="col2 item2">
                        <a href="">
                            <h3 class="col_tit">구독</h3>
                            <p class="col_com">AI 기반 <br>고객 맞춤형 구독 서비스</p>
                            <span class="arrow">-바로가기-</span>
                        </a>
                    </li>
                    <li class="col2 item3">
                        <a href="">
                            <h3 class="col_tit w">메타버스</h3>
                            <p class="col_com w">다양한 파트너와 함께하는 <br>글로벌 오픈 메타버스 서비스</p>
                            <span class="arrow"></span>
                        </a>
                    </li>
                    <li class="col2 item4">
                        <a href="">
                            <h3 class="col_tit w">AI</h3>
                            <p class="col_com w">고객의 생활속 모든 순간을 <br>함께하는</p>
                        </a>
                    </li>
                    <li class="col2 item5">
                        <a href="">
                            <h3 class="col_tit w">DigitalServise</h3>
                            <p class="col_com w">디지털 인프라를 기반으로한 <br>고객 맞춤형 B2B 서비스</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <footer id="ft">
            <div class="ft_wrap">
                <nav class="fnb">
                    <a href="">사이트맵</a>
                    <a href="">윤리경영</a>
                    <a href="">사외내방신청</a>
                    <a href="">협력사신문고</a>
                    <a href="">공정위 4대 실천 사항</a>
                    <a href="">보안신고센터</a>
                    <a href="">개인정보처리방침</a>
                </nav>
                <nav class="sub">
                    <ul>
                        <li class="sns1">
                            <a href="" title="페이스북"><i class="xi-facebook"></i></a>
                        </li>
                        <li class="sns2">
                            <a href="" title="유튜브"><i class="xi-youtube-play"></i></a>
                        </li>
                        <li class="sns3">
                            <a href="" title="네이버 포스트"><i class="xi-naver"></i></a>
                        </li>
                    </ul>
                </nav>
                <p class="copyright">Copyright © SKtelecom All rights reserved. 대표번호 : 031-1234-1111</p>
            </div>
        </footer>
    </div>
</body>
</html>