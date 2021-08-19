<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="reply"></div>
	<script id="tempReply" type="text/x-handlebars-template">
	{{#each replyList}}
		<div style="overflow:hidden;">
			<div style="float:left;">관리자 | </div>
			<div style="float:left;">&nbsp;&nbsp;{{contents}} | </div>
			<div style="float:left;">&nbsp;&nbsp;{{rp_reply_date}}</div>
			<div style="float:left;">&nbsp;&nbsp;<button class="btnDelete" rp_reply_seq={{rp_reply_seq}}>삭제</button></div>
		</div>
	{{/each}}
	</script>
	<div id="replyInsert" style="margin-bottom:5px;">
		<input type="text" id="txtReply" size=40>
		<button id="btnInsert">댓글쓰기</button>
	</div>
</body>
<script>
var rp_bbs_seq = $(frm.rp_bbs_seq).val();

//댓글 삭제
	$("#reply").on("click", ".btnDelete", function(){
		var rp_reply_seq = $(this).attr("rp_reply_seq");
		if(!confirm("댓글을 삭제 하시겠습니까?")) return;
		$.ajax({
			type:"post",
			url:"/report/replyDelete",
			data:{"rp_reply_seq":rp_reply_seq},
			success:function(){
				alert("댓글이 삭제 되었습니다.");
				getReply();
			}
		});
	});

//댓글 입력
$("#txtReply").on("keydown", function(e){
		if(e.keyCode==13){
			$("#btnInsert").click();
		}
	});
$("#btnInsert").on("click", function(){
	var reply = $("#txtReply").val();
	if(reply==""){
		alert("내용을 입력하세요!");
		return;
	}
	$.ajax({
		type:"post",
		url:"/report/replyInsert",
		data:{"rp_bbs_seq":rp_bbs_seq,"contents":reply},
		success:function(){		
			alert("댓글 등록 및 처리 완료!");
			getReply();
			$("#txtReply").val("");
			$.ajax({
				type:"post",
				url:"/report/updatetype",
				data:{"type":1, "rp_bbs_seq":rp_bbs_seq},
				success:function(){
					
				}
			});
		}
	});
});

getReply();
function getReply(){	
	$.ajax({			
		type:"get",
		url:"reply.json",
		data:{"rp_bbs_seq":rp_bbs_seq},
		dataType:"json",
		success:function(data){
			var tempReply=Handlebars.compile($("#tempReply").html());
            $("#reply").html(tempReply(data));          
        }
     });
  }
</script>
</html>