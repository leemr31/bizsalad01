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
		.biz-content-wrap-top { max-width:550px; margin:0 auto; }
		.biz-content-wrap-menu { max-width:550px; margin:0 auto; }
		
		.biz-content-wrap-slide { max-width:550px; margin:0 auto; }
		.biz-content-wrap-con { max-width:550px; margin:0 auto; }
		
		.biz-content-wrap-bmenu-wrap { width:550px; margin:0 auto; border-top:1px solid #000; border-bottom:1px solid #000;}
		.biz-content-wrap-bmenu { max-width:550px; margin:0 auto; }
		.biz-content-wrap-bottom-wrap { width:550px; margin:0 auto;  background-color:#262636;}
		.biz-content-wrap-bottom { max-width:550px; margin:0 auto; }
		
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
		
		
	  <div class="d-table w100pro biz-content-wrap-con">
		
		<!-------------------------------------- index contents start //----------------------------------->
	    
	    <div class="d-table w100pro t-center">
	        <div class="new-banner2-title2">
	            <p><span>Q&A 게시판</span><span>!</span></p>
	            <p>가입된 회원만 이용이 가능합니다.</p>
	        </div>
	    </div>
	    
	    
	<div>
		<select id="searchType">
			<option value="title">제목</option>
			<option value="contents">내용</option>
		</select>
		<input type="text" id="keyword" placeholder="검색어" size=50/>
		<input type="submit" value="검색" id="btnSearch"/>
		<div>검색결과:&nbsp;<b><span id="totalCount"></span></b>건</div>
		
	</div>
	<!------------------------------------------------>
	<div id="list">
		<table id="tbl" border=1></table>
		<script id="temp" type="text/x-handlebars-template">
			<tr class="title">
				<td width=80>공지</td>
				<td width=500>제목</td>
				<td width=120>작성자</td>
				<td width=180>작성일</td>
			</tr>
			{{#each list}}
			<tr class="row">
				<td>공지</td>
           		<td onClick="location.href='/notice/read?notice_bbs_seq={{notice_bbs_seq}}'">{{title}}</td>
				<td>관리자</td>
            	<td>{{notice_bbs_date}}</td>
			</tr>
			{{/each}}
			</script>
	</div>
	<!------------------------------------------------>
	<div id="pagination"></div>
		<c:if test="${user_seq == 'user_0000000027'}">
		<button onClick="location.href='/notice/insert'">글쓰기</button>
		</c:if>
	<!------------------------------------------------>
	<div id="rDiv" style="padding:20px; background:white; position:absolute; top:10%; left:10%; z-index:999;">
		<div>
			<input id="rcmt" value="sample_comment" type="text" />
			<input id="rimg" value="re_sample_img_url" type="text" />
		</div>
		<div>
			<button id="btnClose">닫기</button>
			<button id="btnEnter">승인</button>
		</div>
	</div>
	<div id="rBack" style="background:#0000007f; width:100%; height:100%; position:absolute; top:0; left:0; z-index:998;"></div>

</div>
	  <!------------------------------------------- index contents end //---------------------------->
	  </div>
	  
	  
	  
	  <br/><br/><br/><br/>
	   
		<jsp:include page="/WEB-INF/views/layout/user/mcontent.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/user/mbot.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/user/mpopup.jsp"></jsp:include>
		
		
		
		
		
		
   </div>

</body>
</html>
<script>
	var user_seq = "<%= session.getAttribute("user_seq") %>";
	var page=1;

	getList();
	
	
	
	
	
	$("#rDiv").hide();
	$("#rBack").hide();
	
	$("#btnClose").on("click", function(){
		$("#rDiv").hide();
		$("#rBack").hide();
	});
	
	$("#rBack").on("click", function(){
		$("#rDiv").hide();
		$("#rBack").hide();
	});
	
	function fnRepair(cmt, img, pur, ord) {
		$("#rDiv").show();
		$("#rBack").show();
		$("#rcmt").val("");
		$("#rimg").val("");
		if(cmt=="null" && img=="null"){
			$("#rcmt").val("");
			$("#rimg").val("");
		}else{
		$("#rcmt").val(cmt);
		$("#rimg").val(img);
		}
		alert(pur + ord);
		
		$("#btnEnter").on("click", function(){
			
		});
	}
	
	$("#orderChk").on("click", ".order", function(){
		getList();
	});
	
	/*검색어 입력*/
	$("#keyword").on("keydown", function(e){
		if(e.keyCode==13) {
			page=1; getList(); $("#btnSearch").click;
		}
	});
	
	/*검색버튼 클릭*/
	$("#btnSearch").on("click", function(){
		//alert("00");
		page=1;
		getList();
	});
	
	/*카테고리 선택*/
	$("#searchType, #perPageNum").on("change", function(e){
		page=1;
		getList();
	});
	
	/*이전 및 다음버튼*/
	$("#btnPre").on("click", function(){
        page--; getList();
    });
	
    $("#btnNext").on("click", function(){
        page++; getList();
    });
    
    /*
    $(frm.order).on("change", function(){
    	getList();
    });
    */
    
	function getList() {	
    	var searchType=$("#searchType").val();
    	var keyword=$("#keyword").val();
		
		$.ajax({
			type:"get",
			url:"/notice/list.json",
			dataType:"json",
			data:{"searchType":searchType, "keyword":keyword, "page":page, "user_seq":user_seq},
			success:function(data) {
				
				var temp = Handlebars.compile($("#temp").html());
				$("#tbl").html(temp(data));
				$("#totalCount").html(data.pm.totalCount);
				
				//페이징 목록 출력
				var str="";
				var prev = data.pm.startPage - 1;
				var next = data.pm.endPage + 1;
				var strp = data.pm.startPage;
				var endp = data.pm.endPage;
				if(data.pm.prev) str+="<a href='" + (prev) + "'>◀</a>"
					for(var i=strp; i<=endp; i++){
						if(i==page){
						str += "<a class='active' href='" + i + "'>"+ i + "&nbsp;&nbsp;</a>";
					}else{
						str += "<a href='" + i + "'>"+ i + "&nbsp;&nbsp;</a>";
					}
				}
				if(data.pm.next) str+="<a href='" + (next) + "'>▶</a>"
				$("#pagination").html(str);
				
			}, error: function(error) {
		       alert("Error!");
		    }
		});
	}

	$("#pagination").on("click", "a", function(e){
		e.preventDefault();
		page=$(this).attr("href");
		getList();
	});
	
</script>