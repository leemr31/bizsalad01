<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageName" value="인덱스"/>
<html>
<head>
	
	<title>비즈샐러드</title>
	<jsp:include page="/WEB-INF/views/layout/user/minclude.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/layout/user/add_css.jsp"></jsp:include>
	
	<style>
		#biz-content-wrap { width:100%; height:100%; margin:0 auto; visibility:hidden; }

		.star-rating {
		  display: flex;
		  flex-direction: row-reverse;
		  font-size: 2.25rem;
		  line-height: 2.5rem;
		  justify-content: space-around;
		  padding: 0 0.2em;
		  text-align: center;
		  width: 5em;
		}
		 
		.star-rating input {
		  display: none;
		}
		 
		.star-rating label {
		  -webkit-text-fill-color: transparent; /* Will override color (regardless of order) */
		  -webkit-text-stroke-width: 2.3px;
		  -webkit-text-stroke-color: #2b2a29;
		  cursor: pointer;
		}
		 
		.star-rating :checked ~ label {
		  -webkit-text-fill-color: gold;
		}
		 
		.star-rating label:hover,
		.star-rating label:hover ~ label {
		  -webkit-text-fill-color: #fff58c;
		}

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
<div class="d-table w100pro auto" style="width:400px;">
	<div id="sk">
		<c:if test="${rvo.contents == null}">
			<textarea class="content-val" style="width:100% !important;" rows="5" cols="50" placeholder=" 해당 공정에 대한 리뷰를 작성해주세요.(베네핏 부여: 포인트)" ></textarea>
		</c:if>
		<c:if test="${rvo.contents != null}">
			<textarea class="content-val" style="width:100% !important;" rows="5" cols="50">${rvo.contents}</textarea>
		</c:if>
		
		<div class="star-rating space-x-4 mx-auto">
	
			<input type="radio" id="5-stars" name="rating" value="5" v-model="ratings"/>
			<label for="5-stars" class="star pr-4">★</label>
			<input type="radio" id="4-stars" name="rating" value="4" v-model="ratings"/>
			<label for="4-stars" class="star">★</label>
			<input type="radio" id="3-stars" name="rating" value="3" v-model="ratings"/>
			<label for="3-stars" class="star">★</label>
			<input type="radio" id="2-stars" name="rating" value="2" v-model="ratings"/>
			<label for="2-stars" class="star">★</label>
			<input type="radio" id="1-star" name="rating" value="1" v-model="ratings" />
			<label for="1-star" class="star">★</label>
			
		</div>
		
		<c:if test="${rvo.point != null}">
			별점 : <span id="score" >${rvo.point}</span> 점
		</c:if>
		<c:if test="${rvo.point == null}">
			별점 : <span id="score" ></span> 점
		</c:if>
		<br>
		
		<div class="d-table w100pro auto t-center ma-t-2em">
			<button id="btnClose" class="d-i-b btn-h40r w20pro bold ma-b-2em ma-r-dot5">나중에</button>
			<button id="btnInsert" class="d-i-b btn-h40r w20pro bold ma-b-2em">리뷰저장</button>
		</div>
		
	</div>

</div>
</body>
<script>

	<c:if test="${rvo.point != null}">
		$('input:radio[name=rating]:input[value=${rvo.point}]').attr("checked", true);
	</c:if>

	var contents="${rvo.contents}";
	
	if(contents!=""){
		alert("해당 상품에 리뷰를 이미 등록하셨습니다.");
		$("#btnInsert").prop("disabled",true);
	}




	//별점 이미지 클릭 시 
	$(".star").on('click',function(){
	   	var idx = $(this).index();
	   	//alert(idx);
	   	var score=0.5;
	   	$(".star").removeClass("on");
	   	for(var i=10; i>idx; i--){
	       $(".star").eq(i).addClass("on");
	       score+=0.5;
	   	}
	   	//alert(score);
	   	$("#score").html(score);
	 });	
	
	
	
	
	 //리뷰 등록 버튼 클릭 시
	 $("#btnInsert").on("click",function(){
		 var contents=$(".content-val").val();
		 var purchase_seq="${vo.purchase_seq}";
		 var user_seq="${vo.user_seq}";
		 var review_purchase_seq="${rvo.purchase_seq}";
		 var all_work="${vo.all_work}";
		 
		 if(review_purchase_seq!=""){
			 alert("이미 리뷰가 등록된 주문입니다.");
			 window.close();
			 return;
		}
		 if(contents==""){
			 alert("코멘트를 입력해주세요."); return;
		 }
		 var score=$("#score").html();
		 if(score==""){
			 alert("별점을 입력해주세요.");return;
		 }
		 if(!confirm("리뷰를 등록하시겠습니까?")) return;
		 $.ajax({
			 type:"post",
			 url:"/insertReview",
			 data:{"purchase_seq":purchase_seq,"user_seq":user_seq,"point":score,"contents":contents},
			 success:function(){
				 
				alert("제작 리뷰가 등록되었습니다.");
			 }
		 });
	 });
	 
	 
	 
	 $("#btnClose").on("click",function(){
		 window.close();
	 });

</script>
</html>