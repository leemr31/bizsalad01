<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
	<meta charset="UTF-8">
	<title>후기</title>
</head>
<body>
	<h2>후기</h2>
	<table border=1 width=500>
	<tr>
		<td width=100>주문번호</td>
		<td><input type="text" name="purchase_seq" value="${vo.purchase_seq}" readonly size=30/></td>
	</tr>
	<tr>
		<td width=100>후기</td>
		<td><input type="text" name="contents" value="${vo.contents}" readonly size=50/></td>
	</tr>	
	<tr>
		<td width=100>보유포인트</td>
		<td><input type="text" name="point" value="${vo.point}" readonly size=50/></td>
	</tr>
	<tr>
		<td rowspan=5>상품이미지</td>
		<td>
			<c:if test="${vo.file == null}">
				<img id="file" src="http://placehold.it/150x120" width=150/>
			</c:if>
			<c:if test="${vo.file != null}">
				<img id="file" src="/displayFile?fullName=${vo.file}" width=150/>
			</c:if>
		</td>
	</tr>
	<tr>
		<td>
			<c:if test="${vo.file2 == null}">
				<img id="file2" src="http://placehold.it/150x120" width=150/>
			</c:if>
			<c:if test="${vo.file2 != null}">
				<img id="file2" src="/displayFile?fullName=${vo.file2}" width=150/>
			</c:if>
		</td>
	</tr>
	<tr>
		<td>
			<c:if test="${vo.file3 == null}">
				<img id="file3" src="http://placehold.it/150x120" width=150/>
			</c:if>
			<c:if test="${vo.file3 != null}">
				<img id="file3" src="/displayFile?fullName=${vo.file3}" width=150/>
			</c:if>
		</td>
	</tr>
	<tr>
		<td>
			<c:if test="${vo.file4 == null}">
				<img id="file4" src="http://placehold.it/150x120" width=150/>
			</c:if>
			<c:if test="${vo.file4 != null}">
				<img id="file4" src="/displayFile?fullName=${vo.file4}" width=150/>
			</c:if>
		</td>
	</tr>
	<tr>
		<td>
			<c:if test="${vo.file5 == null}">
				<img id="file5" src="http://placehold.it/150x120" width=150/>
			</c:if>
			<c:if test="${vo.file5 != null}">
				<img id="file5" src="/displayFile?fullName=${vo.file5}" width=150/>
			</c:if>
		</td>
	</tr>
	</table>
</body>
</html>