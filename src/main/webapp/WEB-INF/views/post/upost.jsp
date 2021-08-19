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
	<h2>유저배송</h2>
	<div>이전:<%=request.getParameter("option_seq") %></div>
	<div>이름:${vo.address_name}</div>
	<div>주소:${vo.address1}</div>
	<div>우편번호:${vo.address2}</div>
	<div>전화번호:${vo.tel}</div>
	<form name="frm" method="post">
		<input type="hidden" name="option_seq" value="<%=request.getParameter("option_seq") %>"/>
		<input type="submit" name="numberOk" value="배송">
	</form>
</body>
<script>
	$(frm).on("submit", function(e) {
		e.preventDefault();
		if (!confirm("승인하시겠습니까?"))
			return;
		frm.action = "update";
		frm.method = "post";
		frm.submit();
	});
</script>
</html>