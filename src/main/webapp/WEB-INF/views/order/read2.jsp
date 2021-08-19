<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<style>
*{text-align:center;}
span{border:1px solid black;}
#page{overflow:hidden;width:400px;}
#content{width:300px;}
#btnReview{float:left;width:200px;}
#btnClose{float:left;width:200px;}
div{border:1px solid black;}
</style>
<meta charset="UTF-8">
<title>공정관리/확인 팝업창</title>
</head>
<body>
<div id="page">
	<div style="margin:10px;padding:10px;">작업지시번호(orderseq) : <span>${vo.oseq}</span>
	</div>
	<div id="contents" style="margin:10px;padding:10px;">
		<div id="openContent" style="margin:10px;padding:10px;">
			<button id="openAll">모두 열기</button>
			<br>
			<span id="level0">기본입력정보 ▼ </span>
				<div id="content0-1"  style="display:none;"></div>
					<script id="temp0-1" type="text/x-handlebars-template">
					{{#each .}}
						<div>카테고리명 : {{cate}}</div>
						<div>입력한 형태 : {{shape}}</div>
						<div>입력한 사이즈 : {{size}}</div>
						<div>입력한 코멘트 : {{comment}}</div>
						<div>
							참고 견본 사진 : 
							<img id="image" src="{{img}}" width=150 height=100/>
						</div>
					{{/each}}
					<button>확인</button>
					<button>빠른진행</button>
					</script>
					
					<div id="content1-3"  style="display:none;"></div>
					<script id="temp1-3" type="text/x-handlebars-template">
						<span>업체 작업 내용</span>
						<textarea cols="" rows="" value=""></textarea>
						<img src="">
					</script>
					<br>
			<span id="level1">1단계 ▼ </span>
				<div id="content1-1"  style="display:none;"></div>
					<script id="temp1-1" type="text/x-handlebars-template">
					{{#each .}}
						<div>카테고리명 : {{product_name}}</div>
					{{/each}}
					<div day={{day}} work_date={{work_date}}>예정 완료일 : {{work work_date}} </div>
					</script>
					<div id="content1-2"  style="display:none;"></div>
					<script id="temp1-2" type="text/x-handlebars-template">
					{{#each .}}
						<div>공정명칭 : {{name}}</div>
						<div>필요한 재료명 : {{material}}</div>
						<div>입력한 사이즈 : {{size}}</div>
						<div>입력한 코멘트 : {{comment}}</div>
						<div>
							업체에 전송한 참고사진 : 
							<img id="image" src="{{img}}" width=150 height=100/>
						</div>
						<div>진행동의여부 확인
						<button id="btnAgree" >▶</button> 
						<div id="agree1" style="display:none;"> 
							<span>진행동의여부 내용</span>
							<input type="checkbox" id="agreeChk1" disabled/>동의
						</div>
					</div>
					{{/each}}
					<button>확인</button>
					<button>빠른진행</button>
					</script>
					
					<div id="content1-3"  style="display:none;"></div>
					<script id="temp1-3" type="text/x-handlebars-template">
						<span>업체 작업 내용</span>
						<textarea cols="" rows="" value=""></textarea>
						<img src="">
					</script>
					
					<br>
		<span id="level2">2단계 ▼ </span>
			<div id="content2-1"  style="display:none;"></div>
				<script id="temp2-1" type="text/x-handlebars-template">
					{{#each .}}
						<div>카테고리명 : {{product_name}}</div>
					{{/each}}
					<div day={{day}} work_date={{work_date}}>예정 완료일 : {{work work_date}} </div>
				</script>
				<div id="content2-2"  style="display:none;"></div>
				<script id="temp2-2" type="text/x-handlebars-template">
					{{#each .}}
						<div>공정명칭 : {{name}}</div>
						<div>필요한 재료명 : {{material}}</div>
					<div>진행동의여부 확인
						<button id="btnAgree2" >▶</button> 
						<div id="agree2" style="display:none;"> 
							<span>진행동의여부 내용</span>
							<input type="checkbox" id="agreeChk2" disabled/>동의
						</div>
					</div>
					{{/each}}
					<button>확인</button>
					<button>빠른진행</button>
				</script>
					<br>
		<span id="level3">3단계 ▼ </span>
			<div id="content3-1"  style="display:none;"></div>
				<script id="temp3-1" type="text/x-handlebars-template">
					{{#each .}}
						<div>카테고리명 : {{product_name}}</div>
					{{/each}}
					<div day={{day}} work_date={{work_date}}>예정 완료일 : {{work work_date}} </div>
				</script>
				<div id="content3-2"  style="display:none;"></div>
				<script id="temp3-2" type="text/x-handlebars-template">
					{{#each .}}

						<div>공정명칭 : {{name}}</div>
						<div>필요한 재료명 : {{material}}</div>
						<div>외부 사이즈 : {{outer-size}}</div>
						<div>내부 사이즈 : {{inner-size}}</div>
						<div>입력한 두께 : {{thick-size}}</div>
						<div>입력한 코멘트 : {{comment}}</div>
						<img src="{{img}}" width=150 height=100>
						<div>진행동의여부 확인
							<button id="btnAgree3" >▶</button> 
							<div id="agree3" style="display:none;"> 
								<span>진행동의여부 내용</span>
								<input type="checkbox" id="agreeChk3" disabled/>동의
							</div>
						</div>
					{{/each}}
					<button>확인</button>
					<button>빠른진행</button>
				</script>
				<br>
		<span id="level4">4단계 ▼ </span>
			<div id="content4-1"  style="display:none;"></div>
				<script id="temp4-1" type="text/x-handlebars-template">
					{{#each .}}
						<div>카테고리명 : {{product_name}}</div>
					{{/each}}
					<div day={{day}} work_date={{work_date}}>예정 완료일 : {{work work_date}} </div>
				</script>
				<div id="content4-2"  style="display:none;"></div>
				<script id="temp4-2" type="text/x-handlebars-template">
					{{#each .}}
						<div>공정명칭 : {{name}}</div>
						<div>필요한 재료명 : {{material}}</div>
					<div>진행동의여부 확인
						<button id="btnAgree4" >▶</button> 
						<div id="agree4" style="display:none;"> 
							<span>진행동의여부 내용</span>
							<input type="checkbox" id="agreeChk4" disabled/>동의
						</div>
					</div>
					{{/each}}
					<button>확인</button>
					<button>빠른진행</button>
				</script>
				<br>
		<span id="level5">5단계 ▼ </span>
			<div id="content5-1"  style="display:none;"></div>
				<script id="temp5-1" type="text/x-handlebars-template">
					{{#each .}}
						<div>카테고리명 : {{product_name}}</div>
					{{/each}}
					<div day={{day}} work_date={{work_date}}>예정 완료일 : {{work work_date}} </div>
				</script>
				<div id="content5-2"  style="display:none;"></div>
				<script id="temp5-2" type="text/x-handlebars-template">
					{{#each .}}
						<div>공정명칭 : {{name}}</div>
						<div>필요한 재료명 : {{material}}</div>
					<div>진행동의여부 확인
						<button id="btnAgree5" >▶</button> 
						<div id="agree5" style="display:none;"> 
							<span>진행동의여부 내용</span>
							<input type="checkbox" id="agreeChk5" disabled/>동의
						</div>
					</div>
					{{/each}}
					<button>확인</button>
					<button>빠른진행</button>
				</script>
				<br>
		<span id="level6">6단계 ▼ </span>
			<div id="content6-1"  style="display:none;"></div>
				<script id="temp6-1" type="text/x-handlebars-template">
					{{#each .}}
						<div>카테고리명 : {{product_name}}</div>
					{{/each}}
					<div day={{day}} work_date={{work_date}}>예정 완료일 : {{work work_date}} </div>
				</script>
				<div id="content6-2"  style="display:none;"></div>
				<script id="temp6-2" type="text/x-handlebars-template">
					{{#each .}}
						<div>공정명칭 : {{name}}</div>
						<div>필요한 재료명 : {{material}}</div>
					<div>진행동의여부 확인
						<button id="btnAgree6" >▶</button> 
						<div id="agree6" style="display:none;"> 
							<span>진행동의여부 내용</span>
							<input type="checkbox" id="agreeChk6" disabled/>동의
						</div>
					</div>
					{{/each}}
					<button>확인</button>
					<button>빠른진행</button>
				</script>
				<br>
		<span id="level7">7단계 ▼ </span>
			<div id="content7-1"  style="display:none;"></div>
				<script id="temp7-1" type="text/x-handlebars-template">
					{{#each .}}
						<div>카테고리명 : {{product_name}}</div>
					{{/each}}
					<div day={{day}} work_date={{work_date}}>예정 완료일 : {{work work_date}} </div>
				</script>
				<div id="content7-2"  style="display:none;"></div>
				<script id="temp7-2" type="text/x-handlebars-template">
					{{#each .}}
						<div>공정명칭 : {{name}}</div>
						<div>필요한 재료명 : {{material}}</div>
					<div>진행동의여부 확인
						<button id="btnAgree7" >▶</button> 
						<div id="agree7" style="display:none;"> 
							<span>진행동의여부 내용</span>
							<input type="checkbox" id="agreeChk7" disabled/>동의
						</div>
					</div>
					{{/each}}
					<button>확인</button>
					<button>빠른진행</button>
				</script>
				<br>
		<span id="level8">8단계 ▼ </span>
			<div id="content8-1"  style="display:none;"></div>
				<script id="temp8-1" type="text/x-handlebars-template">
					{{#each .}}
						<div>카테고리명 : {{product_name}}</div>
					{{/each}}
					<div day={{day}} work_date={{work_date}}>예정 완료일 : {{work work_date}} </div>
				</script>
				<div id="content8-2"  style="display:none;"></div>
				<script id="temp8-2" type="text/x-handlebars-template">
					{{#each .}}
						<div>공정명칭 : {{name}}</div>
						<div>필요한 재료명 : {{material}}</div>
					<div>진행동의여부 확인
						<button id="btnAgree8" >▶</button> 
						<div id="agree8" style="display:none;"> 
							<span>진행동의여부 내용</span>
							<input type="checkbox" id="agreeChk8" disabled/>동의
						</div>
					</div>
					{{/each}}
					<button>확인</button>
					<button>빠른진행</button>
				</script>
				<br>
		<span id="level9">9단계 ▼ </span>
			<div id="content9-1"  style="display:none;"></div>
				<script id="temp9-1" type="text/x-handlebars-template">
					{{#each .}}
						<div>카테고리명 : {{product_name}}</div>
					{{/each}}
					<div day={{day}} work_date={{work_date}}>예정 완료일 : {{work work_date}} </div>
				</script>
				<div id="content9-2"  style="display:none;"></div>
				<script id="temp9-2" type="text/x-handlebars-template">
					{{#each .}}

						<div>공정명칭 : {{name}}</div>
						<div>필요한 재료명 : {{material}}</div>
						<div>입력한 사이즈 : {{size}}</div>
						<div>입력한 코멘트 : {{comment}}</div>
						<img src="">
					<div>진행동의여부 확인
						<button id="btnAgree9" >▶</button> 
						<div id="agree9" style="display:none;"> 
							<span>진행동의여부 내용</span>
							<input type="checkbox" id="agreeChk9" disabled/>동의
						</div>
					</div>
					{{/each}}
					<button>확인</button>
					<button>빠른진행</button>
				</script>
				<br>
		<span id="level10">10단계 ▼ </span>
			<div id="content10-1"  style="display:none;"></div>
				<script id="temp10-1" type="text/x-handlebars-template">
					{{#each .}}
						<div>카테고리명 : {{product_name}}</div>
					{{/each}}
					<div day={{day}} work_date={{work_date}}>예정 완료일 : {{work work_date}} </div>
				</script>
				<div id="content10-2"  style="display:none;"></div>
				<script id="temp10-2" type="text/x-handlebars-template">
					{{#each .}}
						<div>공정명칭 : {{name}}</div>
						<div>필요한 재료명 : {{material}}</div>
						<div>입력한 사이즈 : {{size}}</div>
						<div>입력한 코멘트 : {{comment}}</div>
						<img src="">
					<div>진행동의여부 확인
						<button id="btnAgree10" >▶</button> 
						<div id="agree10" style="display:none;"> 
							<span>진행동의여부 내용</span>
							<input type="checkbox" id="agreeChk10" disabled/>동의
						</div>
					</div>
					{{/each}}
					<button>확인</button>
					<button>빠른진행</button>
				</script>
				
				<button id="foldAll">모두 접기</button>
	</div>
		
		<input type="checkbox" name="type" id="orderSample" style="background:red;" disabled>샘플만
		<input type="checkbox" name="type" id="orderAll" disabled>전체 공정 주문
	</div>
	<div id="btnReview">리뷰 쓰기</div>
	<div id="btnClose">닫기</div>
</div>
</body>
<script>	//Handlebar helper
//
Handlebars.registerHelper("imgg", function(img){
	var imgg=$(this).attr("src");
	alert(imgg);
}
//String날짜 -> Date날짜 -> 날짜연산 -> String날짜 후 적용
Handlebars.registerHelper("work", function(work_date){			
	var day=$(this).attr("day");
	var date=$(this).attr("work_date");
	date=new Date(date);
	if(day>=1){
		//alert(date+"::"+typeof date);
		date.setDate(date.getDate()+day);
		//alert(date);
		//날짜포멧 변환 javascript
		var month = '' + (date.getMonth() + 1); 
		var day = '' + date.getDate(); 
		var year = date.getFullYear();
			if (month.length < 2)
				month = '0' + month;
			if (day.length < 2)
				day = '0' + day;
			return [ year, month, day ].join('-');

		} else
			return "미예정";

	});
</script>
<script>
//공정별 입력내용 가져오기
var cart00="${vo.cart_seq}";
var cart01="${vo.cart01}";
var cart02="${vo.cart02}";
var cart03="${vo.cart03}";
var cart04="${vo.cart04}";
var cart05="${vo.cart05}";
var cart06="${vo.cart06}";
var cart07="${vo.cart07}";
var cart08="${vo.cart08}";
var cart09="${vo.cart09}";
var cart10="${vo.cart10}";
var type="${vo.type}";

//진행동의여부 체크버튼 클릭 시 - 아코디언
var chk1=0;
$("#content1-2").on("click","#btnAgree",function(){
	if(chk1==0){
		$("#agree1").show();
		if(cart01!=""){
			$("#agreeChk1").prop("checked",true);
		}
		chk1=1;
	}else{
		$("#agree1").hide();
		chk1=0;
	}	
});
var chk2=0;
$("#content2-2").on("click","#btnAgree2",function(){
	if(chk2==0){
		$("#agree2").show();
		if(cart02!=""){
			$("#agreeChk2").prop("checked",true);
		}
		chk2=1;
	}else{
		$("#agree2").hide();
		chk2=0;
	}	
});
var chk3=0;
$("#content3-2").on("click","#btnAgree3",function(){
	if(chk3==0){
		$("#agree3").show();
		if(cart03!=""){
			$("#agreeChk3").prop("checked",true);
		}
		chk3=1;
	}else{
		$("#agree3").hide();
		chk3=0;
	}	
});
var chk4=0;
$("#content4-2").on("click","#btnAgree4",function(){
	if(chk4==0){
		$("#agree4").show();
		if(cart04!=""){
			$("#agreeChk4").prop("checked",true);
		}
		chk4=1;
	}else{
		$("#agree4").hide();
		chk4=0;
	}	
});
var chk5=0;
$("#content5-2").on("click","#btnAgree5",function(){
	if(chk5==0){
		$("#agree5").show();
		if(cart05!=""){
			$("#agreeChk5").prop("checked",true);
		}
		chk5=1;
	}else{
		$("#agree5").hide();
		chk5=0;
	}	
});
var chk6=0;
$("#content6-2").on("click","#btnAgree6",function(){
	if(chk6==0){
		$("#agree6").show();
		if(cart06!=""){
			$("#agreeChk6").prop("checked",true);
		}
		chk6=1;
	}else{
		$("#agree6").hide();
		chk6=0;
	}	
});
var chk7=0;
$("#content7-2").on("click","#btnAgree7",function(){
	if(chk7==0){
		$("#agree7").show();
		if(cart07!=""){
			$("#agreeChk7").prop("checked",true);
		}
		chk7=1;
	}else{
		$("#agree7").hide();
		chk7=0;
	}	
});
var chk8=0;
$("#content8-2").on("click","#btnAgree8",function(){
	if(chk8==0){
		$("#agree8").show();
		if(cart08!=""){
			$("#agreeChk8").prop("checked",true);
		}
		chk8=1;
	}else{
		$("#agree8").hide();
		chk8=0;
	}	
});
var chk9=0;
$("#content9-2").on("click","#btnAgree9",function(){
	if(chk9==0){
		$("#agree9").show();
		if(cart09!=""){
			$("#agreeChk9").prop("checked",true);
		}
		chk9=1;
	}else{
		$("#agree9").hide();
		chk9=0;
	}	
});
var chk10=0;
$("#content10-2").on("click","#btnAgree10",function(){
	if(chk10==0){
		$("#agree10").show();
		if(cart10!=""){
			$("#agreeChk10").prop("checked",true);
		}
		chk10=1;
	}else{
		$("#agree10").hide();
		chk10=0;
	}	
});
//checkbox 표기
if(type=="수량"){
	$("#orderAll").prop("checked",true);
}else if(type=="보류"){
	alert("보류된 내역입니다.");

}else{
	//alert("..");
	$("#orderSample").prop("checked",true);
}
//모두 열기 버튼
$("#openAll").on("click",function(){
	level0=1;
	level1=1;
	level2=1;
	level3=1;
	level4=1;
	level5=1;
	level6=1;
	level7=1;
	level8=1;
	level9=1;
	level10=1;
	if(cart00!=""){
		getList0_1();
		$("#content0-1").show();
	}
	if(cart01!=""){
		getList1_1();
		getList1_2();
		$("#content1-1").show();
		$("#content1-2").show();
	}
	if(cart02!=""){
		getList2_1();
		getList2_2();
		$("#content2-1").show();
		$("#content2-2").show();
	}
	if(cart03!=""){
		getList3_1();
		getList3_2();
		$("#content3-1").show();
		$("#content3-2").show();
	}
	if(cart04!=""){
		getList4_1();
		getList4_2();
		$("#content4-1").show();
		$("#content4-2").show();
	}
	if(cart05!=""){
		getList5_1();
		getList5_2();
		$("#content5-1").show();
		$("#content5-2").show();
	}
	if(cart06!=""){
		getList6_1();
		getList6_2();
		$("#content6-1").show();
		$("#content6-2").show();
	}
	if(cart07!=""){
		getList7_1();
		getList7_2();
		$("#content7-1").show();
		$("#content7-2").show();
	}
	if(cart08!=""){
		getList8_1();
		getList8_2();
		$("#content8-1").show();
		$("#content8-2").show();
	}
	if(cart09!=""){
		getList9_1();
		getList9_2();
		$("#content9-1").show();
		$("#content9-2").show();
	}
	if(cart10!=""){
		getList10_1();
		getList10_2();
		$("#content10-1").show();
		$("#content10-2").show();
	}
});

 //모두 접기 버튼
 $("#foldAll").on("click",function(){
	level0=0;
	level1=0;
	level2=0;
	level3=0;
	level4=0;
	level5=0;
	level6=0;
	level7=0;
	level8=0;
	level9=0;
	level10=0;
	$("#content0-1").hide();
	$("#content0-2").hide();
	$("#content1-1").hide();
	$("#content1-2").hide();
	$("#content2-1").hide();
	$("#content2-2").hide();
	$("#content3-1").hide();
	$("#content3-2").hide();
	$("#content4-1").hide();
	$("#content4-2").hide();
	$("#content5-1").hide();
	$("#content5-2").hide();
	$("#content6-1").hide();
	$("#content6-2").hide();
	$("#content7-1").hide();
	$("#content7-2").hide();
	$("#content8-1").hide();
	$("#content8-2").hide();
	$("#content9-1").hide();
	$("#content9-2").hide();
	$("#content10-1").hide();
	$("#content10-2").hide();
 });
 
 //각 공정 ▼ 클릭 시
 //기본단계
 if(cart00!=""){
	 var level0=0;
	 $("#level0").on("click",function(){
		 if(level0==0){
			 getList0_1();
			 $("#content0-1").show();
			 $("#content0-2").show();
			 level0=1;
		 }else{
			$("#content0-1").hide();
			$("#content0-2").hide();
			level0=0;
		 }
		
	 });
 }else if(cart00==""){
	 $("#level0").css("display","none");
	 alert("저장된 데이터가 없습니다.");
 }
 function getList0_1(){
	$.ajax({
		type:"get",
		url:"/cartdescread",
		dataType:"json",
		data:{"cart_seq":cart00},
		success:function(result){
			//result = "["+result+"]";
			//alert(result);
			var temp=Handlebars.compile($("#temp0-1").html());
			$("#content0-1").html(temp(result));
		}
	});
 } 
 //cart01
 if(cart01!=""){
	 var level1=0;
	 $("#level1").on("click",function(){
		 if(level1==0){
			 getList1_1();
			 getList1_2();
			 $("#content1-1").show();
			 $("#content1-2").show();
			 level1=1;
		 }else{
			$("#content1-1").hide();
			$("#content1-2").hide();
			level1=0;
		 }
		
	 });
 }else if(cart01==""){
	 $("#level1").css("display","none");
	 alert("저장된 데이터가 없습니다.");
 }
 function getList1_1(){
	$.ajax({
		type:"get",
		url:"/optionread",
		dataType:"json",
		data:{"cart01":cart01},
		success:function(result){
			//result = "["+result+"]";
			//alert(result);
			var temp=Handlebars.compile($("#temp1-1").html());
			$("#content1-1").html(temp(result));
		}
	});
 }
 function getList1_2(){
		$.ajax({
			type:"get",
			url:"/cart_option",
			dataType:"json",
			data:{"cart01":cart01},
			success:function(result){
				//result = "["+result+"]";
				//alert(result);
				var temp=Handlebars.compile($("#temp1-2").html());
				$("#content1-2").html(temp(result));
			}
		});
	 }   
 
 //cart02
 if(cart02!=""){
	 var level2=0;
	 $("#level2").on("click",function(){
		 if(level2==0){
			 getList2_1();
			 getList2_2();
			 $("#content2-1").show();
			 $("#content2-2").show();
			 level2=1;
		 }else{
			$("#content2-1").hide();
			$("#content2-2").hide();
			level2=0;
		 }
		
	 });
 }else if(cart02==""){
	 $("#level2").css("display","none");
 }
 function getList2_1(){
	$.ajax({
		type:"get",
		url:"/optionread",
		dataType:"json",
		data:{"cart01":cart02},
		success:function(result){
			//result = "["+result+"]";
			//alert(result);
			var temp=Handlebars.compile($("#temp2-1").html());
			$("#content2-1").html(temp(result));
		}
	});
 }
 function getList2_2(){
		$.ajax({
			type:"get",
			url:"/cart_option",
			dataType:"json",
			data:{"cart01":cart02},
			success:function(result){
				//result = "["+result+"]";
				//alert(result);
				var temp=Handlebars.compile($("#temp2-2").html());
				$("#content2-2").html(temp(result));
			}
		});
	 }  
 
//cart03
 if(cart03!=""){
	 var level3=0;
	 $("#level3").on("click",function(){
		 if(level3==0){
			 getList3_1();
			 getList3_2();
			 $("#content3-1").show();
			 $("#content3-2").show();
			 level3=1;
		 }else{
			$("#content3-1").hide();
			$("#content3-2").hide();
			level3=0;
		 }
		
	 });
 }else if(cart03==""){
	 $("#level3").css("display","none");
 }
 function getList3_1(){
	$.ajax({
		type:"get",
		url:"/optionread",
		dataType:"json",
		data:{"cart01":cart03},
		success:function(result){
			//result = "["+result+"]";
			//alert(result);
			var temp=Handlebars.compile($("#temp3-1").html());
			$("#content3-1").html(temp(result));
		}
	});
 }
 function getList3_2(){
		$.ajax({
			type:"get",
			url:"/cart_option",
			dataType:"json",
			data:{"cart01":cart03},
			success:function(result){
				//result = "["+result+"]";
				//alert(result);
				var temp=Handlebars.compile($("#temp3-2").html());
				$("#content3-2").html(temp(result));
			}
		});
	 }
 
//cart04
if(cart04!=""){
	 var level4=0;
	 $("#level4").on("click",function(){
		 if(level4==0){
			 getList4_1();
			 getList4_2();
			 $("#content4-1").show();
			 $("#content4-2").show();
			 level4=1;
		 }else{
			$("#content4-1").hide();
			$("#content4-2").hide();
			level4=0;
		 }
		
	 });
}else if(cart04==""){
	 $("#level4").css("display","none");
}
function getList4_1(){
	$.ajax({
		type:"get",
		url:"/optionread",
		dataType:"json",
		data:{"cart01":cart04},
		success:function(result){
			//result = "["+result+"]";
			//alert(result);
			var temp=Handlebars.compile($("#temp4-1").html());
			$("#content4-1").html(temp(result));
		}
	});
}
function getList4_2(){
		$.ajax({
			type:"get",
			url:"/cart_option",
			dataType:"json",
			data:{"cart01":cart04},
			success:function(result){
				//result = "["+result+"]";
				//alert(result);
				var temp=Handlebars.compile($("#temp4-2").html());
				$("#content4-2").html(temp(result));
			}
		});
	 }

//cart05
if(cart05!=""){
	var level5=0;
	 $("#level5").on("click",function(){
		 if(level5==0){
			 getList5_1();
			 getList5_2();
			 $("#content5-1").show();
			 $("#content5-2").show();
			 level5=1;
		 }else{
			$("#content5-1").hide();
			$("#content5-2").hide();
			level5=0;
		 }
		
	 });
}else if(cart05==""){
	 $("#level5").css("display","none");
}
function getList5_1(){
	$.ajax({
		type:"get",
		url:"/optionread",
		dataType:"json",
		data:{"cart01":cart05},
		success:function(result){
			//result = "["+result+"]";
			//alert(result);
			var temp=Handlebars.compile($("#temp5-1").html());
			$("#content5-1").html(temp(result));
		}
	});
}
function getList5_2(){
		$.ajax({
			type:"get",
			url:"/cart_option",
			dataType:"json",
			data:{"cart01":cart05},
			success:function(result){
				//result = "["+result+"]";
				//alert(result);
				var temp=Handlebars.compile($("#temp5-2").html());
				$("#content5-2").html(temp(result));
			}
		});
	 }

//cart06
if(cart06!=""){
	var level6=0;
	 $("#level6").on("click",function(){
		 if(level6==0){
			 getList6_1();
			 getList6_2();
			 $("#content6-1").show();
			 $("#content6-2").show();
			 level6=1;
		 }else{
			$("#content6-1").hide();
			$("#content6-2").hide();
			level6=0;
		 }
		
	 });
}else if(cart06==""){
	 $("#level6").css("display","none");
}
function getList6_1(){
	$.ajax({
		type:"get",
		url:"/optionread",
		dataType:"json",
		data:{"cart01":cart06},
		success:function(result){
			//result = "["+result+"]";
			//alert(result);
			var temp=Handlebars.compile($("#temp6-1").html());
			$("#content6-1").html(temp(result));
		}
	});
}
function getList6_2(){
		$.ajax({
			type:"get",
			url:"/cart_option",
			dataType:"json",
			data:{"cart01":cart06},
			success:function(result){
				//result = "["+result+"]";
				//alert(result);
				var temp=Handlebars.compile($("#temp6-2").html());
				$("#content6-2").html(temp(result));
			}
		});
	 }

//cart07
if(cart07!=""){
	var level7=0;
	 $("#level7").on("click",function(){
		 if(level7==0){
			 getList7_1();
			 getList7_2();
			 $("#content7-1").show();
			 $("#content7-2").show();
			 level7=1;
		 }else{
			$("#content7-1").hide();
			$("#content7-2").hide();
			level7=0;
		 }
		
	 });
}else if(cart07==""){
	 $("#level7").css("display","none");
}
function getList7_1(){
	$.ajax({
		type:"get",
		url:"/optionread",
		dataType:"json",
		data:{"cart01":cart07},
		success:function(result){
			//result = "["+result+"]";
			//alert(result);
			var temp=Handlebars.compile($("#temp7-1").html());
			$("#content7-1").html(temp(result));
		}
	});
}
function getList7_2(){
		$.ajax({
			type:"get",
			url:"/cart_option",
			dataType:"json",
			data:{"cart01":cart07},
			success:function(result){
				//result = "["+result+"]";
				//alert(result);
				var temp=Handlebars.compile($("#temp7-2").html());
				$("#content7-2").html(temp(result));
			}
		});
	 }

//cart08
if(cart08!=""){
	var level8=0;
	 $("#level8").on("click",function(){
		 if(level8==0){
			 getList8_1();
			 getList8_2();
			 $("#content8-1").show();
			 $("#content8-2").show();
			 level8=1;
		 }else{
			$("#content8-1").hide();
			$("#content8-2").hide();
			level8=0;
		 }
		
	 });
}else if(cart08==""){
	 $("#level8").css("display","none");
}
function getList8_1(){
	$.ajax({
		type:"get",
		url:"/optionread",
		dataType:"json",
		data:{"cart01":cart08},
		success:function(result){
			//result = "["+result+"]";
			//alert(result);
			var temp=Handlebars.compile($("#temp8-1").html());
			$("#content8-1").html(temp(result));
		}
	});
}
function getList8_2(){
		$.ajax({
			type:"get",
			url:"/cart_option",
			dataType:"json",
			data:{"cart01":cart08},
			success:function(result){
				//result = "["+result+"]";
				//alert(result);
				var temp=Handlebars.compile($("#temp8-2").html());
				$("#content8-2").html(temp(result));
			}
		});
	 }

//cart09
if(cart09!=""){
	var level9=0;
	 $("#level9").on("click",function(){
		 if(level9==0){
			 getList9_1();
			 getList9_2();
			 $("#content9-1").show();
			 $("#content9-2").show();
			 level9=1;
		 }else{
			$("#content9-1").hide();
			$("#content9-2").hide();
			level9=0;
		 }
		
	 });
}else if(cart09==""){
	 $("#level9").css("display","none");
}
function getList9_1(){
	$.ajax({
		type:"get",
		url:"/optionread",
		dataType:"json",
		data:{"cart01":cart09},
		success:function(result){
			//result = "["+result+"]";
			//alert(result);
			var temp=Handlebars.compile($("#temp9-1").html());
			$("#content9-1").html(temp(result));
		}
	});
}
function getList9_2(){
		$.ajax({
			type:"get",
			url:"/cart_option",
			dataType:"json",
			data:{"cart01":cart09},
			success:function(result){
				//result = "["+result+"]";
				//alert(result);
				var temp=Handlebars.compile($("#temp9-2").html());
				$("#content9-2").html(temp(result));
			}
		});
	 }

//cart10
if(cart10!=""){
	var level10=0;
	 $("#level10").on("click",function(){
		 if(level10==0){
			 getList10_1();
			 getList10_2();
			 $("#content10-1").show();
			 $("#content10-2").show();
			 level10=1;
		 }else{
			$("#content10-1").hide();
			$("#content10-2").hide();
			level10=0;
		 }
		
	 });
}else if(cart10==""){
	 $("#level10").css("display","none");
}
function getList10_1(){
	$.ajax({
		type:"get",
		url:"/optionread",
		dataType:"json",
		data:{"cart01":cart10},
		success:function(result){
			//result = "["+result+"]";
			//alert(result);
			var temp=Handlebars.compile($("#temp10-1").html());
			$("#content10-1").html(temp(result));
		}
	});
}
function getList10_2(){
		$.ajax({
			type:"get",
			url:"/cart_option",
			dataType:"json",
			data:{"cart01":cart10},
			success:function(result){
				//result = "["+result+"]";
				//alert(result);
				var temp=Handlebars.compile($("#temp10-2").html());
				$("#content10-2").html(temp(result));
			}
		});
	 }
 
//리뷰쓰기 버튼
$("#btnReview").on("click", function(){
	var oseq="${vo.oseq}";
	openChild(oseq);
});
function openChild(oseq){
	window.open("<c:url value='/review?oseq="+oseq+"'/>", 
				"review" ,"height=400,width=400,top=100,left=200,scrollbars=yes,resizable=yes");
}
//닫기 버튼
$("#btnClose").on("click",function(){
	 window.close();
});

</script>
</html>
