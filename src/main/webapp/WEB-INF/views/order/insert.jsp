<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageName" value="회원가입"/>


<html>
<head>
	<link rel="stylesheet" type="text/css" href="/resources/css/color.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/dev.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/env.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/font2.css">
	
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
		
	#add_list{
	border:1px solid black;
	position: absolute;
  	right: 200px;
 	top: 50px;
	width:400px;
	padding:10px;
	}
	
	*{
		outline-style: none;
	}

	#content0-1{border:1px solid #b3b3b3; width:100%;}
	#content1-1{border:1px solid #b3b3b3; width:100%;}
	#content1-2{border:1px solid #b3b3b3; width:100%;}
	#content2-1{border:1px solid #b3b3b3; width:100%;}
	#content2-2{border:1px solid #b3b3b3; width:100%;}
	#content3-1{border:1px solid #b3b3b3; width:100%;}
	#content3-2{border:1px solid #b3b3b3; width:100%;}
	#content4-1{border:1px solid #b3b3b3; width:100%;}
	#content4-2{border:1px solid #b3b3b3; width:100%;}
	#content5-1{border:1px solid #b3b3b3; width:100%;}
	#content5-2{border:1px solid #b3b3b3; width:100%;}
	#content6-1{border:1px solid #b3b3b3; width:100%;}
	#content6-2{border:1px solid #b3b3b3; width:100%;}
	#content7-1{border:1px solid #b3b3b3; width:100%;}
	#content7-2{border:1px solid #b3b3b3; width:100%;}
	#content8-1{border:1px solid #b3b3b3; width:100%;}
	#content8-2{border:1px solid #b3b3b3; width:100%;}
	#content9-1{border:1px solid #b3b3b3; width:100%;}
	#content9-2{border:1px solid #b3b3b3; width:100%;}
	#content10-1{border:1px solid #b3b3b3; width:100%;}
	#content10-2{border:1px solid #b3b3b3; width:100%;}
	
	
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
		
	  <div class="d-block w100pro biz-content-wrap-con auto">
		
		<!-------------------------------------- index contents start //----------------------------------->

      
	    <div class="d-table w100pro t-center">
	        <div class="orderInfo new-banner2-title2">
	            <p><span>주문제작하기</span><span>!</span></p>
	            <p>주문 내역 확인하기</p>
	        </div>
	    </div>
      
	<div id="contents" class="t-center auto" style="max-width: 400px; padding:10px; display:none;">
		<div id="openContent" class="auto t-center" style="margin:10px; padding:10px;">
			<button id="openAll" class="btn-h40r pa-2em ma-r-1em">모두 열기</button>
			<button id="foldAll" class="btn-h40r pa-2em">모두 접기</button>
			<br><br>
			<span id="level0" class="select-h40r w100pro d-block big-text3">기본입력정보</span>
				<div id="content0-1" style="display:none;" class="jsonv textarea-r-6 w100pro big-text3 ma-t-dot5"></div>
					<script id="temp0-1" type="text/x-handlebars-template">
					{{#each .}}
						<div class="ma-t-dot5 big-text3"><b>카테고리</b> - {{cate}}</div>
						<div class="ma-t-dot5 big-text3"><b>입력한 형태</b> : {{shape}}</div>
						<div class="ma-t-dot5 big-text3"><b>입력한 사이즈</b> : {{size}}</div>
						<div class="ma-t-dot5 big-text3"><b>입력한 코멘트</b> : {{comment}}</div>
						<hr class="ma-t-1em"/>
						<div>
							<div class="bold big-text ma-t-dot5">참고 견본 사진<div> 
							<img src="/displayFile?fullName={{img}}" class="ma-t-dot5 ma-b-1em" width=150 height=100/>
						</div>
					{{/each}}					
					</script>
					<br>
			<span id="level1" class="select-h40r w100pro d-block big-text3 ">1단계</span>
				<div id="content1-1"  style="display:none;" class="jsonv textarea-r-6 w100pro big-text3 ma-t-dot5"></div>
					<script id="temp1-1" type="text/x-handlebars-template">
					{{#each .}}
						<div class="ma-t-dot5 big-text3"><b>카테고리</b> - {{product_name}}</div>
						<div class="ma-t-dot5 big-text">
							<div day={{day}} work_date={{work_date}}><b class="big-text">예정 완료일</b> : {{work_date}}</div>
						</div>
					{{/each}}					
					</script>
					
					<div id="content1-2" style="display:none;" class="jsonv textarea-r-6 w100pro big-text3 ma-t-dot5"></div>
					<script id="temp1-2" type="text/x-handlebars-template">
					{{#each .}}
						<div class="ma-t-dot5 big-text3"><b>공정명칭</b> : {{name}}</div>
						<div class="ma-t-dot5 big-text3"><b>필요한 재료명</b> : {{material}}</div>
						<div class="ma-t-dot5 big-text3"><b>입력한 사이즈</b> : {{size}}</div>
						<div class="ma-t-dot5 big-text3"><b>입력한 코멘트</b> : {{comment}}</div>
						<hr class="ma-t-1em"/>
						<div>
							<div class="bold big-text ma-t-dot5">업체로 전송한 참고사진<div> 
							<img src="/displayFile?fullName={{img}}" class="ma-t-dot5 ma-b-1em" width=150 height=100/>
						</div>

					<div>
						<button id="btnAgree" class="btn-h40r w70pro d-i-b ma-b-dot5">진행동의여부 확인</button> 
						<div id="agree1" style="display:none; font-weight: 400;"> 
							<span class="big-text">진행동의여부 내용</span>
							<span class="big-text ma-b-1em"><input type="checkbox" id="agreeChk1" disabled/>동의</span>
						</div>
					</div>

					<div class="ma-b-1em"></div>
					{{/each}}
					</script>
					
					<br>
		<span id="level2" class="select-h40r w100pro d-block big-text3 ">2단계</span>
			<div id="content2-1"  style="display:none;" class="jsonv textarea-r-6 w100pro big-text3 ma-t-dot5"></div>
				<script id="temp2-1" type="text/x-handlebars-template">
					{{#each .}}
						<div class="ma-t-dot5 big-text3"><b>카테고리</b> - {{product_name}}</div>						
					{{/each}}
				</script>
				
				<div id="content2-2"  style="display:none;" class="jsonv textarea-r-6 w100pro big-text3 ma-t-dot5"></div>
				<script id="temp2-2" type="text/x-handlebars-template">
					{{#each .}}
						<div class="ma-t-dot5 big-text3"><b>공정명칭</b> : {{name}}</div>
						<div class="ma-t-dot5 big-text3"><b>필요한 재료명</b> : {{material}}</div>
					<div class="ma-b-1em"></div>
					<div>
						<button id="btnAgree2" class="btn-h40r w70pro d-i-b ma-b-dot5 pa-t-1em">진행동의여부 확인</button> 
						<div id="agree2" style="display:none; font-weight: 400;"> 
							<span class="big-text">진행동의여부 내용</span>
							<span class="big-text ma-b-1em"><input type="checkbox" id="agreeChk2" disabled/>동의</span>
						</div>
					</div>

					<div class="ma-b-1em"></div>

					{{/each}}
				</script>

					<br>
		<span id="level3" class="select-h40r w100pro d-block big-text3 ">3단계</span>
			<div id="content3-1"  style="display:none;" class="jsonv textarea-r-6 w100pro big-text3 ma-t-dot5"></div>
				<script id="temp3-1" type="text/x-handlebars-template">
					{{#each .}}
						<div class="ma-t-dot5 big-text3"><b>카테고리</b> - {{product_name}}</div>
					{{/each}}
				</script>
				
				<div id="content3-2"  style="display:none;" class="jsonv textarea-r-6 w100pro big-text3 ma-t-dot5"></div>
				<script id="temp3-2" type="text/x-handlebars-template">
					{{#each .}}
						<div class="ma-t-dot5 big-text3"><b>공정명칭</b> : {{name}}</div>
						<div class="ma-t-dot5 big-text3"><b>필요한 재료명</b> : {{material}}</div>
						<div class="ma-t-dot5 big-text3"><b>외부 사이즈</b> : {{outer-size}}</div>
						<div class="ma-t-dot5 big-text3"><b>내부 사이즈</b> : {{inner-size}}</div>
						<div class="ma-t-dot5 big-text3"><b>입력한 두께</b> : {{thick-size}}</div>
						<div class="ma-t-dot5 big-text3"><b>입력한 코멘트</b> : {{comment}}</div>
						<hr class="ma-t-1em"/>
						<div>
							<div class="bold big-text ma-t-dot5">업체로 전송한 참고사진<div> 
							<img src="/displayFile?fullName={{img}}" class="ma-t-dot5" width=150 height=100/>
						</div>

						<div>
							<button id="btnAgree3" class="btn-h40r w70pro d-i-b ma-b-dot5 ma-t-1em">진행동의여부 확인</button> 
							<div id="agree3" style="display:none; font-weight: 400;"> 
								<span class="big-text">진행동의여부 내용</span>
								<span class="big-text ma-b-1em"><input type="checkbox" id="agreeChk3" disabled/>동의</span>
							</div>
						</div>

					<div class="ma-b-1em"></div>
					{{/each}}
				</script>
				
				<br>
		<span id="level4" class="select-h40r w100pro d-block big-text3 ">4단계</span>
			<div id="content4-1"  style="display:none;" class="jsonv textarea-r-6 w100pro big-text3 ma-t-dot5"></div>
				<script id="temp4-1" type="text/x-handlebars-template">
					{{#each .}}
						<div class="ma-t-dot5 big-text3"><b>카테고리</b> - {{product_name}}</div>
					{{/each}}
				</script>
				
				<div id="content4-2"  style="display:none;" class="jsonv textarea-r-6 w100pro big-text3 ma-t-dot5"></div>
				<script id="temp4-2" type="text/x-handlebars-template">
					{{#each .}}
						<div class="ma-t-dot5 big-text3"><b>공정명칭</b> : {{name}}</div>
						<div class="ma-t-dot5 big-text3"><b>필요한 재료명</b> : {{material}}</div>


					<div class="ma-b-1em"></div>
					<div>
						<button id="btnAgree4" class="btn-h40r w70pro d-i-b ma-b-dot5 pa-t-1em">진행동의여부 확인</button> 
						<div id="agree4" style="display:none; font-weight: 400;"> 
							<span class="big-text">진행동의여부 내용</span>
							<span class="big-text ma-b-1em"><input type="checkbox" id="agreeChk4" disabled/>동의</span>
						</div>
					</div>

					<div class="ma-b-1em"></div>
					{{/each}}
				</script>
				
				<br>
		<span id="level5" class="select-h40r w100pro d-block big-text3 ">5단계</span>
			<div id="content5-1"  style="display:none;" class="jsonv textarea-r-6 w100pro big-text3 ma-t-dot5"></div>
				<script id="temp5-1" type="text/x-handlebars-template">
					{{#each .}}
						<div class="ma-t-dot5 big-text3"><b>카테고리</b> - {{product_name}}</div>
					{{/each}}

				</script>
				<div id="content5-2"  style="display:none;" class="jsonv textarea-r-6 w100pro big-text3 ma-t-dot5"></div>
				<script id="temp5-2" type="text/x-handlebars-template">
					{{#each .}}
						<div class="ma-t-dot5 big-text3"><b>공정명칭</b> : {{name}}</div>
						<div class="ma-t-dot5 big-text3"><b>필요한 재료명</b> : {{material}}</div>


					<div class="ma-b-1em"></div>
					<div>
						<button id="btnAgree5" class="btn-h40r w70pro d-i-b ma-b-dot5 pa-t-1em">진행동의여부 확인</button> 
						<div id="agree5" style="display:none; font-weight: 400;"> 
							<span class="big-text">진행동의여부 내용</span>
							<span class="big-text ma-b-1em"><input type="checkbox" id="agreeChk5" disabled/>동의</span>
						</div>
					</div>

					<div class="ma-b-1em"></div>
					{{/each}}
				</script>
				
				<br>
		<span id="level6" class="select-h40r w100pro d-block big-text3 ">6단계</span>
			<div id="content6-1"  style="display:none;" class="jsonv textarea-r-6 w100pro big-text3 ma-t-dot5"></div>
				<script id="temp6-1" type="text/x-handlebars-template">
					{{#each .}}
						<div class="ma-t-dot5 big-text3"><b>카테고리</b> - {{product_name}}</div>
					{{/each}}
				</script>
				
				<div id="content6-2"  style="display:none;" class="jsonv textarea-r-6 w100pro big-text3 ma-t-dot5"></div>
				<script id="temp6-2" type="text/x-handlebars-template">
					{{#each .}}
						<div class="ma-t-dot5 big-text3"><b>공정명칭</b> : {{name}}</div>
						<div class="ma-t-dot5 big-text3"><b>필요한 재료명</b> : {{material}}</div>

					<div class="ma-b-1em"></div>
					<div>
						<button id="btnAgree6" class="btn-h40r w70pro d-i-b ma-b-dot5 pa-t-1em">진행동의여부 확인</button> 
						<div id="agree6" style="display:none; font-weight: 400;"> 
							<span class="big-text">진행동의여부 내용</span>
							<span class="big-text ma-b-1em"><input type="checkbox" id="agreeChk6" disabled/>동의</span>
						</div>
					</div>

					<div class="ma-b-1em"></div>
					{{/each}}
				</script>			
					
				<br>
		<span id="level7" class="select-h40r w100pro d-block big-text3 ">7단계</span>
			<div id="content7-1"  style="display:none;" class="jsonv textarea-r-6 w100pro big-text3 ma-t-dot5"></div>
				<script id="temp7-1" type="text/x-handlebars-template">
					{{#each .}}
						<div class="ma-t-dot5 big-text3"><b>카테고리</b> - {{product_name}}</div>
					{{/each}}
				</script>
				
				<div id="content7-2"  style="display:none;" class="jsonv textarea-r-6 w100pro big-text3 ma-t-dot5"></div>
				<script id="temp7-2" type="text/x-handlebars-template">
					{{#each .}}
						<div class="ma-t-dot5 big-text3"><b>공정명칭</b> : {{name}}</div>
						<div class="ma-t-dot5 big-text3"><b>필요한 재료명</b> : {{material}}</div>

					<div class="ma-b-1em"></div>
					<div>
						<button id="btnAgree7" class="btn-h40r w70pro d-i-b ma-b-dot5 pa-t-1em">진행동의여부 확인</button> 
						<div id="agree7" style="display:none; font-weight: 400;"> 
							<span class="big-text">진행동의여부 내용</span>
							<span class="big-text ma-b-1em"><input type="checkbox" id="agreeChk7" disabled/>동의</span>
						</div>
					</div>

					<div class="ma-b-1em"></div>
					{{/each}}
				</script>
									
				<br>
		<span id="level8" class="select-h40r w100pro d-block big-text3 ">8단계</span>
			<div id="content8-1"  style="display:none;" class="jsonv textarea-r-6 w100pro big-text3 ma-t-dot5"></div>
				<script id="temp8-1" type="text/x-handlebars-template">
					{{#each .}}
						<div class="ma-t-dot5 big-text3"><b>카테고리</b> - {{product_name}}</div>
					{{/each}}
				</script>
				
				<div id="content8-2"  style="display:none;" class="jsonv textarea-r-6 w100pro big-text3 ma-t-dot5"></div>
				<script id="temp8-2" type="text/x-handlebars-template">
					{{#each .}}
						<div class="ma-t-dot5 big-text3"><b>공정명칭</b> : {{name}}</div>
						<div class="ma-t-dot5 big-text3"><b>필요한 재료명</b> : {{material}}</div>

					<div class="ma-b-1em"></div>
					<div>
						<button id="btnAgree8" class="btn-h40r w70pro d-i-b ma-b-dot5 pa-t-1em">진행동의여부 확인</button> 
						<div id="agree8" style="display:none; font-weight: 400;"> 
							<span class="big-text">진행동의여부 내용</span>
							<span class="big-text ma-b-1em"><input type="checkbox" id="agreeChk8" disabled/>동의</span>
						</div>
					</div>

					<div class="ma-b-1em"></div>
					{{/each}}
				</script>
				
				<br>
		<span id="level9" class="select-h40r w100pro d-block big-text3 ">9단계</span>
			<div id="content9-1"  style="display:none;" class="jsonv textarea-r-6 w100pro big-text3 ma-t-dot5"></div>
				<script id="temp9-1" type="text/x-handlebars-template">
					{{#each .}}
						<div class="ma-t-dot5 big-text3"><b>카테고리</b> - {{product_name}}</div>		
					{{/each}}
				</script>
				
				<div id="content9-2"  style="display:none;" class="jsonv textarea-r-6 w100pro big-text3 ma-t-dot5"></div>
				<script id="temp9-2" type="text/x-handlebars-template">
					{{#each .}}
						<div class="ma-t-dot5 big-text3"><b>공정명칭</b> : {{name}}</div>
						<div class="ma-t-dot5 big-text3"><b>필요한 재료명</b> : {{material}}</div>
						<div class="ma-t-dot5 big-text3"><b>입력한 사이즈</b> : {{size}}</div>
						<div class="ma-t-dot5 big-text3"><b>입력한 코멘트</b> : {{comment}}</div>
						<img src="">

					<div class="ma-b-1em"></div>
					<div>
						<button id="btnAgree9" class="btn-h40r w70pro d-i-b ma-b-dot5 pa-t-1em">진행동의여부 확인</button> 
						<div id="agree9" style="display:none; font-weight: 400;"> 
							<span class="big-text">진행동의여부 내용</span>
							<span class="big-text ma-b-1em"><input type="checkbox" id="agreeChk9" disabled/>동의</span>
						</div>
					</div>

					<div class="ma-b-1em"></div>
					{{/each}}
				</script>
				
				<br>
		<span id="level10" class="select-h40r w100pro d-block big-text3 ">10단계</span>
			<div id="content10-1"  style="display:none;" class="jsonv textarea-r-6 w100pro big-text3 ma-t-dot5"></div>
				<script id="temp10-1" type="text/x-handlebars-template">
					{{#each .}}
						<div class="ma-t-dot5 big-text3"><b>카테고리</b> - {{product_name}}</div>
					{{/each}}
				</script>
				
				<div id="content10-2"  style="display:none;" class="jsonv textarea-r-6 w100pro big-text3 ma-t-dot5"></div>
				<script id="temp10-2" type="text/x-handlebars-template">
					{{#each .}}
						<div class="ma-t-dot5 big-text3"><b>공정명칭</b> : {{name}}</div>
						<div class="ma-t-dot5 big-text3"><b>필요한 재료명</b> : {{material}}</div>
						<div class="ma-t-dot5 big-text3"><b>입력한 사이즈</b> : {{size}}</div>
						<div class="ma-t-dot5 big-text3"><b>입력한 코멘트</b> : {{comment}}</div>
						<img src="">

					<div class="ma-b-1em"></div>
					<div>
						<button id="btnAgree10" class="btn-h40r w70pro d-i-b ma-b-dot5 pa-t-1em">진행동의여부 확인</button> 
						<div id="agree10" style="display:none; font-weight: 400;"> 
							<span class="big-text">진행동의여부 내용</span>
							<span class="big-text ma-b-1em"><input type="checkbox" id="agreeChk10" disabled/>동의</span>
						</div>
					</div>

					<div class="ma-b-1em"></div>
					{{/each}}
				</script>
				
		</div>
	</div>
	
	<!------------------------------------------------------------------------------------------------>
	
      <div class="w100pro d-table pa-2em auto" style="max-width: 600px;">
      	<form name="frm" class="w100pro d-table auto">
      		<label><input type="radio" name="type" value="샘플"/><span class="big-text2 ma-r-1em">샘플만 신청</span></label>
			<label><input type="radio" name="type" value="수량" checked/><span class="big-text2">주문 수량대로 신청</span></label>
			<br/><br/>
			<span class="big-text2 bold">제작수량&nbsp;</span><input type="text" id="quantity" class="input-h40r w100pro big-text3 ma-t-dot5 t-left bold" placeholder="수량"/>
			
			<br/><br/>
			
			<span class="big-text2 bold">배송지</span>&nbsp;&nbsp;
			<input type=button id="addressList" class="btn-h40r w15pro ma-t-dot5 bold" data-div="1" value="주소록">
			<br/><input type="text" name="address" class="input-h40r w100pro big-text3 ma-t-dot5 t-left ma-r-dot5" value="${avo.address1} ${avo.address2} (${avo.post_code})">
			<br/><input type="text" class="input-h40r w100pro big-text3 ma-t-dot5 t-left ma-r-dot5" id="mainTel" value="${avo.tel}">
			<br/><input type="text" class="input-h40r w100pro big-text3 ma-t-dot5 t-left ma-r-dot5" id="mainName" value="${avo.address_name}">
			
			
			<div class="d-table w100pro ma-t-2em"></div>
			
			<div class="d-table w100pro auto t-center" style="max-width: 400px;">
				<input type="button" id="boryu" class="d-table-cell btn-h40r w40pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-dot5 ma-r-dot5" value="주문보류" />
				<input type="submit" id="submit" class="d-table-cell btn-h40r w40pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-dot5" value="주문하기" />
			</div>
      	</form>
      </div>
      
      <!------------------------------------------------------------------------------------------------>
      
      <div class="d-table w100pro ma-t-2em"></div>
      
      <div id="sample" class="w100pro d-table auto t-center" style="max-width:400px;">
     
      
      	<table class="w100pro d-table" style="max-width:400px;">
      		<tr>
      			<td>
      				이름
      			</td>
      			<td>
      				<input type="text" class="address_name input-h40r w100pro big-text3" value="${avo.address_name}">
      			</td>
      		</tr>
      		<tr>
      			<td>
      				주소
      			</td>
      			<td>
      				<input type="text" class="address input-h40r w100pro big-text3" value="${avo.address1} ${avo.address2} (${avo.post_code})">
      				<button class="addUpdate" data-div="2">수정</button>
      			</td>
      		</tr>
      		<tr>
      			<td>
      				연락처
      			</td>
      			<td>
      				<input type="text" class="purchase_tel input-h40r w100pro big-text3" value="${avo.tel}">	
      			</td>
      		</tr>
      		<tr>
      			<td>
      				이메일
      			</td>
      			<td>
      				<input type="text" class="purchase_email input-h40r w100pro big-text3" value="${userInfo.user_email}">
      			</td>
      		</tr>
      		<tr>
      			<td>
      				배송 메시지
      			</td>
      			<td>
      				<input type="text" class="purchase_comment input-h40r w100pro big-text3" placeholder="배송 시 요청사항을 입력해 주세요" size=40/>
      			</td>
      		</tr>
      	</table>
      	
      	
		<div class="payment auto" style="max-width:500px; margin-top:10px; padding:10px;">
		  결제수단
		  <br/><input type="radio" name="purchase_payType" class="purchase_payType" value="1" checked/>신용카드
			   <input type="radio" name="purchase_payType" class="purchase_payType" value="2"/>실시간 계좌
			   <input type="radio" name="purchase_payType" class="purchase_payType" value="3"/>무통장 입금
		   <table border=1>
		   		<tr>
		   			<td>상품 금액</td>
		   			<td><input type="text" class="total_price input-h40r w100pro big-text3" value="50000" readonly/></td>
		   		</tr>
		   		<tr>
		   			<td>원본 가공비</td>
		   			<td><input type="text" class="original input-h40r w100pro big-text3" value="60000" readonly/></td>
		   		</tr>
		   		<tr>
		   			<td>배송비</td>
		   			<td><input type="text" class="shippingFee input-h40r w100pro big-text3" value="3500" readonly/></td>
		   		</tr>
		   		<tr>
		   			<td>총 결제금액</td>
		   			<td><input type="text" class="purchase_total input-h40r w100pro big-text3" value="53500" readonly/></td>
		   		</tr>
		   </table>
		  </div>
		 	  <button class="reset">결제취소</button>
			  <button class="payCheck">주문결제</button>
      </div>
      
      <div id="manufacture" class="w100pro d-table t-center auto pa-2em">
	       <hr/>
	       
	       <div class="d-table w100pro ma-t-3em"></div> 
	       <div class="big-text d-i-b bold ma-b-1em">수취인 정보</div>
      	<table class="auto w100pro pa-1em" style="max-width: 600px;">
      		<tr>
      			<td class="big-text2">
      				이름
      			</td>
      			<td>
      				<input type="text" class="address_name input-h40r w100pro big-text3" value="${avo.address_name}">
      			</td>
      		</tr>
      		<tr>
      			<td class="big-text2">
      				주소
      			</td>
      			<td>
      				<input type="text" class="address input-h40r w100pro big-text3 ma-r-dot5 ma-b-dot5" value="${avo.address1} ${avo.address2} (${avo.post_code})">
      				<button class="addUpdate btn-h40r pa-2em" data-div="2">수정</button>
      			</td>
      		</tr>
      		<tr>
      			<td class="big-text2">
      				연락처
      			</td>
      			<td>
      				<input type="text" class="purchase_tel input-h40r w100pro big-text3" value="${avo.tel}">	
      			</td>
      		</tr>
      		<tr>
      			<td class="big-text2">
      				이메일
      			</td>
      			<td>
      				<input type="text" class="purchase_email input-h40r w100pro big-text3" value="${userInfo.user_email}">
      			</td>
      		</tr>
      		<tr>
      			<td class="big-text2" style="width: 100px">
      				요청사항
      			</td>
      			<td>
      				<input type="text" class="purchase_comment input-h40r w100pro big-text3" placeholder="배송 시 요청사항을 입력해 주세요" size=40/>
      			</td>
      		</tr>
      	</table>		
      	
      	<div class="d-table w100pro ma-t-2em"></div> 
      	
		<div class="payment d-table w100pro auto" style="max-width: 600px;"><br/>
			<div class="big-text d-i-b bold ma-b-1em">결제수단</div>
			<div class="ma-b-1em big-text2 auto">
				<input type="radio" name="purchase_payT" class="purchase_payType" value="1" checked/>신용카드
				<input type="radio" name="purchase_payT" class="purchase_payType" value="2"/>실시간 계좌
				<input type="radio" name="purchase_payT" class="purchase_payType" value="3"/>무통장 입금
			</div>
		  <table class="auto w100pro">
		   		<tr>
		   			<td class="big-text2">상품 금액</td>
		   			<td><input type="text" class="total_price input-h40r w100pro big-text2 no-border bold" readonly/></td>
		   		</tr>
		   		<tr>
		   			<td class="big-text2">원본 가공비</td>
		   			<td><input type="text" class="original input-h40r w100pro big-text2 no-border bold" value="60000" readonly/></td>
		   		</tr>
		   		<tr>
		   			<td class="big-text2">배송비</td>
		   			<td><input type="text" class="shippingFee input-h40r w100pro big-text2 no-border bold" value="3500" readonly/></td>
		   		</tr>
		   		<tr>
		   			<td class="big-text2" style="width: 150px">총 결제금액</td>
		   			<td><input type="text" class="purchase_total input-h40r w100pro big-text2 no-border bold" readonly/></td>
		   		</tr>
		   </table>
			<div class="d-table w100pro ma-t-2em"></div>     
			<div class="d-table w100pro auto t-center" style="max-width: 400px;">
				<input type="button" id="btnPrev" class="reset d-table-cell btn-h40r w40pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-dot5 ma-r-dot5" value="결제취소" />
				<input type="button" id="btnNext" class="payCheck d-table-cell btn-h40r w40pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-dot5" value="주문결제" />
			</div>
		  </div>
      </div>      

   
   
   	<div class="hide">
   	cart_seq:<input type="hidden" id="cart_seq" value=""/>
	상품총액:<span id="sum"></span><br/>
    user_address_seq:<span id="user_address_seq">${avo.user_address_seq}</span><br/>
    order_address_seq:<span id="order_address_seq">${avo.user_address_seq}</span><br/>
    </div>
    
    
</div>



<script type="text/javascript">
	
</script>
<script type="text/javascript">
	var cart_seq = "<%= request.getParameter("cart_seq") %>";
	var user_seq = "<%= session.getAttribute("user_seq") %>";
	var type = $("input[name='type']:checked").val();
	var quantity = $("#quantity").val();
	
	$("#cart_seq").val(cart_seq);
	//$("#sum").hide();
	//getList();	
	
	$("#sample").hide();
	$("#manufacture").hide();

	$(frm).on("click", "#addressList", function(){
		
		var div2 = this.dataset["div"];
		window.open("/address/Poplist?user_seq="+user_seq+"&div="+div2,"주소록","width=900, height=500, top=200, left=900");
	});
	
	$("#sample").on("click", ".addUpdate", function(){
		var div2 = this.dataset["div"];
		window.open("/address/Poplist?user_seq="+user_seq+"&div="+div2,"주소록","width=900, height=500, top=200, left=900");
	});
	
	$("#manufacture").on("click", ".addUpdate", function(){
		var div2 = this.dataset["div"];
		window.open("/address/Poplist?user_seq="+user_seq+"&div="+div2,"주소록","width=900, height=500, top=200, left=900");
	});	
	
	
	//주문하기 클릭 시
	   var show = 0;
	   $(frm).on("submit", function(e){
	      if(show == 0){
	         e.preventDefault();
	         
	         type = $("input[name='type']:checked").val();
	         quantity = $("#quantity").val();
	         if(quantity==""|| quantity==null){
	            alert("수량을 입력해주세요"); return;
	         }

	         if(type=="샘플"){
	            $("#sample").show();
	            $("#manufacture").hide();
	            $.ajax({
	               type:"post",
	               url:"/order/insertOrder",
	               data:{"type":type, "quantity":quantity, "cart_seq":cart_seq},
	               success:function(data){   
	                  alert(data);
	                  $.ajax({
	                     type:"get",
	                     url:"/cart/sum.json",
	                     data:{"cart_seq":cart_seq},
	                     dataType:"json",
	                     success:function(data){
	                         $("#sum").html(data);
	                               var sum = $("#sum").html();
	                              $("#sample .total_price").val(sum * quantity);
	                                 var total_price = parseInt($("#sample .total_price").val());
	                                 var shippingFee = parseInt($("#sample .shippingFee").val());
	                                 var original = parseInt($("#sample .original").val());
	                              $("#sample .purchase_total").val(total_price + shippingFee + original);
	                     },
	                     error: function(xhr, ajaxSettings, thrownError) 
	                        {
	                            alert("수정하는데 오류가 발생하였습니다.");
	                        },
	                     complete: function()
	                        {
	                        
	                        }
	                  });
	                  //alert(data);
	                  //alert(cart_seq);
	                  /*
	                  if(data=='success'){
	                   alert("성공");
	                  } else {
	                   alert()
	                  }
	                  */
	               },   
	               error : function(xhr, ajaxSettings, thrownError) 
	                  {
	                      alert("수정하는데 오류가 발생하였습니다.");
	                  },
	               complete : function()
	                  {
	                  
	                  }
	            });
	         }else if(type=="수량"){
	            $("#manufacture").show();
	            $("#sample").hide();   

	            
	            $.ajax({
	               type:"post",
	               url:"/order/insertOrder",
	               data:{"type":type, "quantity":quantity, "cart_seq":cart_seq},
	               success:function(data){
	                  //alert(data);
	                  $.ajax({
	                     type:"get",
	                     url:"/cart/sum.json",
	                     data:{"cart_seq":cart_seq},
	                     dataType:"json",
	                     success:function(data){
	                            $("#sum").html(data);
	                            var sum = $("#sum").html();
	                           $("#manufacture .total_price").val(sum * quantity);
	                              var total_price = parseInt($("#manufacture .total_price").val());
	                              var shippingFee = parseInt($("#manufacture .shippingFee").val());
	                              var original = parseInt($("#manufacture .original").val());
	                           $("#manufacture .purchase_total").val(total_price + shippingFee + original);
	                        },
	                     error: function(xhr, ajaxSettings, thrownError) 
	                        {
	                            alert("수정하는데 오류가 발생하였습니다.");
	                        },
	                     complete: function()
	                        {
	                        
	                        }
	                  });
	                  //alert(data);
	                  //alert(cart_seq);
	                  /*
	                  if(data=='success'){
	                   alert("성공");
	                  } else {
	                   alert()
	                  }
	                  */
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
	         show = 1;
	      }else {
	         e.preventDefault();
	         $("#submit").prop("disabled", true);
	      }   
	   });
	
	//보류 버튼 클릭 시
	$(frm).on("click", "#boryu", function(){
		type = "보류";
		quantity = $("#quantity").val();

		$.ajax({
			type:"post",
			url:"/order/insertOrder",
			data:{"type":type, "quantity":quantity, "cart_seq":cart_seq},
			success:function(){}			
		});		
	});
	
	$("#sample").on("click", ".payCheck", function(){
		//alert("테스트");
		var purchase_payType = $("input[name='purchase_payType']:checked").val();
		//alert(purchase_payType);
		if(purchase_payType=="1"){
			window.open("/order/sample/card?user_seq="+user_seq,"카드결제","width=900, height=500, top=200, left=900")
		}else if(purchase_payType=="2"){
			window.open("/order/sample/account?user_seq="+user_seq,"계좌결제","width=900, height=500, top=200, left=900")
		}else if(purchase_payType=="3"){
			window.open("/order/sample/nonAccount?user_seq="+user_seq,"무통장입금","width=900, height=500, top=200, left=900")
		}				
	});
	
	$("#manufacture").on("click", ".payCheck", function(){
		var purchase_payType = $("input[name='purchase_payT']:checked").val();

		if(purchase_payType=="1"){
			window.open("/order/manufacture/card?user_seq="+user_seq,"카드결제","width=900, height=500, top=200, left=900")
		}else if(purchase_payType=="2"){
			window.open("/order/manufacture/account?user_seq="+user_seq,"계좌결제","width=900, height=500, top=200, left=900")
		}else if(purchase_payType=="3"){
			window.open("/order/manufacture/nonAccount?user_seq="+user_seq,"무통장입금","width=900, height=500, top=200, left=900")
		}
	});	
	
	/*
	//한 사용자의 주문했던 목록을 뿌려줌
	function getList(){
		var all_work="";
		$.ajax({			
			type:"get",
			url:"/cart/list.json",
			data:{"user_seq":user_seq, "all_work":all_work},
			dataType:"json",
			success:function(data){
				var temp=Handlebars.compile($("#temp").html());
                $("#cart").html(temp(data));
                if(data==''){
                	alert("주문 가능한 내역이 없습니다.");
                	return;
                }
                
            }
		});
	}
	*/
	getInfo();
	function getInfo(){
    	//var invisible = "${cvo.cart06}";
    	//alert(invisible);
    	//alert(cart_seq);
    	$.ajax({
    		type:"get",
    		url:"/cart/read",
    		dataType:"json",
    		data:{"cart_seq":cart_seq},
    		success:function(data){
    			var cart00=data.cart_seq;
    			var cart01=data.cart01;
    			var cart02=data.cart02;
    			var cart03=data.cart03;
    			var cart04=data.cart04;
    			var cart05=data.cart05;
    			var cart06=data.cart06;
    			var cart07=data.cart07;
    			var cart08=data.cart08;
    			var cart09=data.cart09;
    			var cart10=data.cart10;
    			
    			$("#contents").show();
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
    				if(cart09){
    					getList9_1();
    					getList9_2();
    					
    					$("#content9-1").show();
    					$("#content9-2").show();
    					
    				}
    				if(cart10){
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
    			 // * 0_1 : cart table의 cart_desc 필드의 json 데이터(주문 시 최초 입력 내용들)을 파싱해서 불러옴
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
    			 
    			 // * n_1() : OptionContentVO로 한 공정과 관련한 정보들을 불러옴 
    			 // * n_2() : 한 공정에서 사용자가 입력한 내용(cart_option, json)을 불러옴
    			 // * n_3() : 한 공정에서 업체가 제작완료하고 사용자에게 보내는 완료사진들과 코멘트 내용(factual_review table)을 불러옴
    			 // * getReply() : n_3() 내용에 대해 사용자가 업체쪽으로 보내는 코멘트 내용을 불러옴
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
    						$("#content1-3").hide();
    						level1=0;
    					 }
    					
    				 });
    			 }else{
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
    						
    						var work=result[0].work;
    						if(work==1){
    							getList1_3();
    							$("#content1-3").show();
    						}
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
    						$("#content2-3").hide();
    						level2=0;
    					 }
    					
    				 });
    			 }if(!cart02){
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
    						//해당 공정 작업이 완료되었을 경우에만 contentn-3이 보이게함
    						var work=result[0].work;
    						if(work==1){
    							getList2_3();
    							$("#content2-3").show();
    						}
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
    						$("#content3-3").hide();
    						level3=0;
    					 }
    					
    				 });
    			 }if(!cart03){
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
    						//해당 공정 작업이 완료되었을 경우에만 contentn-3이 보이게함
    						var work=result[0].work;
    						if(work==1){
    							getList3_3();
    							$("#content3-3").show();
    						}
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
    						$("#content4-3").hide();
    						level4=0;
    					 }
    					
    				 });
    			}if(!cart04){
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
    						//해당 공정 작업이 완료되었을 경우에만 contentn-3이 보이게함
    						var work=result[0].work;
    						if(work==1){
    							getList4_3();
    							$("#content4-3").show();
    						}
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
    						$("#content5-3").hide();
    						level5=0;
    					 }
    					
    				 });
    			}if(!cart05){
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
    						//해당 공정 작업이 완료되었을 경우에만 contentn-3이 보이게함
    						var work=result[0].work;
    						if(work==1){
    							getList5_3();
    							$("#content5-3").show();
    						}
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
    						$("#content6-3").hide();
    						level6=0;
    					 }
    				 });
    			}if(!cart06){
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
    						//해당 공정 작업이 완료되었을 경우에만 contentn-3이 보이게함
    						var work=result[0].work;
    						if(work==1){
    							getList6_3();
    							$("#content6-3").show();
    						}
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
    						$("#content7-3").hide();
    						level7=0;
    					 }
    					
    				 });
    			}if(!cart07){
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
    						//해당 공정 작업이 완료되었을 경우에만 contentn-3이 보이게함
    						var work=result[0].work;
    						if(work==1){
    							getList7_3();
    							$("#content7-3").show();
    						}
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
    						$("#content8-3").hide();
    						level8=0;
    					 }
    					
    				 });
    			}if(!cart08){
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
    						//해당 공정 작업이 완료되었을 경우에만 contentn-3이 보이게함
    						var work=result[0].work;
    						if(work==1){
    							getList8_3();
    							$("#content8-3").show();
    						}
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
    						$("#content9-3").hide();
    						level9=0;
    					 }
    					
    				 });
    				 
    			}
    			if(!cart09){
    				//alert("..");
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
    						//해당 공정 작업이 완료되었을 경우에만 contentn-3이 보이게함
    						var work=result[0].work;
    						if(work==1){
    							getList9_3();
    							$("#content9-3").show();
    						}
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
    						$("#content10-3").hide();
    						level10=0;
    					 }
    					
    				 });
    			}
    			if(!cart10){
    				//alert("...");
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
    						//해당 공정 작업이 완료되었을 경우에만 contentn-3이 보이게함
    						var work=result[0].work;
    						if(work==1){
    							getList10_3();
    							$("#content10-3").show();
    						}
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
    		}
    	});
    };	
	
</script>


	  <!------------------------------------------- index contents end //---------------------------->
	  
	  
	  
	  
	  <br/><br/><br/><br/>
	   
		<jsp:include page="/WEB-INF/views/layout/user/mcontent.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/user/mbot.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/user/mpopup.jsp"></jsp:include>
		
		
		
		
		
		
   </div>

</body>
</html>