<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageName" value="회원가입"/>
<html>
<head>
	
	<title>비즈샐러드</title>
	<jsp:include page="/WEB-INF/views/layout/com/minclude.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/layout/com/add_css.jsp"></jsp:include>
	<script src="https://kit.fontawesome.com/787fdd6bc2.js" crossorigin="anonymous"></script>
	
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
		
		
	  <div class="d-table w100pro biz-content-wrap-con">
		
		<!-------------------------------------- index contents start //----------------------------------->
	   
	    <div class="d-table w100pro ma-t-3em"></div>
	    <div class="d-table w100pro t-center">
	        <div class="new-banner2-title2">
	            <p><span>업체 회원가입</span><span>!</span></p>
	            <p>업체회원만 이용이 가능합니다.</p>
	        </div>
	    </div>
	    
	    
	<form action="insert" method="post" name="frm" class="d-block auto" style="width:300px;">
		<div id="id-form">
			<input type="text" class=" input-h40r w100pro big-text3" name="company_id" id="company_id"
				placeholder="이메일"> <span id="id-prompt"></span>
		</div>
		<div id="pass-form">
			<input type="password" class=" input-h40r w100pro big-text3 ma-t-dot3" name="company_pass" id="company_pass"
				placeholder="패스워드">
			<div class="d-table w100pro big-text t-center ma-t-1em">
				<div>
					<span class="big-text t-center" id="pass-prompt-leng">8자 이상&nbsp;&nbsp;<i class="fas fa-times" style='color: #F47B80'></i></span>
				</div>
				<div>
					<span class="big-text t-center" id="pass-prompt-sp">특수문자&nbsp;&nbsp;<i class="fas fa-times" style='color: #F47B80'></i></span>
				</div>
				<div>
					<span class="big-text t-center" id="pass-prompt-up">대문자&nbsp;&nbsp;<i class="fas fa-times" style='color: #F47B80'></i></span>
				</div>
				<div>
					<span class="big-text t-center" id="pass-prompt-dw">소문자&nbsp;&nbsp;<i class="fas fa-times" style='color: #F47B80'></i></span>
				</div>
				<div>
					<span class="big-text t-center" id="pass-prompt-no">숫자&nbsp;&nbsp;<i class="fas fa-times" style='color: #F47B80'></i></span>
				</div>

			</div>
			<input type="password" class=" input-h40r w100pro big-text3 ma-t-1em" id="company_pass_conf" placeholder="패스워드 확인">
			<div>
				<span id="pass-confirm-prompt"></span>
			</div>
		</div>
		<input type="submit" id="submitbtn" value="회원가입" class="d-block btn-h40r w100pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-dot5"/>
	</form>
	
	
	<div class="d-table w100pro ma-t-3em"></div>
	
	    <div class="d-table w100pro t-center">
	        <div class="new-banner2-title2">
	            <p><span>10초 회원가입</span><span>!</span></p>
	            <p></p>
	        </div>
	    </div>
	
	<div class="d-table w100pro auto t-center" style="width:300px;">
		<a href="https://kauth.kakao.com/oauth/authorize?client_id=b3817976014a6fc626df458db9415a87&redirect_uri=http%3A%2F%2Fmuzisoft.net%2Fmodoo%2Fkakao_login_callback.php&response_type=code&state=b5dbf25b704cce7feca162465370b3ba"><img src="http://muzisoft.net/modoo/kakao_login_medium_narrow.png" width="285px;" style="margin-bottom:.3em;"></a><br/>
	    <a href="https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=rMBh9bI28C_awCYBO5Aa&redirect_uri=http%3A%2F%2Fmuzisoft.net%2Fmodoo%2Fnaver_login_callback.php&state=10a7ce4f158929d4df476a6c299fe5c2"><img src="/resources/img/naver.png" width="300px"></a><br/>
	    <a href="https://accounts.google.com/o/oauth2/auth?response_type=code&redirect_uri=http%3A%2F%2Fmuzisoft.net%2Fmodoo%2Fgoogle_login_callback.php&client_id=892946190308-ekrlf391jbbnk4bpulhb8biu1pcb63fd.apps.googleusercontent.com&scope=email+profile&access_type=online&approval_prompt=auto"><img src="/resources/img/google.png"></a><br/><br/>

	</div>
	
	
