<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="kr.go.yeosu.model.CustomerVO" %>
<%@ page import="kr.go.yeosu.model.ImpressionVO" %>
<%@ page import="kr.go.yeosu.model.TourlistVO" %>
<%@ page import="kr.go.yeosu.model.NoticeVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<title>문화 관광 방문지 등록하기</title>
</head>
<body>
<header id="hd">
	<%@ include file="hd.jsp" %>
</header>
<div id="content">
<!-- 이미지를 업로드하기 위해서는 enctype="multipart/form-data" 이어야 실제 이미지가 전송됨  -->
<form action="AddTourlistCtrl" name="tour_add" method="post" enctype="multipart/form-data">
	<table class="tb1">
		<tbody>
			<tr>
				<th>형태</th>
				<td>
					<select name="pid1" id="pid1" onchange="listData(this)" required>
						<option value="">선택안함</option>
						<option value="A">관광지</option>
						<option value="B">문화축제</option>
						<option value="C">숙박</option>
						<option value="D">음식</option>
						<option value="E">쇼핑</option>
						<option value="F">체험</option>
						<option value="G">교통</option>
						<option value="H">기타</option>
					</select>
					<input type="hidden" name="ptype" id="ptype" />
				</td>
			</tr>
			<tr>
				<th>세부종류</th>
				<td>
					<select name="pid2" id="pid2">

					</select>
				</td>
			</tr>
			<tr>
				<th>방문지 이름</th>
				<td>
					<input type="text" name="pname" id="pname" class="in_data" required>
					
				</td>
			</tr>
			<tr>
				<th>방문지 설명</th>
				<td>
					<textarea cols="100" rows="5" name="pcoment" id="pcoment" class="in_area" required></textarea>
				</td>
			</tr>
			<tr>
				<th>배너 이미지 추가</th>
				<td>
					<input type="file" accept="image/png, image/jpeg, image/gif" name="pimg1" id="pimg1">
				</td>
			</tr>
			<tr>
				<th>설명 이미지1 추가</th>
				<td>
					<input type="file" accept="image/png, image/jpeg, image/gif" name="pimg2" id="pimg2">
				</td>
			</tr>
			<tr>
				<th>설명 이미지2 추가</th>
				<td>
					<input type="file" accept="image/png, image/jpeg, image/gif" name="pimg3" id="pimg3">
				</td>
			</tr>
			<tr>
				<th>썸네일 이미지 추가</th>
				<td>
					<input type="file" accept="image/png, image/jpeg, image/gif" name="pimg4" id="pimg4">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="추가" class="frm_btn"> &nbsp; &nbsp; &nbsp; &nbsp;
					<input type="reset" value="취소" class="frm_btn"> &nbsp; &nbsp; &nbsp; &nbsp;
					<a href="/web02/GetTourListCtrl" class="frm_btn">목록</a>
				</td>
			</tr>
		</tbody>
	</table>
