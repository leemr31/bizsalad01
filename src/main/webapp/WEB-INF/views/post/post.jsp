<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>	
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>배송</h2>
	<div>${vo.company_seq}</div>
	<div>주문번호:${vo.cart_seq}</div>
	<div>${vo.option_seq}</div>
	<div>회사이름:${vo.address_name}</div>
	<div>주소:${vo.address}</div>
	<div>번호:${vo.tel}</div>
	<div>공정순서:${vo.flow}</div>
	<div>전체공정:${vo.total}</div>
	<input type="button" id="btn" value="다음">
</body>
<script>
		var flow= "${vo.flow}";
		var total="${vo.total}";
		
		$("#btn").on("click", function(){
			if(flow == total){
				location.href="upost?cart_seq=${vo.cart_seq}&option_seq=${vo.option_seq}";
			}else{
				location.href="post2?cart_seq=${vo.cart_seq}&flow=${vo.flow+1}&option_seq=${vo.option_seq}";
			}
			
		});
</script>
</html>