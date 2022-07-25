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
<title>회원 가입</title>

<link rel="stylesheet" href="${path1 }/include/reset.css">
<link rel="stylesheet" href="${path1 }/common.css">
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
</head>
<body>
	<header id="header" class="header" name="header">
			<%@ include file="../include/header.jsp" %>
	</header>
<article id="con" class="content">
<div>
	<img alt="${path1 }/images/bg_sub_top1.jpg" src="${path1 }/images/lolomain_img.jpg" style=" width: 100%">
</div>
<h2 class="page_tit">회원 가입</h2>
	<form action="${path1 }/member/join.do" method="post" onsubmit="return joinCheck(this)" name="join_form">
	<div class="table_form_wrap">
		<table class="table_form">
			<tbody>
				<tr>
					<th><label for="userid">아이디</label></th>
					<td>
						<c:if test="${empty uid }">
						<input type="text" name="userid" id="userid" size="100" class="single100" placeholder="아이디 입력" required>
						<!-- pattern="^[a-z0-9]+$" -->
						</c:if>
						<c:if test="${!empty uid }">
						<input type="text" name="userid" id="userid" size="100" class="single100" value="${uid }" placeholder="아이디 입력" required>
						</c:if>
						<button id="chkBtn" class="btn btn-primary" onclick="idCheck()">중복 확인</button>
						<c:if test="${empty msg }">
						<input type="hidden" name="ck" id="ck" />
						</c:if>
						<c:if test="${!empty msg }">
						<input type="hidden" name="ck" id="ck" value="${ck }"/>
						</c:if>
					</td>
				</tr>				
				<tr>
					<th><label for="userpw">비밀번호</label></th>
					<td><input type="password" name="userpw" id="userpw"  class="single100" placeholder="비밀번호 입력" required>
						<p>(최소 8자리에서 최대 16자리까지, 숫자, 영문 대소문자, 특수문자가 각 1 문자 이상 포함되어야 함)</p>
						<!-- pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  -->
					</td>
				</tr>
				<tr>
					<th><label for="userpw2">비밀번호 확인</label></th>
					<td><input type="password" name="userpw2" id="userpw2"  class="single100" placeholder="비밀번호 확인" required></td>
				</tr>
				<tr>
					<th><label for="username">이름</label></th>
					<td><input type="text" name="username" id="username" class="single100"  required></td>
				</tr>
				<tr>
					<th><label for="email">이메일</label></th>
					<td><input type="email" name="email" id="email" class="single100"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required></td>
				</tr>
				<tr>
					<th><label for="tel">전화번호</label></th>
					<td><input type="tel" name="tel" id="tel" class="single100"  pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" placeholder="00*-000*-0000 입력" required></td>
				</tr>
				<tr>
					<th><label for="" onclick="findAddr()">주소</label></th>
					<td>
						<input type="text" name="addr1" id="addr1" class="single100"><br>
						<input type="text" name="addr2" id="addr2" class="single100" placeholder="상세주소 입력"><br>
						<input type="text" name="postcode" id="postcode"  class="single40">
						<input type="button" value="주소찾기" onclick="findAddr()" class="btn btn-primary">
					</td>
				</tr>
				<tr>
					<th><label for="birth" >생년월일</label></th>
					<td>
						<input type="date" name="birth" id="birth" class="single100">
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" class="btn btn-writer" value="회원가입">
						<input type="text" class="btn btn-primary" value="취소" onclick="ok()">
					</td>
				</tr>	
			</tbody>
		</table>
	</div>
	</form>
	<script>
	function ok(){
		alert("회원가입이 완료되셧습니다!");
	}
	function idCheck() {
		var uid = document.join_form.userid.value;
		if(uid==""){
			alert("아이디가 입력되지 않았습니다. 아이디를 입력 후 진행하시기 바랍니다.");
			return false;
		} else {
			location.href="${path1 }/member/idCheck.do?userid="+uid;
		}
	}
	</script>	
	<script>
	function joinCheck(f){
		if(f.userpw.value!=f.userpw2.value){
			alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
			return false;
		}
		if(f.ck.value!="ok"){
			alert("회원가입 중복체크를 진행하지 않았습니다.");
			return false;
		}
	}
	</script>
	<script>
	function findAddr() {
		new daum.Postcode({
			oncomplete: function(data) {
				console.log(data);
				var roadAddr = data.roadAddress;
				var jibunAddr = data.jibunAddress;
				document.getElementById("postcode").value = data.zonecode;
				if(roadAddr !== '') {
					document.getElementById("addr1").value = roadAddr;				
				} else if(jibunAddr !== ''){
					document.getElementById("addr1").value = jibunAddr;
				}
			}
		}).open();
	}
	</script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</article>
<footer id="footer" class="footer" name="footer">
	<%@ include file="../include/footer.jsp" %>
</footer>
</body>
</html>