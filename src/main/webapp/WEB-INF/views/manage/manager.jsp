<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
    <link href="/resources/css/mobile.css" rel="stylesheet" type="text/css" media="screen and (max-width: 800px)">
    <link href="/resources/css/pc.css" rel="stylesheet" type="text/css" media="screen and (min-width:800px)">
	<link rel="stylesheet" type="text/css" href="/resources/css/style01.css">
	<title>관리자 대시보드</title>
	<style>
	</style>
</head>
<body>
		<div class="div-top">
			<div class="div-nav">
				<div class="div-logo">
					<img class="img-logo" src=""/>
					<span class="span-logo">bizSalad</span>
				</div>
				<div class="div-sign">
					<!-- 
					<c:if test="${user_id==null}">
						<form name="frm">
							<input type="reset" value="로그인" class="btn-login"/>
						</form>
					</c:if>
					 -->
					<c:if test="${user_id==null}">
						<div class="div-user">
							<span class="user-manager">매니저: <b>${user_id}</b></span>&nbsp;&nbsp;|&nbsp;&nbsp;
							<button onClick="location.href='/index'" class="btn-logout">로그아웃</button>
						</div>
					</c:if>
				</div>
			</div>
		</div>
		<!-- pc view //일반 데스크탑 웹 버전-->
		<div class="div-center" id="pc-view">
			<div class="div-category"><jsp:include page="category.jsp"/></div>
			<div class="div-content"><p>loremlipsum</p></div>
		</div>
		<div class="div-bottom"></div>
		<!-- mobile view //창을 줄였을 때 버전 -->
		<div class="div-center" id="mobile-view">
			<div class="div-category"><jsp:include page="category.jsp"/></div>
			<div class="div-content"><p>loremlipsum</p></div>
		</div>
		<div class="div-bottom">
		</div>
</body>
</html>