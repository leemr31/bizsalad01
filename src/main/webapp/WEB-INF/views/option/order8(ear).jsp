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
		
		<jsp:include page="/WEB-INF/views/layout/user/ptop.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/user/mtop.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/user/mmenu.jsp"></jsp:include>
		
		
		<div class="d-table w100pro ma-t-1em"></div>
		
	  <div class="d-table w100pro biz-content-wrap-con">
		
		<!-------------------------------------- index contents start //----------------------------------->
	
	    <div class="d-table w100pro t-center">
	        <div class="new-banner2-title2">
	            <p><span>8단계(귀걸이) 포장 선택</span><span>!</span></p>
	            <p></p>
	        </div>
	    </div>
	
		<div class="content d-block auto" style="width:300px;">
			
			<div class="box">
				<input type="text" id="name" class="jsonv input-h40r w100pro big-text3 ma-t-dot5 t-center bold" value="포장여부선택" readonly>
			</div>

			<div class="d-table w100pro pa-1em ma-t-1em" style="border:1px solid #bdbdbd; border-radius:10px;">
				<div class="d-block w100pro t-center big-text">포장 여부 결정</div>
				<div id="sanding" class="d-block w100pro t-center">
					<label><input type="radio" name="sand" class="jsonv" value="샌딩" checked="checked" /><span class="big-text2">예</span></label>
					<label><input type="radio" name="sand" class="jsonv" value="선택안함" /><span class="big-text2">아니오</span></label>
				</div>
			</div>
			
			<div class="box">
				<textarea rows="5" cols="30" id="comment" class="jsonv textarea-r-6 w100pro big-text2 ma-t-dot5"
					placeholder="코멘트를 입력해주십시오" onfocus="this.placeholder=''"
					onblur="this.placeholder='코멘트를 입력해주십시오'"></textarea>
			</div>

			<div class="box d-block ma-t-1em">
				<form id="fileForm" method="POST" enctype="multipart/form-data">
				<input type="file" multiple="multiple" name="file" id="file" class="file"/> 최대 5개
				</form>
				<div id="listFile"></div>
			</div>
			
			<div class="box d-block ma-t-1em">
				<span class="big-text2">공정단계별 단가</span>
				<input type="text" id="material_price" class="jsonv input-h40r w60pro big-text3 ma-t-dot5 ma-l-dot3" readonly/><br/>
			</div>
			
			<div class="box d-block ma-t-1em">
				<label><input type="checkbox" id="quick"><span class="big-text2">빠른진행</span></label>
			</div>
			
		
			<div class="d-table w100pro ma-t-2em"></div>
			
		
			<div class="d-table w100pro auto t-center">
				<input type="button" id="btnPrev" class="d-table-cell btn-h40r w40pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-dot5 ma-r-dot5" value="이전" onClick="location.href='/user/list2'" />
				<input type="button" id="btnNext" class="d-table-cell btn-h40r w40pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-dot5" value="다음" />
				<input type="button" id="btnNext2" class="d-table-cell btn-h40r w40pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-dot5" value="다음"/>
			</div>
		
		</div>
		
		
		<!-- 받아와야 할 이미지 파일 명 임시로 받는 곳 나중에, hidden 처리 -->
		<div>
		<input type="hidden" id="img1" name="img" class="jsonv" value=""/>
		<input type="hidden" id="img2" name="img" class="jsonv" value=""/>
		<input type="hidden" id="img3" name="img" class="jsonv" value=""/>
		<input type="hidden" id="img4" name="img" class="jsonv" value=""/>
		<input type="hidden" id="img5" name="img" class="jsonv" value=""/>
		</div>
		<div>
		<input type="hidden" id="lastId"/>
		</div>
</div>

<script>
var user_seq = "<%= session.getAttribute("user_seq") %>";
var cart_seq = "<%= request.getParameter("cart_seq") %>";
var product_seq = "<%= request.getParameter("product_seq") %>";
var manufacture_seq ="manf_0000000006";
var company_seq ="comp_0000000006";
var formData=new FormData();

var material_seq = "matr_0000000013";
getMprice();
//선택된 소재에 따른 material_seq 값 구하기
$("#packing").on("click", ".jsonv", function(){
	var pack = $("input[name='pack']:checked").val();
	if(pack == "포장"){
		material_seq = 'matr_0000000013';
	}else if(pack == "선택안함"){
		material_seq = 'matr_0000000049';
	}	
	getMprice();	
});

function getMprice(){
	$.ajax({
		type:"get",
		url:"/option/materialPrice.json",
		data:{"material_seq":material_seq},
		success:function(data)
		   {
			$("#material_price").val(data)
		   },
		error : function(xhr, ajaxSettings, thrownError) 
		   {
		       alert("수정하는데 오류가 발생하였습니다.");
		   },
		complete : function()
		   {
			
		   }	
	});
}

var files;
$("#btnNext2").hide();

