<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/theeluwin/NotoSansKR-Hestia@master/stylesheets/NotoSansKR-Hestia.css" integrity="sha384-zGzb8nSrN9lm5PPcfztVC5DjjTs5sVStV85IH8x51fM9yIwmI+Uvh3RZDJlrpPWQ" crossorigin="anonymous">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta name="description" content="국가통계포털, 마이크로데이터, 통계지리정보, 정보공개, 새소식, 정책정보, 통계청소개" />
<meta name="google-site-verification" content="CdVvMTdPwr71iinMXgKSkU9CzBWJA2iBun2uMWJ2oqc"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge" /> 
<title>통계청</title>
<style>
#mcont .info_link h3 a {font-size:18px; font-weight:500; margin-bottom:16px; color:#ffffff ;}
#mcont .info_link .list_box ul li a {font-size: 14px; text-shadow:1px 1px 1px #000; color: #ff0000}

#mcont .info_link .icon4.covid_kr_1 a{display: table-cell; 
background:url(${path1}/img/program/c.svg) left top no-repeat, 
url(${path1}/img/program/cplus.svg) right top no-repeat, 
url(${path1}/img/program/Java.png) right top no-repeat, 
url(${path1}/img/program/javascript.svg) right bottom no-repeat, 
url(${path1}/img/program/Python_bw-e1644511228977.png) left bottom no-repeat, 
url(${path1}/img/program/PLSQL_BW.png) left bottom no-repeat; 
background-color: #edf4fc;vertical-align:middle;width:100%;height:100%;font-size:21px; 
font-weight:500; color:#343434; text-align:center; box-sizing:border-box;}

#mn_list #gnb1 .mn_dep2 {left:400px;}
#mn_list #gnb2 .mn_dep2 {left:600px;}
#mn_list #gnb3 .mn_dep2 {left:700px;}
#mn_list #gnb4 .mn_dep2 {left:870px;}
</style>
</head>
<body >

<div id="gnb_layout" style="border-bottom: 1px solid #4e4e4e">
<div class="g_nav">
	<h2 class="Hidden">주메뉴</h2>
	<ul id="mn_list" class="lnb_list">
		<li class="mn_type01" style="background: #292929"><a href="" id="gnb_s1">프로그램언어종류</a></li>
		<li class="mn_type02" style="background: #4e4e4e"><a href="">소프트웨어종류</a></li>
		<li class="mn_type02" style="background: #4e4e4e"><a href="">운영체제종류</a></li>

    <li class="mn_type03" id="gnb1" ><a href="${path1}/board/list.do" >java</a>
	  	<ul class="Hidden">
		    <li id="gnb1_9"><a href="${path1 }/board/list.do">자바의 개요</a></li>    
		    <li id="gnb1_1"><a href="${path1 }/board/list2.do">특징</a></li>    
		    <li id="gnb1_0"><a href="${path1 }/board/list3.do">문법</a></li>    
		    <li id="gnb1_4"><a href="${path1 }/board/list4.do">JAVA Script</a></li>    
		    <li id="gnb1_6"><a href="${path1 }/board/list5.do">JDK</a></li>
    	</ul>
	</li>
    <li class="mn_type03" id="gnb2" ><a href="" >Python</a>
	  	<ul class="Hidden">
		    <li id="gnb2_1"><a href="">파이썬의 개요</a></li>    
		    <li id="gnb2_2"><a href="">장/단점</a></li>    
			<li id="gnb2_3"><a href="">개발환경</a></li> 
    	</ul>
	</li>
    <li class="mn_type03" id="gnb3" ><a href="" >C / C++</a>
	  	<ul class="Hidden">
		    <li id="gnb3_1"><a href="">개요</a></li>    
		    <li id="gnb3_2"><a href="">장/단점</a></li>    
		    <li id="gnb3_3"><a href="">사용분야</a></li>    
		    <li id="gnb3_4"><a href="">이식성</a></li>
    	</ul>
	</li>
    <li class="mn_type03" id="gnb4" ><a href="" >통계청소개</a>
	  	<ul class="Hidden">
			<li id="gnb4_1"><a href="${path1 }/notice/list.do">공지사항</a></li>
			<li id="gnb4_2"><a href="">QNA</a></li>
			<li id="gnb4_3"><a href="${path1 }/databank/list.do">자료제출</a></li>    
      	</ul>
	</li>
</ul>
</div>
    <div id="mcont">
       <div class="info_link_bg" style="background-color: #d0d0d0">
