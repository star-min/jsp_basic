<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="csspt" value="${pageContext.request.contextPath }/css" /> 
<link rel="stylesheet" href="${csspt }/common.css" />
<script src="https://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css" />
<link rel="stylesheet" href="datatables.min.css">
<script src="datatables.min.js"></script>
<script>
$(document).ready( function () {
    $('#lst_tb').DataTable();
});
</script>
<style>
#content { min-height:500px; }
#lst_tb, .frm_fr { max-width:1280px; min-width:800px; margin:0 auto; }
#gnb .navbar-link::after { display:none; }
#gnb .navbar-dropdown { z-index:999; }
.con_wrap { width:1280px; margin:0 auto; } 
.frm_fr { width:800px; }
#logo img { display:block; width:280px; height:50px; min-height:30px; max-height:50px; }
.page_tit { font-size:40px; text-align:center; line-height:2em; padding:1em; }

#form_table { width:800px; margin:20px auto; }
#form_table input[type=text], #form_table input[type=password], #form_table textarea { min-width:500px; }
#footer { clear:both; border-top:3px solid #ececec; margin-top:20px; }
.ft_left { float:left; padding:14px;	 }
.ft_right { float:right; padding:14px; }
.ft_tit { font-size:24px; font-weight:bold; padding-top:24px; }
.ft_tel { font-size: 32px;   font-weight: 600;   color: #918c00; padding-top:12px; }
.ft_ico_lst { clear:both; }
.ft_ico_lst li {float:left; margin-top:24px; margin-right:24px; }
.ft_ico_lst li a { display:block; width:50px; height:50px; overflow:hidden; 
border-radius:50%; background-image:url("${imgpt }/sp_ico.png");
background-position: 0px -160px; background-repeat:no-repeat; } 
.ft_ico_lst li a.utb { background-position: -50px -160px; }
.ft_ico_lst li a.blog { background-position: -100px -160px; }
.ft_ico_lst li a.talk { background-position: -150px -160px; }
</style>
<script type="text/javascript">
function comma(str) {
       str = String(str);
       return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
   }

   function uncomma(str) {
       str = String(str);
       return str.replace(/[^\d]+/g, '');
   } 
   
   function inputNumberFormat(obj) {
       obj.value = comma(uncomma(obj.value));
   }
   
   function inputOnlyNumberFormat(obj) {
       obj.value = onlynumber(uncomma(obj.value));
   }
   
   function onlynumber(str) {
    str = String(str);
    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1');
}
   
   var money = $('#money').text();
   var money2 = money.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
   $('#money').text(money2);
</script>