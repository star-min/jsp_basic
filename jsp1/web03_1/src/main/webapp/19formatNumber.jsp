<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fmt - formatNumber</title>
</head>
<body>
<h2>formatNumber</h2>
<c:set var="num" value="1234567.86765"/>
<c:set var="today" value="<%=new Date() %>"/>
<p>${num }</p>
<h3>groupingUsed 속성 - 그룹핑</h3>
<p>천단위 구분기호로 표시 : <fmt:formatNumber value="${num }" groupingUsed="true"/></p>
<h3>pattern 속성 - 표시형식 지정</h3>
<!-- 남은 자릿수 무시 : # -->
<p>표시형식1 : <fmt:formatNumber value="${num }" pattern="#.##"/></p>
<p>표시형식2 : <fmt:formatNumber value="${num }" pattern="#,###.###"/></p>
<p>표시형식3 : <fmt:formatNumber value="${num }" pattern="#,###.#########"/></p>
<!-- 남은 자릿수 채우기 : 0 -->
<p>표시형식1 : <fmt:formatNumber value="${num }" pattern="0.00"/></p>
<p>표시형식2 : <fmt:formatNumber value="${num }" pattern="0,000.000"/></p>
<p>표시형식3 : <fmt:formatNumber value="${num }" pattern="000,000,000,000.000000000"/></p>
<!-- 올바른 #과 0의 혼용법 : 일의 자리 앞의 숫자들은 #으로 일의 자리 뒤의 숫자들은 표시할 만큼 0으로 -->
<p>표시형식3 : <fmt:formatNumber value="${num }" pattern="\ #,##0.000000"/></p>
<h3>type 속성 - percent</h3>
<p>백분율1 : <fmt:formatNumber value="${num }" type="percent" /></p>
<p>백분율2 : <fmt:formatNumber value="${0.537 }" type="percent" /></p>
<h2>fmt - setLocale</h2>
<h3>대한민국 단위의 표시</h3>
<fmt:setLocale value="ko_kr"/>
<p>통화 : <fmt:formatNumber value="${num }" type="currency" /></p>
<p>시간 : <fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" /></p>
<h3>미국 단위의 표시</h3>
<fmt:setLocale value="en_us"/>
<p>통화 : <fmt:formatNumber value="${num }" type="currency" /></p>
<p>시간 : <fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" /></p>
<h3>중국 단위의 표시</h3>
<fmt:setLocale value="zh_cn"/>
<p>통화 : <fmt:formatNumber value="${num }" type="currency" /></p>
<p>시간 : <fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" /></p>
<h3>일본 단위의 표시</h3>
<fmt:setLocale value="ja_jp"/>
<p>통화 : <fmt:formatNumber value="${num }" type="currency" /></p>
<p>시간 : <fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" /></p>
<h3>대만 단위의 표시</h3>
<fmt:setLocale value="zh_tw"/>
<p>통화 : <fmt:formatNumber value="${num }" type="currency" /></p>
<p>시간 : <fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" /></p>
<h3>베트남 단위의 표시</h3>
<fmt:setLocale value="vi_vn"/>
<p>통화 : <fmt:formatNumber value="${num }" type="currency" /></p>
<p>시간 : <fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" /></p>
<h3>독일 단위의 표시</h3>
<fmt:setLocale value="de_de"/>
<p>통화 : <fmt:formatNumber value="${num }" type="currency" /></p>
<p>시간 : <fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" /></p>
<h3>프랑스 단위의 표시</h3>
<fmt:setLocale value="fr_fr"/>
<p>통화 : <fmt:formatNumber value="${num }" type="currency" /></p>
<p>시간 : <fmt:formatDate value="${today }" pattern="yyyy/MM/dd EEEE a hh:mm:ss" /></p>
<fmt:setLocale value="ko_kr"/>
</body>
</html>