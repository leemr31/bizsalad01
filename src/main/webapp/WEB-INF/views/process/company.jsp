<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업</title>
</head>
<body>
	<div>
		<c:forEach items="${company}" var="vo">
		<table border=1>
			<tr onClick="location.href='list?company_seq=${vo.company_seq}'">
				<td width="200px">${vo.company_seq}</td>
				<td width="100px">${vo.company_name}</td>
			</tr>
		</table>
		</c:forEach>
	</div>
</body>
</html>