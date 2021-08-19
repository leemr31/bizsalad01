<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<meta charset="UTF-8">
<title>문의하기(고객센터)</title>
</head>
<body>
<h1>[문의 게시판(고객센터)]</h1>
<div id="condition">
	<select id="key">
		<option value="category">카테고리</option>
		<option value="writer">작성자</option>
		<option value="title">제목</option>
	</select>
	<input type="text" id="query" placeholder=" 검색어 입력" autofocus/>
	<input type="submit" value="검색"/>
</div>
<table id="tbl" border=1></table>
<script id="temp" type="text/x-handlebars-template">
<tr>
	<td>문의번호</td>
	<td>카테고리</td>
	<td>제목</td>
	<td>작성자</td>
	<td>작성일</td>
	<td>조회수</td>
</tr>

{{#each .}}

{{/each}}
</script>
<button onClick="location.href='quInsert'">문의하기</button>
</body>
<script>
getList();
function getList(){
	$.ajax({
		type:"get",
		url:"",
		dataType:"json",
		data:{"key":key,"query":query},
		success:function(data){
			var temp=Handlebars.compile($("#temp").html());
			$("#tbl").html(temp(data));
		}
	});
}

</script>
</html>