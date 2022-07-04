<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.root {
    font-family: sans-serif;
}

.root *,
.root *:before,
.root *:after {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

.root .wrapper {
    width: 1140px;
    margin: 0 auto;
    max-width: 100%;
    padding: 0 15px;
}

.root .clearfix:after {
    content: " ";
    clear: both;
    display: table;
}
</style>

<title>main</title>
</head>
<body>
<div nid="root" class="root">
    <div nid="cards1" class="cards1">
        <div class="wrapper">
            <div class="title">Best! Camping Reviews</div>
            <div class="cards">
                <div class="card half">
                    <div class="inner">
                        <div class="thumb" style="background-image: url(${path1}/images/box1.jpg)"></div>
                        <div class="info">
                            <a class="title">산 꼭대기 에서 별과하나된 밤</a>
                            <div class="desc">1년간 힘들때마다 계획했던 여행 드디어 왔습니다.</div>
                            <div class="date">2022-06-28</div>
                        </div>
                    </div>
                </div>
                <div class="card quarter">
                    <div class="inner">
                        <div class="thumb" style="background-image: url(${path1}/images/box2.jpg);"></div>
                        <div class="info">
                            <a class="title">속초 캠핑장에서 사랑하는 가족들과</a>
                            <div class="desc">오랜만에 하는 가족여행 특별하게 지내고싶어 캠핑장을 알아보게...</div>
                            <div class="date">2021-07-06</div>
                        </div>
                    </div>
                </div>
                <div class="card quarter">
                    <div class="inner">
                        <div class="thumb" style="background-image: url(${path1}/images/box3.jpg);"></div>
                        <div class="info">
                            <a class="title">호수에서 혼자즐기는 낭만적인..</a>
                            <div class="desc">분명 캠핑 애니메이션에서 봤을떈 쉬워보였는데..</div>
                            <div class="date">2021-07-06</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <%@ include file="../latest/latestBoard.jsp" %>
    
    <div nid="slider1" class="slider1">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.5.8/swiper-bundle.min.css" rel="stylesheet">
        <div class="wrapper">
            <div class="slider">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img src="${path1 }/images/새턴쉘터.jpg">
                        </div>
                        <div class="swiper-slide">
                            <img src="${path1 }/images/포티스.jpg">
                        </div>
                        <div class="swiper-slide">
                            <img src="${path1 }/images/프라임디럭스.jpg">
                        </div>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <div class="texts">
                <div class="top">리빙쉘 텐트</div>
                <div class="title">새턴 쉘터</div>
                <div class="desc">천장 환기창을 적용하여 쾌적한 환경을 제공하며 터널 텐트의 공간활용도가 가장 효율적인 미니멀 캠핑용 쉘터 입니다.</button>
            </div>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.5.8/swiper-bundle.min.js"></script>
    </div>
</div>
<script>
(function () {
    var swiper = new Swiper(".slider1 .swiper-container", {
        autoHeight: true,
        loop: true,
        autoplay: {
            delay: 5000,
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
    });
})();
</script>
</body>
</html>