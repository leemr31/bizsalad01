<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시판</h1>
	<form name="frm" enctype="multipart/form-data" method="post">
		<input type="text" name="user_seq" value=""/> //히든처리 해야함.
		<div border=1 width=500>
			<div style="overflow:hidden;">
				<div style="float:left;">질문유형</div>
				<div style="float:left; margin-left:10px">
					<select name="type">
					<option value="" selected disabled hidden>질문 유형 선택</option>
					<option value="로그인/회원정보">로그인/회원정보</option>
					<option value="취소/교환/반품">취소/교환/반품</option>
					<option value="주문/결제">주문/결제</option>
					<option value="배송 관련">배송 관련</option>
					<option value="제작 관련">제작관련</option>					
					<option value="기타">기타</option>
					</select>					
				</div>
			</div>
			<div>
				<textarea rows="10" cols="50" name="contents"></textarea>
			</div>
			<div>
				<img id="file" src="http://placehold.it/150x120" width=150/> 
				<input type="file" name="image"/>
			</div>
			<div>
				<img id="file2" src="http://placehold.it/150x120" width=150/> 
				<input type="file" name="image2"/>
			</div>	
			<div>
				<img id="file3" src="http://placehold.it/150x120" width=150/> 
				<input type="file" name="image3"/>
			</div>	
			<div>
				<img id="file4" src="http://placehold.it/150x120" width=150/> 
				<input type="file" name="image4"/>
			</div>	
			<div>
				<img id="file5" src="http://placehold.it/150x120" width=150/> 
				<input type="file" name="image5"/>
			</div>			
		</div>
		<input type="submit" value="문의하기"/>
		<input type="reset" value="취소"/>
	</form>
</body>
<script>

 var user_seq = "<%= session.getAttribute("user_seq") %>";
 	$(frm.user_seq).val(user_seq);
 
	$(frm).on("submit", function(e){	
		e.preventDefault();
		if(!confirm("저장할까요?")) return;
		frm.action = "/pqna/insert";
		frm.method = "post";
		frm.submit();
	});
 
	
	//이미지
	$("#file").on("click", function() {
		$(frm.image).click();
	});
	$("#file2").on("click", function() {
		$(frm.image2).click();
	});
	$("#file3").on("click", function() {
		$(frm.image3).click();
	});
	$("#file4").on("click", function() {
		$(frm.image4).click();
	});
	$("#file5").on("click", function() {
		$(frm.image5).click();
	});


	//이미지 미리보기
	$(frm.image).on("change", function() {
		var file = $(frm.image)[0].files[0];
		$("#file").attr("src", URL.createObjectURL(file));
	});
	$(frm.image2).on("change", function() {
		var file = $(frm.image2)[0].files[0];
		$("#file2").attr("src", URL.createObjectURL(file));
	});
	$(frm.image3).on("change", function() {
		var file = $(frm.image3)[0].files[0];
		$("#file3").attr("src", URL.createObjectURL(file));
	});
	$(frm.image4).on("change", function() {
		var file = $(frm.image4)[0].files[0];
		$("#file4").attr("src", URL.createObjectURL(file));
	});
	$(frm.image5).on("change", function() {
		var file = $(frm.image5)[0].files[0];
		$("#file5").attr("src", URL.createObjectURL(file));
	});
</script>
</html>