<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl - redirect</title>
</head>
<body>
<h2>Redirect</h2>
<c:redirect url="15Catch.jsp">
	<c:param name="x" value="127" />
	<c:param name="y" value="39" />
</c:redirect>
</body>
</html>