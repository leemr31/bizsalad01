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
		.biz-content-wrap-top { max-width:10240px; margin:0 auto; }
		.biz-content-wrap-menu { max-width:1024px; margin:0 auto; }
		
		.biz-content-wrap-slide { max-width:1300px; margin:0 auto; }
		.biz-content-wrap-con { max-width:1300px; margin:0 auto; }
		
		.biz-content-wrap-bmenu-wrap { width:100%; margin:0 auto; border-top:1px solid #000; border-bottom:1px solid #000;}
		.biz-content-wrap-bmenu { max-width:1300px; margin:0 auto; }
		.biz-content-wrap-bottom-wrap { width:100%; margin:0 auto;  background-color:#262636;}
		.biz-content-wrap-bottom { max-width:1300px; margin:0 auto; }
		
		.content-info {
			padding: 0.5em 1em;
		}
		
		.content-info > span {
			display:block;
			font-size: 1.3em;
			font-weight: 600;
			margin-bottom: 1em;
		}
		
		.content-info > textarea {
			border-radius: 6px;
			font-size: 1.2em;
			font-weight: 500;
			padding:0.5em;
			margin-bottom:1em;
			width:100%;
		}
		
		.content-info > div {
			text-align:left;
			font-size: 1.1em;
			padding: 0.1em;
		}
		
		.content-info > div:before {
			content: '⊙';
			margin-right: 0.3em;
		}
		
		.cixx {
			margin-top: 1em;
			border: 1px solid #666;
			border-radius: 6px;
			padding: 1em;
		}
		
		.cixx > div > input {
			width: 78%;
		}
		
		.cixx > div > button {
			width: 20%;
		}
		
		.cixx > button {
			margin-bottom: 1em;
		}
		

		.cixx > div:before {
			content: '';
			margin-right: 0em;
		}
		
		.content-info > button {

			margin-top: 1em !important;
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

	<!-- <div class="ui-loader"><span class="ui-icon-loading"></span></div> -->
	<div class="ui-loader-t"><span class="ui-icon-loading-gr"></span></div>
	
    <!--어두워지는 부분-->
    <div class="dg-hd-mo-menu-panel-overlay"></div>

<div id="biz-content-wrap">
	<div class="big-text t-center pa-1em bold" style="border-bottom:1px solid #000;">작업지시번호(orderseq) : ${vo.oseq}</div>
	<div id="contents" style="margin:10px;padding:10px;">
		<div id="openContent" class="pa-1em t-center">
			<button id="openAll" class="btn-h40r w20pro bold ma-b-2em ma-r-dot5">모두 열기</button>
			<button id="foldAll" class="btn-h40r w20pro bold ma-b-2em">모두 접기</button>
			<br>
			<span id="level0" class="select-h40r w100pro d-block big-text3 ">기본입력정보</span>
				<div id="content0-1" class="content-info" style="display:none;"></div>
					<script id="temp0-1" type="text/x-handlebars-template">
					{{#each .}}
						<div>카테고리 - {{cate}}</div>
						<div>입력한 형태 : {{shape}}</div>
						<div>입력한 사이즈 : {{size}}</div>
						<div>입력한 코멘트 : {{comment}}</div>
						<div>
							참고 견본 사진 : 
							<img src="/displayFile?fullName={{img}}" width=150 height=100/>
						</div>
					{{/each}}
					 
					 
					</script>
					<br>
			<span id="level1" class="select-h40r w100pro d-block big-text3 ">1단계</span>
				<div id="content1-1"  class="content-info" style="display:none;"></div>
					<script id="temp1-1" type="text/x-handlebars-template">
					{{#each .}}
						<div>카테고리 - {{product_name}}</div>
						<div>공정명칭 : {{manufacture_name}}</div>
						<div>재료(단계)명 : {{material_name}}</div>
						<div>단위재료비 : {{material_price}}원</div>
						<div>주문수량 : {{quantity}}개</div>
						<div>주문합계 : {{tot}}원</div>
						<div>담당업체 : {{company_name}}</div>
						<div>카트번호 : {{cart_seq}}</div>
						<div day={{day}} work_date={{work_date}}>예정 완료일 : {{work work_date}} </div>
					{{/each}}
					</script>
					<div id="content1-2"  class="content-info" style="display:none;"></div>
					<script id="temp1-2" type="text/x-handlebars-template">
					{{#each .}}
						<div>입력한 사이즈 : {{size}}</div>
						<div>입력한 코멘트 : {{comment}}</div>
						<div>
							업체로 전송한 참고사진 : 
							<img src="/displayFile?fullName={{img}}" width=150 height=100/>
						</div>
						<div>진행동의여부 확인
						<button id="btnAgree" >▶</button> 
						<div id="agree1" style="display:none;"> 
							<span>진행동의여부 내용</span>
							<input type="checkbox" id="agreeChk1" disabled/>동의
						</div>
					</div>
					<button>해당 단계 정산하기</button>
					{{/each}}
					 
					 
					</script>
					
					<div id="content1-3"  class="content-info cixx" style="display:none;"></div>
					<script id="temp1-3" type="text/x-handlebars-template">
						<span>업체 작업 내용</span>
						{{#each .}}
							<textarea cols="40" rows="5">{{contents}}</textarea>
							<div>
								<img src="/displayFile?fullName={{file}}" file="{{file}}" width=100 height=80>
								<img src="/displayFile?fullName={{file2}}" file="{{file2}}" width=100 height=80>
								<img src="/displayFile?fullName={{file3}}"  file="{{file3}}" width=100 height=80>
								<img src="/displayFile?fullName={{file4}}"  file="{{file4}}" width=100 height=80>
								<img src="/displayFile?fullName={{file5}}"  file="{{file5}}" width=100 height=80>
							</div>
							<button id="facReply1">댓글남기기</button>
							<div id="divReply1" style="display:none">
								<input type="text" id="replytxt1" placeholder=" 댓글 입력란" size="30"/>
								<button id="replyInsert1" fr="{{fr_bbs_seq}}">댓글 등록</button>
							</div>
						{{/each}}
					</script>
					
					<br>
		<span id="level2" class="select-h40r w100pro d-block big-text3 ">2단계</span>
			<div id="content2-1"  class="content-info" style="display:none;"></div>
				<script id="temp2-1" type="text/x-handlebars-template">
					{{#each .}}
						<div>카테고리 - {{product_name}}</div>
						<div>공정명칭 : {{manufacture_name}}</div>
						<div>재료(단계)명 : {{material_name}}</div>
						<div>단위재료비 : {{material_price}}원</div>
						<div>주문수량 : {{quantity}}개</div>
						<div>주문합계 : {{tot}}원</div>
						<div>담당업체 : {{company_name}}</div>
						<div>카트번호 : {{cart_seq}}</div>
						<div day={{day}} work_date={{work_date}}>예정 완료일 : {{work work_date}} </div>
					{{/each}}

				</script>
				<div id="content2-2"  class="content-info" style="display:none;"></div>
				<script id="temp2-2" type="text/x-handlebars-template">
					{{#each .}}
						<div>진행동의여부 확인
						<button id="btnAgree" >▶</button> 
						<div id="agree1" style="display:none;"> 
							<span>진행동의여부 내용</span>
							<input type="checkbox" id="agreeChk1" disabled/>동의
						</div>
					</div>
					<button>해당 단계 정산하기</button>
					{{/each}}
					 
					 
				</script>
				
					<div id="content2-3"  class="content-info cixx" style="display:none;"></div>
					<script id="temp2-3" type="text/x-handlebars-template">
						<span>업체 작업 내용</span>
						{{#each .}}
							<textarea cols="40" rows="5">{{contents}}</textarea>
							<div>
								<img src="/displayFile?fullName={{file}}" width=100 height=80>
								<img src="/displayFile?fullName={{file2}}" width=100 height=80>
								<img src="/displayFile?fullName={{file3}}" width=100 height=80>
								<img src="/displayFile?fullName={{file4}}" width=100 height=80>
								<img src="/displayFile?fullName={{file5}}" width=100 height=80>
							</div>
						<button id="facReply2">댓글남기기</button>
							<div id="divReply2" style="display:none">
								<input type="text" id="replytxt2" placeholder=" 댓글 입력란" size="30"/>
								<button id="replyInsert2" fr="{{fr_bbs_seq}}">댓글 등록</button>
							</div>
						{{/each}}
					</script>
					
					<br>
		<span id="level3" class="select-h40r w100pro d-block big-text3 ">3단계</span>
			<div id="content3-1" class="content-info" style="display:none;"></div>
				<script id="temp3-1" type="text/x-handlebars-template">
					{{#each .}}
						<div>카테고리 - {{product_name}}</div>
						<div>공정명칭 : {{manufacture_name}}</div>
						<div>재료(단계)명 : {{material_name}}</div>
						<div>단위재료비 : {{material_price}}원</div>
						<div>주문수량 : {{quantity}}개</div>
						<div>주문합계 : {{tot}}원</div>
						<div>담당업체 : {{company_name}}</div>
						<div>카트번호 : {{cart_seq}}</div>
						<div day={{day}} work_date={{work_date}}>예정 완료일 : {{work work_date}} </div>
					{{/each}}

				</script>
				<div id="content3-2" class="content-info" style="display:none;"></div>
				<script id="temp3-2" type="text/x-handlebars-template">
					{{#each .}}
						<div>외부 사이즈 : {{outer-size}}</div>
						<div>내부 사이즈 : {{inner-size}}</div>
						<div>입력한 두께 : {{thick-size}}</div>
						<div>입력한 코멘트 : {{comment}}</div>
						<div>
							업체로 전송한 참고사진 : 
							<img src="/displayFile?fullName={{img}}" width=150 height=100/>
						</div>
						<div>진행동의여부 확인
							<button id="btnAgree3" >▶</button> 
							<div id="agree3" style="display:none;"> 
								<span>진행동의여부 내용</span>
								<input type="checkbox" id="agreeChk3" disabled/>동의
							</div>
						</div>
					<button>해당 단계 정산하기</button>
					{{/each}}
					 
					 
				</script>
				
					<div id="content3-3" class="content-info cixx" style="display:none;"></div>
					<script id="temp3-3" type="text/x-handlebars-template">
						<span>업체 작업 내용</span>
						{{#each .}}
							<textarea cols="40" rows="5">{{contents}}</textarea>
							<div>
								<img src="/displayFile?fullName={{file}}" width=100 height=80>
								<img src="/displayFile?fullName={{file2}}" width=100 height=80>
								<img src="/displayFile?fullName={{file3}}" width=100 height=80>
								<img src="/displayFile?fullName={{file4}}" width=100 height=80>
								<img src="/displayFile?fullName={{file5}}" width=100 height=80>
							</div>
						<button id="facReply3">댓글남기기</button>
							<div id="divReply3" style="display:none">
								<input type="text" id="replytxt3" placeholder=" 댓글 입력란" size="30"/>
								<button id="replyInsert3" fr="{{fr_bbs_seq}}">댓글 등록</button>
							</div>
						{{/each}}
					</script>
					
				<br>
		<span id="level4" class="select-h40r w100pro d-block big-text3 ">4단계</span>
			<div id="content4-1" class="content-info" style="display:none;"></div>
				<script id="temp4-1" type="text/x-handlebars-template">
					{{#each .}}
						<div>카테고리 - {{product_name}}</div>
						<div>공정명칭 : {{manufacture_name}}</div>
						<div>재료(단계)명 : {{material_name}}</div>
						<div>단위재료비 : {{material_price}}원</div>
						<div>주문수량 : {{quantity}}개</div>
						<div>주문합계 : {{tot}}원</div>
						<div>담당업체 : {{company_name}}</div>
						<div>카트번호 : {{cart_seq}}</div>
						<div day={{day}} work_date={{work_date}}>예정 완료일 : {{work work_date}} </div>
					{{/each}}
						
					
				</script>
				<div id="content4-2" class="content-info" style="display:none;"></div>
				<script id="temp4-2" type="text/x-handlebars-template">
					{{#each .}}
					<div>진행동의여부 확인
						<button id="btnAgree4" >▶</button> 
						<div id="agree4" style="display:none;"> 
							<span>진행동의여부 내용</span>
							<input type="checkbox" id="agreeChk4" disabled/>동의
						</div>
					</div>
					<button>해당 단계 정산하기</button>
					{{/each}}
					 
					 
				</script>
				
					<div id="content4-3" class="content-info cixx" style="display:none;"></div>
					<script id="temp4-3" type="text/x-handlebars-template">
						<span>업체 작업 내용</span>
						{{#each .}}
							<textarea cols="40" rows="5">{{contents}}</textarea>
							<div>
								<img src="/displayFile?fullName={{file}}" width=100 height=80>
								<img src="/displayFile?fullName={{file2}}" width=100 height=80>
								<img src="/displayFile?fullName={{file3}}" width=100 height=80>
								<img src="/displayFile?fullName={{file4}}" width=100 height=80>
								<img src="/displayFile?fullName={{file5}}" width=100 height=80>
							</div>
						<button id="facReply4">댓글남기기</button>
							<div id="divReply4" style="display:none">
								<input type="text" id="replytxt4" placeholder=" 댓글 입력란" size="30"/>
								<button id="replyInsert4" fr="{{fr_bbs_seq}}">댓글 등록</button>
							</div>
						{{/each}}
					</script>
					
				<br>
		<span id="level5" class="select-h40r w100pro d-block big-text3 ">5단계</span>
			<div id="content5-1" class="content-info" style="display:none;"></div>
				<script id="temp5-1" type="text/x-handlebars-template">
					{{#each .}}
						<div>카테고리 - {{product_name}}</div>
						<div>공정명칭 : {{manufacture_name}}</div>
						<div>재료(단계)명 : {{material_name}}</div>
						<div>단위재료비 : {{material_price}}원</div>
						<div>주문수량 : {{quantity}}개</div>
						<div>주문합계 : {{tot}}원</div>
						<div>담당업체 : {{company_name}}</div>
						<div>카트번호 : {{cart_seq}}</div>
						<div day={{day}} work_date={{work_date}}>예정 완료일 : {{work work_date}} </div>
					{{/each}}
				</script>
				<div id="content5-2" class="content-info" style="display:none;"></div>
				<script id="temp5-2" type="text/x-handlebars-template">
					{{#each .}}
					<div>진행동의여부 확인
						<button id="btnAgree5" >▶</button> 
						<div id="agree5" style="display:none;"> 
							<span>진행동의여부 내용</span>
							<input type="checkbox" id="agreeChk5" disabled/>동의
						</div>
					</div>
					<button>해당 단계 정산하기</button>
					{{/each}}
					 
					 
				</script>
				
					<div id="content5-3" class="content-info cixx" style="display:none;"></div>
					<script id="temp5-3" type="text/x-handlebars-template">
						<span>업체 작업 내용</span>
						{{#each .}}
							<textarea cols="40" rows="5">{{contents}}</textarea>
							<div>
								<img src="/displayFile?fullName={{file}}" width=100 height=80>
								<img src="/displayFile?fullName={{file2}}" width=100 height=80>
								<img src="/displayFile?fullName={{file3}}" width=100 height=80>
								<img src="/displayFile?fullName={{file4}}" width=100 height=80>
								<img src="/displayFile?fullName={{file5}}" width=100 height=80>
							</div>
						<button id="facReply5">댓글남기기</button>
							<div id="divReply5" style="display:none">
								<input type="text" id="replytxt5" placeholder=" 댓글 입력란" size="30"/>
								<button id="replyInsert5" fr="{{fr_bbs_seq}}">댓글 등록</button>
							</div>
						{{/each}}
					</script>
					
				<br>
		<span id="level6" class="select-h40r w100pro d-block big-text3 ">6단계</span>
			<div id="content6-1" class="content-info" style="display:none;"></div>
				<script id="temp6-1" type="text/x-handlebars-template">
					{{#each .}}
						<div>카테고리 - {{product_name}}</div>
						<div>공정명칭 : {{manufacture_name}}</div>
						<div>재료(단계)명 : {{material_name}}</div>
						<div>단위재료비 : {{material_price}}원</div>
						<div>주문수량 : {{quantity}}개</div>
						<div>주문합계 : {{tot}}원</div>
						<div>담당업체 : {{company_name}}</div>
						<div>카트번호 : {{cart_seq}}</div>
						<div day={{day}} work_date={{work_date}}>예정 완료일 : {{work work_date}} </div>
					{{/each}}
				</script>
				<div id="content6-2" class="content-info" style="display:none;"></div>
				<script id="temp6-2" type="text/x-handlebars-template">
					{{#each .}}
					<div>진행동의여부 확인
						<button id="btnAgree6" >▶</button> 
						<div id="agree6" style="display:none;"> 
							<span>진행동의여부 내용</span>
							<input type="checkbox" id="agreeChk6" disabled/>동의
						</div>
					</div>
					<button>해당 단계 정산하기</button>
					{{/each}}
					 
					 
				</script>
				
					<div id="content6-3" class="content-info cixx" style="display:none;"></div>
					<script id="temp6-3" type="text/x-handlebars-template">
						<span>업체 작업 내용</span>
						{{#each .}}
							<textarea cols="40" rows="5">{{contents}}</textarea>
							<div>
								<img src="/displayFile?fullName={{file}}" width=100 height=80>
								<img src="/displayFile?fullName={{file2}}" width=100 height=80>
								<img src="/displayFile?fullName={{file3}}" width=100 height=80>
								<img src="/displayFile?fullName={{file4}}" width=100 height=80>
								<img src="/displayFile?fullName={{file5}}" width=100 height=80>
							</div>
						<button id="facReply6">댓글남기기</button>
							<div id="divReply6" style="display:none">
								<input type="text" id="replytxt6" placeholder=" 댓글 입력란" size="30"/>
								<button id="replyInsert6" fr="{{fr_bbs_seq}}">댓글 등록</button>
							</div>
						{{/each}}
					</script>
					
				<br>
		<span id="level7" class="select-h40r w100pro d-block big-text3 ">7단계</span>
			<div id="content7-1" class="content-info" style="display:none;"></div>
				<script id="temp7-1" type="text/x-handlebars-template">
					{{#each .}}
						<div>카테고리 - {{product_name}}</div>
						<div>공정명칭 : {{manufacture_name}}</div>
						<div>재료(단계)명 : {{material_name}}</div>
						<div>단위재료비 : {{material_price}}원</div>
						<div>주문수량 : {{quantity}}개</div>
						<div>주문합계 : {{tot}}원</div>
						<div>담당업체 : {{company_name}}</div>
						<div>카트번호 : {{cart_seq}}</div>
						<div day={{day}} work_date={{work_date}}>예정 완료일 : {{work work_date}} </div>
					{{/each}}
				</script>
				<div id="content7-2" class="content-info" style="display:none;"></div>
				<script id="temp7-2" type="text/x-handlebars-template">
					{{#each .}}
					<div>진행동의여부 확인
						<button id="btnAgree7" >▶</button> 
						<div id="agree7" style="display:none;"> 
							<span>진행동의여부 내용</span>
							<input type="checkbox" id="agreeChk7" disabled/>동의
						</div>
					</div>
					<button>해당 단계 정산하기</button>
					{{/each}}
					 
					 
				</script>
				
					<div id="content7-3" class="content-info cixx" style="display:none;"></div>
					<script id="temp7-3" type="text/x-handlebars-template">
						<span>업체 작업 내용</span>
						{{#each .}}
							<textarea cols="40" rows="5">{{contents}}</textarea>
							<div>
								<img src="/displayFile?fullName={{file}}" width=100 height=80>
								<img src="/displayFile?fullName={{file2}}" width=100 height=80>
								<img src="/displayFile?fullName={{file3}}" width=100 height=80>
								<img src="/displayFile?fullName={{file4}}" width=100 height=80>
								<img src="/displayFile?fullName={{file5}}" width=100 height=80>
							</div>
						<button id="facReply7">댓글남기기</button>
							<div id="divReply7" style="display:none">
								<input type="text" id="replytxt7" placeholder=" 댓글 입력란" size="30"/>
								<button id="replyInsert7" fr="{{fr_bbs_seq}}">댓글 등록</button>
							</div>
						{{/each}}
					</script>
					
				<br>
		<span id="level8" class="select-h40r w100pro d-block big-text3 ">8단계</span>
			<div id="content8-1" class="content-info" style="display:none;"></div>
				<script id="temp8-1" type="text/x-handlebars-template">
					{{#each .}}
						<div>카테고리 - {{product_name}}</div>
						<div>공정명칭 : {{manufacture_name}}</div>
						<div>재료(단계)명 : {{material_name}}</div>
						<div>단위재료비 : {{material_price}}원</div>
						<div>주문수량 : {{quantity}}개</div>
						<div>주문합계 : {{tot}}원</div>
						<div>담당업체 : {{company_name}}</div>
						<div>카트번호 : {{cart_seq}}</div>
						<div day={{day}} work_date={{work_date}}>예정 완료일 : {{work work_date}} </div>
					{{/each}}
				</script>
				<div id="content8-2" class="content-info" style="display:none;"></div>
				<script id="temp8-2" type="text/x-handlebars-template">
					{{#each .}}
					<div>진행동의여부 확인
						<button id="btnAgree8" >▶</button> 
						<div id="agree8" style="display:none;"> 
							<span>진행동의여부 내용</span>
							<input type="checkbox" id="agreeChk8" disabled/>동의
						</div>
					</div>
					<button>해당 단계 정산하기</button>
					{{/each}}
					 
					 
				</script>
				
					<div id="content8-3" class="content-info cixx" style="display:none;"></div>
					<script id="temp8-3" type="text/x-handlebars-template">
						<span>업체 작업 내용</span>
						{{#each .}}
							<textarea cols="40" rows="5">{{contents}}</textarea>
							<div>
								<img src="/displayFile?fullName={{file}}" width=100 height=80>
								<img src="/displayFile?fullName={{file2}}" width=100 height=80>
								<img src="/displayFile?fullName={{file3}}" width=100 height=80>
								<img src="/displayFile?fullName={{file4}}" width=100 height=80>
								<img src="/displayFile?fullName={{file5}}" width=100 height=80>
							</div>
						<button id="facReply8">댓글남기기</button>
							<div id="divReply8" style="display:none">
								<input type="text" id="replytxt8" placeholder=" 댓글 입력란" size="30"/>
								<button id="replyInsert8" fr="{{fr_bbs_seq}}">댓글 등록</button>
							</div>
						{{/each}}
					</script>
					
				<br>
		<span id="level9" class="select-h40r w100pro d-block big-text3 ">9단계</span>
			<div id="content9-1" class="content-info" style="display:none;"></div>
				<script id="temp9-1" type="text/x-handlebars-template">
					{{#each .}}
						<div>카테고리 - {{product_name}}</div>
						<div>공정명칭 : {{manufacture_name}}</div>
						<div>재료(단계)명 : {{material_name}}</div>
						<div>단위재료비 : {{material_price}}원</div>
						<div>주문수량 : {{quantity}}개</div>
						<div>주문합계 : {{tot}}원</div>
						<div>담당업체 : {{company_name}}</div>
						<div>카트번호 : {{cart_seq}}</div>
						<div day={{day}} work_date={{work_date}}>예정 완료일 : {{work work_date}} </div>
					{{/each}}
				</script>
				<div id="content9-2" class="content-info" style="display:none;"></div>
				<script id="temp9-2" type="text/x-handlebars-template">
					{{#each .}}
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
					<button>해당 단계 정산하기</button>
					{{/each}}
					 
					 
				</script>
				
					<div id="content9-3" class="content-info cixx" style="display:none;"></div>
					<script id="temp9-3" type="text/x-handlebars-template">
						<span>업체 작업 내용</span>
						{{#each .}}
							<textarea cols="40" rows="5">{{contents}}</textarea>
							<div>
								<img src="/displayFile?fullName={{file}}" width=100 height=80>
								<img src="/displayFile?fullName={{file2}}" width=100 height=80>
								<img src="/displayFile?fullName={{file3}}" width=100 height=80>
								<img src="/displayFile?fullName={{file4}}" width=100 height=80>
								<img src="/displayFile?fullName={{file5}}" width=100 height=80>
							</div>
						<button id="facReply9">댓글남기기</button>
							<div id="divReply9" style="display:none">
								<input type="text" id="replytxt9" placeholder=" 댓글 입력란" size="30"/>
								<button id="replyInsert9" fr="{{fr_bbs_seq}}">댓글 등록</button>
							</div>
						{{/each}}
					</script>
					
				<br>
		<span id="level10" class="select-h40r w100pro d-block big-text3 ">10단계</span>
			<div id="content10-1" class="content-info" style="display:none;"></div>
				<script id="temp10-1" type="text/x-handlebars-template">
					{{#each .}}
						<div>카테고리 - {{product_name}}</div>
						<div>공정명칭 : {{manufacture_name}}</div>
						<div>재료(단계)명 : {{material_name}}</div>
						<div>단위재료비 : {{material_price}}원</div>
						<div>주문수량 : {{quantity}}개</div>
						<div>주문합계 : {{tot}}원</div>
						<div>담당업체 : {{company_name}}</div>
						<div>카트번호 : {{cart_seq}}</div>
						<div day={{day}} work_date={{work_date}}>예정 완료일 : {{work work_date}} </div>
					{{/each}}
				</script>
				<div id="content10-2" class="content-info" style="display:none;"></div>
				<script id="temp10-2" type="text/x-handlebars-template">
					{{#each .}}
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
					<button>해당 단계 정산하기</button>
					{{/each}}
					 
					 
				</script>
				
					<div id="content10-3" class="content-info cixx" style="display:none;"></div>
					<script id="temp10-3" type="text/x-handlebars-template">
						<span>업체 작업 내용</span>
						{{#each .}}
							<textarea cols="40" rows="5">{{contents}}</textarea>
							<div>
								<img src="/displayFile?fullName={{file}}" width=100 height=80>
								<img src="/displayFile?fullName={{file2}}" width=100 height=80>
								<img src="/displayFile?fullName={{file3}}" width=100 height=80>
								<img src="/displayFile?fullName={{file4}}" width=100 height=80>
								<img src="/displayFile?fullName={{file5}}" width=100 height=80>
							</div>
						<button id="facReply10">댓글남기기</button>
							<div id="divReply10" style="display:none">
								<input type="text" id="replytxt10" placeholder=" 댓글 입력란" size="30"/>
								<button id="replyInsert10" fr="{{fr_bbs_seq}}">댓글 등록</button>
							</div>
						{{/each}}
					</script>
					
				
				
	</div>
	</div>
	
	

	<div id="move"></div>
</div>
</body>
<script>	//Handlebar helper
//placehold.it - 구현 실패..

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
var cart01="${vo.cart01}";	//첫번째 공정의 option_seq
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
	$("#btnReview").prop("disabled",true);
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
	$("#content1-3").hide();
	$("#content2-1").hide();
	$("#content2-2").hide();
	$("#content2-3").hide();
	$("#content3-1").hide();
	$("#content3-2").hide();
	$("#content3-3").hide();
	$("#content4-1").hide();
	$("#content4-2").hide();
	$("#content4-3").hide();
	$("#content5-1").hide();
	$("#content5-2").hide();
	$("#content5-3").hide();
	$("#content6-1").hide();
	$("#content6-2").hide();
	$("#content6-3").hide();
	$("#content7-1").hide();
	$("#content7-2").hide();
	$("#content7-3").hide();
	$("#content8-1").hide();
	$("#content8-2").hide();
	$("#content8-3").hide();
	$("#content9-1").hide();
	$("#content9-2").hide();
	$("#content9-3").hide();
	$("#content10-1").hide();
	$("#content10-2").hide();
	$("#content10-3").hide();
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
			
			var work=result[0].work;
			//alert(work); 
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
 function getList1_3(){
		$.ajax({
			type:"get",
			url:"/facreviewread",
			dataType:"json",
			data:{"option_seq":cart01},
			success:function(result){
				//result = "["+result+"]";
				//alert(result);
				var temp=Handlebars.compile($("#temp1-3").html());
				$("#content1-3").html(temp(result));
				
				var fr_bbs_seq1=$("#replyInsert1").attr("fr");
				//각 공정에 사용자가 달았던 댓글출력
				getReply();
				function getReply(){
					$.ajax({
						type:"get",
						url:"readfactualreply",
						dataType:"json",
						data:{"fr_bbs_seq":fr_bbs_seq1},
						success:function(result){
							var contents=result[0].contents;
							//alert(contents);
							$("#replytxt1").val(contents);
							$("#replyInsert1").prop("disabled",true);
						}
					});
				}
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
 function getList2_3(){
		$.ajax({
			type:"get",
			url:"/facreviewread",
			dataType:"json",
			data:{"option_seq":cart02},
			success:function(result){
				//result = "["+result+"]";
				//alert(result);
				var temp=Handlebars.compile($("#temp2-3").html());
				$("#content2-3").html(temp(result));
				
				var fr_bbs_seq=$("#replyInsert2").attr("fr");
				//각 공정에 사용자가 달았던 댓글출력
				getReply();
				function getReply(){
					$.ajax({
						type:"get",
						url:"readfactualreply",
						dataType:"json",
						data:{"fr_bbs_seq":fr_bbs_seq},
						success:function(result){
							var contents=result[0].contents;
							//alert(contents);
							$("#replytxt2").val(contents);
							$("#replyInsert2").prop("disabled",true);
						}
					});
				}
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
 function getList3_3(){
		$.ajax({
			type:"get",
			url:"/facreviewread",
			dataType:"json",
			data:{"option_seq":cart03},
			success:function(result){
				//result = "["+result+"]";
				//alert(result);
				var temp=Handlebars.compile($("#temp3-3").html());
				$("#content3-3").html(temp(result));
				
				var fr_bbs_seq=$("#replyInsert3").attr("fr");
				//각 공정에 사용자가 달았던 댓글출력
				getReply();
				function getReply(){
					$.ajax({
						type:"get",
						url:"readfactualreply",
						dataType:"json",
						data:{"fr_bbs_seq":fr_bbs_seq},
						success:function(result){
							var contents=result[0].contents;
							//alert(contents);
							$("#replytxt3").val(contents);
							$("#replyInsert3").prop("disabled",true);
						}
					});
				}
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
function getList4_3(){
	$.ajax({
		type:"get",
		url:"/facreviewread",
		dataType:"json",
		data:{"option_seq":cart04},
		success:function(result){
			//result = "["+result+"]";
			//alert(result);
			var temp=Handlebars.compile($("#temp4-3").html());
			$("#content4-3").html(temp(result));
			
			var fr_bbs_seq=$("#replyInsert4").attr("fr");
			//각 공정에 사용자가 달았던 댓글출력
			getReply();
			function getReply(){
				$.ajax({
					type:"get",
					url:"readfactualreply",
					dataType:"json",
					data:{"fr_bbs_seq":fr_bbs_seq},
					success:function(result){
						var contents=result[0].contents;
						//alert(contents);
						$("#replytxt4").val(contents);
						$("#replyInsert4").prop("disabled",true);
					}
				});
			}
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
function getList5_3(){
	$.ajax({
		type:"get",
		url:"/facreviewread",
		dataType:"json",
		data:{"option_seq":cart05},
		success:function(result){
			//result = "["+result+"]";
			//alert(result);
			var temp=Handlebars.compile($("#temp5-3").html());
			$("#content5-3").html(temp(result));
			
			var fr_bbs_seq=$("#replyInsert5").attr("fr");
			//각 공정에 사용자가 달았던 댓글출력
			getReply();
			function getReply(){
				$.ajax({
					type:"get",
					url:"readfactualreply",
					dataType:"json",
					data:{"fr_bbs_seq":fr_bbs_seq},
					success:function(result){
						var contents=result[0].contents;
						//alert(contents);
						$("#replytxt5").val(contents);
						$("#replyInsert5").prop("disabled",true);
					}
				});
			}
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
function getList6_3(){
	$.ajax({
		type:"get",
		url:"/facreviewread",
		dataType:"json",
		data:{"option_seq":cart06},
		success:function(result){
			//result = "["+result+"]";
			//alert(result);
			var temp=Handlebars.compile($("#temp6-3").html());
			$("#content6-3").html(temp(result));
			
			var fr_bbs_seq=$("#replyInsert6").attr("fr");
			//각 공정에 사용자가 달았던 댓글출력
			getReply();
			function getReply(){
				$.ajax({
					type:"get",
					url:"readfactualreply",
					dataType:"json",
					data:{"fr_bbs_seq":fr_bbs_seq},
					success:function(result){
						var contents=result[0].contents;
						//alert(contents);
						$("#replytxt6").val(contents);
						$("#replyInsert6").prop("disabled",true);
					}
				});
			}
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
function getList7_3(){
	$.ajax({
		type:"get",
		url:"/facreviewread",
		dataType:"json",
		data:{"option_seq":cart07},
		success:function(result){
			//result = "["+result+"]";
			//alert(result);
			var temp=Handlebars.compile($("#temp7-3").html());
			$("#content7-3").html(temp(result));
			
			var fr_bbs_seq=$("#replyInsert7").attr("fr");
			//각 공정에 사용자가 달았던 댓글출력
			getReply();
			function getReply(){
				$.ajax({
					type:"get",
					url:"readfactualreply",
					dataType:"json",
					data:{"fr_bbs_seq":fr_bbs_seq},
					success:function(result){
						var contents=result[0].contents;
						//alert(contents);
						$("#replytxt7").val(contents);
						$("#replyInsert7").prop("disabled",true);
					}
				});
			}
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
function getList8_3(){
	$.ajax({
		type:"get",
		url:"/facreviewread",
		dataType:"json",
		data:{"option_seq":cart08},
		success:function(result){
			//result = "["+result+"]";
			//alert(result);
			var temp=Handlebars.compile($("#temp8-3").html());
			$("#content8-3").html(temp(result));
			
			var fr_bbs_seq=$("#replyInsert8").attr("fr");
			//각 공정에 사용자가 달았던 댓글출력
			getReply();
			function getReply(){
				$.ajax({
					type:"get",
					url:"readfactualreply",
					dataType:"json",
					data:{"fr_bbs_seq":fr_bbs_seq},
					success:function(result){
						var contents=result[0].contents;
						//alert(contents);
						$("#replytxt8").val(contents);
						$("#replyInsert8").prop("disabled",true);
					}
				});
			}
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
function getList9_3(){
	$.ajax({
		type:"get",
		url:"/facreviewread",
		dataType:"json",
		data:{"option_seq":cart09},
		success:function(result){
			//result = "["+result+"]";
			//alert(result);
			var temp=Handlebars.compile($("#temp9-3").html());
			$("#content9-3").html(temp(result));
			
			var fr_bbs_seq=$("#replyInsert9").attr("fr");
			//각 공정에 사용자가 달았던 댓글출력
			getReply();
			function getReply(){
				$.ajax({
					type:"get",
					url:"readfactualreply",
					dataType:"json",
					data:{"fr_bbs_seq":fr_bbs_seq},
					success:function(result){
						var contents=result[0].contents;
						//alert(contents);
						$("#replytxt9").val(contents);
						$("#replyInsert9").prop("disabled",true);
					}
				});
			}
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
function getList10_3(){
	$.ajax({
		type:"get",
		url:"/facreviewread",
		dataType:"json",
		data:{"option_seq":cart10},
		success:function(result){
			//result = "["+result+"]";
			//alert(result);
			var temp=Handlebars.compile($("#temp10-3").html());
			$("#content10-3").html(temp(result));
			
			var fr_bbs_seq=$("#replyInsert10").attr("fr");
			//각 공정에 사용자가 달았던 댓글출력
			getReply();
			function getReply(){
				$.ajax({
					type:"get",
					url:"readfactualreply",
					dataType:"json",
					data:{"fr_bbs_seq":fr_bbs_seq},
					success:function(result){
						var contents=result[0].contents;
						//alert(contents);
						$("#replytxt10").val(contents);
						$("#replyInsert10").prop("disabled",true);
					}
				});
			}
		}
	});
 }
//각 공정 댓글 남기기 버튼클릭
$("#content1-3").on("click","#facReply1",function(){
	$("#divReply1").show();
});
$("#content2-3").on("click","#facReply2",function(){
	$("#divReply2").show();
});
$("#content3-3").on("click","#facReply3",function(){
	$("#divReply3").show();
});
$("#content4-3").on("click","#facReply4",function(){
	$("#divReply4").show();
});
$("#content5-3").on("click","#facReply5",function(){
	$("#divReply5").show();
});
$("#content6-3").on("click","#facReply6",function(){
	$("#divReply6").show();
});
$("#content7-3").on("click","#facReply7",function(){
	$("#divReply7").show();
});
$("#content8-3").on("click","#facReply8",function(){
	$("#divReply8").show();
});
$("#content9-3").on("click","#facReply9",function(){
	$("#divReply9").show();
});
$("#content10-3").on("click","#facReply10",function(){
	$("#divReply10").show();
});
// 댓글등록버튼
$("#content1-3").on("click","#divReply1 #replyInsert1",function(){
	var replytxt=$("#replytxt1").val();
	var fr_bbs_seq=$(this).attr("fr");
	//alert(replytxt+fr_bbs_seq+);
	if(!confirm("해당 공정에 댓글을 등록하시겠습니까?")) return;
	$.ajax({
		type:"post",
		url:"facreviewreply",
		data:{"fr_bbs_seq":fr_bbs_seq, "contents":replytxt},
		success:function(){}
	});
	alert("댓글이 등록되었습니다.");	
});
$("#content2-3").on("click","#divReply2 #replyInsert2",function(){
	var replytxt=$("#replytxt2").val();
	var fr_bbs_seq=$(this).attr("fr");
	//alert(replytxt+fr_bbs_seq+);
	if(!confirm("해당 공정에 댓글을 등록하시겠습니까?")) return;
	$.ajax({
		type:"post",
		url:"facreviewreply",
		data:{"fr_bbs_seq":fr_bbs_seq, "contents":replytxt},
		success:function(){}
	});
	alert("댓글이 등록되었습니다.");	
});
$("#content3-3").on("click","#divReply3 #replyInsert3",function(){
	var replytxt=$("#replytxt3").val();
	var fr_bbs_seq=$(this).attr("fr");
	//alert(replytxt+fr_bbs_seq+);
	if(!confirm("해당 공정에 댓글을 등록하시겠습니까?")) return;
	$.ajax({
		type:"post",
		url:"facreviewreply",
		data:{"fr_bbs_seq":fr_bbs_seq, "contents":replytxt},
		success:function(){}
	});
	alert("댓글이 등록되었습니다.");	
});
$("#content4-3").on("click","#divReply4 #replyInsert4",function(){
	var replytxt=$("#replytxt4").val();
	var fr_bbs_seq=$(this).attr("fr");
	//alert(replytxt+fr_bbs_seq+);
	if(!confirm("해당 공정에 댓글을 등록하시겠습니까?")) return;
	$.ajax({
		type:"post",
		url:"facreviewreply",
		data:{"fr_bbs_seq":fr_bbs_seq, "contents":replytxt},
		success:function(){}
	});
	alert("댓글이 등록되었습니다.");	
});
$("#content5-3").on("click","#divReply5 #replyInsert5",function(){
	var replytxt=$("#replytxt5").val();
	var fr_bbs_seq=$(this).attr("fr");
	//alert(replytxt+fr_bbs_seq+);
	if(!confirm("해당 공정에 댓글을 등록하시겠습니까?")) return;
	$.ajax({
		type:"post",
		url:"facreviewreply",
		data:{"fr_bbs_seq":fr_bbs_seq, "contents":replytxt},
		success:function(){}
	});
	alert("댓글이 등록되었습니다.");	
});
$("#content6-3").on("click","#divReply6 #replyInsert6",function(){
	var replytxt=$("#replytxt6").val();
	var fr_bbs_seq=$(this).attr("fr");
	//alert(replytxt+fr_bbs_seq+);
	if(!confirm("해당 공정에 댓글을 등록하시겠습니까?")) return;
	$.ajax({
		type:"post",
		url:"facreviewreply",
		data:{"fr_bbs_seq":fr_bbs_seq, "contents":replytxt},
		success:function(){}
	});
	alert("댓글이 등록되었습니다.");	
});
$("#content7-3").on("click","#divReply7 #replyInsert7",function(){
	var replytxt=$("#replytxt7").val();
	var fr_bbs_seq=$(this).attr("fr");
	//alert(replytxt+fr_bbs_seq+);
	if(!confirm("해당 공정에 댓글을 등록하시겠습니까?")) return;
	$.ajax({
		type:"post",
		url:"facreviewreply",
		data:{"fr_bbs_seq":fr_bbs_seq, "contents":replytxt},
		success:function(){}
	});
	alert("댓글이 등록되었습니다.");	
});
$("#content8-3").on("click","#divReply8 #replyInsert8",function(){
	var replytxt=$("#replytxt8").val();
	var fr_bbs_seq=$(this).attr("fr");
	//alert(replytxt+fr_bbs_seq+);
	if(!confirm("해당 공정에 댓글을 등록하시겠습니까?")) return;
	$.ajax({
		type:"post",
		url:"facreviewreply",
		data:{"fr_bbs_seq":fr_bbs_seq, "contents":replytxt},
		success:function(){}
	});
	alert("댓글이 등록되었습니다.");	
});
$("#content9-3").on("click","#divReply9 #replyInsert9",function(){
	var replytxt=$("#replytxt9").val();
	var fr_bbs_seq=$(this).attr("fr");
	//alert(replytxt+fr_bbs_seq+);
	if(!confirm("해당 공정에 댓글을 등록하시겠습니까?")) return;
	$.ajax({
		type:"post",
		url:"facreviewreply",
		data:{"fr_bbs_seq":fr_bbs_seq, "contents":replytxt},
		success:function(){}
	});
	alert("댓글이 등록되었습니다.");	
});
$("#content10-3").on("click","#divReply10 #replyInsert10",function(){
	var replytxt=$("#replytxt10").val();
	var fr_bbs_seq=$(this).attr("fr");
	//alert(replytxt+fr_bbs_seq+);
	if(!confirm("해당 공정에 댓글을 등록하시겠습니까?")) return;
	$.ajax({
		type:"post",
		url:"facreviewreply",
		data:{"fr_bbs_seq":fr_bbs_seq, "contents":replytxt},
		success:function(){}
	});
	alert("댓글이 등록되었습니다.");	
});


//(완성본)리뷰쓰기 버튼
$("#btnReview").on("click", function(){
	var oseq="${vo.oseq}";
	//openChild(oseq);
	$("#review-ifm").show();
	$("#ifrm").attr('src', '/review?oseq='+oseq);
	
	var locm = document.querySelector("#move").offsetTop;
	window.scrollTo({top:locm, behavior:'smooth'});
	
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
