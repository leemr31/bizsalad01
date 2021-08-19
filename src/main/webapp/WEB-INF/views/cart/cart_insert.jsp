<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageName" value="회원가입"/>

<c:choose>
	<c:when test="${user_id == null}">
		<script>
			alert("로그인이 필요합니다.");
			window.location.href='/';
		</script>
	</c:when>
</c:choose>


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
	            <p><span>상품 선택 기본 설정</span><span>!</span></p>
	            <p></p>
	        </div>
	    </div>
	    
	<form name="frm" enctype="multipart/form-data" class="d-block auto" style="width:300px;">
		<div id="contents">
			
			<div class="category d-table w100pro ma-b-dot5">	
				<select id="cate" class="jsonv select-h40r w100pro d-block big-text3 ">
					<option value="" selected disabled hidden>상품 카테고리 선택</option>
					<option value="목걸이">목걸이</option>
					<option value="팔찌">팔찌</option>
					<option value="발찌">발찌</option>
					<option value="귀걸이">귀걸이</option>	
					<option value="반지">반지</option>
				</select>
			</div>
			
			<div class="imagebox" class="w100pro d-block ">
				<img id="image" src="http://placehold.it/180x120"  class="w100pro cupoint">
				<input type="file" name="file" id="file" multiple="multiple" style="display: none;" />
				<input type="hidden" id="img" class="jsonv" value="" />
			</div>
				
				
					<div class="modelBox">
				<select name="shape" id="shape" class="jsonv select-h40r w100pro d-block big-text3 ma-t-dot5">
					<option>형태</option>
					</select>
			</div>
			
			<div id="sizebox">
				<input type=text name="size" id=size class="jsonv input-h40r w100pro big-text3 ma-t-dot5" placeholder="사이즈 입력">
			</div>

			<div class="commentbox">
				<textarea rows="5" cols="30" id="comment" class="jsonv textarea-r-6 w100pro big-text2 ma-t-dot5"
					placeholder="코멘트를 입력해주십시오" onfocus="this.placeholder=''"
					onblur="this.placeholder='코멘트를 입력해주십시오'"></textarea>
			</div>
			
			<div class="quickcheck ma-t-1em d-block w100pro">
				<label><input type="checkbox" id="chk"><span class="big-text2">빠른진행</span></label>
			</div>
		</div>
		
		
		<div class="d-table w100pro ma-t-2em"></div>
		
		
		
		<div class="d-table w100pro auto t-center">
			<input type="button" id="btnPre" class="d-table-cell btn-h40r w40pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-dot5 ma-r-dot5" value="이전" onClick="location.href='/user/list2'" />
			<input type="button" id="btnInsert" class="d-table-cell btn-h40r w40pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-dot5" value="다음" />
			<input type="button" id="btnInsert2" class="d-table-cell btn-h40r w40pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-dot5" value="다음"/>
		</div>
		</form>
		
		<div>
			<input type="hidden" id="lastId"/>
		</div>
		
		
</div>



<script>





	var user_seq = "<%= session.getAttribute("user_seq") %>";

	var quick = 1;
	var product_seq = "";
	
	$("#btnInsert2").hide();
	
/*
$('#shape').change(function(){ 
	$("#shape option:selected").each(function () { 
		if($(this).val()== '직접입력'){  
		$("#ModelInput").val('');  
		$("#ModelInput").attr("disabled",false); 
		}else{ 
		 $("#ModelInput").val($(this).text());
		$("#ModelInput").attr("disabled",true); 
		} 
	}); 
}); 
*/

$("#image").on("click", function(){
	$("#file").click();
});

$("#file").on("change", function(){	
	var file=$("#file")[0].files[0];
	
	var url = URL.createObjectURL(file);
	$("#image").attr("src", url);
	
});

//이미지 첨부 했을 때 인서트
$("#file").on("change", function(){
	$("#btnInsert").hide();
	$("#btnInsert2").show();
	var file=$("#file")[0].files[0]; //파일들이 배열로 업로드 된다. 그래서 [0]을 해서 0번째(첫번째) 파일을 선택해준다.
	if(file == null) return;
	var formData=new FormData();
	formData.append("file", file);
	
	$("#btnInsert2").on("click", function(e){
		e.preventDefault();
		
		$.ajax({
			type:"post",
			url:"/cart/uploadFile",
			processData:false,
			contentType:false,
			data:formData,
			success:function(data) {
				//alert(data);
				$("#img").val(data);
				
				var item = $("#cate").val();

				if(item == '목걸이'){
					product_seq = 'prod_0000000001';
				}else if(item == '팔찌'){
					product_seq = 'prod_0000000002';
				}else if(item == '발찌'){
					product_seq = 'prod_0000000003';
				}else if(item == '귀걸이'){
					product_seq = 'prod_0000000004';
				}else if(item == '반지'){
					product_seq = 'prod_0000000005';
				}
				
				if($("#chk").is(":checked") == true){
					quick = 1;
				}else{
					quick = 0;
				}
				
				var img = "";
				var size = $("#size").val();
				var shape = $("#shape").val();
				var comment = $("#comment").val();
				
				//var cart_desc = '{"cate":"'+item+'","img":"'+img+'","size":"'+size+'","shape":"'+shape+'","comment":"'+comment+'"}';
				    
				    let tmp = "{";
		
			        
			        $(".jsonv").each(function(index, item) {			       
			                tmp += '"' + $(item).attr('id') + '":"' + $(item).val() + '",';
			        });
			        
			        tmp = tmp.substr(0, tmp.length-1) + "}";
			        
			        $("#jss").val(tmp);
			        
			      //  alert(tmp);        
				
				$.ajax({
					type:"post",
					url:"/cart/insert",
					data:{
						"user_seq":user_seq,
						"product_seq":product_seq,
						"quick":quick,
						"cart_desc":tmp},
					success:function(data){
						getLastId();
						//alert(cart_seq);
						//location.href="/cart/insert/1?cart_seq="+cart_seq+"&product_seq="+data.product_seq+"&maufacture_seq=manf_0000000001";
					}
				});		
			}
		});	
	});	
});
	
