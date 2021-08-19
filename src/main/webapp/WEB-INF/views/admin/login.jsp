<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageName" value="로그인"/>

	<jsp:include page="/WEB-INF/views/layout/user/minclude.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/layout/user/add_css.jsp"></jsp:include>
	
	<div id="biz-content-wrap">
		
		
		<!-------------------------------------- index contents start //----------------------------------->
	
	    <div class="d-table w100pro t-center">
	        <div class="new-banner2-title2">
	            <p><span>관리자 전용 로그인</span><span>!</span></p>
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
			<!-- <div class="d-block w100pro ma-t-dot5 t-left"><label ><input type="checkbox" name="chkLogin"><span class="big-text3">로그인저장</span></label></div>  -->
			
		</form>



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
			url : "/user/login",
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
					location.href = "/admin";
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
	   

