<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	a{
		text-decoration: none;
		color: black;
		padding: 8px;
		background: #00000000;
		border-radius: 10px;
	}
	ul{
		list-style:none; padding-left:0;
	}
	.menu-item{
		margin-bottom: 20;
		font-size: 1rem;
	}
	.menu-title{
		margin-bottom: 20;
		font-size: 1.2rem;
		font-weight: 700;
		padding: 10px;
	}
	.menu-title-etc{
		margin: 60 0 20 0;
		font-size: 1.2rem;
		font-weight: 700;
		padding: 10px;
	}
	a:hover{
		cursor: pointer;
		background: #ECF1F4;
		transition: 0.2s;
	}
	a:focus{
		cursor: pointer;
		background: #EDF3D0;
		color: #44A733;
		transition: 0.2s;
		font-weight: bold;
	}
	.div-menu2{
		margin-top: 60;
	}
	.a-gohome{
		cursor: pointer;
		background: #44A733;
		color: white;
		font-weight: bold;
	}
	.a-gohome:hover{
		background: #329720;
		transition: 0.2s;
	}
	.icon-home{
		background-image: url("/resources/css/icon/home.svg");
		background-repeat: no-repeat;
		width: 18px;
		height: 18px;
		margin-right: 5px;
		vertical-align: middle;
		display: inline-block;
		border: none;
	}
</style>
<c:if test="${user_id==null}">
	<div class="div-menu">
		<ul>
			<li class="menu-title">회원관리</li>
			<li class="menu-item"><a href="#">일반회원</a></li>
			<li class="menu-item"><a href="#">업체회원</a></li>
			<li class="menu-title-etc">기타관리</li>
			<li class="menu-item"><a href="#">정산내역</a></li>
			<li class="menu-item"><a href="#">게시판</a></li>
			<li class="menu-item"><a href="#">상품내역</a></li>
			<li class="menu-item"><a href="#">카테고리</a></li>
		</ul>
	</div>
	<div class="div-menu2">
		<ul>
			<li class="menu-gohome">
				<a class="a-gohome" href="/index"><img class="icon-home">홈으로</a>
			</li>
		</ul>
	</div>
</c:if>