</div>
<script>
	$("#submitbtn").attr("disabled", true);
	var chkID = null;
	var chkPass = null;
	var chkPassconf = null;
	var valdOk = null;
	var dupleOk = null;

	$(frm).on("submit", function(e) {
		e.preventDefault();
		var company_id = $(frm.company_id).val();
		var company_pass = $(frm.company_pass).val();

		if (company_id == "" || company_pass == "") {
			alert("아이디와 비밀번호를 입력하세요!");
			return;
		}

		$.ajax({
			type : "post",
			url : "/company/insert",
			data : {
				"company_id" : company_id,
				"company_pass" : company_pass
			},
			success : function(data) {
				location.href = "/";
			}
		});
	});

	$("#company_id").on("keyup", function(e) {

		var company_id = $(frm.company_id).val();
		var company_pass = $(frm.company_pass).val();

		if (chkEmail(company_id)) {
			$("#id-prompt").html("이메일 검출 완");
			valdOk = true;
		} else {
			$("#id-prompt").html("");
			valdOk = null;
		}
		$.ajax({
			type : "post",
			url : "/company/loginapi",
			data : {
				"company_id" : company_id,
				"company_pass" : company_pass
			},
			success : function(data) {
				if (data.result == 0) {
					dupleOk = true;
				} else {
					dupleOk = null;
				}
				if (!dupleOk) {
					$("#id-prompt").html("중복된 이메일입니다.");
				} else {
					if (dupleOk && valdOk) {
						chkID = true;
						$("#id-prompt").html("이메일 검증");
				}else{
						$("#id-prompt").html("");
		               }
				}
				if (chkID && chkPass && chkPassconf) {
					$("#submitbtn").attr("disabled", false);
				}
			}
		});

	});

	$("#company_pass").on(
			"keyup",
			function(e) {
				var company_pass = $(frm.company_pass).val();
				var chkInt = 0;
				if (chkSpecial(company_pass)) {
					$("#pass-prompt-sp").html("특수문자"+"&nbsp;&nbsp;<i class='fas fa-check' style='color: #44A733'></i>");
				} else {
					$("#pass-prompt-sp").html("특수문자"+"&nbsp;&nbsp;<i class='fas fa-times' style='color: #F47B80'></i>");
				}
				if (checkNum(company_pass)) {
					$("#pass-prompt-no").html("숫자"+"&nbsp;&nbsp;<i class='fas fa-check' style='color: #44A733''></i>");
				} else {
					$("#pass-prompt-no").html("숫자"+"&nbsp;&nbsp;<i class='fas fa-times' style='color: #F47B80'></i>");
				}
				if (checkEngUp(company_pass)) {
					$("#pass-prompt-up").html("대문자"+"&nbsp;&nbsp;<i class='fas fa-check' style='color: #44A733''></i>");
				} else {
					$("#pass-prompt-up").html("대문자"+"&nbsp;&nbsp;<i class='fas fa-times' style='color: #F47B80'></i>");
				}
				if (checkEngDown(company_pass)) {
					$("#pass-prompt-dw").html("소문자"+"&nbsp;&nbsp;<i class='fas fa-check' style='color: #44A733''></i>");
				} else {
					$("#pass-prompt-dw").html("소문자"+"&nbsp;&nbsp;<i class='fas fa-times' style='color: #F47B80'></i>");
				}
				if (chklength(company_pass)) {
					$("#pass-prompt-leng").html("8자 이상"+"&nbsp;&nbsp;<i class='fas fa-check' style='color: #44A733''></i>");
				} else {
					$("#pass-prompt-leng").html("8자 이상"+"&nbsp;&nbsp;<i class='fas fa-times' style='color: #F47B80'></i>");
				}

				if (chkSpecial(company_pass) && checkNum(company_pass)
						&& checkEngUp(company_pass)
						&& checkEngDown(company_pass)
						&& chklength(company_pass)) {
					chkPass = true;
				}
				if (chkID && chkPass && chkPassconf) {
					$("#submitbtn").attr("disabled", false);
				}

			});

	$("#company_pass_conf").on("keyup", function(e) {
		var company_pass = $(frm.company_pass).val();
		var passcf = $("#company_pass_conf").val();
		if (company_pass == passcf) {
			$("#pass-confirm-prompt").html("비밀번호가 일치합니다!");
			chkPassconf=true; //20210703 thanksgv
		} else {
			$("#pass-confirm-prompt").html("");
		}
		if (chkID && chkPass && chkPassconf) {
			$("#submitbtn").attr("disabled", false);
		}
	});

	function chklength(str) {
		if (str.length >= 8) {
			return true;
		} else {
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
	   
		<jsp:include page="/WEB-INF/views/layout/com/mcontent.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/com/mbot.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/com/mpopup.jsp"></jsp:include>
		
		
		
		
		
		
   </div>

</body>
</html>