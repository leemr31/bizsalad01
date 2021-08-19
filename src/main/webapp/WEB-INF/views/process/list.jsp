<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageName" value="회원가입"/>

<c:choose>
	<c:when test="${company_id == null}">
		<script>
			alert("로그인이 필요합니다.");
			window.location.href='/company';
		</script>
	</c:when>
</c:choose>

<html>
<head>
	
	<title>비즈샐러드</title>
	<jsp:include page="/WEB-INF/views/layout/com/minclude.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/layout/com/add_css.jsp"></jsp:include>
	
	<style>
		#biz-content-wrap { width:100%; height:100%; margin:0 auto; visibility:hidden; }
		.biz-content-wrap-top {  width:100%; max-width:550px; margin:0 auto; }
		.biz-content-wrap-menu {  width:100%; max-width:550px; margin:0 auto; }
		
		.biz-content-wrap-slide {  width:100%; max-width:550px; margin:0 auto; }
		.biz-content-wrap-con {  width:100%; max-width:550px; margin:0 auto; }
		
		.biz-content-wrap-bmenu-wrap { width:100%; max-width:550px; margin:0 auto; border-top:1px solid #000; border-bottom:1px solid #000;}
		.biz-content-wrap-bmenu {  width:100%; max-width:550px; margin:0 auto; }
		.biz-content-wrap-bottom-wrap {  width:100%; max-width:550px; margin:0 auto;  background-color:#262636;}
		.biz-content-wrap-bottom { width:100%; max-width:550px; margin:0 auto; }
		
		/*   table ul li 로 변경함      */
		
		ul.raw {  }
		ul.raw li { float:left; padding:0.2em 0.5em; border-right: none;}
		ul.raw li:last-child { float:left; padding:0.5em; border-right: none;}
		
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
		
		<jsp:include page="/WEB-INF/views/layout/com/mtop.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/com/mmenu.jsp"></jsp:include>
		
		
	  <div class="d-table w100pro biz-content-wrap-con t-center">
		
		<!-------------------------------------- index contents start //----------------------------------->
	    
	    <div class="d-table w100pro ma-t-3em"></div>
	    <div class="d-table w100pro t-center">
	        <div class="new-banner2-title2">
	            <p><span>발주서리스트</span><span>!</span></p>
	            <p>업체회원만 이용이 가능합니다.</p>
	        </div>
	    </div>
	    

	   <div id="condition">
	   
	      <div id="left">
	         <select id="searchType">
	            <option value="purchase_seq">주문번호</option>
	            <option value="user_name">주문자</option>
	         </select> 
	         <input type="text" id="keyword" placeholder="검색어" /> 
	         <input type="button" value="검색" id="btnSearch" /> 
	         <span id="total">검색수:</span>
	      </div>
	      
	      <label><input type="radio" name="purchase_type" class="purchase_type" value="" checked/>전체</label>
	      <label><input type="radio" name="purchase_type" class="purchase_type" value="1"/>승인</label>
	      <label><input type="radio" name="purchase_type" class="purchase_type" value="0">미승인</label>
	      
		</div>
	
		<div id="list" class="d-table w90pro auto">
	      <div id="tbl_div" class="d-table w100pro"></div>
	   </div>
   
      <!-- 
         <tr class="title">
			<td>주문번호</td>
			<td width=150>공정</td>
			<td width=100>주문자명</td>
			<td width=200>날짜</td>
			<td width=150>주문여부</td>
			<td width=150>승인</td>
         </tr>
       -->
       
      <script id="temp" type="text/x-handlebars-template">

         {{#each listJSON}}
			<div class="d-table w100pro t-left ma-t-2em ma-b-dot5" style="">
				<div class="d-table-cell t-left">주문번호 : {{purchase_seq}}</div>
				<div class="d-table-cell t-right">주문일 : {{purchase_date}}</div>
			</div>
			<div class="d-table w100pro" style="border-bottom:1px solid #666; border-top:1px solid #666; table-layout: fixed;">
				<div class="d-table-cell v-middle pa-dot5 " style="border-right:1px solid #666; width:8%;">{{manufacture_name}}</div>
            	<div class="d-table-cell w60pro v-middle">
					<ul class="raw ">
               			<li>{{user_name}}</li>
               			<li>{{purchase_type}} (갯수필요)</li>
						<li>전 공정 예상완료일 : 2021-07-24</li>
					</ul>
				</div>
				<div class="d-table-cell v-middle pa-dot3" style="border-left:1px solid #666;">
						{{#isVowel}}
						{{/isVowel}}
					
				</div>	
			</div>
		{{/each}}
	</script>
			
	<script>
		Handlebars.registerHelper("isVowel", function(){
		      if(this.accept=="1"){
		         return "<p class='ma-b-dot3'>승인</p><a class='button' href='read?option_seq="+this.option_seq+"' >예상일변경</a>";
		      }else {
		         return "<p class='ma-b-dot3'>미승인</p><a class='button' href='read?option_seq="+this.option_seq+"' >발주승인</a>";
		         }
	      });
	</script>
	

   <div id="pagination"></div>
   
</div>

<script>
	var company_seq = "<%=request.getParameter("company_seq")%>";
	var purchase_type= $("input[name='purchase_type']:checked").val();
	var page = 1;
	getList();
	
	$(".purchase_type").on("click", function(){
		purchase_type= $("input[name='purchase_type']:checked").val();
		page=1;
		getList();
	});
	
	$("#keyword").on("keydown", function(e) {
		if (e.keycode == 13) {
			page = 1;
			getList();
		}
	});

	$("#btnSearch").on("click", function() {
		page = 1;
		getList();
	});

	function getList() {
		var searchType = $("#searchType").val();
		var keyword = $("#keyword").val();
		$.ajax({
			type : "get",
			url : "/process/list.json",			
			data : {
				"page" : page,			
				"searchType" : searchType,
				"keyword" : keyword,
				"company_seq": company_seq,
				"purchase_type": purchase_type
			},
			dataType : "json",
			success : function(data) {
				
				var temp = Handlebars.compile($("#temp").html());
				$("#tbl_div").html(temp(data));
				$("#total").html("검색수:" + data.pm.totalCount);

				var str = "";
				if (data.pm.prev)
					str += "<a href='" + (data.pm.starPage - 1) + "'>◀</a>";
				for (var i = data.pm.startPage; i <= data.pm.endPage; i++) {
					if (i == page) {
						str += "[<a class='active' href='" + i + "'>" + i
								+ "</a>]";
					} else {
						str += "[<a href='" + i + "'>" + i + "</a>]";
					}
				}
				if (data.pm.next)
					str += "<a href='" + (data.pm.endPage + 1) + "'>▶</a>";
				$("#pagination").html(str);
			}
		});
	}

	$("#pagination").on("click", "a", function(e) {
		e.preventDefault();
		page = $(this).attr("href");
		getList();
	});
</script>

	  <!------------------------------------------- index contents end //---------------------------->

	  
	  
	  
	  <br/><br/><br/><br/>
	   
		<jsp:include page="/WEB-INF/views/layout/com/mcontent.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/com/mbot.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/com/mpopup.jsp"></jsp:include>
		
		
		
		
		
		
   </div>

</body>
</html>