//이미지 첨부 하지 않았을 때 인서트
$("#btnInsert").on("click", function(e){
	e.preventDefault();
	
	var item = $("#cate").val();

	if(item == '목걸이'){
		product_seq = 'prod_0000000001';
	}else if(item == '팔찌'){
		product_seq = 'prod_0000000002';
	}else if(item == '발찌'){
		product_seq = 'prod_0000000003';
	}else if(item == '귀걸이'){
		product_seq = 'prod_0000000004';
	}else if(item == '반지'){
		product_seq = 'prod_0000000005';
	}
	
	if($("#chk").is(":checked") == true){
		quick = 1;
	}else{
		quick = 0;
	}
	
	var img = "";
	var size = $("#size").val();
	var shape = $("#shape").val();
	var comment = $("#comment").val();
	
	//var cart_desc = '{"cate":"'+item+'","img":"'+img+'","size":"'+size+'","shape":"'+shape+'","comment":"'+comment+'"}';
	    
	    let tmp = "{";

        
        $(".jsonv").each(function(index, item) {			       
                tmp += '"' + $(item).attr('id') + '":"' + $(item).val() + '",';
        });
        
        tmp = tmp.substr(0, tmp.length-1) + "}";
        
        $("#jss").val(tmp);
        
        //alert(tmp);        
		
		$.ajax({
			type:"post",
			url:"/cart/insert",
			data:{
				//"cart_seq":"cart_0000000006",
				"user_seq":user_seq,
				"product_seq":product_seq,
				"quick":quick,
				"cart_desc":tmp},
			success:function(data){
				getLastId();
				
			}
		});		
	});

	
$("#cate").change(function() {

	var option01 = ["펜던트+체인", "only체인", "only진주", "진주+체인", "펜던트+진주", "진주+진주", "기타"];
	var option02 = ["펜던트+체인", "only체인", "only진주", "진주+체인", "펜던트+진주", "진주+진주", "기타"];
	var option03 = ["펜던트+체인", "only체인", "only진주", "진주+체인", "펜던트+진주", "진주+진주", "기타"];
	var option04 = ["펜던트+링", "only펜던트", "펜던트+체인", "진주+체인", "기타"];
	var option05 = ["링", "체인", "진주", "펜던트+링", "펜던트+체인", "펜던트+진주", "진주+링", "기타"];

	var selectItem = $("#cate").val(); //상단카테고리
	
	var changeItem;

	if(selectItem == "목걸이" || selectItem == "팔찌" || selectItem == "발찌") {
	   changeItem = option01;
	   $("#size").show();
	}
	else if(selectItem == "귀걸이") {
	   changeItem = option04;
	   $("#size").hide();
	}
	else if(selectItem == "반지") {
	   changeItem = option05;
	   $("#size").hide();
	}

	$("#shape").empty(); //형태 option 지우기

	for(var count = 0; count < changeItem.length; count++) {                
	                var option = $("<option>"+changeItem[count]+"</option>");
	                $("#shape").append(option);
	}

});


// 새로 생성된 cart_seq 값 가져오기
function getLastId(){
	$.ajax({
		type:"get",
		url:"/cart/lastId",
		data:{"user_seq":user_seq},
		success:function(data){
			$("#lastId").val(data);
			var cart_seq = $("#lastId").val();
			location.href="/option/insert1?cart_seq="+cart_seq+"&product_seq="+product_seq+"&manufacture_seq=manf_0000000001";
		}
	});
}


var optionv = ["","목걸이", "팔찌", "발찌", "귀걸이", "반지", "", ""];
$("#cate").val(optionv[<%= request.getParameter("cate") %>]).trigger("change");


</script>

		   
	  <!------------------------------------------- index contents end //---------------------------->
	  
	  
	  
	  
	  <br/><br/><br/><br/>
	   
		<jsp:include page="/WEB-INF/views/layout/user/mcontent.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/user/mbot.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/user/mpopup.jsp"></jsp:include>
		
		
		
		
		
		
   </div>

</body>
</html>
