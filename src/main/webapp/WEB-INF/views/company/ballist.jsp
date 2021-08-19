<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageName" value="회원가입"/>
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
		
		
	  <div class="d-table w100pro biz-content-wrap-con">
		
		<!-------------------------------------- index contents start //----------------------------------->
	    
	    <div class="d-table w100pro t-center">
	        <div class="new-banner2-title2">
	            <p><span>정산내역</span><span>!</span></p>
	            <p>업체회원만 이용이 가능합니다.</p>
	        </div>
	    </div>
	<div>
		<select id="searchType">
			<option value="purchase_seq">주문번호</option>
			<option value="address_name">주문자명</option>
		</select>
		<input type="text" id="keyword" placeholder="검색어" size=50/>
		<input type="submit" value="검색" id="btnSearch"/>
		<span>검색결과:&nbsp;</span>
		<b><span id="totalCount"></span></b>건
		<div id="orderChk">
			<input type="radio" name="cal" value="" class="cal" checked/>전체
			<input type="radio" name="cal" value="정산" class="cal"/>정산
			<input type="radio" name="cal" value="미완료" class="cal"/>미완료
		</div>
	</div>
	<!------------------------------------------------>
	<div id="list">
		<table id="tbl" border=1></table>
		<script id="temp" type="text/x-handlebars-template">
				<tr class="title">
					<td width=180>주문번호</td>
					<td width=120>주문자</td>
					<td width=120>정산금액</td>
					<td width=200>정산일</td>
					<td width=100>정산여부</td>
				</tr>
				{{#each list}}
				<tr class="plist">
					<td class="purchase_seq">{{purchase_seq}}</td>
					<td class="address_name">{{address_name}}</td>
					<td class="price">{{strprice price}}</td>
					<td class="date">{{date}}</td>
					<td class="type">{{type}}</td>
				</tr>
				{{/each}}
		</script>
	</div>
	<script>
		
		Handlebars.registerHelper("strprice", function(price){
     		var regexp = /\B(?=(\d{3})+(?!\d))/g; 
        	return price.toString().replace(regexp, ",");
        });
	</script>
	<!------------------------------------------------>
	<div id="pagination"></div>
	<!------------------------------------------------>
	
</div>
	  <!------------------------------------------- index contents end //---------------------------->
	  </div>
	  
	  
	  
	  <br/><br/><br/><br/>
	   
		<jsp:include page="/WEB-INF/views/layout/com/mcontent.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/com/mbot.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/com/mpopup.jsp"></jsp:include>
		
		
		
		
		
		
   </div>

</body>
</html>
<script>
	var page=1;
	getList();
	
	$("#orderChk").on("click", ".cal", function(){
		getList();
	});
	
	/*검색어 입력*/
	$("#keyword").on("keyup", function(e){
		if(e.keyCode==13) {
			//alert(keyword);
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
	$("#searchType").on("change", function(e){
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
		//alert("a");
		var searchType=$("#searchType").val();
		var keyword=$("#keyword").val();
		var type=$("input[name='cal']:checked").val();
		//alert(type);
		//var date = $("#tbl .date").html();
		//var orderChk=$(frm.order).val();
		//alert(orderChk);
		$.ajax({
			type:"get",
			url: "/company/ballist.json",
			dataType:"json",
			data:{"searchType":searchType, "keyword":keyword, "page":page, "type":type},
			success: function(data) {
				console.log(data);
				var temp = Handlebars.compile($("#temp").html());
				$("#tbl").html(temp(data));
				$("#totalCount").html(data.pm.totalCount);
				
				//페이징 목록 출력
				var str="";
				var prev = data.pm.startPage - 1;
				var next = data.pm.endPage + 1;
				if(data.pm.prev) str+="<a href='" + (data.pm.startPage-1) + "'>◀</a>"
					for(var i=data.pm.startPage; i<=data.pm.endPage; i++){
						if(i==page){
						str += "<a class='active' href='" + i + "'>"+ i + "&nbsp;&nbsp;</a>";
					}else{
						str += "<a href='" + i + "'>"+ i + "&nbsp;&nbsp;</a>";
					}
				}
				if(data.pm.next) str+="<a href='" + (data.pm.endPage+1) + "'>▶</a>"
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