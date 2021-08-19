<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageName" value="회원가입"/>


<html>
<head>
	
	<title>비즈샐러드</title>
	<jsp:include page="/WEB-INF/views/layout/user/minclude.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/layout/user/add_css.jsp"></jsp:include>
	
	<style>
	
		#biz-content-wrap { width:100%; height:100%; margin:0 auto; visibility:hidden; }
		.biz-content-wrap-top { max-width:10240px; margin:0 auto; }
		.biz-content-wrap-menu { max-width:1024px; margin:0 auto; }
		
		.biz-content-wrap-slide { max-width:1300px; margin:0 auto; }
		.biz-content-wrap-con { max-width:1300px; margin:0 auto; }
		
		.biz-content-wrap-bmenu-wrap { width:100%; margin:0 auto; border-top:1px solid #000; border-bottom:1px solid #000;}
		.biz-content-wrap-bmenu { max-width:1300px; margin:0 auto; }
		.biz-content-wrap-bottom-wrap { width:100%; margin:0 auto;  background-color:#262636;}
		.biz-content-wrap-bottom { max-width:1300px; margin:0 auto; }
		
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
		
		<jsp:include page="/WEB-INF/views/layout/com/ptop.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/com/mtop.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/com/mmenu.jsp"></jsp:include>
		
		
		<div class="d-table w100pro ma-t-1em"></div>
		
	  <div class="d-table w100pro biz-content-wrap-con">
		
		<!-------------------------------------- index contents start //----------------------------------->
	
	    <div class="d-table w100pro t-center">
	        <div class="new-banner2-title2">
	            <p><span>마이페이지</span><span>!</span></p>
	            <p></p>
	        </div>
	    </div>
	    
		<div class="d-table w100pro t-center auto" style="width:400px;">
	        <span class="d-table-cell great-text bold f-left">
				<c:choose>
					<c:when test="${user_name== null}">
				    	${user_id}
					</c:when>
					<c:when test="${user_name!= null}">
				    	${user_name}
					</c:when>
					<c:otherwise>
						guest
					</c:otherwise>
				</c:choose>
	        </span>
	        <span class="d-table-cell bold f-right">
	        	<div class="user-icon d-table">
	        	
					<c:choose>
						<c:when test="${user_type== 3}">
							<a class="d-table-cell" href="/admin"  style="color:#000;">
					    		<span class="d-table-cell v-middle pa-dot5" >(관리자)</span>
								<span class="d-table-cell v-middle" ><i class="fas fa-share-square fa-3x"></i></span>
					    	</a>
						</c:when>
						<c:when test="${user_type== 0}">
							<a class="d-table" href="/user/read" style="color:#000;">
								<span class="d-table-cell v-middle pa-dot5" >(비인증)</span>
								<span class="d-table-cell v-middle" ><i class="fas fa-battery-quarter fa-3x"></i></span>
							</a>
						</c:when>
						<c:when test="${user_type== 1}">
							<a class="d-table" href="/user/email" style="color:#000;">
								<span class="d-table-cell v-middle pa-dot5" >(이메일인증)</span>
								<span class="d-table-cell v-middle" ><i class="fas fa-battery-three-quarters fa-3x"></i></span>
							</a> <!-- battery-half -->
						</c:when>
						<c:when test="${user_type== 2}">
							<a class="d-table" href="/cart/insert?cate=1" style="color:#000;">
								<span class="d-table-cell v-middle pa-dot5" >(인증완료)</span>
								<span class="d-table-cell v-middle" ><i class="fas fa-battery-full fa-3x"></i></span>
							</a>
						</c:when>
						<c:otherwise>
							<a class="d-table" href="/user/login" style="color:#000;">
								<span class="d-table-cell v-middle pa-dot5" >(비회원)</span>
								<span class="d-table-cell v-middle" ><i class="fas fa-battery-empty fa-3x"></i></span>
							</a>
						</c:otherwise>
					</c:choose>
	        	
	        	</div>
	        </span>
	    </div>
	   	
	   	<div class="d-table w100pro t-left auto boder-bbb ma-b-dot5 big-text pa-2em ma-t-1em" style="width:400px;">
	   		<p class="big-text bold">포인트</p>
	   		<p class="great-text bold">20,489 P</p>
	   	</div>
	   	
	   	<div class="d-table w100pro t-center auto small-text" style="width:400px;">
	   		<div class="f-left boder-bbb w49pro ma-r-dot3 great-text bold pa-1em">주문내역</div>
	   		<div class="f-right d-i-b boder-bbb w49pro great-text bold pa-1em">작성리뷰</div>
	   	</div>
	   	
	   	<div class="d-table w100pro t-left auto ma-t-1em" style="width:400px;">
	   		<div class="pa-dot3"><a href="/kongjeong" class="big-text bold" style="color:#000;">공정/주문 관리</a></div>
	   		<div class="pa-dot3"><a href="/pqna/list" class="big-text bold" style="color:#000;">1:1 문의</a></div>
	   		<div class="pa-dot3"><a href="/user/read" class="big-text bold" style="color:#000;">정보수정</a></div>
	   		<div class="pa-dot3"><a href="#" onclick="bizPopup('주소록관리', '/user/address', 400 );" class="big-text bold" style="color:#000;">주소록관리</a></div>
	   		<div class="pa-dot3"><a href="#" onclick="bizPopup('결제관리', '/card/list', 400 );" class="big-text bold" style="color:#000;">결제관리</a></div>
	   		<div class="pa-dot3"><a href="" class="big-text bold" style="color:#000;">장바구니</a></div>
	   		<div class="pa-dot3"><a href="" class="big-text bold" style="color:#000;">배송현황</a></div>
	   	</div>


</div>
<script>

	
</script>

	  <!------------------------------------------- index contents end //---------------------------->
	  
	  
	  
	  
	  <br/><br/><br/><br/>
	   
		<jsp:include page="/WEB-INF/views/layout/com/mcontent.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/com/mbot.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/com/mpopup.jsp"></jsp:include>
		
		
		
		
		
		
   </div>

</body>
</html>