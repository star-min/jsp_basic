<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl Basic</title>
</head>
<body>
	<h2>jstl(Java Standard Tag Library) : 자바 표준 태그 라이브러리</h2>
	<p>흔히 태그 라이브러리라고 하며, 일반 html처럼 자바의 제어 명령이나 문서를 구현할 수 있도록 자주 사용하는
	형태를 제공하며, taglib로 선언하여 활용해야함	</p>
	<h3>Core tag - 주로 명령으로 이루어진 태그</h3>
	<p>c:태그 로 시작하여 /c:태그 로 끝남</p>
	<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
	<p>
	<h4>c:out - 표현식과 같은 형태로 출력할 내용을 지정</h4>
	<%-- <c:out value="${'김기태' }" /> --%>
	<h4>c:import - 특정 페이지나 자원을 불러올 때 사용</h4>
	<%-- <c:import file="header.jsp" /> --%>
	<h4>c:set - 변수나 스코프, 파일경로를 저장할 때 사용</h4>
<%-- 	<c:set var="age" scope="session" value="29"/>
	<c:out value="${age }" />
	<p>나이 = ${age }</p> --%>
	<h4>c:remove - 변수나 객체를 제거할 때 사용</h4>
	<%-- <c:remove ver="age"/> --%>
	<h4>c:if - 조건분기문이 필요할 때 사용</h4>
<%-- 	<c:if test="${age>=20 }">
	<p>성년</p>
	</c:if>
	<c:if test="${age<20 }">
	<p>미성년</p>
	</c:if> --%>
	<h4>c:choose, c:when, c:otherwise - 선택문이 필요할 때 사용</h4>
<%-- 	<c:set var="jum" scope="page" value="90"/>
	<c:choose>
		<c:when test="${jum>=90 }">
			<p class="red">Wonderful~!</p>
		</c:when>
		<c:when test="${jum>=80 }">
			<p class="blue">Good~!</p>
		</c:when>
		<c:otherwise>
			<p class="green">Not bad~!</p>
		</c:otherwise>
	</c:choose> --%>
	<h4>c:forEach - 시작값, 끝값, 열거형, 리스트, 셋, 맵 등 원하는 대로 지정하는 반복문에 사용</h4>
	<p>items(컬렉션명)/var(단일객체)/begin(시작값)/end(끝값)/step(간격)/varStatus(카운트변수) </p>
<%-- 	<c:forEach items="${list }" var="vo">
	${vo.country }/ ${vo.name } / ${vo.age } 
	</c:forEach>
	<c:forEach var="i" begin="1" end="7">
	<c:out value="${i }"/>
	</c:forEach> --%>
	<h4>c:forTokens - 열거형, 리스트, 셋, 맵 또는 값이 구분자로 되어 있는 데이터를 자동으로 개수만큼 진행하는 반복문에 사용</h4>
	<p>items(컬렉션명)/var(단일객체)/varStatus(카운트변수)/delims(구분자)</p>
<%-- 	<c:set var="names" value="kim-lee-park-cho-shin"/>
	<ul>
	<c:forToken items="${names }" delims="-" var="name">
		<li><c:out value="${name }" /></li>	
	</c:forToken>
	</ul> --%>
	<h4>c:param - import 태그의ㅏ url에서 지정한 매개변수를 지정하거나 값을 가져올 때 사용</h4>
	<h4>c:url - 해당 문서나 다른 문서의 url의 값을 지정하거나 저장할 때 사용</h4>
<%-- 	<c:url value="index.jsp" var="completeURL">
		<c:param name="userid" value="kkt"/>
		<c:param name="username" value="김기태"/>
	</c:url> --%>
	<h4>c:redirect - 특정 URL로 페이지를 이동할 때 사용</h4>