<div class="info_link" style=" border: 3px solid red; background-color: #777777">
  <h2 class="Hidden">통계정보 사이트 목록</h2>
  <div class="list_box icon1">
    <h3><a href="" target="_blank" >2022년 프로그래밍 언어</a></h3>
    <h3 class="info_l_tit"><a href="" >국가통계포털(KOSIS)</a></h3>
    <ul>
      <li><a href="" target="_blank">국내통계</a></li>
      <li><a href="" target="_blank">국제통계</a></li>
      <li><a href="" target="_blank">북한통계</a></li>
      <li><a href="" target="_blank">쉽게보는 통계</a></li>
      <li><a href=""  target="_blank">지방지표</a></li>
    </ul>
    <h3 class="info_l_tit"><a href="" target="_blank">통계설명자료</a></h3>
  </div>
  <div class="list_box icon2">
    <h3><a href=""  target="_blank">마이크로데이터(TIOBE)</a></h3>
    <ul>
      <li><a href="" target="_blank">이용안내</a></li>
      <li><a href="" target="_blank">제공항목 목록</a></li>
    </ul>
    <h3 class="info_l_tit"><a href="" target="_blank">통계데이터센터(SDC)</a></h3>    
      <ul>
  		  <li><a href="" target="_blank">이용안내</a></li>
      </ul>
<h3 class="info_l_tit"><a href=""  target="_blank">빅데이터활용<br/>(Nowcast)</a></h3>
  </div>
  <div class="list_box icon3">
    <h3><a href=""  target="_blank" >국제 언어 사용률(2022)</a></h3>   
	<ul>
        <li><a href="">Python</a>  13.44%</li>
        <li><a href="">C </a>  13.13%</li>
        <li><a href="">Java</a>  11.59%</li>
        <li><a href="">C++</a>  10.00%</li>
        <li><a href="">C#</a> 5.65%</li>
        <li><a href="">Visual Basic</a>  4.97%</li>
        <li><a href="">JavaScript</a>  1.78%</li>
        <li><a href="">Assembly language</a>  1.65%</li>
        <li><a href="">SQL</a>  1.64%</li>
        <li><a href="">PHP</a>  1.20%</li>
	</ul>
  </div>
  <div class="list_box line_bg">
    <div class="section1 icon4 covid_kr_1"">
		 <a href="" target="_blank" ><span class="red"></span> <span></span></a>
	</div>
 	<div class="section2 icon5">
	  <ul>
        <li><a href="" target="_blank">통계청통계 전체보기</a></li>
        <li>
          <a class="l_tit" target="_blank" href="">진행 중인 조사</a>
         <ul>
            <li><a href="" target="_blank" title="새 창으로 이동">가계동향조사</a></li>
			<li><a href=""  target="_blank" title="새 창으로 이동">경제활동인구조사</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</div>
        <!-- 100대 지표 S -->
