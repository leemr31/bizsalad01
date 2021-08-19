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
	<h1>신고게시판</h1>
	<form name="frm" enctype="multipart/form-data" method="post">
		<input type="text" name="company_seq" value=""/> //히든처리 해야함.
		<input type="text" name="option_seq" value="optn_0000000007"/> //히드처리 해야함.
		<div border=1 width=500>
			<div>
				<input type="text" name="title" placeholder="제목을 입력해주세요" size=48/>
			</div>
			<div>
				<textarea rows="10" cols="50" name="contents" placeholder="내용을 입력해주세요"></textarea>
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
		<input type="submit" value="신고하기"/>
		<input type="reset" value="취소" onclick="location.href='/report/list'"/>
	</form>
</body>
<script>

 var company_seq = "<%= session.getAttribute("company_seq") %>";
 	$(frm.company_seq).val(company_seq);
 
 var option_seq = "<%= request.getParameter("option_seq") %>";
// 	$(frm.option_seq).val(option_seq);
 	
	$(frm).on("submit", function(e){	
		e.preventDefault();
		if(!confirm("신고 내용을 제출하시겠습니까?")) return;
		frm.action = "/report/insert";
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