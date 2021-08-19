<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<meta charset="UTF-8">
<title>문의하기</title>
</head>
<body>
<h1>[문의하기]</h1>
	<input type="checkbox" id="secret" value="0">비밀글

<form name="frm"  enctype="multipart/form-data">
	<table border=1>
		<tr>
			<td>
				<select id="key" >
					<option value="">카테고리 선택</option>
					<c:forEach items="${cateList}" var="vo">
						<option value="반지 등${vo.title}">${vo.title}</option>
					</c:forEach>
				</select>
				<input type="text" id="quTitle" placeholder=" 제목 입력" autofocus/>
			</td>
		</tr>
		<tr>
			<td>
				<textarea rows="5" cols="50" placeholder=" 문의 내용을 입력하세요"></textarea>
			</td>
		</tr>
		<tr>
			<td>
				<img src="http://placehold.it/200x150" width=200 id="image"	style="float: left; margin-left: 27px; cursor: pointer;" /> 
				<input type="file" name="image" size=3 accept="image/*"	style="visibility: hidden; float: right;" />
			</td>
		</tr>
		<tr>
			<td>
				<input type="submit" value="저장"/>
				<input type="button" id="btnClose" value="취소" onClick="location.href='/qna'"/>
			</td>
		</tr>
	</table>
</form>
</body>
<script>
//이미지 첨부
	$("#image").on("click",function(){
		$(frm.image).click();
	});
//이미지 미리보기
$(frm.image).on("change",function(){
	var reader=new FileReader();
	reader.onload=function(e){
		$("#image").attr("src", e.target.result);
	}
	reader.readAsDataURL(this.files[0]);
});
$(frm).on("submit",function(e){
	e.preventDefault();
	if(!confirm("문의를 등록하시겠습니까?")) return;
	var secret=$("#secret").val();
	if($("#secret").is(":checked")){
		var secret=1;
	}
	
	
});
</script>
</html>