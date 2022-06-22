<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="${path1 }/include/common.css">
<div class="inner">
    <h1 class="logo"><a href="${path1 }"><img src="${path1 }/images/logo.png" alt="판교예스yes의원" style=" width : 100%; height: 100%; "></a></h1>
</div>
<nav id="gnb">
    <div class="login">
    	<c:if test="${empty sid }">
	        <span class="sign"><a href="${path1 }/member/loginForm.do">로그인</a></span>
	        <span><a href="${path1 }/member/joinForm.do">회원가입</a></span>
	    </c:if>
	    <c:if test="${!empty sid }">
	    	<li><span>${sid }</span>님</li>
	        <span class="sign"><a href="${path1 }/member/read.do" class="mypage">마이페이지</a></span>
	        <span><a href="${path1 }/member/logout.do" class="logout">로그아웃</a></span>
	    </c:if>
	    <c:if test="${sid=='admin' }">
	    	<span><a href="${path1 }/member/list.do">회원 목록</a></span>
	        <span><a href="${path1 }/board/list.do">게시판 목록</a></span>
	        <span><a href="${path1 }/databank/list.do">자료실 목록</a></span>
	    </c:if>
    </div>
    <div class="list" >
        <ul id="main-menu" >
            <li class=""><a href="./intro/intro.html#page1">본원 소개</a>
                <div class="subDepth">
                    <ul id="sub-menu" style="border-left:  1px solid #ddd;">
                        <li class=""><a href="${path1 }/board/subpage_3.jsp#page1">인사말</a></li>
						<li class=""><a href="${path1 }/boardsubpage_3.jsp#page2">진료안내</a></li>
                        <li class=""><a href="./intro/intro.html#page3">오시는길</a></li>
                        <li class=""><a href="./intro/intro.html#page4">의료진소개</a></li>
                        <li class=""><a href="./intro/intro.html#page5">약력</a></li>
                    </ul>
                </div>
            </li>
            <li class=""><a href="./menu1/menu1.html">진료 과목</a>
                <div class="subDepth">
                    <ul id="sub-menu">
                        <li class=""><a href="./menu1/menu1.html#page1">내과</a></li>
                        <li class=""><a href="./menu1/menu1.html#page2">정형외과/통증의학과</a></li>
                        <li class=""><a href="./menu1/menu1.html#page3">피부과</a></li>
                        <li class=""><a href="./menu1/menu1.html#page4">비뇨기과</a></li>
                    </ul>
                </div>
            </li>
            <li class=""><a href="./menu2/menu2.html#page1">비수술 통증치료</a>
                <div class="subDepth">
                    <ul id="sub-menu">
                        <li class=""><a href="./menu2/menu2.html#page1">카이로프랙틱</a></li>
                        <li class=""><a href="./menu2/menu2.html#page2">인대간화주사</a></li>
                        <li class=""><a href="./menu2/menu2.html#page3">신경자극치료</a></li>
                        <li class=""><a href="./menu2/menu2.html#page4">체외 충격파</a></li>
                    </ul>
                </div>
            </li>
            <li class=""><a href="./menu3/menu3.html#page1">도수 치료</a>
                <div class="subDepth">
                    <ul id="sub-menu">
                        <li class=""><a href="./menu3/menu3.html#page1">그라스톤 치료</a></li>
                    </ul>
                </div>
            </li>
            <li class=""><a href="./menu4/menu4.html#page1">초음파 치료</a>
                <div class="subDepth">
                    <ul id="sub-menu">
                        <li class=""><a href="./menu4/menu4.html#page1">저음파</a></li>
                        <li class=""><a href="./menu4/menu4.html#page2">초음파</a></li>
                        <li class=""><a href="./menu4/menu4.html#page3">극초음파</a></li>
                    </ul>
                </div>
            </li>
            <li class=""><a href="./menu5/menu5.html#page1">탈모 치료</a>
                <div class="subDepth">
                    <ul id="sub-menu">
                        <li class=""><a href="./menu5/menu5.html#page1">남성형 탈모</a></li>
                        <li class=""><a href="./menu5/menu5.html#page2">여성형 탈모</a></li>
                        <li class=""><a href="./menu5/menu5.html#page3">피나스테라이드</a></li>
                        <li class=""><a href="./menu5/menu5.html#page4">두타스테라이드</a></li>
                        <li class=""><a href="./menu5/menu5.html#page5">모발 이식</a></li>
                    </ul>
                </div>
            </li>
            <li class=""><a href="./board/service.html">안내 및 후기</a>
                <div class="subDepth">
                    <ul id="sub-menu">
                        <li class=""><a href="./board/service.html">안내</a></li>
                        <li class=""><a href="./board/review.html">치료후기</a></li>
                        <li class=""><a href="./board/qna.html">QNA(임시)</a></li>
                    </ul>
                </div>
            </li>
        </ul>
    </div>
</nav>