<div class="second_area">        
    <div class="indicator">
      	<h2><a href="http://kostat.go.kr/" onclick="statPopupOpen(); return false;" target="_blank">100대지표 더보기+</a></h2>
            <ul>
				<li  id="jipyo1"><a href="" onclick="statPopupOpen('15','1179'); return false;" title="새창"><span class="bold">전산업생산지수(전월비)</span>('22.05) <span class="b_point">0.8</span>%</a></li>
				<li  id="jipyo2"><a href="" onclick="statPopupOpen('16','1165'); return false;" title="새창"><span class="bold">소매판매액지수(전월대비)</span>('22.05) <span class="b_point">-0.1</span>%</a></li>
				<li  id="jipyo3"><a href="" onclick="statPopupOpen('18','1187'); return false;" title="새창"><span class="bold">국민총소득(GNI,명목)</span>('21) <span class="b_point">2,094,721.3</span>십억원</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="third_area">
	<div class="group_L">
		<ul class="news_b pd_t">
			<li>
			<h2 class="tit_s1n_on" id="bdh2"><a href="" onclick="showHeadLineFunc('news','bdh2','hmh2','newheadline','haemyungline','efh2'); return false;"><span class="r_line">보도자료</span></a></h2>
				<div id="newheadline">
					<div class="list_breif"> 
					<c:forEach items="${latestbodo }" var="bodo" varStatus="status" >
						<dl id="pn0${status.count }" style="display: block">
							<dt><a href="" target="_self" title="${bodo.title }">${bodo.title }</a></dt>
							<dd><a href="" target="_self" title="${bodo.title }"><span class="text"> ${bodo.content }</span></a><span class="data2">${bodo.regdate }</span></dd>								
						</dl>
					</c:forEach>
						<ul>
					<c:forEach items="${latestbodo }" var="bodo" varStatus="status" >
							<li class="on" id="pn0_${status.count }"><a href='' id="pnl1" onfocus="contentHover('news_play_img');moveNewsTv('news',${status.count });" onblur="contentOut('news_play_img');" onmouseover="this.onfocus();" onmouseout="this.onblur();" title="title"><span class="bul">${bodo.title }</span></a><span class="date">${bodo.regdate }</span></li>
					</c:forEach>
						</ul>
					</div>
					<p class="more2"><a href="${path1 }/bodoboard/list.do"><span class="text">더보기</span></a></p>
				</div>
			</li>
			<li>
			<h2 class="tit_s2n" id="hmh2"><a onclick="showHeadLineFunc('haemyung','hmh2','bdh2','haemyungline','newheadline','efh2'); return false;"><span class="r_line">언론보도설명</span></a></h2>
				<div id="haemyungline"  class="Dis_none">
					<div class="list_breif">    
					<c:forEach items="${latestPs }" var="ps" varStatus="status" >
						<dl id="ph0${status.count }" style="display: block">
						 	<dt><a href="" target="_self" title="${ps.title }">${ps.title }</a></dt>
							<dd><a href="" target="_self" title="${ps.title }"><span class="text"> ${ps.content }</span></a><span class="data2">${ps.regdate }</span></dd>								
						</dl>
					</c:forEach>
						<ul>
						<c:forEach items="${latestPs }" var="ps" varStatus="status" >
							<li class="on" id="ph0_${status.count }"><a href='' id="phl${status.count }" onfocus="focusHover('haemyung_stop');moveHaemyung('haemyung',${status.count });" onblur="focusOut('haemyung_play');" onmouseover="this.onfocus();" onmouseout="this.onblur();" title="title"><span class="bul">${ps.title }</span></a><span class="date">${ps.regdate }</span></li>
						</c:forEach>
						</ul>
					</div>
					<p class="more2"><a href="${path1 }/ps/list.do"><span class="text">더보기</span></a></p>
				</div>
			</li>        
		<div class="">
			<div class="career_b">
				<h2 class="l_tit">채용정보</h2>                    
				<div class="line_t">    
				<ul>
				<c:forEach items="${latestemploy }" var="employ" varStatus="status" >
					<li><a target="_blank" href=""><span class="local">${employ.region }</span>[지역]${employ.title }</a><span class="date">${employ.regdate }</span></li>
				</c:forEach>
				</ul>
				<p class="more"><a href="${path1 }/employ/list.do" target="_blank">채용정보</span>더보기+</a></p>      
				</div>              
			</div>
			<div class="notice_b">
				<h2 class="l_tit">공지사항</h2>
				<div class="line_t">
				<ul>
					<c:forEach items="${latestNotice }" var="notice" varStatus="status">
					<li><a href="">${notice.title }</a><span class="date">${notice.regdate }</span>
					</c:forEach>
				</ul>
				<p class="more"><a href="${path1 }/notice/list.do"  onclick="dummyAndPop1('/portal/korea/kor_nw/6/1/index.board','/dummyURL?bmode=gongGi');return false;"><span class="Hidden">공지사항</span>더보기+</a></p>   
				</div>
			</div>           
		</div>            
	</div>


	<div class="group_R">
		<div class="popup_zone">
	    	<h2 class="r_tit">알림판</h2>
		<p class="count" id="bannerCount"><span class="p_num">-</span></p>    	
	    <div class="pz_btn">
			<a href="" class="prev" onclick="RP_num.previous();return false;"><span class="Hidden">알림판 이전</span></a>
			<a href="" class="stop" id="btnPause"  onclick="pause('btnPause','btnPlay');return false;" style="display:block;"><span class="Hidden">알림판 정지</span></a>
			<a href="" class="play" id="btnPlay"  onclick="pause('btnPlay','btnPause');return false;" style="display:none;" ><span class="Hidden">알림판 시작</span></a>
			<a href="" class="next" onclick="RP_num.next();return false;" ><span class="Hidden">알림판 다음</span></a>
		</div>
<ul class="pz_list" id="IntroList">
<script src="${path1 }/js/alrimpan.js"></script>
<script>
var main_delay_time = 5000;
var RP_num = new RollingBanner();
var timer_num;
var flag = false;
		RP_num.addBanner("img/alrimpan_banner/banner_0628_01.png", "통계연구 제27권 제2호 발간 자세히보기");	
		RP_num.addBanner("img/alrimpan_banner/banner_0627_03.png", "KOSTAT Statistics Plus vol.18 2022. 6.  「KOSTAT 통계플러스」2022년 여름호 발간   주요내용 이슈분석, 통계프리즘, 통계포커스  발행부서: 통계개발원 연구기획실 바로가기(새창열기)");	
		RP_num.addBanner("img/alrimpan_banner/banner_0623_02.png", "우리 가족이 하루에 사용하는 물의 양은 얼마나 될까요? 데이터(숫자 등)로 한번 생각해보고, 의견을 남겨주세요! 2022. 6. 22.(수) ~ 7. 12.(화) 국민 누구나 가능");	
		RP_num.addBanner("img/alrimpan_banner/banner_0609_01.png", "제20대대통령직인수위원회백서 겸손하게 국민의 뜻을 받들겠습니다. ");	
		RP_num.addBanner("img/alrimpan_banner/banner_0602_01.png", "제9회 2022 국가승인통계 활용 디지털 콘텐츠 공모전 통계로 바라본 대한민국의 (?) 공모기간 : 2022.06.02. ~ 2022. 07. 31. 공모전 페이지바로가기(새창열기)");	
		RP_num.addBanner("img/alrimpan_banner/banner_0527_01.png", "2022년 통계데이터 분석활용대회 2022.5.25.~7.27. 데이터야! 나랑 깐부할래? 바로가기(새창열기)");	
		RP_num.addBanner("img/alrimpan_banner/board211005.jpg", "통계청 SK telecom 통신 모바일 인구이동량 통계 실험적 통계 1호로 서비스");	
	RP_num.write();
function pause(obj,subobj) {
    	var alrimpan= document.getElementById(obj);
    	var alrimpan_sub= document.getElementById(subobj);
if(obj == "btnPause"){
	alrimpan.style.display = "none";
	alrimpan_sub.style.display = "block";
clearInterval(timer_num);
}else{
	alrimpan_sub.style.display = "block";
	alrimpan.style.display = "none";
timer_num= setInterval("RP_num.next()",main_delay_time); 
}
}
//페이지 로딩시 자동재생이 아닌 일시정지시킬경우 주석처리함.
	timer_num = setInterval("RP_num.next()",main_delay_time); 
	//]]>
</script>
</ul>
<noscript>스크립트 기능이 중지되어 있어, 알림판 더보기를 클릭 해 확인 해 주세요.</noscript>
<p class="more"><a href=""><span class="Hidden">알림판</span>더보기+</a></p>
</div>
            <div class="popular_service">
            	<h2 class="r_tit">자주찾는 서비스</h2>
            	  <div id="div_ps_list_main" class="ps_box">
                <div class="ps_list">
                	<ul>
                    	<li class="ps_icon_01"><a href=""  target="_blank">민원신청</a></li>
                    	<li class="ps_icon_02"><a href="">보도계획</a></li>
                    	<li class="ps_icon_03"><a href="">적극행정</a></li>
                    </ul>                    
                </div>
            	<p class="more"><a href="http://kostat.go.kr/" onclick="quickServiceDis('div_ps_list','open');return false;"><span class="Hidden">자주찾는 서비스</span>펼쳐보기+</a></p>     
            	 </div>
               <!-- 펼쳐보기 눌렀을때 -->
               <div id="div_ps_list" class="Dis_none ps_box">
               <div class="ps_list_on">
                	<ul>
                    	<li class="ps_icon_01"><a href=""  target="_blank">민원신청</a></li>
                    	<li class="ps_icon_02"><a href="">보도계획</a></li>
                    	<li class="ps_icon_03"><a href="">적극행정</a></li>
                    	<li class="ps_icon_04"><a href="">정보공개</a></li>
                    	<li class="ps_icon_05"><a href="">조직도</a></li>
                    	<li class="ps_icon_06"><a href="" target="_blank">소식편지</a></li>                	
                    </ul>                    
                </div>                    
            	<p class="more"><a href="http://kostat.go.kr/" onclick="quickServiceDis('div_ps_list','close');return false;"><span class="Hidden">자주찾는 서비스</span>닫기 -</a></p>  
                </div>   
            </div>
            <div class="banner_zone">
            	<h2 class="r_tit">정책광고</h2>
                <div class="bz_list">
                	<ul id="bannerList" class="listb">
                    	<li>&nbsp;</li>
                    </ul>                    
                </div>
              <script src="js/rollingIndexBanner.js"></script>
		<script>
			var MB = new RollingBanner();
			MB.setDisplayCount(2);
			MB.addBanner("./img/img_main/banner_0328_01.png", "통계청기업통계등록부정비 2022.3.18.~12/14.");
			MB.addBanner("./img/img_main/banner210625.png", "국가상징 알아보기");
			MB.write();
		</script>
<noscript>스크립트 기능이 중지되어 있어, 정책광고 더보기를 클릭 해 확인 해 주세요.</noscript> 
            </div>
        </div>
    </div>
</div>
</div>
 <!-- 마지막 div는 헤더에서 내려오는것임 -->
</div>
<script>
	// 100대 지표 더보기+ 누르면 이동되도록
function statPopupOpen(listId, num) {
	var url="";
	if (listId == undefined || num == undefined || listId == "" || num == "" || listId == null || num == null) {
		url = "https://kosis.kr/visual/nsportalStats/index.do?menuId=all";
         $.getJSON(location.protocol + '//' + location.host +'/dummyURL?bmode=100jipyo');
	} else {
		url = "https://kosis.kr/visual/nsportalStats/index.do?menuId=" + listId + "&NUM=" + num;
	}
	var win = window.open(url, "KOSIS100대지표", 'location=no,directories=no,resizable=yes,status=no,toolbar=no,scrollbars=yes,width=1080,height=700, left=0, top=0');
	win.focus();
}
// 푸터에 소속기관 셀렉터창
function kostatServiceDis(id,evnt){                                                                                                                                 
	var clazz = document.getElementById(id).className;                                                                                                                
	if(evnt == "open"){                                                                                                                                               
  	if(clazz == "moreSite"){
  		document.getElementById(id).className = "moreSiteHidden";                                                                                                 
  	}else{                                                                                                                                                          
  		document.getElementById(id).className = "moreSite";                                                                                                        
  	}	                                                                                                                                                              
	}else{                                                                                                                                                            
		document.getElementById(id).className = "moreSiteHidden";                                                                                                   
	}                                                                                                                                                                 
}
function quickServiceDis(id,evnt){
	var clazz = document.getElementById(id);
	var clazzMain = document.getElementById(id+"_main");
	if(evnt == "open"){
  		clazz.className = "";
  		clazzMain.className = "Dis_none";
	}else{
  		clazz.className = "Dis_none";
  		clazzMain.className = "";
	}
}

function getStrNo(str){
   if(str<10){
     return "0"+str;
   }else{
     return str;
   }
}
var now = new Date();
var aa = now.getYear()+''+getStrNo((now.getMonth()+1))+''+getStrNo(now.getDate())+''+getStrNo(now.getHours())+''+getStrNo(now.getMinutes());
var url = "http://kostat.go.kr/portal/common/s019801/popup1411.html";
</script>
<script> 
	window.onload = function(){
$("#pn0_1").append($('#pn01').wrap("<dt>").parent().html());
$('#pn01').eq(0).parent().remove();
$("#pn0_2").append($('#pn02').wrap("<dt>").parent().html());
$('#pn02').eq(0).parent().remove();
$("#pn0_3").append($('#pn03').wrap("<dt>").parent().html());
$('#pn03').eq(0).parent().remove();
$("#pn0_4").append($('#pn04').wrap("<dt>").parent().html());
$('#pn04').eq(0).parent().remove();
$("#pn0_5").append($('#pn05').wrap("<dt>").parent().html());
$('#pn05').eq(0).parent().remove();
$("#ph0_1").append($('#ph01').wrap("<dt>").parent().html());
$('#ph01').eq(0).parent().remove();
$("#ph0_2").append($('#ph02').wrap("<dt>").parent().html());
$('#ph02').eq(0).parent().remove();
$("#ph0_3").append($('#ph03').wrap("<dt>").parent().html());
$('#ph03').eq(0).parent().remove();
$("#ph0_4").append($('#ph04').wrap("<dt>").parent().html());
$('#ph04').eq(0).parent().remove();
$("#ph0_5").append($('#ph05').wrap("<dt>").parent().html());
$('#ph05').eq(0).parent().remove();
	};
 //]]>
</script> 
</body>
</html>