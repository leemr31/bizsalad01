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
	<div>이전:<%=request.getParameter("option_seq") %></div>
	<div>${vo.company_seq}</div>
	<div>주문번호:${vo.cart_seq}</div>
	<div>${vo.option_seq}</div>
	<div>회사이름:${vo.address_name}</div>
	<div>주소:${vo.address}</div>
	<div>번호:${vo.tel}</div>
	<div>공정순서:${vo.flow}</div>
	<div>전체공정:${vo.total}</div>
	<form name="frm" method="post">
		<input type="hidden" name="option_seq" value="<%=request.getParameter("option_seq") %>"/>
		<input type="submit" name="numberOk" value="배송진행">
	</form>
</body>
<script>
var company_seq = $(frm.company_seq).val();
	$(frm).on("submit", function(e) {
		e.preventDefault();
		if (!confirm("배송 진행 하시겠습니까?"))
			return;
		frm.action = "update";
		frm.method = "post";
		frm.submit();
	});
</script>
</html>