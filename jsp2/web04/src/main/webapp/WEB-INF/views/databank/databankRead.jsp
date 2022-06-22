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
    .multi100 { display:block; width:600px; padding-left:14px; padding-top:14px; }
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
<title>글 상세보기</title>
<link rel="stylesheet" href="${path1 }/include/reset.css">
<link rel="stylesheet" href="${path1 }/include/common.css">
</head>
<body>
<header id="header" class="header" name="header" style="padding-bottom: 300px">
	<%@ include file="../include/header.jsp" %>
</header>
<article id="con" class="content">

<h2 class="page_tit">글 상세보기</h2>
	<form action="${path1 }/databank/update.do" method="post">
	<div class="table_form_wrap">
		<tbody>
				<tr>
					<th><label for="">번호</label></th>
					<td>
						<c:if test="${sid=='admin' }">
						<input type="text" name="datano" id="datano" size="100" class="single100" placeholder="" value="${databank.datano }" readonly>
						</c:if>
						<c:if test="${sid!='admin' }">
							<span>${databank.datano }</span>						
						</c:if>
					</td>
				</tr>
				<tr>
					<th><label for="dtitle">제목</label></th>
					<td>
						<c:if test="${sid=='admin' }">
						<input type="text" name="dtitle" id="dtitle" size="100" class="single100" value="${databank.dtitle }" required>
						</c:if>
						<c:if test="${sid!='admin' }">
							<span>${databank.dtitle }</span>						
						</c:if>
					</td>
				</tr>
				<tr>
					<th><label for="dcontent">내용</label></th>
					<td>
						<c:if test="${sid=='admin' }">
						<textarea name="dcontent" id="dcontent" cols="100" rows="8" class="multi100" required>${databank.dcontent }</textarea>
						</c:if>
						<c:if test="${sid!='admin' }">
							<p>${databank.dcontent }</p>						
						</c:if>
					</td>
				</tr>
				<tr>
					<th><label for="dposter">파일 형태</label></th>
					<td>
						<c:if test="${sid=='admin' }">
						<input type="text" name="dposter" id="dposter" size="40" class="single40" value="${databank.dposter }" readonly>
						</c:if>
						<c:if test="${sid!='admin' }">
							<c:set var="filetype" value="${databank.dposter }" />
							<c:if test="${filetype=='gif' }"><img src="${path1 }/data/img.png" alt="파일타입"/></c:if>				
							<c:if test="${filetype=='jpg' }"><img src="${path1 }/data/img.png" alt="파일타입"/></c:if>
							<c:if test="${filetype=='png' }"><img src="${path1 }/data/img.png" alt="파일타입"/></c:if>
							<c:if test="${filetype=='hwp' }"><img src="${path1 }/data/hwp.png" alt="파일타입"/></c:if>
							<c:if test="${filetype=='doc' }"><img src="${path1 }/data/doc.png" alt="파일타입"/></c:if>
							<c:if test="${filetype=='pdf' }"><img src="${path1 }/data/pdf.png" alt="파일타입"/></c:if>
							<c:if test="${filetype=='xls' }"><img src="${path1 }/data/xls.png" alt="파일타입"/></c:if>
							<c:if test="${filetype=='ppt' }"><img src="${path1 }/data/ppt.png" alt="파일타입"/></c:if>
							<c:if test="${filetype=='pptx' }"><img src="${path1 }/data/ppt.png" alt="파일타입"/></c:if>
							<c:if test="${empty filetype}"><img src="${path1 }/data/no.png" alt="파일타입"/></c:if>
						</c:if>
					</td>
				</tr>
				<tr>
					<th><label for="dcontent">첨부 파일</label></th>
					<td>
						<c:if test="${sid=='admin' }">
						<input type="text" name="dfilename" id="dfilename" class="single100" value="${databank.dfilename }" required>
						<button class="btn btn-primary" onclick="uploadFile()">첨부 파일 변경 하기</button>
						<input type="hidden" name="fileCheck" id="fileCheck" />
						</c:if>
						<a href="${path1 }/resources/upload/${databank.dfilename }">${databank.dfilename }</a>						
					</td>
				</tr>
				<tr>
					<th><label for="dcontent">등록일</label></th>
					<td>
							<fmt:parseDate value="${databank.regdate}" var="dateVal" pattern="yyyy-MM-dd" />
							<fmt:formatDate value="${dateVal }" pattern="yyyy-MM-dd" />
							
					</td>
				</tr>
							
				<tr>
					<td colspan="2">
						<c:if test="${sid=='admin' }">					
						<input type="submit" class="btn btn-writer" value="글 수정">
						<input type="reset" class="btn btn-primary" value="취소">
						<a href="${path1 }/databank/delete.do?datano=${databank.datano }" class="btn btn-primary">자료 삭제</a>
						</c:if>
						<a href="${path1 }/databank/list.do" class="btn btn-primary">자료 목록</a>
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