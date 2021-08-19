<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<style>
 		table{border-collapse:collapse;}
		td{border:solid 1px black; padding:5px;}
		.title{background:whitesmoke; color:black; font-weight:bold; text-align:center; }
		.row{text-align:center;}
		a{color:skyblue;text-decoration:none;}
   		.active{color:magenta; font-weight:bold}
   		#pagination{width:750px; text-align:center; margin-top:10px;}
 	</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
</head>
<body>
	<h1>[목록]</h1>
	<table border=1>
		<tr class="title">
				<td width=200>카트번호</td>
				<td width=100>유저번호</td>
			</tr>
		<c:forEach items="${cvo}" var="vo">
			<tr class="row">
				<td width=200>${vo.cart_seq}</td>
				<td width=100>${vo.user_seq}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>