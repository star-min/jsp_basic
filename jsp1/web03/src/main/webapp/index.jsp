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
<style>
html .main_popularity_categories_items {display:flex; flex-direction:row; flex-wrap:wrap; align-items:center; justify-content:center; width:100%; height:auto; margin:5px 0 0 0; padding:0; box-sizing:border-box;}
html .main_popularity_categories_item {flex:0 0 220px; display:flex; flex-direction:column; align-items:center; justify-content:center; width:220px; height:auto; margin:20px 0 0 0; padding:0 10px; box-sizing:border-box;}
html .main_popularity_categories_item_anchor {
	display:block; width:100%; height:auto; margin:0; padding:15px 0; font-size:14px; font-weight:400; line-height:100%; color:#000; text-align:center;
	border:0; border-radius:10px; background:#f3f3f3; box-sizing:border-box;
}

.sub_content {max-width: 980px; margin: 0 auto;}

.footer_gyms { width: 100%; max-width: 980px; height: auto; margin: 80px auto 0 auto;  padding: 0; text-align: center; }
.footer_gyms .footer_gym_items { display: flex; flex-direction: row; flex-wrap: nowrap; align-items: center;
    justify-content: flex-start; width: 100%; height: auto; margin: 0; padding: 0;
    border-top: 1px solid #ddd; border-bottom: 1px solid #ddd; box-sizing: border-box;
}

</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div id="content" class="panel-body">
	<figure style="text-align: center;">
		<iframe  width="1000px" height="650px" src="https://www.youtube.com/embed/H-AcDBLqxi4?autoplay=1&mute=1" 
			title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; 
			clipboard-write; encrypted-media; gyroscope; picture-in-picture " allowfullscreen>
		</iframe>
	</figure>
<%-- <jsp:include page="./latest/getlatest.jsp"></jsp:include> --%>
</body>
<div class="sub_content">
	<div class="main_popularity_categories_items">
        <div class="main_popularity_categories_item">
            <a href="" class="main_popularity_categories_item_anchor">단백질</a>
        </div>
        <div class="main_popularity_categories_item">
            <a href="" class="main_popularity_categories_item_anchor">부스터</a>
        </div>
        <div class="main_popularity_categories_item">
            <a href="" class="main_popularity_categories_item_anchor">크레아틴</a>
        </div>
        <div class="main_popularity_categories_item">
            <a href="" class="main_popularity_categories_item_anchor">닭가슴살</a>
        </div>
        <div class="main_popularity_categories_item">
            <a href="" class="main_popularity_categories_item_anchor">BCAA/EAA</a>
        </div>
        <div class="main_popularity_categories_item">
            <a href="" class="main_popularity_categories_item_anchor">비타민</a>
        </div>
        <div class="main_popularity_categories_item">
            <a href="" class="main_popularity_categories_item_anchor">오메가</a>
        </div>
        <div class="main_popularity_categories_item">
            <a href="" class="main_popularity_categories_item_anchor">항산화</a>
        </div>
        <div class="main_popularity_categories_item">
            <a href="" class="main_popularity_categories_item_anchor">쉐이커</a>
        </div>
        <div class="main_popularity_categories_item">
            <a href="" class="main_popularity_categories_item_anchor">리프팅벨트</a>
        </div>
        <div class="main_popularity_categories_item">
            <a href="" class="main_popularity_categories_item_anchor">스트랩/그립</a>
        </div>
        <div class="main_popularity_categories_item">
            <a href="" class="main_popularity_categories_item_anchor">주짓수</a>
        </div>
    </div>
</div>

<div class="span16 main_wm_grid">
<div class="footer_gyms" style="cursor: grab;">
    <div class="footer_gym_items" style="border: 0px !important; transform: translate3d(0px, 0px, 0px);">
        <div class="footer_gym_item" style="width: 1894px;">
            <a href="" class="footer_gym_item_anchor">
                <div class="footer_gym_item_image">
                    <img src="./img/footer_gym_1_20220427.png">
                </div>
                <div class="footer_gym_item_text">
                    <div class="footer_gym_item_text_title">잔잔한 피트니스 시장에 일으킬 하나의 폭풍</div>
                </div>
            </a>
        </div>
        <div class="footer_gym_item" style="width: 1894px;">
            <a href="" class="footer_gym_item_anchor">
                <div class="footer_gym_item_image">
                    <img src="./img/footer_gym_2_20220609.jpg">
                </div>
                <div class="footer_gym_item_text">
                    <div class="footer_gym_item_text_title">또 하나의 격투 스토리가 쓰여진다</div>
                </div>
            </a>
        </div>
        <div class="footer_gym_item swiper-slide" style="width: 1894px;">
            <a href="" class="footer_gym_item_anchor">
                <div class="footer_gym_item_image">
                    <img src="./img/footer_gym_3_20220427.png">
                </div>
                <div class="footer_gym_item_text">
                    <div class="footer_gym_item_text_title">슬프고도 찬란한, 그리고 처절한</div>
                </div>
            </a>
        </div>
    </div>
</div>
</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>