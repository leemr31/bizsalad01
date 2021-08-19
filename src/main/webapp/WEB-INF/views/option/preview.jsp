<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>

<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
 <style>
 p{font-size:15px;}
.sumbox{width:320px; float:left; height:480px; margin:10px; font-size:10px; padding:10px;
		border-style:solid; border-width:1px; overflow:auto;}
.combox{width:300px; float:left; height:180px; margin:5px; font-size:10px; padding:5px ; 
		border-style:solid; border-width:1px; display:none;}	
</style>

</head>
<body>
<h1>상품 선택 5단계</h1>
<form name="frm" enctype="multipart/form-data">
<div id="contetns">
	<div id="summary">
		<div class="sumbox">
		<p class="title">상품 선택 1단계</p>
					<div class="combox">
						<div class="category">
							<input type="text" name="cart01" value="${cart01}" readonly>
						</div>
						<div class="sizebox">
							<input type=text name="cart02" value="${cart02}" readonly>
						</div>
						<div class="modelbox">
							<input type=text name="cart03" value="${cart03}" readonly>
						</div>
						<div class="commentbox">
							<textarea rows="5" cols="30" name="cart04" value="${cart04}"
								readonly></textarea>

						</div>
					</div>

					<p class="title">상품 선택 2단계</p>
		<div class="combox">
					<div class="mold">
						<input type="text" name="cart05" value="${cart05}" readonly>
					</div>
					<div class="commentbox">
						<textarea rows="5" cols="30" name="cart06" value="${cart06}" readonly></textarea>
					</div>
				</div>
				
		<p class="title">상품 선택 3단계</p>
		<div class="combox">
					<div class="plating">
						<input type="text" name="cart07" value="${cart07}">
					</div>
					<div class="commentbox">
						<textarea rows="5" cols="30" name="cart08" value="${cart08}" readonly></textarea>
					</div>
				</div>
		<p class="title">상품 선택 4단계</p>
		<div class="combox">
		4단계
					<div class="assem">
					
						<div id="decision">
							<input type="radio" name="assemble" value="yes" checked="checked" />예 
							<input type="radio" name="assemble" value="no" /> 아니오
						</div>
					</div>

					<div class="commentbox">
						<textarea rows="5" cols="30" name="detail" readonly></textarea>
					</div>
				</div>
				<div class="order">
					<table border=1>
						<tr>
							<td width=100>${vo.save_date}</td>
							<td width=100>주문수량:</td>
							<td><input type="text" name="amount" value="00"></td>
						</tr>
					</table>
				</div>
			</div>
</div>
	<input type="button" value="이전" onClick="location.href='/cate/insert/order4'"/>
	<input type="button" value="보류" onClick="location.href='/index'">
	<input type="submit" value="주문서 작성">
	<input type="submit" value="샘풀만 신청">
</div>
</form>
</body>
<script>


$("p.title").on('click',function(){
	  $(this).next(".combox").slideToggle(100);
	});
	
</script>
</html>