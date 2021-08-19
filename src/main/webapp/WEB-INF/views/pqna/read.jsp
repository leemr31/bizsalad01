<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>글</h1>
	<form name="frm" enctype="multipart/form-data" method="post">
		<input type="hidden" name="user_seq" value=""/>
		<input type="hidden" name="pqna_bbs_seq" value="${vo.pqna_bbs_seq }"/>
		<div border=1 width=500>
			<div style="overflow:hidden;">
				<div style="float:left;">질문유형</div>
				
				<!-- 수정 버튼을 누르면 selRead는 hide -->
				<div id="selRead" style="float:left; margin-left:10px">
					<input type="text" value="${vo.type}" readonly/>	
				</div>
				
				<!-- 수정 버튼을 누르면 selUp는 show -->
				<div id="selUp" style="float:left; margin-left:10px">
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
				<textarea rows="10" cols="50" name="contents" readonly>${vo.contents}</textarea>
			</div>
			
			<!-- 수정 버튼을 누르면 showImage는 hide -->
			이미지
			<div id="showImage">
				<c:if test="${vo.file!=null}">
					<img id="show1" src="/displayFile?fullName=${vo.file}" width=150/>
				</c:if>
					<c:if test="${vo.file2!=null}">
					<img id="show2" src="/displayFile?fullName=${vo.file2}" width=150/>
				</c:if>
					<c:if test="${vo.file3!=null}">
					<img id="show3" src="/displayFile?fullName=${vo.file3}" width=150/>
				</c:if>
					<c:if test="${vo.file4!=null}">
					<img id="show4" src="/displayFile?fullName=${vo.file4}" width=150/>
				</c:if>
					<c:if test="${vo.file5!=null}">
					<img id="show5" src="/displayFile?fullName=${vo.file5}" width=150/>
				</c:if>
			</div>
			<!-- 수정 버튼을 누르면 showImage는 show -->
			<div id="updateImage">
				<div>
					<c:if test="${vo.file==null}">
					<img id="file" src="http://placehold.it/150x120" width=150/>
					</c:if>
					<c:if test="${vo.file!=null}">
					<img id="file" src="/displayFile?fullName=${vo.file}" width=150/>
					</c:if>
					<input type="file" name="image"/>
				</div>
				<div>
					<c:if test="${vo.file2==null}">
					<img id="file2" src="http://placehold.it/150x120" width=150/>
					</c:if>
					<c:if test="${vo.file2!=null}">
					<img id="file2" src="/displayFile?fullName=${vo.file2}" width=150/>
					</c:if>
					<input type="file" name="image2"/>
				</div>	
				<div>
					<c:if test="${vo.file3==null}">
					<img id="file3" src="http://placehold.it/150x120" width=150/>
					</c:if>
					<c:if test="${vo.file3!=null}">
					<img id="file3" src="/displayFile?fullName=${vo.file3}" width=150/>
					</c:if>
					<input type="file" name="image3"/>
				</div>	
				<div>
					<c:if test="${vo.file4==null}">
					<img id="file4" src="http://placehold.it/150x120" width=150/>
					</c:if>
					<c:if test="${vo.file4!=null}">
					<img id="file4" src="/displayFile?fullName=${vo.file4}" width=150/>
					</c:if>
					<input type="file" name="image4"/>
				</div>	
				<div>
					<c:if test="${vo.file5==null}">
					<img id="file5" src="http://placehold.it/150x120" width=150/>
					</c:if>
					<c:if test="${vo.file5!=null}">
					<img id="file5" src="/displayFile?fullName=${vo.file5}" width=150/>
					</c:if>
					<input type="file" name="image5"/>
				</div>
			</div>			
		</div>
		<input type="button" id="btnUp" value="수정"/>
		<input type="submit" id="updateComplete" value="완료"/>
		<input type="reset" id="updateCancel" value="취소"/>
		<input type="button" id="btnList" value="목록" onClick="location.href='/pqna/list'"/>
		<input type="button" id="btnDelete" value="삭제"/>
	</form>
	<div id="divReply">
	<hr/>
	<jsp:include page="reply.jsp"/>
	</div>
</body>
<script>
	var user_seq = "<%= session.getAttribute("user_seq") %>";
 	$(frm.user_seq).val(user_seq);

	var type ="";
	$("#updateImage").hide();
	$("#selUp").hide();
	$("#updateComplete").hide();
	$("#updateCancel").hide();

	//수정 버튼 클릭 시
	$("#btnUp").on("click", function(){
		$(frm.contents).prop("readonly",false);
		$("#showImage").hide();
		$("#updateImage").show();
		$("#selRead").hide();
		$("#selUp").show();
		$("#updateComplete").show();
		$("#updateCancel").show();
		$("#btnUp").hide();
		$("#btnList").hide();
		$("#divReply").hide();
	});
	
	//취소 버튼 클릭 시
	$("#updateCancel").on("click", function(){
		$(frm.contents).prop("readonly",true);
		$("#showImage").show();
		$("#updateImage").hide();
		$("#selRead").show();
		$("#selUp").hide();
		$("#updateComplete").hide();
		$("#updateCancel").hide();
		$("#btnUp").show();
		$("#btnList").show();
		$("#divReply").show();

	});
	
	//완료 버튼 클릭 시
	$(frm).on("submit", function(e){	
		e.preventDefault();		
		type= $(frm.type).val();
		if(type=="" || type==null){
			alert("질문 유형을 선택해주세요");
			return;		
		}
		if(!confirm("게시글을 수정 하시겠습니까??")) return;
		frm.action = "/pqna/update";
		frm.method = "post";
		frm.submit();
	});
	
	//삭제 버튼 클릭 시
	$("#btnDelete").on("click", function(e){
		e.preventDefault();
		if(!confirm("게시글을 삭제 하시겠습니까?")) return;
		frm.action = "/pqna/delete";
		frm.method = "post";
		frm.submit();
	});
	
	
	
	
	
	
	/*----------------------------------------------*/
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