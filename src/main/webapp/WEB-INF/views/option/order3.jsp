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
	            <p><span>3단계(목걸이/팔찌/발찌) 체인 선택</span><span>!</span></p>
	            <p></p>
	        </div>
	    </div>
	
		<div class="content d-block auto" style="width:300px;">
			
			<div class="box">
				<input type="text" id="name" class="jsonv input-h40r w100pro big-text3 ma-t-dot5 t-center bold" value="체인선택" readonly>
			</div>

			
			<div id="model" class="d-table w100pro ma-t-1em">
				<select id="shape1" class="jsonv select-h40r w100pro d-block big-text3 ">
					<option value="선택안함" selected disabled hidden>상품 형태 선택</option>
					<option value="타원">타원</option>
					<option value="원">원</option>
					<option value="정사각형">정사각형</option>
					<option value="직사각형">직사각형</option>
					<option value="외경">외경</option>
					<option value="내경">내경</option>
					<option value="직접입력">직접입력</option>
					</select>
				
					<input type=hidden name="modelInput" id="selfShape1" class="jsonv input-h40r w70pro big-text3 ma-t-dot5 ma-r-dot5" placeholder="형태 직접 입력" disabled>				
					
					<input type=text class="jsonv input-h40r w70pro big-text3 ma-t-dot5 ma-r-dot5" id="size1" placeholder="사이즈 입력 예)100x100" value="">
					
					<input type="button" id="btnAdd" class="btn-h40r w25pro t-center big-text ma-t-dot5 template_bg1 pa-2em pa-l-1em pa-r-1em" value="추가">		
				</div> 
				
				<div id="model2" >
				<select id="shape2" class="jsonv select-h40r w100pro d-block big-text3">
					<option value="선택안함" selected disabled hidden>상품 형태 선택</option>
					<option value="타원">타원</option>
					<option value="원">원</option>
					<option value="정사각형">정사각형</option>
					<option value="직사각형">직사각형</option>
					<option value="외경">외경</option>
					<option value="내경">내경</option>
					<option value="직접입력">직접입력</option>
					</select>
				
					<input type=text name="modelInput" id="selfShape2" class="jsonv input-h40r w100pro big-text3 ma-t-dot5 ma-r-dot3" placeholder="형태 직접 입력" disabled>
					
					<input type=text class="jsonv input-h40r w100pro big-text3 ma-t-dot5 ma-r-dot3" id="size2" placeholder="사이즈 입력" value="">
				</div>
		
			<div class="box">
			<select id="material" class="jsonv select-h40r w100pro d-block big-text3 ma-t-dot5"></select>
				<script id="mateTemp" type="text/x-handlebars-template">
					<option selected disabled hidden>소재 선택</option>
				{{#each .}}					
					<option>{{material_name}}</option>
				{{/each}}			
			</script>
			</div>	
				
			<div class="box">
				<textarea rows="5" cols="30" id="comment" class="jsonv textarea-r-6 w100pro big-text2 ma-t-dot5"
					placeholder="코멘트를 입력해주십시오" onfocus="this.placeholder=''"
					onblur="this.placeholder='코멘트를 입력해주십시오'"></textarea>
			</div>

			<div class="box d-block ma-t-1em">
				<form id="fileForm" method="POST" enctype="multipart/form-data">
				<input type="file" multiple="multiple" name="file" id="file" class="file" value="이미지 첨부하기"/>
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
var material_seq = "";
//선택된 소재에 따른 material_seq 값 구하기
$("#material").on("change", function(){
	var material_name = $("#material").val();
	if(material_name == "신주"){
		material_seq = 'matr_0000000014';
	}else if(material_name == "아연"){
		material_seq = 'matr_0000000033';
	}else if(material_name == "써지컬"){
		material_seq = 'matr_0000000034';
	}else if(material_name == "은925"){
		material_seq = 'matr_0000000035';
	}else if(material_name == "금14K"){
		material_seq = 'matr_0000000036';
	}else if(material_name == "금18K"){
		material_seq = 'matr_0000000037';
	}else if(material_name == "금24K"){
		material_seq = 'matr_0000000038';
	}else if(material_name == "백금"){
		material_seq = 'matr_0000000050';	
	}else if(material_name == "선택안함"){
		material_seq = 'matr_0000000051';
	}
	
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
	
});	



</script>
<script>
var cart_seq = "<%= request.getParameter("cart_seq") %>";
var product_seq = "<%= request.getParameter("product_seq") %>";
var manufacture_seq ="manf_0000000007";
var company_seq ="comp_0000000007";
var formData=new FormData();

var files;
$("#btnNext2").hide();
//cart_option json
/*$("#btnNext").on("click", function(){

let tmp = "{";

$(".jsonv").each(function(index, item) {                
    tmp += '"' + $(item).attr('id') + '":"' + $(item).val() + '",';
});

tmp = tmp.substr(0, tmp.length-1) + "}";

$("#jss").val(tmp);

alert(tmp);   
}); */

//shape 직접 입력 선택 시 value값 직접입력 가능하게 만들기
$('#shape1').change(function(){ 
$("#shape1 option:selected").each(function () { 
	if($(this).val()== '직접입력'){  
	$("#selfShape1").val('');  
	$("#selfShape1").attr("disabled",false); 
	}else{ 
	 $("#selfShape1").val($(this).text());
	$("#selfShape1").attr("disabled",true); 
	} 
}); 
}); 

//추가 shape
$("#model2").hide();

$("#btnAdd").on("click", function(e){
e.preventDefault();
$("#model2").show();
});

$('#shape2').change(function(){ 
$("#shape2 option:selected").each(function () { 
	if($(this).val()== '직접입력'){  
	$("#selfShape2").val('');  
	$("#selfShape2").attr("disabled",false); 
	}else{ 
	 $("#selfShape2").val($(this).text());
	$("#selfShape2").attr("disabled",true); 
	} 
}); 
}); 

//공정 단계에 따른 Meterial 리스트 select상자에 띄우기
getMaterial();

function getMaterial(){

	$.ajax({
		type:"get",
		url:"/option/mlist.json",
		data:{"manufacture_seq":manufacture_seq},
		dataType:"json",
		success:function(data){
			var temp=Handlebars.compile($("#mateTemp").html());
			$("#material").html(temp(data));
		}
	});		
}

$("#image").on("click", function(){
$("#file").click();
});

//이미지 첨부 하지 않고 '다음' 버튼 눌렀을 때
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

		$.ajax({
			type:"get",
			url:"/option/lastId",
			data:{"cart_seq":cart_seq},
			success:function(data){
				$("#lastId").val(data);
				var cart01 = "<%= request.getParameter("cart01") %>";
				var cart02 = "<%= request.getParameter("cart02") %>";
				var cart03 = $("#lastId").val();
				var cartall = "&cart01=" + cart01 + "&cart02=" + cart02 +"&cart03=" + cart03; 
				
				$.ajax({
					type:"post",
					url:"/cart/update",
					data:{
						"cart_seq":cart_seq,
						"cart01":cart01,
						"cart02":cart02,
						"cart03":cart03,
    					"user_seq":user_seq
					},
					success:function(data){
						//밑에 manufacture_seq는 수기로 다음 단계 입력해주면 됩니다. (품목에 따라 가야할 방향이 다르면 if 조건 주세요)
						location.href="/option/insert4?cart_seq="+cart_seq+"&product_seq="+product_seq+"&manufacutre_seq=manf_0000000008"+cartall;
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

//이미지를 첨부했을 때
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
    			    
    			    //imgApp(file);
    		});
       }
   }



});

$("#btnNext2").on("click", function(e){
e.preventDefault();
var formData = new FormData($('#fileForm')[0]);

var cnt = 1;
$.ajax({
    type:"post",
    enctype:'multipart/form-data',
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
    					var cart01 = "<%= request.getParameter("cart01") %>";
    					var cart02 = "<%= request.getParameter("cart02") %>";
    					var cart03 = $("#lastId").val();
    					var cartall = "&cart01=" + cart01 + "&cart02=" + cart02 +"&cart03=" + cart03;
    					
    					$.ajax({
	        				type:"post",
	        				url:"/cart/update",
	        				data:{
	        					"cart_seq":cart_seq,
	        					"cart01":cart01,
	        					"cart02":cart02,
	        					"cart03":cart03,
	        					"user_seq":user_seq
	        				},
	        				success:function(data){		
	        					//밑에 manufacture_seq는 수기로 다음 단계 입력해주면 됩니다. (품목에 따라 가야할 방향이 다르면 if 조건 주세요)
	        					location.href="/option/insert4?cart_seq="+cart_seq+"&product_seq="+product_seq+"&manufacutre_seq=manf_0000000008"+cartall;
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
    },
	error : function(xhr, ajaxSettings, thrownError) 
	   {
	       alert("이미지 업로드 ajax 오류");
	   },
	complete : function()
	   {
		
	   }	
 });  



/*
var count = 0;
var countstr = "";
*/
/*
$.each(files, function(index, file){
	console.log(formData);
	countstr = count.toString();
    $.ajax({
         type:"post",
         url:"/option/uploadFile",
         processData:false,
         contentType:false,
         async:false,
         dataType:'json',
         data:formData,
         success:function(data){
			$("#img"+(cnt)).val(data[cnt]);	
			cnt++;
         },
 		error : function(xhr, ajaxSettings, thrownError) 
		   {
		       alert("두번 째 ajax 오류");
		   },
		complete : function()
		   {
			
		   }	
      });  
    count++;
 });	
*/

//DB에 저장하는 ajax
	
/*tmp();

$.ajax({		
	type:"post",
	url:"/option/insert1",
	data:{
		"cart_seq":"cart_0000000006",
		"manufacture_seq":"manf_0000000001",
		"cart_option":tmp},
	success:function(data){
		alert(data);
		//location.href="/cart/insert/2?cart_seq="+data.cart_seq+"&product_seq="+data.product_seq + "maufacutre_seq=manu_0000000001";
	}
});		*/	

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