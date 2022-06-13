<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="latest()">
<%-- 	<table onload="latest()">
		<tbody>
		<c:forEach items="${boardList }" var="vo" varStatus="status">
		<tr>
			<td>${status.count }</td>
			<td><a href="${path1 }/GetBoardCtrl?num=${vo.seq }">${vo.title }</a></td>
			<td>${vo.nickname }</td>
			<td>${vo.regdate }</td>
		</tr>
		${powderList }
		<c:forEach items="${powderList }" var="vo" varStatus="status">
		${vo.pname }
		</c:forEach>
		
		${boardList }
		${vo.boardList }
		</c:forEach>
		</tbody>
	</table> --%>
	${boardList }
<script type="text/javascript">
	function latest(){
	location.href="LatestCtrl"}
</script>
</div>
</body>
</html>