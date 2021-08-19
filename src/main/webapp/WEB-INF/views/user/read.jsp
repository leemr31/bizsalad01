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
	            <p><span>회원정보 수정</span><span>!</span></p>
	            <p></p>
	        </div>
	    </div>

	<form name="frm" method="post" class="d-table d-block auto w100pro" style="width:400px;">
		<div>
			<input type="hidden" name="user_seq" value="${ user_seq}"> <input
				type="text" placeholder="이름" name="user_name" class="input-h40r w100pro big-text3 ma-t-dot5"
				value="${ivo.user_name}" />
		</div>
		<div>
			<input type="text" placeholder="연락처" name="user_tel" class="input-h40r w100pro big-text3 ma-t-dot5"
				value="${ivo.user_tel}" />
		</div>
		<div class="d-block ma-t-dot5 ">
			<button id="btn_address" class="btn-h40r w30pro d-i-b" type="button" onclick="showaddr();">주소록
				보기</button>
		</div>
		<div>
			<input type="text" placeholder="이메일" name="user_email" class="input-h40r w100pro big-text3 ma-t-dot5"
				value="${ivo.user_email}" />
		</div>
		<div>
			<input type="text" placeholder="나이" name="user_age" class="input-h40r w100pro big-text3 ma-t-dot5"
				value="${ivo.user_age}" />
		</div>
		<div>
			<select id="user_gender" name="user_gender" class=" select-h40r w100pro d-block big-text3 ma-t-dot5">
				<option value="male"
					<c:if test="${ ivo.user_gender=='male' }">selected</c:if>>남성</option>
				<option value="female"
					<c:if test="${ ivo.user_gender=='female' }">selected</c:if>>여성</option>
				<option value="etc"
					<c:if test="${ ivo.user_gender=='etc' }">selected</c:if>>그외</option>
			</select>
		</div>
		<div class="d-block ma-t-dot5">
			<input name=paytype type="checkbox" id="acnt">통장
			<div id="chkAcnt">
				<div><input type="hidden" name="account_name">
					<select name="account_bank_name" class="bankN select-h40r w30pro d-i-b big-text3 ma-r-dot5"></select>
					<input type="text" placeholder="계좌번호" name="account_bank_number"  class="input-h40r w60pro big-text3 ma-t-dot5" value="${avo.account_bank_number }" >
				</div>
			</div>
		</div>
		<div>
			<button type="button" class="btn-h40r w30pro d-i-b ma-t-dot5" onClick="showcard();" class="ma-t-dot5">카드목록 보기</button>
		</div>
		
		<div class="d-table w100pro ma-t-2em"></div>
		
		
		<div class="d-table w100pro auto t-center">
			<input type="submit" class="btn-h40r w80pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-dot5 auto">
		</div>
	</form>
</div>
<script>
	var avo = "${avo}";
	var user_seq = "${user_seq}";
	function showaddr() {
		window.open("/user/address", "a",
				"width=950, height=600, left=100, top=50");
	}
	
	function showcard() {
		window.open("/card/list", "a",
				"width=950, height=600, left=100, top=50");
	}

	$(document).ready(function() {
		setDateBox();
		setBank();
		$("#chkAcnt").css("display", "none");
		if (avo != null) {
			$("#acnt").prop("checked", true);
		}
		propacnt();
	});

	$(frm).on("submit", function(e) {
		e.preventDefault();
		if ($("#acnt").is(":checked")) {
			frm.action = "/user/acnt";
			frm.submit();
		} else
			frm.submit();
	})

	function setBank() {
		var name = [ "국민", "신한", "우리", "하나", "케이뱅크", "카카오", "SC", "농협", "기업" ];
		for (var i = 0; i < name.length; i++) {
			$(".bankN").append(
					"<option value='"+ name[i] +"'>" + name[i] + "</option>");
		}

	}

	function setDateBox() {
		var dt = new Date();
		var year = "";
		var com_year = dt.getFullYear();
		// 발행 뿌려주기
		$("#YEAR").append("<option value=''>년도</option>");
		// 올해 기준으로 -1년부터 +5년을 보여준다.
		for (var y = (com_year); y <= (com_year + 15); y++) {
			var twoYear = y.toString().substr(2, 2);
			$("#YEAR").append(
					"<option value='"+ twoYear +"'>" + twoYear + "</option>");
		}
		// 월 뿌려주기(1월부터 12월)
		var month;
		$("#MONTH").append("<option value=''>월</option>");
		for (var i = 1; i <= 12; i++) {
			$("#MONTH").append("<option value='"+ i +"'>" + i + "</option>");
		}
	}

	function propacnt() {
		if ($("#card").is(":checked")) {
			$("#chkCard").css("display", "block");

		} else {
			$("#chkCard").css("display", "none");
		}
		if ($("#acnt").is(":checked")) {
			$("#chkAcnt").css("display", "block");

		} else
			$("#chkAcnt").css("display", "none");
	}

	$("#acnt").on("click", function(e) {
		propacnt();
	})
</script>

	  <!------------------------------------------- index contents end //---------------------------->
	  
	  
	  
	  
	  <br/><br/><br/><br/>
	   
		<jsp:include page="/WEB-INF/views/layout/user/mcontent.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/user/mbot.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/user/mpopup.jsp"></jsp:include>
		
		
		
		
		
		
   </div>

</body>
</html>