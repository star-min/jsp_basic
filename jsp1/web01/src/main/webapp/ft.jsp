<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% 
    	String[] fnb = {"사이트맵","윤리경영","사외내방신청","협력사신문고","공정위 4대 실천사항","보안 신고센터","개인정보처리방침"};
    	String[] sub = {"페이스북","유튜브","네이버 포스트"};
    	String[] iclass = {"xi-facebook","xi-youtube-play","xi=naver"};
    %>
    <div class="ft_wrap">
    	<nav class="fnb"> 
    		<% for(int i=0;i<fnb.length;i++){ %>
    			<a href=""><%= fnb[i] %></a>
    		<% } %>

    		<p class="copyright"> Copryright @ SKtelecom </p>
    	</nav>
    </div>