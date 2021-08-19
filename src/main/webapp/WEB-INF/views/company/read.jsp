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
	            <p><span>업체 정보수정</span><span>!</span></p>
	            <p></p>
	        </div>
	    </div>

	<form name="frm" method="post" enctype="multipart/form-data" class="d-table d-block auto w100pro" style="width:400px;">
		<div>
			<input type="text" value="${ivo.company_email }" name="company_email" class="input-h40r w100pro big-text3 ma-t-dot5" />
		</div>
		<button id="btn_address" class="d-block ma-t-dot5" type="button" onclick="showaddr();">주소록
			보기</button>
		<div>
			<input type="text" placeholder="기업명" name="company_name" class="input-h40r w100pro big-text3 ma-t-dot5"
				value="${ivo.company_name }" /> <input type="text"
				placeholder="전화번호" class="input-h40r w100pro big-text3 ma-t-dot5" name="company_tel" value="${ivo.company_tel }" />
		</div>
		<div id="selectdiv" class="ma-t-dot5">
			<select id="manufact_01" name="manufact_01" class="select-h40r w80pro d-i-b big-text3 ">
			</select>
			<button id="plus" type="button" class="btn-h40r w15pro ma-l-dot5">+</button>
		</div>
		<input type="hidden" value="${ company_seq}" name="company_seq" />
		<div>
			
			<script id="entry-template" type="text/x-handlebars-template">

{{#each .}}
<option value={{manufacture_seq}}>{{manufacture_name}}</option>
{{/each}}

</script>
		</div>
		<div>
			<input type="text" class="input-h40r w100pro big-text3 ma-t-dot5" placeholder="url" name="company_url"
				value="${pvo.company_url }">
		</div>
		<div class="w100pro ma-t-dot5">
			<img src="http://placehold.it/320x100" id="img" /> <input
				type="file" style="display: none;" id="auth_img" accept="image/*"
				name="auth_img">
		</div>
		<div class="w100pro ma-t-dot5">
			<input type="file" id="file" name="port_file">
		</div>

		<div id="chkAcnt">
			<div>
				<select name="account_bank_name" class="bankN select-h40r w20pro d-i-b big-text3 "></select> 
				<input  class="input-h40r w75pro big-text3 ma-t-dot5 ma-l-dot5"
					type="text" placeholder="계좌번호" name="account_bank_number"
					value="${avo.account_bank_number }"> 
					<input type="text"  class="input-h40r w100pro big-text3 ma-t-dot5"
					name="account_name" placeholder="계좌주" value="${avo.account_name }">
			</div>
			<div>
				<input type="password" placeholder="비밀번호"  class="input-h40r w100pro big-text3 ma-t-dot5">
			</div>
		</div>
		
		<div class="d-table w100pro ma-t-2em"></div>
		
		<div class="d-table w100pro auto t-center">
			<input type="submit" value="수정" class="btn-h40r w40pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-dot5 ma-r-dot5">
			<input type="reset" value="초기화" class="btn-h40r w40pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-dot5 ">
		</div>
	</form>
	
	
	
</div>



<script>
var	company_seq= "${company_seq}";
	var cnt = 1;
	function showaddr() {
		window.open("/com/address/Poplist", "a",
				"width=400, height=300, left=100, top=50");
	}
	var bankn = "${avo.account_bank_name}";
	var manufact = [ "${ivo.manufact_01}", "${ivo.manufact_02}",
			"${ivo.manufact_03}", "${ivo.manufact_04}", "${ivo.manufact_05}" ];

	$(frm.auth_img).on("change", function() {
		var file = $(frm.auth_img)[0].files[0];
		$("#img").attr("src", URL.createObjectURL(file));
	});

	$("#img").on("click", function() {
		$("#auth_img").click();
	})

	$("#plus").on("click", function() {
		cnt++;
		var select = $("#manufact_01").clone();
		select.attr("name", "manufact_0" + (cnt));
		select.attr("id", "manufact_0" + (cnt));
		$("#selectdiv").append(select);
		if (cnt >= 5) {
			$("#plus").hide();
			return;
		}

	});

	function setmanu() {
		$.ajax({
			type : "get",
			url : "/company/manulist",
			success : function(data) {
				var source = $("#entry-template").html();

				//핸들바 템플릿 컴파일
				var template = Handlebars.compile(source);
				var html = template(data);

				//생성된 HTML을 DOM에 주입
				$('#manufact_01').append(html);
				$('#manufact_02').append(html);
				$('#manufact_03').append(html);
				$('#manufact_04').append(html);
				$('#manufact_05').append(html);
				for (var i = 1; i < manufact.length + 1; i++) {
					if (manufact[i] != "" && manufact[i] != null) {
						$("#plus").trigger("click");
						$("#manufact_0" + i).val(manufact[i]).prop("selected",
								true);

					}
				}

			}
		});
	}
	var user_seq = "${user_seq}";
	$(document).ready(function() {
		setBank();
		setmanu();

	});

	function setBank() {
		var name = [ "국민", "신한", "우리", "하나", "케이뱅크", "카카오", "SC", "농협", "기업" ];
		for (var i = 0; i < name.length; i++) {
			$(".bankN").append(
					"<option value='"+ name[i] +"'>" + name[i] + "</option>");
		}
		$(".bankN").val(bankn).prop("selected", true);

	}
</script>

	  <!------------------------------------------- index contents end //---------------------------->
	  
	  
	  <br/><br/><br/><br/>
	   
		<jsp:include page="/WEB-INF/views/layout/com/mcontent.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/com/mbot.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/com/mpopup.jsp"></jsp:include>
		
		
		
		
		
		
   </div>

</body>
</html>