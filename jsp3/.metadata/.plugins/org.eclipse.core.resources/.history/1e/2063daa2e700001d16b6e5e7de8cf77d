<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FormData 전송 실습</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).ready(function(){
	$("#sendBtn").on("click", function(){
		var sno = $("#sno").val();
		var name = $("#name").val();
		var address = $("#address").val();
		if(sno.trim()=="" || name.trim()=="" || address.trim()==""){
			alert("입력되지 않은 필드가 존재합니다.");
			return false;
		}
		
		$.ajax({
			url:"ajax6.do",
			type:"POST",
			dataType:'json',
			data:"{\"sno\":sno, \"name\":name, \"address\":address}",
			contentType:'application/json; charset=UTF-8',
			mimeType:'application/json',
			success:function(data){
				alert("번호 : "+data.sno);
			},
			error:function(data, status, err){
				alert("에러 : "+err+"상태 코드 : "+status)
			}
		});
	});
});
</script>
</head>
<body>
	<h2>폼 데이터 전송</h2>
 	번호 : <input type="text" name="sno" id="sno"><br>
 	이름 : <input type="text" name="name" id="name"><br>
 	주소 : <input type="text" name="address" id="address"><br><br>
 	<hr>
 	<input type="button" id="sendBtn" value="전송">
</body>
</html>