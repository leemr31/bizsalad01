<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/resources/css/color.css">
<link rel="stylesheet" type="text/css" href="/resources/css/dev.css">
<link rel="stylesheet" type="text/css" href="/resources/css/env.css">
<link rel="stylesheet" type="text/css" href="/resources/css/font2.css">

<script src="https://kit.fontawesome.com/787fdd6bc2.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
	<title>Chating</title>
	<style>
		*{
			margin:0;
			padding:0;
			outline-style: none;
		}
		/*
		.container{
			width: 500px;
			margin: 0 auto;
			padding: 25px
		}
		*/
		.container h1{
			text-align: left;
			padding: 5px 5px 5px 15px;
			/*border-left: 3px solid #FFBB00;*/
			border-bottom: 1px solid #d8d8d8;
			padding-bottom: 1em;
			margin-bottom: 20px;
		}
		.chating{
			background-color: white;
			width: 500px;
			height: 500px;
			overflow: auto;
		}
		.chating .me{
			color: black;
			text-align: right;
		}
		.chating .others{
			color: black;
			text-align: left;
		}
		/*
		input{
			width: 330px;
			height: 25px;
		}
		*/
		#yourMsg{
			display: none;
		}
		p{
			padding: .5em;
			margin-bottom: .5em;
			border-radius: 4px;
			font-size: 1.3em;
		}
	</style>
</head>

<body>
	<div id="container" class="container pa-1em d-table w100pro t-center auto" style="width: 500px;">
		<h1 class="big-text t-center" style="text-align: center;">채팅</h1>
		<input type="text" id="sessionId" class="hide" value="">
		
		<div id="chating" class="chating" >
		</div>
		
		<div id="yourName">
			<table class="inputTable">
				<tr>
					<th>사용자명</th>
					<th><input type="text" name="userName" id="userName"></th>
					<th><button onclick="chatName()" id="startBtn">이름 등록</button></th>
				</tr>
			</table>
		</div>
		<div id="yourMsg" >
			<table class="inputTable d-table w100pro t-center auto">
				<tr>
					<th><input id="chatting" class="input-h40r w100pro big-text ma-t-dot5 ma-r-dot5" placeholder="메시지를 입력하세요."></th>
					<th><button onclick="send()" id="sendBtn" class="pa-dot6 no-border ma-l-dot5 d-table-cell" style="background: none"><i class="fas fa-paper-plane v-middle" style="font-size: 2em;"></i></button></th>
				</tr>
			</table>
		</div>
	</div>
</body>
<script type="text/javascript">
	var user_seq =  "<%= session.getAttribute("user_seq") %>";

	var ws;
	wsOpen();
	function wsOpen(){
		ws = new WebSocket("ws://" + location.host + "/chating");
		wsEvt();
	}
		
	function wsEvt() {
		ws.onopen = function(data){
			//소켓이 열리면 동작
		}
		
		ws.onmessage = function(data) {
			//메시지를 받으면 동작
			var msg = data.data;
			if(msg != null && msg.trim() != ''){
				var d = JSON.parse(msg);
				if(d.type == "getId"){
					var si = d.userName != null ? d.userName : "";
					if(si != ''){
						$("#sessionId").val(si); 
					}
				}else if(d.type == "message"){
					if( d.userName == user_seq ){
						$("#chating").append("<p class='me'>" + "나: " + d.msg + "</p>");	
					}else{
						$("#chating").append("<p class='others'>" + d.userName + " :" + d.msg + "</p>");
					}
						
				}else{
					console.warn("unknown type!")
				}
			}
		}
		
		/*
		ws.onmessage = function(data) {
			//메시지를 받으면 동작
			var msg = data.data;
			if(msg != null && msg.trim() != ''){
				var d = JSON.parse(msg);
				if(d.type == "getId"){
					var si = d.sessionId != null ? d.sessionId : "";
					if(si != ''){
						$("#sessionId").val(si); 
					}
				}else if(d.type == "message"){
					if(d.sessionId == $("#sessionId").val()){
						$("#chating").append("<p class='me'>"+ user_seq + ": " + d.msg + "</p>");	
					}else{
						$("#chating").append("<p class='others'>" + d.userName + " :" + d.msg + "</p>");
					}
						
				}else{
					console.warn("unknown type!")
				}
			}
		}
		*/

		document.addEventListener("keypress", function(e){
			if(e.keyCode == 13){ //enter press
				send();
			}
		});
	}
	
	$("#yourName").hide();
	$("#yourMsg").show();
	
	function chatName(){
		var userName = $("#userName").val();
		if(userName == null || userName.trim() == ""){
			alert("사용자 이름을 입력해주세요.");
			$("#userName").focus();
		}else{
			wsOpen();
			$("#yourName").hide();
			$("#yourMsg").show();
		}
	}
	

	function send() {
	
		if(user_seq=="null"){
			user_seq = "Guest" ;
		}
		
		var option ={
			type: "message",
			//sessionId : $("#sessionId").val(),
			userName : user_seq, //$("#userName").val(), //session의 user_seq가 userName
			msg : $("#chatting").val()
		}
	
		if(option.msg == null || option.msg == ""){
			alert("내용을 입력해주세요.");
			return;
		}
		
		ws.send(JSON.stringify(option))
		$('#chatting').val("");
	}
</script>
</html>