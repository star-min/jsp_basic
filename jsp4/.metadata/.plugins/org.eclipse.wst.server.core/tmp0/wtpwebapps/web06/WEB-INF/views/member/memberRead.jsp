<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
</style>
</head>
<body>
<div nid="root" class="root">
	<header id="header" class="header">
			<%@ include file="../inc/header.jsp" %>
	</header>
<article id="con" class="content">
<h2 class="page_tit">마이 페이지</h2>
	<form action="${path1 }/member/update.do" method="post" onsubmit="return updateCheck(this)">
	<div class="table_form_wrap">
		<table class="table_form">
			<tbody>
				<tr>
					<th><label for="id">아이디</label></th>
					<td><input type="text" name="id" id="id" size="100" class="single100" value="${member.id }" readonly required>
					</td>
				</tr>				
				<tr>
					<th><label for="pwd">비밀번호</label></th>
					<td><input type="password" name="pwd" id="pwd"  class="single100" value="${member.pwd }" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required>
						<p>(최소 8자리에서 최대 16자리까지, 숫자, 영문 대소문자, 특수문자가 각 1 문자 이상 포함되어야 함)</p>
					</td>
				</tr>
				<tr>
					<th><label for="pwd2">비밀번호 확인</label></th>
					<td><input type="password" name="pwd2" id="pwd2"  class="single100" value="${member.pwd }" required></td>
				</tr>
				<tr>
					<th><label for="uname">이름</label></th>
					<td><input type="text" name="uname" id="uname" class="single100"  value="${member.uname }" required></td>
				</tr>
				<tr>
					<th><label for="email">이메일</label></th>
					<td><input type="email" name="email" id="email" class="single100" value="${member.email }" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required></td>
				</tr>
				<tr>
					<th><label for="phone">전화번호</label></th>
					<td><input type="tel" name="phone" id="phone" class="single100"  value="${member.phone }" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" required></td>
				</tr>
				<tr>
					<th><label for="" onclick="findAddr()">주소</label></th>
					<td>
						<input type="text" name="addr1" id="addr1" class="single100" value="${member.addr1 }"><br>
						<input type="text" name="addr2" id="addr2" class="single100" value="${member.addr2 }"><br>
						<input type="text" name="postcode" id="postcode"  class="single40" value="${member.postcode }">
						<input type="button" value="주소찾기" onclick="findAddr()" class="btn btn-primary">
					</td>
				</tr>
				<tr>
					<th><label for="birth" >생년월일</label></th>
					<td>
						<input type="date" name="birth" id="birth" value="${member.birth }" class="single100">
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" class="btn btn-writer" value="회원정보수정">
						<input type="reset" class="btn btn-primary" value="취소">
					</td>
				</tr>	
			</tbody>
		</table>
	</div>
	</form>
	<script>
	function updateCheck(f){
		if(f.pwd.value!=f.pwd2.value){
			alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
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
<footer id="footer" class="footer">
	<%@ include file="../inc/footer.jsp" %>
</footer>
</div>
</body>
</html>