</form>
<script>
function listData(v) {
	var arr = [[],[],[],[],[],[],[]];
	var chr = [["섬","해변","산","사찰","박물관 및 박람회","교량 및 시설", "문화재 및 유적", "유명길 또는 전망대", "기타"],
		["문화예술행사","축제","체험행사","일출제","음식문화제", "지역별축제", "기타문화축제"],
		["호텔","모텔","콘도","펜션","민박","게스트하우스","캠핑숙소","찜질방","기타숙소"],
		["한식","횟집","중식","양식","일식","분식","뷔페","동남아식","기타식당"],
		["전통시장","수산시장","특산물판매장","공예/공방","주문제작","5일장","직거래소","라이브쇼핑", "기타쇼핑"],
		["관람시설","체험시설","레저시설","캠핑시설","농어촌체험","이색체험","템플스테이","요트투어","VR체험"],
		["투어버스","시외버스","시내버스","마을버스","택시","관광전세버스","렌트카","바이크","전용관람차","","호남선철도","목포선철도","남해선철도","KTX"]];
/* 	-- pid 첫 번째 문자 설명 : A:관광명소, B:문화축제, C:숙박, D:음식, E:쇼핑, F:체험, G:교통편
	-- pid 두 번째 구분코드 설명 A - 11:섬, 12:해변, 13:산, 14:사찰, 15:박물관/박람회, 16:교량및시설, 17:문화재및유적, 18:유명길또는전망대, 19:기타
	-- pid 두 번째 구분코드 설명 B - 11:문화예술행사, 12:축제, 13:체험행사, 14:일출제, 15:음식문화제, 16:지역별축제, 17:기타문화축제
	-- pid 두 번째 구분코드 설명 C - 11:호텔, 12:모텔, 13:콘도, 14:펜션, 15:민박, 16:게스트하우스, 17:캠핑숙소, 18:찜질방, 19:기타숙소
	-- pid 두 번째 구분코드 설명 D - 11:한식, 12:횟집, 13:중식, 14:양식, 15:일식, 16:분식, 17:뷔페, 18:동남아식, 19:기타식당
	-- pid 두 번째 구분코드 설명 E - 11:전통시장, 12:수산시장, 13:특산물판매장, 14:공예/공방, 15:주문제작, 16:5일장, 17:직거래소, 18:라이브쇼핑, 19:기타쇼핑
	-- pid 두 번째 구분코드 설명 F - 11:관람시설, 12:체험시설, 13:레저시설, 14:캠핑시설, 15:농어촌체험, 16:이색체험, 17:템플스테이, 18:요트투어, 19:VR체험
	-- pid 두 번째 구분코드 설명 G - 11:투어버스, 12:시외버스, 13:시내버스, 14:마을버스, 15:택시, 16:관광전세버스, 17:렌트카, 18:바이크, 19:전용관람차
	--                          - 21:철도-호남선, 22:철도-목포선, 23:철도-남해선, 24:철도-KTX
	--                          - 31:여객선, 32:유람선, 33:요트, 34:크루즈, 35:낚시배대여, 36:무인도방문및계약선박
	--                          - 41:김포공항, 42:제주공항, 43:양양공항, 44:청주공항, 45:해외공항, 46:국내기타
	-- pid 두 번째 구분코드 설명 H - 11:코스여행 */
	if(v.value=='A') {
		$("#pid2").empty();
		document.tour_add.ptype.value = "place";
		for(var i=0;i<chr[0].length;i++){
			$("#pid2").append("<option value="+(i+11)+">"+chr[0][i]+"</option>");
		}		
	}
	if(v.value=='B') {
		document.tour_add.ptype.value = "festival";
		$("#pid2").empty();
		for(var i=0;i<chr[1].length;i++){
			$("#pid2").append("<option value="+(i+11)+">"+chr[1][i]+"</option>");
		}		
	}
	if(v.value=='C') {
		document.tour_add.ptype.value = "hotel";
		$("#pid2").empty();
		for(var i=0;i<chr[2].length;i++){
			$("#pid2").append("<option value="+(i+11)+">"+chr[2][i]+"</option>");
		}		
	}
	if(v.value=='D') {
		document.tour_add.ptype.value = "food";
		$("#pid2").empty();
		for(var i=0;i<chr[3].length;i++){
			$("#pid2").append("<option value="+(i+11)+">"+chr[3][i]+"</option>");
		}		
	}
	if(v.value=='E') {
		document.tour_add.ptype.value = "market";
		$("#pid2").empty();
		for(var i=0;i<chr[4].length;i++){
			$("#pid2").append("<option value="+(i+11)+">"+chr[4][i]+"</option>");
		}		
	}
	if(v.value=='F') {
		document.tour_add.ptype.value = "experience";
		$("#pid2").empty();
		for(var i=0;i<chr[5].length;i++){
			$("#pid2").append("<option value="+(i+11)+">"+chr[5][i]+"</option>");
		}		
	}
	if(v.value=='G') {
		document.tour_add.ptype.value = "traffic";
		$("#pid2").empty();
		for(var i=0;i<chr[6].length;i++){
			$("#pid2").append("<option value="+(i+11)+">"+chr[6][i]+"</option>");
		}		
	}
}
</script>
</div>
<footer id="ft">
	<%@ include file="ft.jsp" %>
</footer>
</div>
</body>
</html>