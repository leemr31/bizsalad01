<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>

</style>
<body>
<div>
	<span></span>n단계
	<button id="draw">▼</button>
	<div id="drawPage" style="transition-delay:1s; display:none;">
		<div>카테고리명 : </div>
		<div><textarea rows="5" cols="50" placeholder=" 코멘트(댓글 남기기)"></textarea></div>
		<div>
			예정완료일 : <span></span>
			<div id="box1" style="overflow:hidden;">
				<div id="co">코멘트부분</div>
				<div id="img1" style="float:left;"><img src="">img1</div>
				<div id="img2" style="float:left;"><img src="">img2</div>
				<div id="img3" style="float:left;"><img src="">img3</div>
				<div id="imgn" style="float:left;">....</div>
				<br>
				<div >진행동의여부 체크
					<button type="button" id="confirm"> ▶</button>
					<div id="agree" style="display:none;"> 
						<span>진행동의여부 내용</span>
						<input type="checkbox" />동의
					</div>
				</div>
			</div>
			<div id="footer" style="overflow:hidden;">
				<div id="yes" style="float:left;">확인</div>
				<div id="skip" style="float:left;">빠른진행</div>
			</div>
		</div>
	</div>

</div>

</body>
<script>
//진행동의여부 체크버튼 클릭 시 - 아코디언
	var chk=0;
	$("#confirm").on("click",function(){
		if(chk==0){
			$("#agree").show();
			chk=1;
		}else{
			$("#agree").hide();
			chk=0;
		}	
		
	});
//단계 ▲버튼 눌렀을 때
var dChk=0;
$("#draw").on("click",function(){
	
	if(dChk==0){
		$("#drawPage").show();
		$("#draw").html("▲");
		dChk=1;
	}else if(dChk==1){
		$("#drawPage").hide();
		$("#draw").html("▼");
		dChk=0;
	}
	

});
	
</script>