<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <link rel="stylesheet" href="https://unpkg.com/bootstrap@3.3.7/dist/css/bootstrap.min.css"> -->
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css" />
<title>메인</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="content" class="panel-body">
	<h2>메인 페이지</h2>
	<figure style="text-align: center;">
		<iframe  width="1000px" height="650px" src="https://www.youtube.com/embed/H-AcDBLqxi4?autoplay=1&mute=1" 
			title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; 
			clipboard-write; encrypted-media; gyroscope; picture-in-picture " allowfullscreen>
		</iframe>
	</figure>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>