<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
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
		<div>
			<div id="searchAdd"
				style="border: 1px solid black; width: 100px; height: 30px;">□
				주소 검색</div>
			<div id="writeAdd"
				style="border: 1px solid black; width: 300px; height: 150px;">
				<input type="text" id="addrName" placeholder="이름" size=30 /> <input
					type="text" id="addrTel" placeholder="연락처" size=30 /> <input
					type="text" id="addrPost" placeholder="우편번호" size=30 /> <input
					type="button" class="addSearch" value="검색"
					onclick="execDaumPostcode();"><br /> <input type="text"
					id="txtQuery" placeholder="시도군" size=30 /> <input type="text"
					id="txtQuery2" placeholder="상세주소" size=30 /><br /> <input
					type="text" id="lastId" size=30 style="display: none;" /> <input
					type="button" id="addrInsert" value="주소록 추가" />
			</div>
			<button id="btnUpdate">수정</button>
			<button id="btnDelete">삭제</button>
			<div style="border: 1px solid black;">
				<table id="tbl"></table>
				<script id="temp" type="text/x-handlebars-template">
				<tr>	
					<td>선택</td>			
					<td>이름</td>
					<td>연락처</td>
					<td>주소</td>				
				</tr>
			{{#each .}}
				<tr class="row">	
					<td><input type="radio" name="chk" class="chk"/></td>				
					<td width=150><input type="text" class="addrName" value="{{address_name}}" readonly/></td>
					<td width=200><input type="text" class="addrTel" value="{{tel}}" readonly/></td>		
					<td width=500><input type="text" class="address" value="{{address1}} {{address2}} ({{post_code}})" size=63 readonly/></td>		
					<td width=100 style="display:none;"><input type="text" class="com_address_seq" value="{{com_address_seq}}" readonly/></td>
					<td width=100 style="display:none;"><input type="text" class="upPost" value="{{post_code}}" readonly/></td>
					<td width=100 style="display:none;"><input type="text" class="upAddress1" value="{{address1}}" readonly/></td>
					<td width=100 style="display:none;"><input type="text" class="upAddress2" value="{{address2}}" readonly/></td>			
				</tr>
				<tr class="{{com_address_seq}}" style="display:none;">
					<td colspan=5>
						<div class="updateInfo" style="border:1px solid black; width:300px; height:150px; margin:0px auto;">
						<input type="text" class="upName" placeholder="이름" size=30/>
						<input type="text" class="upTel" placeholder="연락처" size=30/>
						<input type="text" class="upPost" placeholder="우편번호" size=30/>
						<input type="button" class="upSearch" value="검색" onclick="execDaumPostcode2();"><br/>
						<input type="text" class="upQuery" placeholder="시도군" size=30/>
						<input type="text" class="upQuery2" placeholder="상세주소" size=30/><br/>
						<button class="complete">수정완료</button>				
						</div>		
					</td>
				<tr>
			{{/each}}			
			</script>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	var	company_seq= "${company_seq}";	
	
	var saved = 0;
	
	
	//$("#writeAdd").hide();
	
	//주소 검색 클릭 시
	$("#searchAdd").on("click", function(){
		$("#writeAdd").show();
	});

	//우편 번호 input text 클릭 시
	$("#addrPost").on("click", function(){
		//execDaumPostcode();
	});
	
	//주소록 추가 선택 시
	$("#addrInsert").on("click", function(){
		var address_name = $("#addrName").val();
		var tel = $("#addrTel").val();
		var addrPost = $("#addrPost").val()
		var address1 = $("#txtQuery").val();
		var address2 = $("#txtQuery2").val();
		
		if(addrName==""){
			alert("이름을 입력해주세요");
			return;
		}else if(addrTel==""){
			alert("전화번호를 입력해주세요");
			return;
		}else if(addrPost==""){
			alert("주소를 입력해주세요");
			return;
		}else if(txtQuery==""){
			alert("주소를 입력해주세요");
			return;
		}else if(txtQuery2==""){
			alert("주소를 입력해주세요");
			return;
		}
		
		$.ajax({
			type:"post",
			url:"/com/address/insert",
			data:{
				"company_seq":company_seq,
				"address_name":address_name,
				"post_code":addrPost,
				"address1":address1,
				"address2":address2,
				"tel":tel,
				"saved":1
			},
			success:function()
				{
					getList();
				},
			error : function(xhr, ajaxSettings, thrownError) 
			   {
			       alert("수정하는데 오류가 발생하였습니다.");
			   },
			complete : function()
			   {
				
			   }
		});
	});
	
	//주소록 불러오기
	getList();
	
	 function getList(){	
		 $.ajax({				
			type:"get",
			url:"/com/address/list.json",
			data:{"company_seq":company_seq},
			dataType:"json",
			success:function(data){		
				var temp=Handlebars.compile($("#temp").html());
                $("#tbl").html(temp(data));
			}
		});
	 }	
	 


	$("#btnUpdate").on("click", function() {
		var row = $("#tbl .chk:checked").parent().parent();

		var name = row.find(".addrName").val();
		var tel = row.find(".addrTel").val();
		var post = row.find(".upPost").val();
		var address1 = row.find(".upAddress1").val();
		var address2 = row.find(".upAddress2").val();
		var aSeq = row.find(".com_address_seq").val();

		if (name == null) {
			alert("변경 할 주소를 선택해주세요");
			return;
		}
		row.next().attr("style", "display:table-row");

		//var tbl = $("#tbl .chk:checked").parent().parent().parent();

		row.next().find(".upName").val(name);
		row.next().find(".upTel").val(tel);
		row.next().find(".upPost").val(post);
		row.next().find(".upQuery").val(address1);
		row.next().find(".upQuery2").val(address2);

		row.next().find(".upPost").on("click", function() {
			execDaumPostcode2();
		});

		row.next().find(".complete").on("click", function() {

			var aName = row.next().find(".upName").val();
			var aTel = row.next().find(".upTel").val();
			var aPost = row.next().find(".upPost").val();
			var aAddress1 = row.next().find(".upQuery").val();
			var aAddress2 = row.next().find(".upQuery2").val();

			if (aName == "") {
				alert("이름을 입력해주세요");
				return;
			} else if (aTel == "") {
				alert("전화번호를 입력해주세요");
				return;
			} else if (aPost == "") {
				alert("주소를 입력해주세요");
				return;
			} else if (aAddress1 == "") {
				alert("주소를 입력해주세요");
				return;
			} else if (aAddress2 == "") {
				alert("주소를 입력해주세요");
				return;
			}

			$.ajax({
				type : "post",
				url : "/com/address/update",
				data : {
					"com_address_seq" : aSeq,
					"address_name" : aName,
					"address1" : aAddress1,
					"address2" : aAddress2,
					"post_code" : aPost,
					"tel" : aTel
				},
				success : function(data) {
					getList();
				},
				error : function(xhr, ajaxSettings, thrownError) {
					alert("수정하는데 오류가 발생하였습니다.");
				},
				complete : function() {

				}

			});
		});

	});

	//삭제 버튼 클릭 시
	$("#btnDelete").on("click", function() {

		var row = $("#tbl .chk:checked").parent().parent();
		var com_address_seq = row.find(".com_address_seq").val();

		if (com_address_seq == null) {
			alert("삭제 할 항목을 선택해주세요");
			return;
		}
		if (!confirm("선택한 주소를 삭제하시겠습니까?"))
			return;

		$.ajax({
			type : "post",
			url : "/com/address/delete",
			data : {
				"com_address_seq" : com_address_seq
			},
			complete : function() {
				getList();
			}
		});
	});
</script>
<script>
	var addrkakao = "";
	var addrkakao2 = "";

	function execDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var addr = ''; // 주소 변수
				var extraAddr = ''; // 참고항목 변수

				//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					addr = data.roadAddress;
				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					addr = data.jibunAddress;
				}

				// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
				if (data.userSelectedType === 'R') {
					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraAddr += (extraAddr !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraAddr !== '') {
						extraAddr = ' (' + extraAddr + ')';
					}
					// 조합된 참고항목을 해당 필드에 넣는다.
					addrkakao2 = extraAddr;
					$("#txtQuery").val(extraAddr);

				} else {
					addrkakao2 = '';
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.

				addrkakao = addr;
				addrkakao = addr + " " + addrkakao2;
				// 커서를 상세주소 필드로 이동한다.

				$("#addrPost").val(data.zonecode); //우편번호

				$("#txtQuery").val(addrkakao); //주소1

				$("#txtQuery2").css("border", "1px solid #67B8EE"); //주소2 테두리색 변경
				$("#txtQuery2").focus(); //주소2에 포커스
			}
		}).open();
	}

	var addrkakao = "";
	var addrkakao2 = "";

	function execDaumPostcode2() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var addr = ''; // 주소 변수
				var extraAddr = ''; // 참고항목 변수

				//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					addr = data.roadAddress;
				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					addr = data.jibunAddress;
				}

				// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
				if (data.userSelectedType === 'R') {
					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraAddr += (extraAddr !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraAddr !== '') {
						extraAddr = ' (' + extraAddr + ')';
					}
					// 조합된 참고항목을 해당 필드에 넣는다.
					addrkakao2 = extraAddr;
					$(".upQuery").val(extraAddr);

				} else {
					addrkakao2 = '';
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.

				addrkakao = addr;
				addrkakao = addr + " " + addrkakao2;
				// 커서를 상세주소 필드로 이동한다.

				$(".upPost").val(data.zonecode); //우편번호

				$(".upQuery").val(addrkakao); //주소1

				$(".upQuery2").css("border", "1px solid #67B8EE"); //주소2 테두리색 변경
				$(".upQuery2").focus(); //주소2에 포커스
			}
		}).open();
	}
</script>


</html>