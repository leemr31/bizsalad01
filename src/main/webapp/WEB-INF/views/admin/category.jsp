<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:if test="${user_id!=null}">
	<div class="div-menu d-table auto w80pro">
		<ul>
			<li class="menu-title adm-side-menu">
				<a class="adm-cate">회원관리</a>
				<ul class="adm-hide">
					<li class="menu-item"><a href="?cateChange=1&menuChange=1&pageChange=/admin/user">일반회원</a></li>
					<li class="menu-item"><a href="?cateChange=1&menuChange=2&pageChange=/admin/company">업체회원</a></li>
				</ul>
			
			</li>
			<li class="menu-title adm-side-menu">
				<a class="adm-cate">기타관리</a>
				<ul class="adm-hide">
					<li class="menu-item"><a href="?cateChange=2&menuChange=1&pageChange=/admin/settle">정산내역</a></li>
					<li class="menu-item"><a href="?cateChange=2&menuChange=2&pageChange=/admin/product">상품내역</a></li>
					<li class="menu-item"><a href="?cateChange=2&menuChange=3&pageChange=/admin/cate">카테고리</a></li>
				</ul>
			
			</li>
			<li class="menu-title adm-side-menu">
				<a class="adm-cate">게시판관리</a>
				<ul class="adm-hide">
					<li class="menu-item"><a href="?cateChange=3&menuChange=1&pageChange=/admin/inquiry">1:1문의</a></li>
					<li class="menu-item"><a href="?cateChange=3&menuChange=2&pageChange=/admin/qna">문의게시판</a></li>
					<li class="menu-item"><a href="?cateChange=3&menuChange=3&pageChange=/admin/tell">신고게시판</a></li>
					<li class="menu-item"><a href="?cateChange=3&menuChange=4&pageChange=/admin/notice">공지사항</a></li>
				</ul>
			
			</li>
			<li class="menu-title adm-side-menu">
				<a class="adm-cate">후기관리</a>
				<ul class="adm-hide">
					<li class="menu-item"><a href="?cateChange=4&menuChange=1&pageChange=/admin/review_done">완성후기</a></li>
					<li class="menu-item"><a href="?cateChange=4&menuChange=2&pageChange=/admin/review_process">공정별후기</a></li>
					<li class="menu-item"><a href="?cateChange=4&menuChange=3&pageChange=/admin/review_product">상품후기</a></li>
				</ul>
			
			</li>
			<li class="menu-title adm-side-menu">
				<a class="adm-cate">진열관리</a>
				<ul class="adm-hide">
					<li class="menu-item"><a href="?cateChange=5&menuChange=1&pageChange=/admin/banner_main">메인배너</a></li>
					<li class="menu-item"><a href="?cateChange=5&menuChange=2&pageChange=/admin/banner_product">제작상품</a></li>
					<li class="menu-item"><a href="?cateChange=5&menuChange=3&pageChange=/admin/banner_utube">유투브영상</a></li>
					<li class="menu-item"><a href="?cateChange=5&menuChange=4&pageChange=/admin/banner_influ">인플루언서</a></li>
					<li class="menu-item"><a href="?cateChange=5&menuChange=5&pageChange=/admin/banner_review">제작후기</a></li>
				</ul>
			</li>

		</ul>
	</div>
	<div class="div-menu2 d-table w100pro t-center">
		<ul>
			<li class="menu-gohome">
				<a class="a-gohome" href="/admin"><img class="icon-home">홈으로</a>
			</li>
		</ul>
	</div>
</c:if>