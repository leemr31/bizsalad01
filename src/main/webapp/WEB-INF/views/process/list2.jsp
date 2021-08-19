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
		
		<jsp:include page="/WEB-INF/views/layout/com/mtop.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/com/mmenu.jsp"></jsp:include>
		
		
	  <div class="d-table w100pro biz-content-wrap-con t-center">
		
		<!-------------------------------------- index contents start //----------------------------------->
	    
	    <div class="d-table w100pro t-center">
	        <div class="new-banner2-title2">
	            <p><span>주문서리스트</span><span>!</span></p>
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
      <input type="radio" name="purchase_type" class="purchase_type" value="" checked/>전체
      <input type="radio" name="purchase_type" class="purchase_type" value="수정요청"/>수정요청
      <input type="radio" name="purchase_type" class="purchase_type" value="수량">수량
      <input type="radio" name="purchase_type" class="purchase_type" value="샘플">샘플 
	</div>
	<div id="list">
      <table id="tbl"></table>
      <script id="temp" type="text/x-handlebars-template">
         <tr class="title">
			<td width=150>주문번호</td>
			<td width=100>주문자명</td>
			<td width=200>날짜</td>
			<td width=150>주문여부</td>
			<td width=100>완료</td>
         </tr>
         {{#each listJSON}}
            <tr class="raw">
               <td>{{purchase_seq}}</td>
               <td>{{user_name}}</td>
               <td>{{purchase_date}}</td>
               <td>{{purchase_type}}</td>
			   <td><input type="button" name="numberOk" value="확인" onClick="location.href='image?option_seq={{option_seq}}&cart_seq={{cart_seq}}'"/></td>
            </tr>
         {{/each}}
      </script>
   </div>
   <div id="pagination"></div>
</div>
<script>
	var company_seq = "<%=request.getParameter("company_seq")%>";
	
	var purchase_type = $("input[name='purchase_type']:checked").val();
	var page = 1;
	getList();

	$(".purchase_type").on("click", function() {
		purchase_type = $("input[name='purchase_type']:checked").val();
		page = 1;
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
			url : "list.json",
			data : {
				"page" : page,
				"searchType" : searchType,
				"keyword" : keyword,
				"company_seq" : company_seq,
				"purchase_type" : purchase_type
			},
			dataType : "json",
			success : function(data) {

				var temp = Handlebars.compile($("#temp").html());
				$("#tbl").html(temp(data));
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
	  </div>
	  
	  
	  
	  <br/><br/><br/><br/>
	   
		<jsp:include page="/WEB-INF/views/layout/com/mcontent.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/com/mbot.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/com/mpopup.jsp"></jsp:include>
		
		
		
		
		
		
   </div>

</body>
</html>