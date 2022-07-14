<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div nid="news1" class="news1">
    <div class="wrapper">
        <div class="news-wrapper">
            <div class="news">
                <div class="header">
                    <div class="left">
                        <span class="title">공지사항</span><span class="new">NEW</span>
                    </div>
                    <div class="right">
                        <button>보러가기</button>
                    </div>
                </div>
                <div class="contents">
                    <ul class="item">
                    <c:forEach items="${latestBoard }" var="board">
                        <li>
                            <a>${board.title }</a>
                            <span>${board.regdate }</span>
                        </li>
                    </c:forEach>
                    </ul>
                </div>
            </div>
            <div class="news">
                <div class="header">
                    <div class="left">
                        <span class="title">최근 후기</span><span class="new">NEW</span>
                    </div>
                    <div class="right">
                        <button>보러가기</button>
                    </div>
                </div>
                <div class="contents">
                    <ul class="item">
                    <c:forEach items="${latestReview }" var="review">
                        <li>
                            <a>${review.title }</a>
                            <span>${review.regdate }</span>
                        </li>
                    </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>