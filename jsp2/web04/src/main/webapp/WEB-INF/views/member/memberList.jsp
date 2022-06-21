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
<title>회원 목록</title>
<style>
    /* 콘텐츠 영역 공통 */
    .content {  }
    .sub_visual { margin-bottom:50px; width:100%; }
    .sub_visual img { display:block; width:100%; height:auto; }
    .page_tit { text-align:center; padding-top:40px; font-size:48px; line-height:2; }
        /* 테이블 폼 */
    .table_form_wrap { width:780px; margin:20px auto; }
    .table_form { clear:both; display:table;  border-collapse: collapse; width:100%;  }
    .table_form tr { display:table-row; border-left:2px solid #ececec; border-right:2px solid #ececec; border-top:2px solid #ececec; }
    .table_form tr:last-child { border-left:0px; border-right:0px; }
    .table_form th, .table_form td { display:table-cell; line-height:28px; padding:10px; }
    .table_form tr td {  width:628px; }
    .table_form tr th { background-color:#eee; width:150px; }
    .table_form tr:nth-child(2n) th { background-color:#ffe0ee; }
    .table_form tr td label { display:block; color:#333; width:150px; text-align:center;  }
        /* 테이블 목록 */
    .table_lst_wrap { width:1200px; margin:20px auto; }
    .table_lst { clear:both; display:table;  border-collapse: collapse; width:100%; }
    .table_lst tr { display:table-row; }
    .table_lst th, .table_lst td { display:table-cell; line-height:40px; }
    .table_lst tr td { border-bottom:1px solid #333; text-align:center; }
    .table_lst tr th { border-top:2px solid #333; border-bottom:2px solid #333; 
    	background-color:#eee; }
    .table_lst tr td a { display:block; color:#333; width:500px; text-align:left;  }
    
        /* 폼 공통 요소 */
    input[type=text], input[type=password], input[type=tel], input[type=email], input[type=date] { display:block; line-height:36px; }
    .single100 { display:block; width:600px; padding-left:14px; line-height:36px; }
    .single40 { width:200px; padding-left:14px; }
    /* 버튼 스타일 */
    .btn { display:block; border-radius:40px;  text-align:center; line-height:24px; 
    padding:7px 16px; margin:10px 16px; min-width:80px; cursor:pointer; 
    position:relative; padding-left: 30px; border-color:transparent; color:#fff;
    box-shadow:2px 2px grey; }
    .btn::before { content:""; display:block; width:15px; height: 12px; 
    position:absolute; top:12px; left:8px; z-index:5; background-image: url("../data/iconset_white30.png");
    background-repeat: no-repeat;  }
    .btn-primary {   background-color: #333; color:#fff; }
        .btn-writer {   background-color:rgb(250, 200, 19);  }
    .btn-writer::before { background-position:-73px -68px; }
</style>
<link rel="stylesheet" href="${path1 }/include/reset.css">
<link rel="stylesheet" href="${path1 }/include/common.css">
</head>
<body>
<header id="header" class="header" name="header">
	<%@ include file="../include/header.jsp" %>
</header>
<article id="con" class="content">
<figure class="sub_visual">
	<img src="${path1 }/data/bg_sub_top1.jpg" alt="서브페이지 비주얼">
</figure>
<h2 class="page_tit"></h2>
<div class="table_wrap">
<div class="table_lst_wrap">
	<h2 class="page_tit">회원 목록</h2>
	<table class="table_lst">
		<thead>
			<tr>
				<th>순번</th><th>아이디</th><th>성명</th><th>가입일</th><th>포인트</th><th>방문횟수</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${memberList }" var="mem" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td><a href="${path1 }/member/getMember.do?userid=${mem.userid }">${mem.userid }</a></td>
				<td>${mem.username }</td>
				<td>
						<fmt:parseDate value="${mem.regdate}" var="dateVal" pattern="yyyy-MM-dd" />
						<fmt:formatDate value="${dateVal }" pattern="yyyy-MM-dd" />
				</td>
				<td>${mem.userpoint }</td>
				<td>${mem.visited }</td>
			</tr>
		</c:forEach>
		<c:if test="${sid=='admin' }">
			<tr>
				<td colspan="6">
					<a href="${path1 }/board/list.do" class="btn btn-primary">공지사항 관리</a>
					<a href="${path1 }/qna/list.do" class="btn btn-primary">묻고 답하기</a>
				</td>
			</tr>
			</c:if>
		</tbody>
	</table>
</div>
</div>
</article>
<footer id="footer" class="footer" name="footer">
	<%@ include file="../include/footer.jsp" %>
</footer>
</body>
</html>