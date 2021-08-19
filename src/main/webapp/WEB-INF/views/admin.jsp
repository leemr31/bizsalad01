<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageName" value="회원가입"/>



<c:if test="${user_id!=null}">
	<script> window.location.href='/admin/main'; </script>
</c:if>
					


<html>
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
    <link href="/resources/css/mobile.css" rel="stylesheet" type="text/css" media="screen and (max-width: 800px)">
    <link href="/resources/css/pc.css" rel="stylesheet" type="text/css" media="screen and (min-width:800px)">
	<link rel="stylesheet" type="text/css" href="/resources/css/style01.css">
	
	<jsp:include page="/WEB-INF/views/layout/user/minclude.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/layout/user/add_css.jsp"></jsp:include>
	
	<title>관리자 대시보드</title>
	
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

	<style>
	

	
</style>

</head>
<body class="bg-f7">

            <div class="w100pro h100pro d-table boder-bbb">
                    <div class="w100pro d-t-cell v-middle">
                        <div class="w100pro d-block adm-border-tb bg-fff">
                            <div class="pa-1em d-table auto w995px">
                                
                                <div class="d-table-cell w40pro pa-r-5em pa-tb-3em v-top">
                                
								    <div class="d-table w100pro t-right">
								        <div class="new-banner2-title2">
								            <p class="big-text"><span class="great-text letter-s-1">BIZSALAD</span><span>!</span></p>
								            <p class="big-text bold letter-s-1">관리자 전용 로그인</p>
								        </div>
								    </div>
                                </div>

                                <div class="d-table-cell w60pro adm-border-rg pa-l-5em pa-tb-2em">
                                	<div class="d-table">

	                                    <div class="ma-t-3em">
	                                        <div class="f-left ma-r-1em">
	                                            <input type="text" name="adm-id" id="adm-id" maxlength="20" class="adm-input d-block ma-b-dot5 letter-s-1" placeholder="아이디">
	                                            <input type="password" name="adm-pw" id="adm-pw" maxlength="20" class="adm-input d-block letter-s-1" placeholder="비밀번호">
	                                        </div>
	                                        <div id="submitbtn" class="adm-button-img">
	                                        	<div id="adm-cnum-add" class="adm-key-mark whitefont">로그인</div>
	                                        </div>  
	                                    </div>           

	                                    <div class="clear"></div>
	                                    
										<!-- <div class="d-block w100pro ma-t-dot5 t-left"><label ><input type="checkbox" name="chkLogin"><span class="big-text3">로그인저장</span></label></div>  -->

                                	</div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
            </div>


				<c:choose>
					<c:when test="${user_type != null}">
						<script> window.location.href='/admin/logout'; </script>
					</c:when>
					<c:when test="${user_id != null}">
						<script> window.location.href='/admin/main'; </script>
					</c:when>
				</c:choose>

<script>

	$("#submitbtn").on("click", function(e) {
		loginAjax();
	});
	
	$("#adm-pw").on("keydown", function(key) {
		if(key.keyCode == 13) loginAjax();
	});
	
	function loginAjax() {

		var chkLogin = $("#chkLogin").is(":checked") ? "true" : "false";
		//alert(chkLogin);

		var uid = $("#adm-id").val();
		var upw = $("#adm-pw").val();

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
					
					if(data.type == 3) {
						alert("관리자 로그인 성공")
						//alert(data.path);
						location.href = "/admin/main";
					} else {
						alert("관리자 아이디가 아닙니다.")
						//alert(data.path);
						location.href = "/admin/logout";
					}
					

				} else {
					alert("비밀번호가 일치하지 않습니다!");
				}
			}
		});
		

	};
</script>

</body>
</html>