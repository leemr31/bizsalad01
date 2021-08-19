<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주문별리뷰</title>

   <script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
   <style>
table {
   border-collapse: collapse;
   margin-top: 10px;
}

td {
   border: solid 1px gray;
   padding: 3px 0px 3px 0px;
}

.title {
   background: gray;
   text-align: center;
}

#pagination a {
   text-decoration: nune;
   color: green;
}

#pagination .active {
   color: red;
}
</style>
   
</head>
<body>
<h1>[주문별 후기]</h1>
   <div id="condition">
      <div id="left">
         <select id="searchType">
            <option value="purchase_seq">주문번호</option>
         </select> 
         <input type="text" id="keyword" placeholder="검색어" /> 
         <input type="button" value="검색" id="btnSearch" /> 
         <span id="total">검색수:</span>
      </div>
	</div>
	<div id="list">
      <table id="tbl"></table>
      <script id="temp" type="text/x-handlebars-template">
         <tr class="title">
			<td width=100>주문번호</td>
			<td width=200>내용</td>
			<td width=100>포인트</td>
			<td width=150>작성일</td>
         </tr>
         {{#each listJSON}}
            <tr class="raw" onclick="location.href='read?user_seq={{user_seq}}'">
               <td>{{purchase_seq}}</td>
				<td>{{contents}}</td>
               <td>{{point}}</td>
               <td>{{pr_bbs_date}}</td>
            </tr>
         {{/each}}
      </script>
   </div>
   <div id="pagination"></div>
</body>
<script>
	var page = 1;
	getList();
	
	
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
			url : "/board/list.json",			
			data : {
				"page" : page,			
				"searchType" : searchType,
				"keyword" : keyword,
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
	}c
</script>
</html>
