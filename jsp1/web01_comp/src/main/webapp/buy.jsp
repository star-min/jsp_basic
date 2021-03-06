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
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400&display=swap" rel="stylesheet">
    <!-- 웹 아이콘 연결 -->
    <!-- XEIcon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <!-- 스타일 초기화 모듈 연결 -->
    <link rel="stylesheet" href="./css/normalize.css">
    <link rel="stylesheet" href="common.css">
    <link rel="stylesheet" href="sub_common.css">
    <style>
        .col1 {width: 8.33333%;}
        .col2 {width: 16.66666%;}
        .col3 {width: 25%;}
        .col4 {width: 33.33333%;}
        .col5 {width: 41.66666%;}
        .col6 {width: 50%;}
        .sel {background-color: rgb(0, 0, 0); color: aliceblue; border: 0;}
        .page_con{background-color: #fff;}
        .page_wrap{display: flex; width: 1080px; margin: 0 auto; font-family: 'Noto Sans KR', sans-serif;}
        .page_wrap article{margin:0 auto;}
        .p1 {font-size:36px; font-style:normal; color: black;}
        .p2 {font-size:28px; font-style:normal; color: black;}
        .p3 {font-size:24px; color: black;}
        .p4 {font-size:16px; color: black;}
        .cta-button {float: left; color: black; border: 1px; border-style: solid; width: 16vw; text-align: center; padding: 14px 0 14px 0; margin-right: 10px;}
        .cta-button:hover {float: left; color: rgb(255, 255, 255); border: 1px; border-style: solid; width: 16vw; text-align: center; padding: 14px 0 14px 0; background: #000; transition:0.5s; margin-right: 10px;}
        .page2_item1{clear: both; position: relative; float: left; margin-top: 50px;}
        .page2_item1 .item1{float: left; width: 46%;}
        .page2_item1 .item2{float: left; width: 54%;}
        .page2_item2{clear:both; float: left; margin-top: 100px; color: #000; width: 100%;}
        .icon1 {background-image: url("./img/buy/page2/how-to-icon-01-desktop-ko.png"); background-repeat: no-repeat; width: 12rem; height: 12rem; margin: 0 auto; background-position: center; background-color: rgb(200, 200, 200); border-radius: 100%;}
        .icon2 {background-image: url("./img/buy/page2/how-to-icon-02-desktop-ko.png"); background-repeat: no-repeat; width: 12rem; height: 12rem; margin: 0 auto; background-position: center; background-color: rgb(200, 200, 200); border-radius: 100%;}
        .icon3 {background-image: url("./img/buy/page2/how-to-icon-03-desktop-ko.png"); background-repeat: no-repeat; width: 12rem; height: 12rem; margin: 0 auto; background-position: center; background-color: rgb(200, 200, 200); border-radius: 100%;}
        .icon4 {background-image: url("./img/buy/page2/how-to-icon-04-desktop-ko.png"); background-repeat: no-repeat; width: 12rem; height: 12rem; margin: 0 auto; background-position: center; background-color: rgb(200, 200, 200); border-radius: 100%;}
        .page2_item2 div ul{float:left;}
        .icon_ol{list-style: none;}
        .icon_ul li:before {content: "-"; display: inline-block; vertical-align: middle; padding: 0px 5px 6px 0px; color: #000; }
        .icon_ul li {color: #000; margin: 0 20px 0 10px;}
        table {width: 100%; border-top: 1px solid #000; color: #000; border-collapse: collapse; text-align: center; margin: 40px 0 30px 0;}
        th, td {border-bottom: 1px solid rgb(186, 186, 186); border-left: 1px solid rgb(186, 186, 186);}
        th:first-child, td:first-child {border-left: none;}
        th{height: 7vh; background-color: rgb(232, 230, 230);}
        .page2_item3 {clear: both; margin-top: 30vh;}
        
        
    </style>
    <title>buy</title>
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
                    <img src="./img/buy/page1/genesis-kr-finacial-program-header-01-desktop-1920x484-ko.jpg" alt="구매 프로그램">
                    <div class="tit_box">
                        <h2 class="sub_tit">G-FINANCE</h2>
                        <!-- <p class="sub_com"></p> -->
                    </div>
                </figure>
                <div class="bread_box">
                    <div class="bread_wrap">
                        <ul class="bread">
                            <li class="item1">
                                <a href="index" class="home">HOME</a>
                            </li>
                            <li class="item2">구매</li>
                            <li class="item3">
                                <select name="sel" id="sel1" class="sel">
                                    <option value="buy.jsp#page1" selected>구매 프로그램</option>
                                    <option value="buy.jsp#page2">전기차 구매가이드</option>
                                    <option value="buy.jsp#page3">제네시스 스펙트럼</option>
                                </select>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="page_con">
                    <div class="page_wrap">
                        <article>
                            <img src="./img/buy/page1/genesis-finance-01-2112.jpg" alt="구매가이드"><br><br><br>
                            <p class="p1">할부</p>
                            <img src="./img/buy/page1/genesis-finance-02-1-2107.webp" alt="할부가이드"><br><br><br>
                            <div class="a_bt">
                                <a href="https://www.hyundaicapital.com/gnssfn/gnnwca/CPGNNW0101.hc" class="cta-button " title="할부상품 자세히 알아보기" target="_blank">
                                    <span class="text">할부상품 자세히 알아보기</span>
                                </a>
                            </div>
                            <br><br><br><br>
                            <p class="p4">* 해당 프로그램은 현대캐피탈에서 제공하는 프로그램이며, 운영사 사정에 의해 예고없이 변경/취소될 수 있습니다.</p>
                            <p class="p4">* 자세한 내용과 제약사항은 현대캐피탈 홈페이지를 참고 바랍니다.</p><br><br><br><br><br><br><br>
                            <p class="p1">리스/렌터카</p><br><br><br>
                            <img src="./img/buy/page1/genesis-finance-03-01-2203.webp" alt="리스랜터카">
                            <div class="a_bt">
                                <a href="https://www.hyundaicapital.com/gnssfn/gnleasrtlc/CPGNLR0101.hc" class="cta-button " title="리스/렌탈상품 자세히 알아보기" target="_blank">
                                    <span class="text">리스/렌탈상품 자세히 알아보기</span>
                                </a>    
                            <a href="https://www.hyundaicapital.com/gnssfn/gnnwca/CPGNNW0101.hc" class="cta-button " title="구독 프로그램 자세히 알아보기" target="_blank">
                                <span class="text">구독 프로그램 자세히 알아보기</span>
                            </a><br><br><br><br><br>
                            </div>
                            <p class="p4">* 해당 프로그램은 현대캐피탈에서 제공하는 프로그램이며, 운영사 사정에 의해 예고없이 변경/취소될 수 있습니다.</p>
                            <p class="p4">* 자세한 내용과 제약사항은 현대캐피탈 홈페이지를 참고 바랍니다.</p><br><br><br>
                        </article>
                    </div>
                </div>
            </section>

            <section class="page" id="page2">
                <figure class="sub_ban">
                    <img src="./img/buy/page2/ev-purchase-guide-keyvisual-pc-1920x484-kr.JPG" alt="전기차 구매가이드">
                    <div class="tit_box">
                        <h2 class="sub_tit">전기차 구매가이드</h2>
                        <p class="sub_com">전기차 구매 시 도움이 되는 구매방법 및 세금 감면<br>
                            혜택, 구매 보조금에 대하여 알려드립니다.</p>
                    </div>
                </figure>
                <div class="bread_box">
                    <div class="bread_wrap">
                        <ul class="bread">
                            <li class="item1">
                                <a href="index" class="home">HOME</a>
                            </li>
                            <li class="item2">구매</li>
                            <li class="item3">
                                <select name="sel" id="sel2" class="sel">
                                    <option value="buy.jsp#page1">구매 프로그램</option>
                                    <option value="buy.jsp#page2" selected>전기차 구매가이드</option>
                                    <option value="buy.jsp#page3">제네시스 스펙트럼</option>
                                </select>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="page_con">
                    <div class="page_wrap">
                        <article>
                            <div class="page2_item1">
                                <ul>
                                    <li class="item1"><p class="p3">대기환경 문제 개선을 위해 정부와 지방자치단체에서 전기차 보급 사업을 추진하고 있습니다.<br>
                                        공모를 통해 대상자로 선정될 경우 전기차<br>
                                        구매보조금을 지원받아 구입이 가능합니다.<br>
                                        또한, 전기차는 다양한 세제감면 혜택 지원을<br>
                                        받으실 수 있습니다.</p></li>
                                    <li class="item2"><img src="./img/buy/page2/car-image-desktop-ko.png" alt="g70ev"></li>
                                </ul>
                            </div>
                            <div class="page2_item2">
                                <p class="p1">전기차 구매 방법</p><br><br><br><br>
                                <div>
                                    <ul class="col3">
                                        <li>
                                            <p class="icon1">&nbsp;</p><br>
                                            <p class="p3">01. 차량 계약</p><br>
                                            <ul class="icon_ul">
                                                <li>동일 개인에게 2년 <br>(의무 운행기간) 내<br> 보조금중복 지원 제한</li>
                                            </ul>
                                        </li>
                                    </ul>
                                    <ul class="col3">
                                        <li>
                                            <p class="icon2">&nbsp;</p><br>
                                            <p class="p3">02. 공모 신청</p><br>
                                            <ul class="icon_ul">
                                                <li>지방자치단체 공모 서류 작성</li>
                                                <li>공모 서류 지방자치단체 접수</li>
                                                <li>공모 대상자 선정 확인</li>
                                            </ul>
                                        </li>
                                    </ul>
                                    <ul class="col3">
                                        <li>
                                            <p class="icon3">&nbsp;</p><br>
                                            <p class="p3">03. 차량 출고</p><br>
                                            <ul class="icon_ul">
                                                <li>출고 10일 전 공모 대상자 여부, 보조금 재확인</li>
                                                <li>이상 없을 시 출고/등록 후 보조금 신청</li>
                                            </ul>
                                        </li>
                                    </ul>
                                    <ul class="col3">
                                        <li>
                                            <p class="icon4">&nbsp;</p><br>
                                            <p class="p3">04. 충전카드 발급</p><br>
                                            <ul class="icon_ul">
                                                <li>공용 충전기 충전카드 신청/발급</li>
                                            </ul>
                                        </li>
                                    </ul>
                                    <p class="p4" style="clear: both; padding: 40px 0 120px 0;">※ 본 내용은 지방자치단체 사정에 의해 변동될 수 있습니다. 자세한 내용은 저공해차 통합 누리집 홈페이지(https://www.ev.or.kr/portal) 참조 바랍니다.</p>
                                </div>
                            </div>
                            <div class="page2_item3">
                                <p class="p1">보조금 신청 절차</p>
                                <table class="table">
                                    <thead>
                                        <th>민간부문</th>
                                        <th>공공부문</th>
                                    </thead>
                                    <tbody>
                                        <td><img src="./img/buy/page2/step-explain-01-desktop-ko.png" alt=""></td>
                                        <td><img src="./img/buy/page2/step-explain-02-desktop-ko.png" alt=""></td>
                                    </tbody>
                                </table>
                                <p class="p4" style="letter-spacing: -1px;">※ (민간부문) 구매자는 차량 구매대금과 보조금의 차액을 자동차 제작/수입사에 납부하고, 자동차 제작/수입사는 지방자치단체(국비+지방비보조금)로부터 보조금을 수령합니다.</p>
                                <p class="p4" style="letter-spacing: -1px;">※ (공공부문) 지방자치단체별 전기차 보급 사업 기준에 따라 공공부문에 대한 전기차 보조금 지급 대상자를 선정합니다.</p>
                                <p class="p4" style="letter-spacing: -1px;">※ (공공부문) 구매기관은 구매계약 전후로 보조금 잔여 현황을 수시로 확인하고 자체 예산으로 구매대금 납부 후 지방자치단체에 보조금 지급 요청을 합니다.</p>
                            </div>
                            <div class="page2_item3"></div>
                        </article>
                    </div>
                </div>
            </section>
            <section class="page" id="page3">
                <figure class="sub_ban">
                    <img src="./img/buy/page3/genesis-kr-genesis-spectrum-header-05-desktop-1920x484-ko-2.jpg" alt="제네시스 스펙트럼">
                    <div class="tit_box">
                        <h2 class="sub_tit">제네시스 스펙트럼</h2>
                        <p class="sub_com">제네시스를 가장 다채롭고 편리하게 이용할 수 있는 토탈 구독 프로그램</p>
                    </div>
                </figure>
                <div class="bread_box">
                    <div class="bread_wrap">
                        <ul class="bread">
                            <li class="item1">
                                <a href="index" class="home">HOME</a>
                            </li>
                            <li class="item2">구매</li>
                            <li class="item3">
                                <select name="sel" id="sel3" class="sel">
                                    <option value="buy.jsp#page1">구매 프로그램</option>
                                    <option value="buy.jsp#page2">전기차 구매가이드</option>
                                    <option value="buy.jsp#page3" selected>제네시스 스펙트럼</option>
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