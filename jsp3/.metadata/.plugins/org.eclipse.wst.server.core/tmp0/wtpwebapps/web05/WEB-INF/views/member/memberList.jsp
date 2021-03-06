<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
<%@ include file="memberList.css" %>
<%@ include file="../inc/common.css" %>
</style>
</head>
<body>
<div nid="root" class="root">
	<header id="header" class="header">
		<%@ include file="../inc/header.jsp" %>
	</header>
<div nid="board1" class="board1">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
    <div class="header">
        <div class="wrapper">
            <a class="title" href="${path1 }">Discoveryvery</a>
            <div class="desc">회원 목록 </div>
        </div>
    </div>
    <div class="article">
        <div class="wrapper">
            <table>
                <thead>
                    <tr>
                        <th class="번호"></th>
                        <th>아이디</th>
                        <th>이름</th>
                        <th class="date">가입일</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${memberList }" var="member" varStatus="status">
                    <tr>
                        <td class="num">${status.count }</td>
                        <td class="title">
                            <a href="${path1 }/member/getMember.do?id=${member.id }">${member.id }</a>
                        </td>
                        <td>${member.uname}</td>
                        <td class="date">${member.regdate}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <div class="search">
                <div class="count">Te 10 view</div>
                <div class="bundle clearfix">
                </div>
            </div>
            <div class="pages">
                <ul>
                    <li class="active">
                        <a>1</a>
                    </li>
                    <li>
                        <a>2</a>
                    </li>
                    <li>
                        <a>3</a>
                    </li>
                    <li>
                        <a>4</a>
                    </li>
                    <li>
                        <a>5</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</div>
<footer id="footer" class="footer" name="footer">
	<%@ include file="../inc/footer.jsp" %>
</footer>
</div>
</body>
</html>