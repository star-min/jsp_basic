<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE>
<html lang="ko">
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 메타 데이터 -->
    <meta name="url" content="https://www.yesdoctor.com/index.html">
    <meta name="description" content="성남시 삼평동 위치, 통증 클리닉, 도수치료, 피부염, 고혈압, 당뇨, 비뇨기과">
    <meta name="keywords" content="성남시 삼평동 위치, 통증 클리닉, 도수치료, 피부염, 고혈압, 당뇨, 비뇨기과">
    <!-- 오픈 그래프 -->
    <meta property="og:url" content="https://www.yesdoctor.com/index.html">
    <meta property="og:type" content="website">
    <meta property="og:title" content="판교예스yes!의원">
    <meta property="og:description" content="성남시 삼평동 위치, 통증 클리닉, 도수치료, 피부염, 고혈압, 당뇨, 비뇨기과">
    <meta property="og:site_name" content="판교예스의원">
    <!-- jquery 임포트 -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>
	<script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>

	<!-- 메인 화면의 스타일들을 넣어놓은 common.css를 불러옵니다. -->
	<link rel="stylesheet" href="${path1 }/include/common.css">
    <title>판교예스yes의원</title>
    
</head>
<body>
	<header id="header" class="header" name="header">
			<%@ include file="include/header.jsp" %>
	</header>
	
<%@ include file="include/menu.jsp" %>


	<footer id="footer" class="footer" name="footer">
		<%@ include file="include/footer.jsp" %>
	</footer>
</div>
</body>
</html>
