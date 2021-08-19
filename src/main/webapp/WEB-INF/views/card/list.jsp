<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/resources/css/color.css">
<link rel="stylesheet" type="text/css" href="/resources/css/dev.css">
<link rel="stylesheet" type="text/css" href="/resources/css/env.css">
<link rel="stylesheet" type="text/css" href="/resources/css/font2.css">
<link rel="stylesheet" type="text/css" href="/resources/css/reset.css">

<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<meta charset="UTF-8">
<title>주소</title>
</head>
<body>
	<div id="add_list">
		<div class="d-table w100pro t-center ma-b-2em auto pa-1em">
			<div id="writeAdd" class="d-table w100pro t-center ma-b-1em auto pa-1em" style="width: 300px;">
				<div style="font-size: 2.5em; font-weight: bold;" class="d-table w100pro t-center ma-t-1em ma-b-dot5">카드 목록</div>
				<div>
					 <input type="text" id="card_name" class="input-h40r w100pro big-text3 ma-t-dot5" placeholder="사용자명">
				</div>
				<div>
					 <select id="card_nickname" class="bankN select-h40r w100pro big-text3 ma-t-dot5"></select>
				</div>
				<div>
					<input type="text" id="card_number" class="input-h40r w100pro big-text3 ma-t-dot5" placeholder="카드번호">
				</div>
				<div>
					<input type="text" id="card_cvc" class="input-h40r w100pro big-text3 ma-t-dot5" placeholder="cvc">
				</div>
				<div>
					<input type="password" id="card_password" class="input-h40r w100pro big-text3 ma-t-dot5" placeholder="비밀번호">
				</div>
				<div>
					<select class="card_mm select-h40r w40pro big-text3 ma-t-dot5 ma-r-dot5"></select> <select class="card_yy select-h40r w53pro big-text3 ma-t-dot5"></select>
				</div>
				<div>
					<button id="btnInsert" class="btn-h40r w80pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-1em auto">입력</button>
				</div>
			<div>
				<button id="btnUpdate" class="addSearch btn-h40r w38pro big-text letterdot5 pa-1em rrr template_bg1 ma-r-dot5 ma-t-1em">수정</button>
				<button id="btnDelete" class="addSearch btn-h40r w38pro big-text letterdot5 pa-1em rrr template_bg1 ma-t-1em ma-b-1em">삭제</button>
			</div>
			</div>
			<hr class="hr"/>

			<div>
				<table id="tbl" class="w100pro t-center no-border big-text auto small-text b-b-b"></table>
				<script id="temp" type="text/x-handlebars-template">
				<tr class="row ma-t-1em ma-b-1em">
					<td class="bold big-text" style="padding: 1em 0em;">선택</td>
					<td class="bold big-text">카드성명</td>
					<td class="bold big-text">카드번호</td>
					<td class="bold big-text">은행</td>		
					<td class="bold big-text">cvc</td>	
					<td class="bold big-text">비밀번호</td>			
				</tr>
			{{#each .}}
				<tr class="{{user_card_seq}} row ma-t-1em ma-b-1em">
					<td><input type="radio" name="chk input-h40r w100pro big-text3" class="chk"/></td>
					<td><input type="text" class="card_name input-h40r w100pro big-text3" value={{card_name}}></td>
					<td><input type="text" class="card_number input-h40r w100pro big-text3" value={{card_number}}></td>
					<td><input type="text" class="card_nickname input-h40r w100pro big-text3" value={{card_nickname}}></td>
					<td><input type="password" class="card_cvc input-h40r w100pro big-text3" value={{card_cvc}}></td>
					<td><input type="password" class="card_password input-h40r w100pro big-text3" value={{card_password}}></td>
				<tr>
			{{/each}}			
			</script>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	var user_seq = "${user_seq}";
	getList();
	$(document).ready(function() {
		setDateBox();
		setBank();

	});
	function setBank() {
		var name = [ "국민", "신한", "우리", "하나", "케이뱅크", "카카오", "SC", "농협", "기업" ];
		for (var i = 0; i < name.length; i++) {
			$(".bankN").append(
					"<option value='"+ name[i] +"'>" + name[i] + "</option>");
		}

	}
	function setDateBox() {
		var dt = new Date();
		var year = "";
		var com_year = dt.getFullYear();
		// 발행 뿌려주기
		$(".card_yy").append("<option value=''>년도</option>");
		// 올해 기준으로 -1년부터 +5년을 보여준다.
		for (var y = (com_year); y <= (com_year + 15); y++) {
			var twoYear = y.toString().substr(2, 2);
			$("#card_yy").append(
					"<option value='"+ twoYear +"'>" + twoYear + "</option>");
		}
		// 월 뿌려주기(1월부터 12월)
		var month;
		$(".card_mm").append("<option value=''>월</option>");
		for (var i = 1; i <= 12; i++) {
			$("#card_mm").append("<option value='"+ i +"'>" + i + "</option>");
		}
	}

	function getList() {
		$.ajax({
			type : "get",
			url : "/card/list.json",
			data : {
				"user_seq" : user_seq
			},
			dataType : "json",
			success : function(data) {
				var temp = Handlebars.compile($("#temp").html());
				$("#tbl").html(temp(data));
			}
		});
	}
	$("#btnInsert").on("click", function() {
		var card_name = $("#card_name").val();
		var card_nickname = $("#card_nickname").val();
		var card_number = $("#card_number").val();
		var card_password = $("#card_password").val();
		var card_cvc = $("#card_cvc").val();
		var card_mm = $("#card_mm").val();
		var card_yy = $("#card_yy").val();

		if (card_name == "") {
			alert("카드 명의를 입력하세요");
			return;
		} else if (card_nickname == "") {
			alert("은행을 입력하세요");
			return;
		} else if (card_number == "") {
			alert("카드번호를 입력하세요");
			return;
		} else if (card_password == "") {
			alert("비밀번호를 입력하세요");
			return;
		} else if (card_cvc == "") {
			alert("보안번호를 입력하세요");
			return;
		} else if (card_mm == "") {
			alert("유효월을 입력하세요");
			return;
		} else if (card_mm == "") {
			alert("유효년을 입력하세요");
			return;
		}

		$.ajax({
			type : "post",
			url : "/card/insert",
			data : {
				"user_seq" : user_seq,
				"card_name" : card_name,
				"card_nickname" : card_nickname,
				"card_number" : card_number,
				"card_password" : card_password,
				"card_cvc" : card_cvc,
				"card_mm" : card_mm,
				"card_yy" : card_yy
			},
			complete : function() {
				getList();
			}
		});

	})

	$("#btnUpdate").on("click", function() {
		var row = $("#tbl .chk:checked").parent().parent();
		var user_card_seq=row.attr("class");
		var card_name = row.find(".card_name").val();
		var card_nickname = row.find(".card_nickname").val();
		var card_number = row.find(".card_number").val();
		var card_password = row.find(".card_password").val();
		var card_cvc = row.find(".card_cvc").val();
		if (card_name == "") {
			alert("카드 명의를 입력하세요");
			return;
		} else if (card_nickname == "") {
			alert("은행을 입력하세요");
			return;
		} else if (card_number == "") {
			alert("카드번호를 입력하세요");
			return;
		} else if (card_password == "") {
			alert("비밀번호를 입력하세요");
			return;
		} else if (card_cvc == "") {
			alert("보안번호를 입력하세요");
			return;}
		$.ajax({
			type : "post",
			url : "/card/update",
			data : {
				"user_card_seq" : user_card_seq,
				"card_name" : card_name,
				"card_nickname" : card_nickname,
				"card_number" : card_number,
				"card_password" : card_password,
				"card_cvc" : card_cvc
			},
			complete : function() {
				getList();
			}
		});
	});
	
	$("#btnDelete").on("click", function() {

		var row = $("#tbl .chk:checked").parent().parent();
		var user_card_seq=row.attr("class");

		if (user_card_seq == null) {
			alert("삭제 할 항목을 선택해주세요");
			return;
		}
		if (!confirm("선택한 카드를 삭제하시겠습니까?"))
			return;

		$.ajax({
			type : "post",
			url : "/card/delete",
			data : {
				"user_card_seq" : user_card_seq
			},
			complete : function() {
				getList();
			}
		});
	});
</script>



</html>