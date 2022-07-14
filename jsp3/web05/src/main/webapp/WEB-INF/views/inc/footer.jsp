<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer</title>
<style >
<%@ include file="footer.css" %>
</style >
</head>
<body>
<div nid="footer1" class="footer1">
        <link href="https://fonts.googleapis.com/css2?family=Parisienne&amp;display=swap" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">
        <div class="wrapper clearfix">
            <a class="brand">Discoveryvery</a>
            <div class="copyright">
                <div>법인명(상호) : 주식회사 Discoveryvery 대표자(성명) : 김성민 사업자 등록번호 안내 : [125-81-68007]</div>
                <div>© 2022. Camping. All rights reserved.</div>
            </div>
            <div class="links">
                <button>
                    <span>SITE LINKS</span>
                    <i class="fa fa-caret-up"></i>
                </button>
                <ul>
                    <li>
                        <a href="${path1 }/review/list.do" target="_blank">
                            <span>상품후기</span>
                        </a>
                    </li>
                    <li>
                        <a href="${path1 }/board/list.do" target="_blank">
                            <span>공지사항</span>
                        </a>
                    </li>
                    <li>
                        <a target="_blank">
                            <span>매장안내</span>
                        </a>
                    </li>
                    <li>
                        <a href="${path1 }/qna/list.do" target="_blank">
                            <span>QNA</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>