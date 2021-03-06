<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>글 목록</title>
<style>
	<%@ include file="../inc/common.css" %>
	<%@ include file="../member/memberList.css" %>
</style>
</head>
<body>
<div nid="root" class="root">
<header id="header" class="header" >
	<%@ include file="../inc/header.jsp" %>
</header>
<div nid="board1" class="board1">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
    <div class="header">
        <div class="wrapper">
            <a class="title" href="${path1 }">Discoveryvery</a>
            <div class="desc">후기 목록 </div>
        </div>
    </div>
    <div class="article">
        <div class="wrapper">
            <table>
                <thead>
                    <tr>
                        <th class="번호"></th>
                        <th>작성자</th>
                        <th>제목</th>
                        <th class="date">작성일</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${reviewList }" var="review" varStatus="status">
                    <tr>
                        <td class="num">${status.count }</td>
                        <td class="title">${review.nickname }</td>
                        <td><a href="${path1 }/review/read.do?seq=${review.seq }">${review.title}</a></td>
                        <td class="date">${review.regdate}</td>
                    </tr>
                </c:forEach>
                </tbody>
                <c:if test="${!empty sid }">
					<tr>
						<td colspan="4">
							<a href="${path1 }/review/write_form.do" class="btn btn-writer" style="width:70px">글 등록</a>
						</td>
					</tr>
				</c:if>
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
<footer id="footer" class="footer">
	<%@ include file="../inc/footer.jsp" %>
</footer>
</div>
</body>
</html>