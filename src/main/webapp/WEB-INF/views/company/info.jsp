<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>기업정보 입력</title>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/handlebars@latest/dist/handlebars.js"></script>
</head>
<body>

	<form name="frm" method="post" enctype="multipart/form-data">
		<div>
			<input type="text" value="${company_id }" name="company_email" />
		</div>
		<button id="btn_address" type="button" onclick="showaddr();">주소록
			보기</button>
		<div>
			<input type="text" placeholder="기업명" name="company_name" /> <input
				type="text" placeholder="전화번호" name="company_tel" />
		</div>
		<div id="selectdiv">
			<select id="manufact_01" name="manufact_01">
			</select>
		</div>
		<input type="hidden" value="${ company_seq}" name="company_seq" />
		<div>
			<button id="plus" type="button">+</button>
			<script id="entry-template" type="text/x-handlebars-template">

{{#each .}}
<option value={{manufacture_seq}}>{{manufacture_name}}</option>
{{/each}}

</script>
		</div>
		<div>
			<input type="text" placeholder="url" name="company_url">
		</div>
		<div>
			<img src="http://placehold.it/320x100" id="img" /> <input
				type="file" style="display: none;" id="auth_img" accept="image/*"
				name="auth_img">
		</div>
		<div>
			<input type="file" id="file" name="port_file">
		</div>

		<div id="chkAcnt">
			<div>
				<select name="account_bank_name" class="bankN"></select> <input
					type="text" placeholder="계좌번호" name="account_bank_number">
				<input type="text" name="account_name" placeholder="계좌주">
			</div>
			<div>
				<input type="password" placeholder="비밀번호">
			</div>
		</div>
		<div>
			<input type="submit" value="저장"> <input type="reset"
				value="초기화">
		</div>
	</form>
</body>
<script>
	var cnt = 1;
	function showaddr() {
		window.open("/company/address", "a",
				"width=400, height=300, left=100, top=50");
	}
	$(frm.auth_img).on("change", function() {
		var file = $(frm.auth_img)[0].files[0];
		$("#img").attr("src", URL.createObjectURL(file));
	});
	$.ajax({
		type : "get",
		url : "/company/manulist",
		success : function(data) {
			var source = $("#entry-template").html();

			//핸들바 템플릿 컴파일
			var template = Handlebars.compile(source);
			var html = template(data);

			//생성된 HTML을 DOM에 주입
			$('#manufact_01').append(html);

		}
	});

	$("#img").on("click", function() {
		$("#auth_img").click();
	})

	$("#plus").on("click", function() {
		cnt++;
		var select = $("#manufact_01").clone();
		select.attr("name", "manufact_0" + (cnt));
		$("#selectdiv").append(select);
		if (cnt >= 5) {
			$("#plus").hide();
			return;
		}

	})
	var user_seq = "${user_seq}";
	$(document).ready(function() {
		setBank();

	});

	function setBank() {
		var name = [ "국민", "신한", "우리", "하나", "케이뱅크", "카카오", "SC", "농협", "기업" ];
		for (var i = 0; i < name.length; i++) {
			$(".bankN").append(
					"<option value='"+ name[i] +"'>" + name[i] + "</option>");
		}

	}
</script>
</html>