<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원정보 입력</title>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/handlebars@latest/dist/handlebars.js"></script>
</head>
<body>

	<form name="frm" method="post">
		<div>
			<input type="hidden" name="user_seq" value="${ user_seq}"> <input
				type="hidden" name="user_type" value="1"> <input type="text"
				placeholder="이름" name="user_name">
		</div>
		<div>
			<input type="text" placeholder="연락처" name="user_tel">
		</div>
		<div>
			<button id="btn_address" type="button" onclick="showaddr();">주소록
				보기</button>
		</div>
		<div>
			<input type="text" placeholder="이메일" name="user_email">
		</div>
		<div>
			<input type="text" placeholder="나이" name="user_age">
		</div>
		<div>
			<select id="user_gender" name="user_gender"></select>
		</div>
		<div>
			<input name=paytype type="checkbox" id="acnt">통장
			<div id="chkAcnt">
				<div>
					<input type="hidden" name="account_name"> <select
						class="bankN" name="account_bank_name"></select> <input
						type="text" placeholder="계좌번호" name="account_bank_number">
				</div>
			</div>
		</div>
		<div>
			<button type="button" onClick="showcard();">카드목록 보기</button>
		</div>
		<div>
			<input type="submit" value="저장"> <input type="reset"
				value="초기화">
		</div>
	</form>
</body>
<script>
	function showaddr() {
		window.open("/user/address", "a",
				"width=400, height=300, left=100, top=50");
	}

	function showcard() {
		window.open("/card/list", "a",
				"width=400, height=300, left=100, top=50");
	}
	$(document).ready(function() {
		setDateBox();
		setBank();
		setGender();

	});

	$(frm).on("submit", function(e) {
		e.preventDefault();
		if ($("#acnt").is(":checked")) {
			frm.action = "/user/acnt";
			frm.submit();
			return;
		}

		frm.submit();
	});

	function doOpenCheck(chk) {
		var obj = document.getElementsByName("paytype");
		for (var i = 0; i < obj.length; i++) {
			if (obj[i] != chk) {
				obj[i].checked = false;
			}
		}
	}

	function setBank() {
		var name = [ "국민", "신한", "우리", "하나", "케이뱅크", "카카오", "SC", "농협", "기업" ];
		for (var i = 0; i < name.length; i++) {
			$(".bankN").append(
					"<option value='"+ name[i] +"'>" + name[i] + "</option>");
		}

	}

	function setGender() {
		var name = [ "남성", "여성", "그외" ];
		var val = [ "male", "female", "etc" ];
		for (var i = 0; i < name.length; i++) {
			$("#user_gender").append(
					"<option value='"+ val[i] +"'>" + name[i] + "</option>");
		}

	}
	function setDateBox() {
		var dt = new Date();
		var year = "";
		var com_year = dt.getFullYear();
		// 발행 뿌려주기
		$("#YEAR").append("<option value=''>년도</option>");
		// 올해 기준으로 -1년부터 +5년을 보여준다.
		for (var y = (com_year); y <= (com_year + 15); y++) {
			var twoYear = y.toString().substr(2, 2);
			$("#YEAR").append(
					"<option value='"+ twoYear +"'>" + twoYear + "</option>");
		}
		// 월 뿌려주기(1월부터 12월)
		var month;
		$("#MONTH").append("<option value=''>월</option>");
		for (var i = 1; i <= 12; i++) {
			$("#MONTH").append("<option value='"+ i +"'>" + i + "</option>");
		}
	}

	$("#chkCard").css("display", "none");
	$("#chkAcnt").css("display", "none");

	$("#card").on("click", function(e) {
		doOpenCheck(this);
		if ($("#card").is(":checked")) {
			$("#chkCard").css("display", "block");

		} else {
			$("#chkCard").css("display", "none");
		}
		if ($("#acnt").is(":checked")) {
			$("#chkAcnt").css("display", "block");

		} else
			$("#chkAcnt").css("display", "none");

	})

	$("#acnt").on("click", function(e) {
		doOpenCheck(this);
		if ($("#card").is(":checked")) {
			$("#chkCard").css("display", "block");

		} else {
			$("#chkCard").css("display", "none");
		}
		if ($("#acnt").is(":checked")) {
			$("#chkAcnt").css("display", "block");

		} else
			$("#chkAcnt").css("display", "none");
	})
</script>
</html>