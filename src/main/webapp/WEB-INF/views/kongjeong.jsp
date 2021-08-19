<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageName" value="회원가입"/>


<html>
<head>
	
	<title>비즈샐러드</title>
	<jsp:include page="/WEB-INF/views/layout/user/minclude.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/layout/user/add_css.jsp"></jsp:include>
	
	<style>
		#biz-content-wrap { width:100%; height:100%; margin:0 auto; visibility:hidden; }
		.biz-content-wrap-top { max-width:10240px; margin:0 auto; }
		.biz-content-wrap-menu { max-width:1024px; margin:0 auto; }
		
		.biz-content-wrap-slide { max-width:1300px; margin:0 auto; }
		.biz-content-wrap-con { max-width:1300px; margin:0 auto; }
		
		.biz-content-wrap-bmenu-wrap { width:100%; margin:0 auto; border-top:1px solid #000; border-bottom:1px solid #000;}
		.biz-content-wrap-bmenu { max-width:1300px; margin:0 auto; }
		.biz-content-wrap-bottom-wrap { width:100%; margin:0 auto;  background-color:#262636;}
		.biz-content-wrap-bottom { max-width:1300px; margin:0 auto; }
		
		
		*{margin:3px;padding:0px;1000px; text-align:center;}
		table{margin:0px auto; width:900px; border:1px solid lightgrey; }
		.title{text-align:center; background:#eaeaea; font-weight:bold;}
		.row{cursor:pointer; border:1px solid #eaeaea;}
		.row:hover{background:#22eaeaea; font-weight:bold;}
		#div1{overflow:hidden;border:1px solid black; width:900px;margin:0px auto;}
		#div2{float:left;}
		#div1 frm{float:right;}
		.active{color:red; font-weight:bold;}
		.rows:hover{background:yellow;cursor:pointer;}
		
	</style>
	
	<script>
	
		/**** page loading ****/
		
		$(document).ready(function() {
			$('.ui-loader-t').fadeIn("fast");
		});
		
		$(window).on('load', function() {
			$('.ui-loader-t').fadeOut("fast");
			$("#biz-content-wrap").css('visibility','visible');
			//$('#biz-content-wrap').fadeIn("fast");

		});
		
	</script>

</head>
<body class="" style="width:100%; height:100%;">


	<!-- <div class="ui-loader"><span class="ui-icon-loading"></span></div> -->
	<div class="ui-loader-t"><span class="ui-icon-loading-gr"></span></div>
	
    <!--어두워지는 부분-->
    <div class="dg-hd-mo-menu-panel-overlay"></div>
    
    

	<div id="biz-content-wrap">
		
		<jsp:include page="/WEB-INF/views/layout/user/ptop.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/user/mtop.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/user/mmenu.jsp"></jsp:include>
		
		
		<div class="d-table w100pro ma-t-1em"></div>
		
	  <div class="d-table w100pro biz-content-wrap-con">
		
		<!-------------------------------------- index contents start //----------------------------------->
	
	    <div class="d-table w100pro t-center">
	        <div class="new-banner2-title2">
	            <p><span>공정관리 확인 리스트</span><span>!</span></p>
	            <p></p>
	        </div>
	    </div>


<div id="condition">
	<select id="searchType">
		<option value="oseq" <c:out value="${cri.searchType=='oseq' ? 'selected':''}"/>>주문번호</option>
		<option value="user_email" <c:out value="${cri.searchType=='user_email' ? 'selected':''}"/>>주문이메일</option>
		<option value="pseq" <c:out value="${cri.searchType=='pseq' ? 'selected':''}"/>>결제번호</option>
		<option value="type" <c:out value="${cri.searchType=='type' ? 'selected':''}"/>>주문유형</option>
	</select>
	<input type="text" id="keyword" placeholder=" 검색어 입력" autofocus/>
	<input type="button" id="btnSearch" value="검색"/>
	<span id="total"></span>
</div>

<table id="tbl"></table>
<script id="temp" type="text/x=handlebars-template">
	<tr>
		<td>주문코드</td>
		<td>주문이메일</td>
		<td>결제가격</td>
		<td>결제일자</td>
		<td>주문유형</td>
	</tr>
	{{#each list}}
		<tr class="rows" oseq="{{oseq}}">
			<td class="oseq">{{oseq}}</td>
			<td>{{user_email}}</td>
			<td>{{purchase_total}}원</td>
			<td>{{purchase_date}}</td>
			<td>{{type}}</td>
		</tr>
	{{/each}}
</script>
<div id="pagination"></div>
</div>


            



<script>
	var page=1;
	var user_seq = "<%= session.getAttribute("user_seq") %>";

	if(user_seq=='null'){
		alert('로그인 후 이용 바랍니다.');
	}else if(user_seq=='user_0000000027'){
		user_seq="";
	}
	
	getList();
	//검색어 입력 엔터
	$("#keyword").on("keydown",function(e){
		if(e.keyCode==13){
			$("#btnSearch").click();
		}
	});
	//검색버튼 클릭
	$("#btnSearch").on("click",function(){
		page=1;
		getList();
	});

	//페이지 숫자 클릭 시 이동
	$("#pagination").on("click","a",function(e){
		e.preventDefault();
		page=$(this).attr("href");
		getList();
	});
	function getList(){
		var searchType=$("#searchType").val();
		var keyword=$("#keyword").val();
		
		$.ajax({
			type:"get",
			url:"kongjeong.json",
			dataType:"json",
			data:{"page":page,"searchType":searchType,"keyword":keyword, "user_seq":user_seq},
			success:function(data){
				var temp=Handlebars.compile($("#temp").html());
				$("#tbl").html(temp(data));
				$("#total").html("전체 글수 : "+data.pm.totalCount+"개");
				var str=""; //#pagination에 들어갈
				if(data.pm.prev) str +="<a href='"+ (data.pm.startPage-1) + "'> ◀ </a>";
				for(var i=data.pm.startPage; i<=data.pm.endPage;i++){
					if(i==page){
						str += "&nbsp;[<a class='active' href='"+i+"'> " + i +  " </a>]";
					}else{
						str += "&nbsp;[<a href='"+i+"'> " + i +  " </a>]";
					}
				}
				if(data.pm.next) str +="<a href='"+ (data.pm.endPage+1) + "'> ▶ </a>";
				$("#pagination").html(str);
			}
		});
	}
	
	// 한 행을 클릭 시 세부내용 창이 뜸
	$("#tbl").on("click", " .rows",function(){
		var oseq=$(this).attr("oseq");
		openChild(oseq);
	});
	function openChild(oseq){
		
		
		//window.open("<c:url value='/read?oseq="+oseq+"'/>", 
					//"orderRead" ,"height=500,width=700,top=100,left=200,scrollbars=yes,resizable=yes");
		
		
		bizPopup("공정 상세정보", "<c:url value='/read?oseq="+oseq+"'/>", 450 ); //모달이름, url, 가로사이즈
		//bizAlert(alt); //팝업내용
		
	}	//https://coding-house.tistory.com/49

	
</script>

	  <!------------------------------------------- index contents end //---------------------------->
	  
	  
	  
	  
	  <br/><br/><br/><br/>
	   
		<jsp:include page="/WEB-INF/views/layout/user/mcontent.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/user/mbot.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/user/mpopup.jsp"></jsp:include>
		
		
		
		
		
		
   </div>

</body>
</html>