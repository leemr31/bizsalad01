<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageName" value="회원가입"/>
<html>
<head>
	
	<title>비즈샐러드</title>
	<jsp:include page="/WEB-INF/views/layout/com/minclude.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/layout/com/add_css.jsp"></jsp:include>
	
	<style>
		#biz-content-wrap { width:100%; height:100%; margin:0 auto; visibility:hidden; }
		.biz-content-wrap-top { width:100%; max-width:550px; margin:0 auto; }
		.biz-content-wrap-menu { width:100%; max-width:550px; margin:0 auto; }
		
		.biz-content-wrap-slide { width:100%; max-width:550px; margin:0 auto; }
		.biz-content-wrap-con { width:100%; max-width:550px; margin:0 auto; }
		
		.biz-content-wrap-bmenu-wrap {width:100%; max-width:550px; margin:0 auto; border-top:1px solid #000; border-bottom:1px solid #000;}
		.biz-content-wrap-bmenu { width:100%; max-width:550px; margin:0 auto; }
		.biz-content-wrap-bottom-wrap { width:100%; max-width:550px; margin:0 auto;  background-color:#262636;}
		.biz-content-wrap-bottom { width:100%; max-width:550px; margin:0 auto; }
		
	</style>
	
	<script>
	
		/**** page loading ****/
		
		$(document).ready(function() {
			$('.ui-loader-t').fadeIn("fast");
		});
		
		$(window).on('load', function() {
			$('.ui-loader-t').fadeOut("fast");
			$("#biz-content-wrap").css('visibility','visible');
			//$('#biz-content-wrap').fadeIn("fast");

		});
		
	</script>

</head>
<body class="" style="width:100%; height:100%;">


	<!-- <div class="ui-loader"><span class="ui-icon-loading"></span></div> -->
	<div class="ui-loader-t"><span class="ui-icon-loading-gr"></span></div>
	
    <!--어두워지는 부분-->
    <div class="dg-hd-mo-menu-panel-overlay"></div>
    
    

	<div id="biz-content-wrap">
		
		<jsp:include page="/WEB-INF/views/layout/com/mtop.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/com/mmenu.jsp"></jsp:include>
		
		
	  <div class="d-table w100pro biz-content-wrap-con">
		
		<!-------------------------------------- index contents start //----------------------------------->
	    
	    <div class="d-table w100pro t-center">
	        <div class="new-banner2-title2">
	            <p><span>업체전용</span><span>!</span></p>
	            <p>업체회원만 이용이 가능합니다.</p>
	        </div>
	    </div>
	    
	    <div class="d-table w100pro biz-content-wrap-con ma-t-3em pa-1em">
	        <div class="d-table-cell w100pro">
	            <ul class="midcls w100pro">
	                <li>
	                	<div>
	                		<a href="/process/list?company_seq=${company_seq}">
		                		<img src="/resources/img/purchase-order.png">
		                		<p>발주관리</p>
	                		</a>
	                	</div>
	                    
	                    <div></div>
	                </li>
	                <li>
	                	<div>
		                	<!-- <a href="/order/list1"> -->
		                	<a href="/process/list2?company_seq=${company_seq}">
			                    <img src="/resources/img/order.png">
			                    <p>주문관리</p>
		                    </a>
	                	</div>

	                </li>
	                <li>
	                	<div>
		                	<a href="/company/ballist">
			                    <img src="/resources/img/calculate.png">
			                    <p>정산관리</p>
		                    </a>
	                	</div>
	                    
	                    <div></div>
	                </li>
	                <li>
	                	<div>
		                	<a href="/board/list">
			                    <img src="/resources/img/service.png">
			                    <p>고객센터</p>
		                    </a>
	                	</div>
	                </li>
	
	            </ul>
	        </div>
	    </div>
	    
		
		
		   
	  <!------------------------------------------- index contents end //---------------------------->
	  </div>
	  
	  
	  
	  <br/><br/><br/><br/>
	   
		<jsp:include page="/WEB-INF/views/layout/com/mcontent.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/com/mbot.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/com/mpopup.jsp"></jsp:include>
		
		
		
		
		
		
   </div>

</body>
</html>
		   
		   
		   
		   
		   