//다음 버튼 클릭 시 (이미지x)
$("#btnNext").on("click", function(e){
	e.preventDefault();
	
	let tmp = "{";
	
	$(".jsonv").each(function(index, item) {     
	
        tmp += '"' + $(item).attr('id') + '":"' + $(item).val() + '",';
	});

	tmp = tmp.substr(0, tmp.length-1) + "}";

	$("#jss").val(tmp);
	
	$.ajax({
		type:"post",
		url:"/option/insert1",
		data:{
			"company_seq":company_seq,
			"cart_seq":cart_seq,
			"material_seq":material_seq,
			"cart_option":tmp},
		success:function(data){
			//alert(data);
			$.ajax({
				type:"get",
				url:"/option/lastId",
				data:{"cart_seq":'cart_0000000004'},
				success:function(data){
					$("#lastId").val(data);
					var cart01 = "<%= request.getParameter("cart01") %>";
						var cart02 = "<%= request.getParameter("cart02") %>";
						var cart03 = "<%= request.getParameter("cart03") %>";
						var cart04 = "<%= request.getParameter("cart04") %>";
						var cart05 = "<%= request.getParameter("cart05") %>";
						var cart06 = "<%= request.getParameter("cart06") %>";
						var cart07 = "<%= request.getParameter("cart07") %>";
						var cart08 = $("#lastId").val();
					$.ajax({
						type:"post",
						url:"/cart/update",
						data:{
							"cart_seq":cart_seq,
							"cart01":cart01,
							"cart02":cart02,
							"cart03":cart03,
							"cart04":cart04,
							"cart05":cart05,
        					"cart06":cart06,
							"cart07":cart07,
							"cart08":cart08,
        					"user_seq":user_seq
						},
						success:function(data){
							//밑에 manufacture_seq는 수기로 다음 단계 입력해주면 됩니다. (품목에 따라 가야할 방향이 다르면 if 조건 주세요)
							location.href="/option/review?cart_seq="+cart_seq+"&product_seq="+product_seq;
						},
						error : function(xhr, ajaxSettings, thrownError) 
						   {
						       alert("수정하는데 오류가 발생하였습니다.");
						   }
					});		
				}
			});			
		}
	});			
});

//이미지 첨부 시
$("#file").on("change", function(){	
	
	//이미지 첨부 개수 제한
	   var x = document.getElementById("file");
	   var txt = "";
	   if ('files' in x) {
	       if (x.files.length > 5) {
	           alert("파일 개수가 초과되었습니다. 다시 선택해주세요");
	           document.getElementById("file").value = "";
	           return;
	       }
	       else {
	    	   	$("#btnNext").hide();
	    		$("#btnNext2").show();
	    		
	    		files=$("#file")[0].files;
	    		var html = "";

	    		$.each(files, function(index, file){
	    			
	    			html += "<img src='" + URL.createObjectURL(file) + "' width=150>";
	    			$('#listFile').html(html);
	    			
	    			if(file == null) return;
	    			
	    			formData.append("file", file);
	    		});
	       }
	   } 
	
	
});


//이미지를 첨부하고 '다음' 버튼 클릭 시
$("#btnNext2").on("click", function(e){
	e.preventDefault();
	var formData = new FormData($("#fileForm")[0]);
	
	var cnt = 1;
	
	$.ajax({
		type:"post",
		enctype:"multiple/form-data",
	    url:"/option/uploadFile",
        processData:false,
        contentType:false,
        async:false,
        data:formData,
        success:function(data){
        	$("#img1").val(data.img1);	
        	$("#img2").val(data.img2);	
        	$("#img3").val(data.img3);	
        	$("#img4").val(data.img4);	
        	$("#img5").val(data.img5);  
        	
			let tmp = "{";
			
			$(".jsonv").each(function(index, item) {     
			
		        tmp += '"' + $(item).attr('id') + '":"' + $(item).val() + '",';
			});

			tmp = tmp.substr(0, tmp.length-1) + "}";

			$("#jss").val(tmp);
			//alert(tmp);
			
			$.ajax({
				type:"post",
        		url:"/option/insert1",
        		data:{
        			"cart_seq":cart_seq,
        			"material_seq":material_seq,
        			"cart_option":tmp},
 				success:function(data){
 					$.ajax({
 						type:"get",
 						url:"/option/lastId",
 						data:{"cart_seq":cart_seq},
 						success:function(data){
 							$("#lastId").val(data);
 							var cart02 = "<%= request.getParameter("cart02") %>";
 							var cart03 = "<%= request.getParameter("cart03") %>";
 							var cart04 = "<%= request.getParameter("cart04") %>";
 							var cart05 = "<%= request.getParameter("cart05") %>";
 							var cart06 = "<%= request.getParameter("cart06") %>";
 							var cart07 = "<%= request.getParameter("cart07") %>";
 							var cart08 = $("#lastId").val();
        					$.ajax({
        						type:"post",
        						url:"/cart/update",
        						data:
        						{
	       							"cart_seq":cart_seq,
	       							"cart01":cart01,
	    							"cart02":cart02,
	    							"cart03":cart03,
	    							"cart04":cart04,
	    							"cart05":cart05,
	            					"cart06":cart06,
	    							"cart07":cart07,
		        					"cart08":cart08,
		        					"user_seq":user_seq
        						},
        						success:function(data){
        							//alert("성공");
        							//밑에 manufacture_seq는 수기로 다음 단계 입력해주면 됩니다. (품목에 따라 가야할 방향이 다르면 if 조건 주세요)
		        					location.href="/option/review?cart_seq="+cart_seq+"&product_seq="+product_seq;
        						},
        						error : function(xhr, ajaxSettings, thrownError) 
		        				   {
		        				       alert("수정하는데 오류가 발생하였습니다.");
		        				   }
        					});
 						}
 					});
 				}
			});
        }
	});
});

</script>


	  <!------------------------------------------- index contents end //---------------------------->
	  
	  
	  
	  
	  <br/><br/><br/><br/>
	   
		<jsp:include page="/WEB-INF/views/layout/user/mcontent.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/user/mbot.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/user/mpopup.jsp"></jsp:include>
		
		
		
		
		
		
   </div>

</body>
</html>