<%-- 	<c:set var="sid" value="admin" />
	<c:if test="${sid=='admin' }">
		<c:redirect url="admin.jsp" />
	</c:if>	
	<c:if test="${sid!='admin' }">
		<c:redirect url="index.jsp" />
	</c:if>
	<c:if test="${sid==null }">
		<c:redirect url="login.jsp" />
	</c:if>	 --%>
	<hr>
	
	<h3>fmt(포맷-format) 태그 - 통화, 날짜, 지역, 단위 등의 표시형식을 지정할 때 사용</h3>
	<p>fmt:태그 로 시작하여 /fmt:태그 로 끝남</p>
	<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> --%>
	<h4>fmt:parseNumber - 통화, 백분율과 같은 숫자 형태의 데이터로 변환할 때 사용</h4>
	<h4>fmt:formatNumber - 통화, 백분율과 같은 숫자 형태의 표시형식을 지정할 때 사용</h4>
	<h4>fmt:parseDate - 날짜/시간과 같은 데이터로 변환할 때 사용</h4>
	<h4>fmt:formatDate - 날짜/시간과 같은 데이터 표시형식을 지정할 때 사용</h4>
	<h4>fmt:timeZone - 그 지역의 날짜/시간 표시형식으로 지정할 때 사용</h4>
	<h4>fmt:setTimeZone - 원하는 지역대로 변경할 때 사용</h4>
	<hr>
	
	<h3>fn(함수 - Function) - jsp에서 자주사용하는 함수를 사용할 때 지정</h3>
	<p>fn:함수명 으로 시작하여 /fn:함수명으로 끝나거나 열 때 /로 닫는다.</p>
	<%-- <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> --%>
	<h4>fn:contains() : 주로 해당 변수 값이나 데이터에 특정 데이터가 있는지 검사할 때 활용</h4>
	<h4>fn:containsIgnoreCase() : 주로 해당 변수 값이나 데이터에 특정 데이터가 대소문자 구분없이 있는지 검사할 때 활용</h4>
	<h4>fn:endsWith() : 주로 해당 변수의 값이나 데이터에 특정 데이터로 끝나는지 검사할 때 활용</h4>
	<h4>fn:escapeXml() : XML 언어가 섞여 있을 경우 해독할 때 활용</h4>
	<h4>fn:indexOf() : 주로 해당 변수의 값이나 데이터에 특정 문자열의 위치를 반환받을 때 활용</h4>
	<h4>fn:trim() : 주로 해당 변수의 값이나 문자 데이터에 있는 앞 뒤의 공백을 제거할 때 활용</h4>
	<h4>fn:startsWith() : 주로 해당 변수의 값이나 데이터에 특정 데이터로시작하는지 검사할 때 활용</h4>
	<h4>fn:split() : 문자열 데이터를 배열 데이터로 분할</h4>
	<h4>fn:toLowerCase() : 소문자로 변환</h4>
	<h4>fn:toUpperCase() : 대문자로 변환</h4>
	<h4>fn:substring() : 특정 시작번째 부터 끝번째이전까지 문자를 반환할 때 사용</h4>
	<h4>fn:length() : 문자열의 길이 = 글자수를 반환할 때 사용 </h4>
	<h4>fn:replace() : 특정 문자열을 다른 문자열로 치환할 때 사용</h4>
	<hr>
	<h3>xml - 해당 xml개체를 선언할 때 사용</h3>
	<%-- <%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %> --%>
	<h4></h4>
	<c:set var="members">
		<members>
			<member>
				<userid>ksm</userid> <!-- members.member[0].userid -->
				<username>김성민</username>
			</member>
			<member>
				<userid>lgh</userid>
				<username>이규호</username>
			</member>
			<member>
				<userid>kye</userid>
				<username>김예은</username> <!-- members.member[2].username -->
			</member>
			<member>
				<userid>csm</userid>
				<username>조수민</username>
			</member>
		</members>
	</c:set>
	
	<hr>
	
	<h3>sql - 해당 sql 명령을 실행할 때 사용</h3>
	<%-- <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %> --%>
	<h4>sql:setDataSource : 데이터 원본을 설정</h4>
	<h4>sql:query : select문을 구현하고자 할 때</h4>
	<h4>sql:update : update문/delete문/insert문을 구현하고자 할 때</h4>
	<h4>sql:param : sql문의 매개변수를 지정할 때</h4>
	<h4>sql:dateParam : sql문의 날짜 매개변수를 지정할 때</h4>
	<h4>sql:transaction : 트랜잭션을 지정할 때</h4>
</body>
</html>