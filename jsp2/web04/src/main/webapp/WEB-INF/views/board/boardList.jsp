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
<header id="header" class="header" name="header" style="padding-bottom: 300px">
	<%@ include file="../include/header.jsp" %>
</header>
<article id="con" class="content">
<div class="table_lst_wrap">
<h2>글 목록</h2>
		<form method="post" action="${path1 }" class="frm_fr">
			<table class="table" id="search_tb">
				<tr>
					<td>
						<select name="searchCondition" required>
							<option value="title">제목</option>
							<option value="content">내용</option>
						</select>
						<input type="text" name="searchKeyword" required />
						<input type="submit" value="검색" class="button is-info"/>
					</td>
				</tr>
			</table>
		</form>
	<table class="table_lst">
		<thead>
			<tr>
				<th>글 번호</th><th>제목</th><th>작성일</th><th>작성자</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${boardList }" var="board">
			<tr>
				<td>${board.seq }</td>
				<td><a href="${path1 }/board/read.do?seq=${board.seq }">${board.title }</a></td>
				<td><fmt:formatDate value="${board.regdate}" pattern="yyyy-MM-dd" /></td>
				<td>
					<c:if test="${board.nickname=='admin' }">관리자</c:if>
					<c:if test="${board.nickname!='admin' }">김기태</c:if>
				</td>
			</tr>
		</c:forEach>
		
		<c:if test="${sid=='admin' }">
			<tr>
				<td colspan="4">
					<a href="${path1 }/board/write_form.do" class="btn btn-writer" style="width:70px">글 등록</a>
				</td>
			</tr>
			</c:if>
		</tbody>
	</table>
</div>
</article>
<footer id="footer" class="footer" name="footer">
	<%@ include file="../include/footer.jsp" %>
</footer>
</body>
</html>