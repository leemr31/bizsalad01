<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageName" value="로그인"/>
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
	            <p><span>로그인</span><span>!</span></p>
	            <p></p>
	        </div>
	    </div>
	
	<form action="login" method="post" name="frm" class="d-block auto" style="width:300px;">
		<div id="id-form">
			<input type="text" name="user_id" class=" input-h40r w100pro big-text3" id="user_id" placeholder="이메일">
			<span id="id-prompt"></span>
		</div>
		<div id="pass-form">
			<input type="password" name="user_pass" id="user_pass" class=" input-h40r w100pro big-text3 ma-t-dot5" placeholder="패스워드">
			<span id="pass-prompt"></span>
		</div>
		<div><input type="submit" id="submitbtn" value="로그인" class="d-block btn-h40r w100pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-dot5"/></div>
		<div class="d-block w100pro ma-t-dot5 t-left"><label ><input type="checkbox" name="chkLogin"><span class="big-text3">로그인저장</span></label></div>
		
	</form>

	<div class="d-table w100pro ma-t-3em"></div>
		
	<div class="d-table w100pro auto t-center big-text3">
		<a href="" class="pa-dot5" style="color:#000;">아이디 찾기</a> | <a href="" class="pa-dot5" style="color:#000;">비밀번호 찾기</a> | <a href="/user/insert" class="pa-dot5" style="color:#000;">회원가입</a>
	</div>
	
	<div class="d-table w100pro ma-t-3em"></div>
	
	<div class="d-table w100pro auto t-center" style="width:300px;">
		<a  href="https://kauth.kakao.com/oauth/authorize?client_id=b3817976014a6fc626df458db9415a87&redirect_uri=http%3A%2F%2Fmuzisoft.net%2Fmodoo%2Fkakao_login_callback.php&response_type=code&state=b5dbf25b704cce7feca162465370b3ba"><img src="http://muzisoft.net/modoo/kakao_login_medium_narrow.png" width="285px;" style="margin-bottom:.3em;"></a><br/>
	    <a href="https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=rMBh9bI28C_awCYBO5Aa&redirect_uri=http%3A%2F%2Fmuzisoft.net%2Fmodoo%2Fnaver_login_callback.php&state=10a7ce4f158929d4df476a6c299fe5c2"><img src="/resources/img/naver.png" width="300px"></a><br/>
	    <a href="https://accounts.google.com/o/oauth2/auth?response_type=code&redirect_uri=http%3A%2F%2Fmuzisoft.net%2Fmodoo%2Fgoogle_login_callback.php&client_id=892946190308-ekrlf391jbbnk4bpulhb8biu1pcb63fd.apps.googleusercontent.com&scope=email+profile&access_type=online&approval_prompt=auto"><img src="/resources/img/google.png"></a><br/><br/>

	</div>


<script>

	$(frm).on("submit", function(e) {
		e.preventDefault();
		var chkLogin = $(frm.chkLogin).is(":checked") ? "true" : "false";
		//alert(chkLogin);

		var uid = $(frm.user_id).val();
		var upw = $(frm.user_pass).val();

		if (uid == "" || upw == "") {
			alert("아이디와 비밀번호를 입력하세요!");
			return;
		}

		$.ajax({
			type : "post",
			url : "/user/loginapi",
			data : {
				"user_id" : uid,
				"user_pass" : upw
			},
			success : function(data) {
				if (data.result == 0) {
					alert("아이디가 존재하지 않습니다!");
				} else if (data.result == 2) {
					alert("로그인 성공")
					//alert(data.path);
					location.href = "/";
				} else {
					alert("비밀번호가 일치하지 않습니다!");
				}
			}
		});
	});
</script>



	  <!------------------------------------------- index contents end //---------------------------->
	  </div>
	  
	  <br/><br/><br/><br/>
	   
		<jsp:include page="/WEB-INF/views/layout/user/mcontent.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/user/mbot.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/user/mpopup.jsp"></jsp:include>
		
		
		
		
		
		
   </div>

</body>
</html>