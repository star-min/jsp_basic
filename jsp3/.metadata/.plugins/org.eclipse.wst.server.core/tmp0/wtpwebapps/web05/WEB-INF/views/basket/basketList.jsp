<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 목록</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<link rel="stylesheet" href="./basket.css" />
<script type="text/javascript" src="./basket.js"></script>  
<jsp:include page="../common.jsp"></jsp:include>
<style>
<%@ include file="../inc/common.css" %>
.page_tit { border-bottom:1px solid #cdcdcd; margin-bottom:25px; }
#lst_tb2 { width:1280px; margin:20px; auto; }
#lst_tb2 li { float:left; width:300px; height:600px; margin-right:15px; margin-top:15px; 
overflow:hidden; }
#lst_tb2 li img { display:block; width:100%; }
#lst_tb2 li.nothing { width:100%; clear:both; text-align:center; font-weight:bold; 
height:60px; line-height:60px; border-top:1px solid #cdcdcd; border-bottom:1px solid #cdcdcd;
margin-top:20px; margin-bottom:15px; }
#btn_group { clear:both; }
</style>
</head>
<body>
<div id="root" class="root">
<header id="header" class="header" >
	<%@ include file="../inc/header.jsp" %>
</header>
<div id="content" class="content_wrap">
	<section class="con_wrap">
		<h2 class="page_tit">장바구니 목록</h2>
		<ul class="pro_lst" id="lst_tb2">
		<p>${bno }</p>
 			<c:forEach items="${basketList }" var="basket" varStatus="status">
				<li>
					<div class="img_fr">
						<a href="${path1 }/basket/read.do?bno=${basket.bno }">상품 상세정보</a>
					</div>
					<div class="hidden item1">${status.count }</div>
					<h3 class="item_tit">${basket.gname }</h3>
					<p><img alt="${basket.gimage}" src="${path1 }/images/${basket.gimage }"></p>
					<p><span>색상 : ${basket.gcolor }</span></p>
					<p><span>남은 수량 : ${basket.amount }</span></p>
					<a href="${path1 }/payment/write_form.do?bno=${basket.bno }&gno=${basket.gno }&ptaste=${basket.gcolor}&id=${basket.id}" class="button is-primary">구매하기</a>
					<a href="delete.do?bno=${basket.bno }" class="button is-primary">장바구니 삭제</a>
				</li>
			 </c:forEach> 
			<c:if test="${basket==null }">
				<li class="nothing">더 이상 상품이 존재하지 않습니다.</li>
			</c:if>
<%-- 			<form name="orderform" id="orderform" method="post" class="orderform" action="/Page" onsubmit="return false;">
    
            <input type="hidden" name="cmd" value="order">
            <div class="basketdiv" id="basket">
                <div class="row head">
                    <div class="subdiv">
                        <div class="check">선택</div>
                        <div class="img">이미지</div>
                        <div class="pname">상품명</div>
                    </div>
                    <div class="subdiv">
                        <div class="basketprice">가격</div>
                        <div class="num">수량</div>
                        <div class="sum">합계</div>
                    </div>
                    <div class="subdiv">
    
                        <div class="basketcmd">삭제</div>
                    </div>
                    <div class="split"></div>
                </div>
        
        		<c:forEach items="${basketList }" var="basket" varStatus="status">
                <div class="row data">
                    <div class="subdiv">
                        <div class="check"><input type="checkbox" name="buy" value="260" checked="" onclick="javascript:basket.checkItem();">&nbsp;</div>
                        <div class="img"><img src="${path1 }/images/${basket.gimage }" width="60"></div>
                        <div class="pname">
                            <span>${basket.gname }</span>
                        </div>
                    </div>
                    <div class="subdiv">
                        <div class="basketprice"><input type="hidden" name="p_price" id="p_price1" class="p_price" value="${basket.gprice }">${basket.gprice }</div>
                        <div class="num">
                            <div class="updown">
        
                                <input type="text" name="p_num1" id="p_num1" size="2" max="${basket.amount }" class="p_num" value="${basket.amount }" onkeyup="javascript:basket.changePNum(1);">
                                <span onclick="javascript:basket.changePNum(1);"><i class="fas fa-arrow-alt-circle-up up"></i></span>
                                <span onclick="javascript:basket.changePNum(1);"><i class="fas fa-arrow-alt-circle-down down"></i></span>
                            </div>
                        </div>
                        <div class="sum">원</div>
                    </div>
                    <div class="subdiv">
                        <div class="basketcmd"><a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delItem();">삭제</a></div>
                    </div>
                </div>
                </c:forEach>
        
            </div>
    
            <div class="right-align basketrowcmd">
            <c:forEach items="${basketList }" var="basket" varStatus="status">
                <a href="delete.do?bno=${basket.bno }" class="abutton" onclick="javascript:basket.delCheckedItem();">선택상품삭제</a>
            </c:forEach>
                <a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delAllItem();">장바구니비우기</a>
            </div>
    
            <div class="bigtext right-align sumcount" id="sum_p_num">상품갯수: 개</div>
            <div class="bigtext right-align box blue summoney" id="sum_p_price">합계금액: 원</div>
    
            <div id="goorder" class="">
                <div class="clear"></div>
                <div class="buttongroup center-align cmd">
                <c:forEach items="${basketList }" var="basket" varStatus="status">
                    <a href="${path1 }/payment/write_form.do?bno=${basket.bno }&gno=${basket.gno }&gno=${basket.gname }&money=${basket.gprice*basket.amount }&ptaste=${basket.gcolor}&id=${basket.id}" class="button is-primary">선택한 상품 주문</a>
                </c:forEach>
                </div>
            </div>
        </form> --%>
        
		</ul>
		<c:if test="${sid=='admin' }">
		<div id="btn_group">
			<a href="${path1 }/goods/write_form.do" class="button is-info">제품 등록</a>
		</div>
		</c:if>	
	</section>
</div>
<footer id="footer" class="footer">
	<%@ include file="../inc/footer.jsp" %>
</footer>
</div>
</body>
</html>