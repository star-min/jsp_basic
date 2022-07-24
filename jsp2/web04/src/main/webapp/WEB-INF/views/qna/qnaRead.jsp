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
<title>질문 상세보기</title>
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
<div>
	<img alt="${path1 }/images/bg_sub_top1.jpg" src="${path1 }/images/lolomain_img.jpg" style=" width: 100%">
</div>
<h2 class="page_tit">질문 상세보기</h2>
	<form action="${path1 }/qna/update.do" method="post">
	<div class="table_lst_wrap">
		<table class="table_form">
			<tbody>
				<tr>
					<th><label for="title">번호</label></th>
					<td>
						<c:if test="${(sid==qna.qwriter) || sid=='admin'}">	
						<span>${qna.qno }</span>
						</c:if>
						<c:if test="${(sid!=qna.qwriter) && sid!='admin'}">
							<span>${qna.qno }</span>						
						</c:if>
					</td>
				</tr>
				<tr>
					<th><label for="qtitle">제목</label></th>
					<td>
						<c:if test="${(sid==qna.qwriter) || sid=='admin'}">	
						<input type="text" name="qtitle" id="qtitle" size="100" class="single100" value="${qna.qtitle }" required>
						</c:if>
						<c:if test="${(sid!=qna.qwriter) && sid!='admin'}">
							<span>${qna.qtitle }</span>						
						</c:if>

					</td>
				</tr>
				<tr>
					<th><label for="qcontent">내용</label></th>
					<td>
						<c:if test="${(sid==qna.qwriter) || sid=='admin'}">	
						<textarea name="qcontent" id="qcontent" cols="100" rows="8" class="multi100" required>${qna.qcontent }</textarea>
						</c:if>
						<c:if test="${(sid!=qna.qwriter) && sid!='admin'}">
							<p>${qna.qcontent }</p>						
						</c:if>
					</td>
				</tr>
				<tr>
					<th><label for="qwriter">작성자</label></th>
					<td>
						<span>${qna.qwriter }</span>
						<input type="hidden" name="qroot" value="${qna.qno }" />
						<input type="hidden" name="qstep" value="0" />
						<input type="hidden" name="qindent" value="0" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<c:if test="${(sid==qna.qwriter) || sid=='admin'}">					
						<input type="submit" class="btn btn-writer" value="글 수정">
						<input type="reset" class="btn btn-primary" value="취소">
						<a href="${path1 }/qna/delete.do?qno=${qna.qno }" class="btn btn-primary">질문 삭제</a>
						</c:if>
						<c:if test="${((sid!=qna.qwriter) && !(empty sid)) || sid=='admin' }">
						<a href="${path1 }/qna/replyForm.do?qno=${qna.qno }" class="btn btn-primary">답변하기</a>
						</c:if>
						<a href="${path1 }/qna/list.do" class="btn btn-primary">글 목록</a>
					</td>
				</tr>	
			</tbody>
		</table>
	</div>
	</form>
</article>
<footer id="footer" class="footer" name="footer">
	<%@ include file="../include/footer.jsp" %>
</footer>

</body>
</html>