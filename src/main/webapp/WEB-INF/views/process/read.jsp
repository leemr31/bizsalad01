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
		
		
	  <div class="d-table w100pro biz-content-wrap-con">
		
		<!-------------------------------------- index contents start //----------------------------------->
	    
	    <div class="d-table w100pro ma-t-3em"></div>
	    <div class="d-table w100pro t-center">
	        <div class="new-banner2-title2">
	            <p><span>발주서리스트</span><span>!</span></p>
	            <p>업체회원만 이용이 가능합니다.</p>
	        </div>
	    </div>

		<div class="d-table w100pro auto big-text" style="width: 300px;">
			<div>
				<div class="big-text"><b>주문번호</b><input type=text class="input-h40r w100pro big-text3 ma-t-dot5" value="${vo.purchase_seq}" readonly /></div>
				<div class="big-text"><b>작업지시번호</b><input type=text class="input-h40r w100pro big-text3 ma-t-dot5" value="${vo.cart_seq}" readonly /></div>
				<div class="big-text"><b>수량</b><input type=text class="input-h40r w100pro big-text3 ma-t-dot5" value="${vo.quantity}" readonly /></div>
				<div class="big-text"><b>단가</b><input type=text class="input-h40r w100pro big-text3 ma-t-dot5" value="${vo.price}" readonly /></div>
				<div class="big-text"><b></b><input type=text class="input-h40r w100pro big-text3 ma-t-dot5" value="${vo.option_seq}" readonly /></div>
			</div>
			
			<form name="frm" method="post" class="ma-t-2em">
			<div id="OK" style="display: none">
				<input type="hidden" name="option_seq" value="${vo.option_seq}"/>
				<input type="hidden" name="company_seq" value="${vo.company_seq}"/>
				<table>
					<tr style="text-align: center;">
						<td class="big-text">작<br/>업<br/>일</td>
						<td class="bseq_ea" style="display:none;">14</td>
						<td>
							<button type="button" class="btn-h40r w30pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-dot5 ma-r-dot5" onclick="fnCalCount('p',this);">+</button>
							<input type="text" name="day" value="${vo.day}" class="input-h40r w70pro big-text3 ma-t-dot5" 
							style="text-align: center;" />	
							<button type="button" class="btn-h40r w30pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-dot5 ma-r-dot5" onclick="fnCalCount('m', this);">-</button>
						</td>
					</tr>
					</table>
					
					<div class="d-table w100pro ma-t-2em"></div>
					
					<input type="submit"class="btn-h40r w100pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-dot5 ma-r-dot5" name="numberOk" value="승인완료">
			</div>
			</form>
		</div>
		<div class="d-table w100pro auto " style="width: 300px;">
			<input type="button" class="btn-h40r w100pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-dot5" id="gong" value="공정관리"/>  
			<button id="btnOk" class="btn-h40r w47pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-dot5 ma-r-dot5">승인</button>
			<button id="btnNo" class="btn-h40r w47pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-dot5 ">거부</button>
			</div>
		</div>
</div>
<script>

	function fnCalCount(type, ths) {
		var $input = $(ths).parents("td").find("input[name='day']");
		var tCount = Number($input.val());
		var tEqCount = Number($(ths).parents("tr").find("td.bseq_ea").html());

		if (type == 'p') {
			if (tCount < tEqCount)
				$input.val(Number(tCount) + 1);

		} else {
			if (tCount > 0)
				$input.val(Number(tCount) - 1);
		}
	}
	$("#btnOk").on("click", function() {
		$("#OK").show();
	});
	
	var option_seq = $(frm.option_seq).val();
	var company_seq = $(frm.company_seq).val();
		
	$(frm).on("submit", function(e) {
		e.preventDefault();
		if (!confirm("승인하시겠습니까?"))
			return;
		frm.action = "update";
		frm.method = "post";
		frm.submit();
	});
	// 한 행을 클릭 시 세부내용 창이 뜸
	$("#gong").on("click",function(){
		var order_seq="${vo.order_seq}";
		//alert(order_seq);
		openChild(order_seq);
	});
	function openChild(order_seq){
		window.open("<c:url value='/read2?order_seq="+order_seq+"'/>", 
					"orderRead" ,"height=500,width=700,top=100,left=200,scrollbars=yes,resizable=yes");
	}	//https://coding-house.tistory.com/49
</script>

	  <!------------------------------------------- index contents end //---------------------------->
	  
	  
	  <br/><br/><br/><br/>
	   
		<jsp:include page="/WEB-INF/views/layout/com/mcontent.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/com/mbot.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/com/mpopup.jsp"></jsp:include>
		

</body>
</html>