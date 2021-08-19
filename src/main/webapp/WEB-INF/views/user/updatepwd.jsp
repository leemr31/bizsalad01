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
		
		
		<div class="d-table w100pro ma-t-3em"></div>
		
	  <div class="d-table w100pro biz-content-wrap-con">
		
		<!-------------------------------------- index contents start //----------------------------------->
	
	    <div class="d-table w100pro t-center">
	        <div class="new-banner2-title2">
	            <p><span>비밀번호 수정</span><span>!</span></p>
	            <p></p>
	        </div>
	    </div>
	    
	    
	    
	<form action="updatepwd" method="post" name="frm" class="d-block auto" style="width:400px;">
		<div id="id-form">
			<input type="text" class=" input-h40r w100pro big-text3" name="user_id" id="user_id" placeholder="이메일">
			<span id="id-prompt"></span>
		</div>
		<div id="pass-form">
			<input type="password" class=" input-h40r w100pro big-text3 ma-t-dot3" name="user_pass" id="user_pass"
				placeholder="패스워드">
			<div class="d-table w100pro big-text t-center ma-t-1em">
				<div>
					<span class="big-text t-center" id="pass-prompt-leng">8자 이상 X</span>
				</div>
				<div>
					<span class="big-text t-center" id="pass-prompt-sp">특수문자 X</span>
				</div>
				<div>
					<span class="big-text t-center" id="pass-prompt-up">대문자 X</span>
				</div>
				<div>
					<span class="big-text t-center" id="pass-prompt-dw">소문자 X</span>
				</div>
				<div>
					<span class="big-text t-center" id="pass-prompt-no">숫자 X</span>
				</div>

			</div>
			<input type="password" class=" input-h40r w100pro big-text3 ma-t-1em" id="user_pass_conf" placeholder="패스워드 확인">
			<div>
				<span id="pass-confirm-prompt"></span>
			</div>
		</div>
		<input type="submit" id="submitbtn" value="비밀번호 수정" class="d-block btn-h40r w100pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-dot5"/>
	</form>
	

	
	
</div>
<script>
	var chkID = true;
	var chkPass = null;
	var chkPassconf=null;
	var valdOk = true;
	var dupleOk = true;

	$("#submitbtn").attr("disabled", true);

	$(frm).on("submit", function(e) {
		e.preventDefault();
		var uid = $(frm.user_id).val();
		var upw = $(frm.user_pass).val();

		if (uid == "" || upw == "") {
			alert("아이디와 비밀번호를 입력하세요!");
			return;
		}

		$.ajax({
			type : "post",
			url : "/user/updatepwd",
			data : {
				"user_id" : uid,
				"user_pass" : upw
			},
			success : function(data) {
				location.href = "/";
			}
		});
	});

	/*
	$("#user_id").on("keyup", function(e) {

		var id = $(frm.user_id).val();
		var upw = $(frm.user_pass).val();

		if (chkEmail(id)) {
			$("#id-prompt").html("이메일 검출 완");
			valdOk = true;
		} else {
			$("#id-prompt").html("");
			valdOk = null;
		}
		$.ajax({
			type : "post",
			url : "/user/login",
			data : {
				"user_id" : id,
				"user_pass" : upw
			},
			success : function(data) {
				if (data.result == 0) {
					dupleOk = true;

				} else {
					dupleOk = null;
				}
			}
		});
		if (!dupleOk) {
			$("#id-prompt").html("중복된 이메일입니다.");
		} else {
			$("#id-prompt").html("");
		}

		if (dupleOk && valdOk) {
			chkID = true;
			$("#id-prompt").html("이메일 검증");
		}
		if(chkID&&chkPass&&chkPassconf){
			$("#submitbtn").attr("disabled", false);
		}

	});
	*/

	$("#user_pass").on("keyup", function(e) {
		var pass = $(frm.user_pass).val();
		var chkInt = 0;
		if (chkSpecial(pass)) {
			$("#pass-prompt-sp").html("특수문자 O");
		} else {
			$("#pass-prompt-sp").html("특수문자 X");
		}
		if (checkNum(pass)) {
			$("#pass-prompt-no").html("숫자 O");
		} else {
			$("#pass-prompt-no").html("숫자 X");
		}
		if (checkEngUp(pass)) {
			$("#pass-prompt-up").html("대문자 O");
		} else {
			$("#pass-prompt-up").html("대문자 X");
		}
		if (checkEngDown(pass)) {
			$("#pass-prompt-dw").html("소문자 O");
		} else {
			$("#pass-prompt-dw").html("소문자 X");
		}
		if (chklength(pass)) {
			$("#pass-prompt-leng").html("8자 이상 O");
		} else {
			$("#pass-prompt-leng").html("8자 이상 X");
		}
		
		if(chkSpecial(pass)&&checkNum(pass)&&checkEngUp(pass)&&checkEngDown(pass)&&chklength(pass)){
			chkPass=true;
		}
		if(chkID&&chkPass&&chkPassconf){
			$("#submitbtn").attr("disabled", false);
		}
		
	});

	$("#user_pass_conf").on("keyup", function(e) {
		
		var pass = $(frm.user_pass).val();
		var passcf = $("#user_pass_conf").val();
		if (pass == passcf) {
			$("#pass-confirm-prompt").html("비밀번호가 일치합니다!");
			chkPassconf=true;

		} else {
			$("#pass-confirm-prompt").html("");
		}
		
		if(chkID&&chkPass&&chkPassconf){
			$("#submitbtn").attr("disabled", false);
		}
	});
	
	function chklength(str) {
		if(str.length>=8){
			return true;
		}
		else{
			return false;
		}
		
	}

	function chkEmail(str) {
		var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		if (filter.test(str)) {
			return true;
		} else {
			return false;
		}
	}

	function chkSpecial(str) {
		var special_pattern = (/[`~!@#$%^&*|\\\'\";:\/?]/gi);
		if (special_pattern.test(str) == true) {
			return true;
		} else {
			return false;
		}
	}

	function checkNum(str) {
		const regExp = /[0-9]/;
		if (regExp.test(str)) {
			return true;
		} else {
			return false;
		}
	}
	function checkEngUp(str) {
		const regExp = /[A-Z]/;
		if (regExp.test(str)) {
			return true;
		} else {
			return false;
		}
	}
	function checkEngDown(str) {
		const regExp = /[a-z]/;
		if (regExp.test(str)) {
			return true;
		} else {
			return false;
		}
	}
</script>


	  <!------------------------------------------- index contents end //---------------------------->
	  
	  
	  <br/><br/><br/><br/>
	   
		<jsp:include page="/WEB-INF/views/layout/user/mcontent.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/user/mbot.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/user/mpopup.jsp"></jsp:include>
		
		
		
		
		
		
   </div>

</body>
</html>