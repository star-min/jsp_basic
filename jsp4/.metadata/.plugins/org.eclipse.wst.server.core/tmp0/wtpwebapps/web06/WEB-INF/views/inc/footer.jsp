<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> footer </title>
</head>
<body>
    <div id="footer_n">
        <div class="fnb_bg">
                    <div class="fnb_group">
                        <ul class="fg_list">
                            <li class="fst"><a href="">이용안내</a></li>                
                            <li><a href=""><span class="c_blue">개인정보처리방침</span></a></li>
                            <li><a href="">저작권정책</a></li>                  
                            <li><a href="">누리집개선의견</a></li>
                            <li class="last"><a href="">찾아오시는길</a></li>
                        </ul>
                        <div id="siteListBox">
                            <div id="siteList01" class="siteList">
                                <a href="http://kostat.go.kr/regional/gi/index.action" onclick="kostatServiceDis('kostatagency','open');return false;">소속기관</a>
                                <div class="moreSiteHidden" id="kostatagency">
                                    <ul class="sitetype01 bulType01">
                                        <li><a href="" target="_blank" title="새 창으로 이동">통계교육원</a></li>
                                        <li><a href="" target="_blank" title="새 창으로 이동">통계개발원</a></li>
                                        <li> <a href=""  target="_blank" title="새 창으로 이동">경인지방통계청</a> </li>
                                    </ul>
                                    <p>소속기관<a href="index.html" onclick="kostatServiceDis('kostatagency','close');return false;">닫기</a></p>
                                </div>
                            </div>
                            <div id="siteList02" class="siteList">
                                <a href="" onclick="kostatServiceDis('kostatinfo','open');return false;">통계정보</a>
                                <div class="moreSiteHidden" id="kostatinfo">
                                    <div class="siteType02">
                                        <dl class="site_g">
                                            <dt>통계정보</dt>
                                            <dd>
                                                <ul class="bulType01">
                                                    <li><a href="" target="_blank"> 국가통계포털(KOSIS)</a></li>
                                                    <li><a href="" target="_blank">통계지리정보서비스(SGIS)</a></li>
                                                    <li><a href="" target="_blank">국가지표체계</a> </li>
                                                    <li><a href="" target="_blank">한눈에알아보는나라지표(e-나라지표)</a> </li>              
                                                </ul>
                                            </dd>
                                        </dl>
                                        <dl class="site_g">
                                            <dt>통계정책</dt>
                                            <dd>
                                                <ul class="bulType01">
                                                    <li> <a href="" target="_blank" title="새 창으로 이동" onclick="dummyAndPop2('http://narastat.kr/pms/index.do','/dummyURL?bmode=jongBo10');return false;">통계정책관리시스템</a> </li>
                                                    <li> <a href="" target="_blank" title="새 창으로 이동" onclick="dummyAndPop3('kostat.go.kr/policy/ssm/index.action','/dummyURL?bmode=jongBo11');return false;">국가통계대행</a> </li>
                                                    <li><a href="" target="_blank" title="새 창으로 이동" onclick="dummyAndPop2('http://kosis.kr/publication/publicationThema.do','/dummyURL?bmode=jongBo12');return false;">온라인간행물</a></li>
                                                </ul>
                                            </dd>
                                        </dl>
                                        <dl class="site_g">
                                            <dt>통계조사</dt>
                                            <dd>
                                                <ul class="bulType01">
                                                    <li><a href=""  target="_blank">인구주택총조사</a> </li>
                                                    <li><a href="" target="_blank">농림어업총조사</a> </li>
                                                    <li><a href="" target="_blank">경제총조사 </a> </li>                                                                             
                                                </ul>
                                            </dd>
                                        </dl>
                                        <dl class="site_g">
                                            <dt>관련누리집</dt>
                                            <dd>
                                                <ul class="bulType01">
                                                    <li> <a href="" target="_blank">소비자물가지수</a> </li>
                                                    <li> <a href=""  target="_blank">소득</a> </li>
                                                    <li> <a href="" target="_blank">100대 지표</a> </li>
                                                </ul>
                                            </dd>
                                        </dl>
                                    </div>
                                    <p>통계정보 누리집<a href="index.html" onclick="kostatServiceDis('kostatinfo','close');return false;">닫기</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="add_group">
                    <address>[1004] 일산동구 고양대로 956(식사동, 어딘가) 팩스 000-111-1004 / <strong>
                    <span class="call">통계청콜센터 02-1004-1004</span> / <span class="call">국번없이 110</span>
        </strong></address>
                    <p class="copy">ⓒ Statistics Korea. All rights reserved since 2022.</p>
                    <h2 class="Hidden">소셜미디어</h2>
                    <ul class="sns_list">
                        <li class="icon_y"><a href="http://kostat.go.kr/" target="_blank" onclick="dummyAndPop2('https://www.youtube.com/');return false;"><span class="txt_sm">유튜브</span></a></li>
                        <li class="icon_f"><a href="http://kostat.go.kr/" target="_blank" onclick="dummyAndPop2('http://www.facebook.com/');return false;"><span class="txt_sm">페이스북</span></a></li>
                        <li class="icon_t"><a href="http://kostat.go.kr/" target="_blank" onclick="dummyAndPop2('https://twitter.com/');return false;"><span class="txt_sm">트위터</span></a></li>
                        <li class="icon_b"><a href="http://kostat.go.kr/" target="_blank" onclick="dummyAndPop2('https://blog.naver.com/');return false;"><span class="txt_sm">블로그</span></a></li>
                        <li class="icon_k"><a href="http://kostat.go.kr/"  target="_blank" onclick="dummyAndPop2('https://www.instagram.com/');return false;"><span class="txt_sm">인스타그램</span></a></li>
                    </ul>
                    <!-- 소셜비디어 E -->
                    <p class="f_img02"><a href="http://kostat.go.kr/file_total/WAQC_210910_kostat.pdf" target="_blank"><img src="${path1 }/img/img_main/ico_wa.jpg" alt="과학기술정보통신부 WEB ACCESSIBILITY 마크(웹 접근성 품질인증 마크)" /></a></p>
                    <p class="f_img01"><a href="http://www.kogl.or.kr/index.do" target="_blank"><img src="${path1 }/img/img_main/kogl.gif" alt="OPEN 공공누리:공공저작물 새창으로 열기" /></a></p>
                </div>
        </div>
</body>
<script>
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

</script>
<script src="../js/common.js" ></script>
<script src="../js/jquery-3.3.1.min.js" ></script>
<script src="../js/menuNew.js" ></script>
<script src="../js/rollingIndexBanner.js" ></script>
<script src="../js/mainBodo.js" ></script>
<script src="../js/new_main.js" ></script>
</body>
</html>