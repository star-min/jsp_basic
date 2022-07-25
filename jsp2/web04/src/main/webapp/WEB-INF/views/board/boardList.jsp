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
/* 테이블 목록 */
    .table_lst_wrap { width:1200px; margin:20px auto; }
    .table_lst { clear:both; display:table;  border-collapse: collapse; width:100%; }
    .table_lst tr { display:table-row; }
    .table_lst th, .table_lst td { display:table-cell; line-height:40px; }
    .table_lst tr td { border-bottom:1px solid #333; text-align:center; }
    .table_lst tr th { border-top:2px solid #333; border-bottom:2px solid #333; 
    	background-color:#eee; }
    .table_lst tr td a { display:block; color:#333; width:500px; text-align:left;  }
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
<header id="header" class="header" name="header" >
	<%@ include file="../include/header.jsp" %>
</header>
<article id="con" class="content">
<div class="table_lst_wrap">
<div style="padding-top: 100px">
	<img alt="${path1 }/images/bg_sub_top1.jpg" src="${path1 }/images/lolomain_img.jpg" style=" width: 100%">
</div>
<h2 class="page_tit">후기 목록</h2>
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
					<c:if test="${board.nickname!='admin' }">${board.nickname }</c:if>
				</td>
			</tr>
		</c:forEach>
		
		<c:if test="${sid=='admin' }">
			<tr>
				<td colspan="4">
					<a href="${path1 }/board/write_form.do" class="btn btn-writer" style="width:70px">후기 등록</a>
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