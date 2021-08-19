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
		.biz-content-wrap-top { max-width:550px; margin:0 auto; }
		.biz-content-wrap-menu { max-width:550px; margin:0 auto; }
		
		.biz-content-wrap-slide { max-width:550px; margin:0 auto; }
		.biz-content-wrap-con { max-width:550px; margin:0 auto; }
		
		.biz-content-wrap-bmenu-wrap { width:550px; margin:0 auto; border-top:1px solid #000; border-bottom:1px solid #000;}
		.biz-content-wrap-bmenu { max-width:550px; margin:0 auto; }
		.biz-content-wrap-bottom-wrap { width:550px; margin:0 auto;  background-color:#262636;}
		.biz-content-wrap-bottom { max-width:550px; margin:0 auto; }
		
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
		
		
		<div class="d-table w100pro ma-t-3em"></div>
		
	  <div class="d-table w100pro biz-content-wrap-con">
		
		<!-------------------------------------- index contents start //----------------------------------->
	
	    <div class="d-table w100pro t-center">
	        <div class="new-banner2-title2">
	            <p><span>완료 이미지 등록</span><span>!</span></p>
	            <p></p>
	        </div>
	    </div>

	<form name="frm" enctype="multipart/form-data" method="post" class="d-table d-block auto w100pro" style="width:400px;">
		<input type="hidden" name="option_seq" value="${vo.option_seq}"/>
		<input type="hidden" name="company_seq" value="${vo.company_seq}"/>
		<input type="hidden" name="user_seq" value="${vo.user_seq}"/>
		<input type="hidden" name="cart_seq" value="${vo.cart_seq}"/>
		<table border=1>
			<tr>
				<td>
					<img id="file" src="http://placehold.it/150x120" width=150/> 
					<input type="file" name="image"/>
				</td>
			</tr>
			<tr>
				<td>
					<img id="file2" src="http://placehold.it/150x120"/>
					<input type="file" name="image2"/>
				</td>
			</tr>
			<tr>
				<td>
					<img id="file3" src="http://placehold.it/150x120"/> 
					<input type="file" name="image3"/>
				</td>
			</tr>
			<tr>
				<td>
					<img id="file4" src="http://placehold.it/150x120"width=150 /> 
					<input type="file" name="image4"/>
				</td>
			</tr>
			<tr>
				<td>
					<img src="http://placehold.it/150x120" id="file5" width=150/> 
					<input type="file" name="image5"/>
				</td>
			</tr>
			</table>
		<input type="text" name="contents"/>
		<input type="submit" value="이미지등록">
	</form>
</div>
<script>
	var cart_seq = $(frm.cart_seq).val();
	$(frm).on("submit", function(e) {
		e.preventDefault();
		if (!confirm("이미지를 등록하시겠습니까?"))
			return;
		frm.action = "insert";
		frm.method = "post";
		frm.submit();
	});

	$("#file").on("click", function() {
		$(frm.image).click();
	});
	$("#file2").on("click", function() {
		$(frm.image2).click();
	});
	$("#file3").on("click", function() {
		$(frm.image3).click();
	});
	$("#file4").on("click", function() {
		$(frm.image4).click();
	});
	$("#file5").on("click", function() {
		$(frm.image5).click();
	});


	//이미지 미리보기
	$(frm.image).on("change", function() {
		var file = $(frm.image)[0].files[0];
		$("#file").attr("src", URL.createObjectURL(file));
	});
	$(frm.image2).on("change", function() {
		var file = $(frm.image2)[0].files[0];
		$("#file2").attr("src", URL.createObjectURL(file));
	});
	$(frm.image3).on("change", function() {
		var file = $(frm.image3)[0].files[0];
		$("#file3").attr("src", URL.createObjectURL(file));
	});
	$(frm.image4).on("change", function() {
		var file = $(frm.image4)[0].files[0];
		$("#file4").attr("src", URL.createObjectURL(file));
	});
	$(frm.image5).on("change", function() {
		var file = $(frm.image5)[0].files[0];
		$("#file5").attr("src", URL.createObjectURL(file));
	});
</script>

	  <!------------------------------------------- index contents end //---------------------------->
	  
	  
	  <br/><br/><br/><br/>
	   
		<jsp:include page="/WEB-INF/views/layout/com/mcontent.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/com/mbot.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/com/mpopup.jsp"></jsp:include>
		
		
		
		
		
		
   </div>

</body>
</html>