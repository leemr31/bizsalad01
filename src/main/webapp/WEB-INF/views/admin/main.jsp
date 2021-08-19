<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageName" value="회원가입"/>

<c:if test="${user_id==null}">
	<script> location.href='/admin'; </script>
</c:if>

<html>
<head>

    <link href="/resources/css/mobile.css" rel="stylesheet" type="text/css" media="screen and (max-width: 800px)">
    <link href="/resources/css/pc.css" rel="stylesheet" type="text/css" media="screen and (min-width:800px)">
	<link rel="stylesheet" type="text/css" href="/resources/css/style01.css">
	
	<jsp:include page="/WEB-INF/views/layout/adm/minclude.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/layout/adm/add_css.jsp"></jsp:include>
	
	<title>관리자 대시보드</title>
	
	<style>
	
		#biz-content-wrap { width:100%; height:100%; margin:0 auto; visibility:hidden; }
		.biz-content-wrap-top { max-width:10240px; margin:0 auto; }
		.biz-content-wrap-menu { max-width:1024px; margin:0 auto; }
		
		.biz-content-wrap-slide { max-width:1300px; margin:0 auto; }
		.biz-content-wrap-con { max-width:1300px; margin:0 auto; }
		
		.biz-content-wrap-bmenu-wrap { width:100%; margin:0 auto; border-top:1px solid #000; border-bottom:1px solid #000;}
		.biz-content-wrap-bmenu { max-width:1300px; margin:0 auto; }
		.biz-content-wrap-bottom-wrap { width:100%; margin:0 auto;  background-color:#262636;}
		.biz-content-wrap-bottom { max-width:1300px; margin:0 auto; }

	.menu-item{
		font-size: 1rem;
	}
	
	
	.menu-title{
		font-size: 1.2rem;
		font-weight: 700;
		border-bottom: 1px solid #ECF1F4;
		background-color: #f9f9f9;
	}
	.menu-title-etc{
		font-size: 1.2rem;
		font-weight: 700;
		padding: 10px;
		border-bottom: 1px solid #ECF1F4;
		background-color: #f9f9f9;
	}

	.div-menu2{
		margin-top: 60;
	}
	.a-gohome{
		cursor: pointer;
		background: #44A733;
		color: white;
		font-weight: bold;
		padding:10px;
		border-radius:10px;
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
	
	.div-menu .menu-item a {
		display:block;
		padding: 1em;
		border-radius: 10px;
		color:#000;
		font-weight:500;
		background-color:#fff;
	}
	
	.div-menu .menu-item a:before{
		content:'└';
		margin-right:0.5em;
	}
	
	.div-menu .menu-item a:hover{
		cursor: pointer;
		background: #ECF1F4;
		transition: 0.2s;
	}
	.div-menu .menu-item a:focus{
		cursor: pointer;
		background: #EDF3D0;
		color: #44A733;
		transition: 0.2s;
		font-weight: bold;
	}
	
	.div-menu .menu-item a.active {
		cursor: pointer;
		background: #EDF3D0;
		color: #44A733;
		transition: 0.2s;
		font-weight: bold;
	}


	</style>

</head>
<body class="h100pro">

		<div class="d-table w100pro" style="position:fixed; z-index:999; top:0; left:0; background-color:#fff;">
			<div class="div-nav d-table w100pro pa-1em">
				<div class="div-logo d-table-cell w15pro">
					<img class="img-logo" src=""/>
					<span class="span-logo big-text ma-r-dot5 letter-s-1">bizSalad</span>
					<span class="bold big-text3"> 관리자모드</span>
				</div>
				
	    <%
		    String select = request.getParameter("pageChange");
		    String catem = request.getParameter("cateChange");
		    String activem = request.getParameter("menuChange");
	 
	        if (select == null) {
	            select = "/admin/user";
	        }
	        
	        if (catem == null) {
	        	catem = "1";
	        }
	        
	        if (activem == null) {
	        	activem = "1";
	        }
	        
	    %>
				
			<!-- breadcrumbs -->
				<div class="d-table-cell">
					<ul class="breadcrumbs" style="margin-top:0;">
						<li><a href="" class="breadcrumbs-home">HOME</a></li>
						<li>
							<a class="open " title="">회원관리</a>
							<ul class="open-target">
								<li><a href="#" class="" title="회원관리" onclick="cateChange(0); return false;">회원관리</a></li>
								<li><a href="#" class="" title="기타관리" onclick="cateChange(1); return false;">기타관리</a></li>
								<li><a href="#" class="" title="게시판관리" onclick="cateChange(2); return false;">게시판관리</a></li>
								<li><a href="#" class="" title="후기관리" onclick="cateChange(3); return false;">후기관리</a></li>
								<li><a href="#" class="" title="진열관리" onclick="cateChange(4); return false;">진열관리</a></li>
							</ul>
						</li>
						<% if( catem.equals("1") ) { %>
						<li>
							<a class="open " title="">일반회원</a>
							<ul class="open-target">
                                 <li><a class="" href="?cateChange=1&menuChange=1&pageChange=/admin/user" title="일반회원">일반회원</a></li>
                                 <li><a class="" href="?cateChange=1&menuChange=2&pageChange=/admin/company" title="업체회원">업체회원</a></li>

							</ul>
						</li>
						<% } else if( catem.equals("2") ) { %>
						<li>
							<a class="open " title="">정산내역</a>
							<ul class="open-target">
                                 <li><a class="" href="?cateChange=2&menuChange=1&pageChange=/admin/settle" title="정산내역">정산내역</a></li>
                                 <li><a class="" href="?cateChange=2&menuChange=2&pageChange=/admin/product" title="상품내역">상품내역</a></li>
                                 <li><a class="" href="?cateChange=2&menuChange=3&pageChange=/admin/cate" title="카테고리">카테고리</a></li>

							</ul>
						</li>
						<% } else if( catem.equals("3") ) { %>
						<li>
							<a class="open " title="">1:1문의</a>
							<ul class="open-target">
                                 <li><a class="" href="?cateChange=3&menuChange=1&pageChange=/admin/inquiry" title="1:1문의">1:1문의</a></li>
                                 <li><a class="" href="?cateChange=3&menuChange=2&pageChange=/admin/qna" title="문의게시판">문의게시판</a></li>
								 <li><a class="" href="?cateChange=3&menuChange=3&pageChange=/admin/tell" title="신고게시판">신고게시판</a></li>
								 <li><a class="" href="?cateChange=3&menuChange=4&pageChange=/admin/notice" title="공지사항">공지사항</a></li>
							</ul>
						</li>
						<% } else if( catem.equals("4") ) { %>
						<li>
							<a class="open " title="">완성후기</a>
							<ul class="open-target">
								<li class=""><a href="?cateChange=4&menuChange=1&pageChange=/admin/review_done" title="완성후기">완성후기</a></li>
								<li class=""><a href="?cateChange=4&menuChange=2&pageChange=/admin/review_process" title="공정별후기">공정별후기</a></li>
								<li class=""><a href="?cateChange=4&menuChange=3&pageChange=/admin/review_product" title="상품후기">상품후기</a></li>

							</ul>
						</li>
						<% } else if( catem.equals("5") ) { %>
						<li>
							<a class="open " title="">메인배너</a>
							<ul class="open-target">
								<li class=""><a href="?cateChange=5&menuChange=1&pageChange=/admin/banner_main" title="메인배너">메인배너</a></li>
								<li class=""><a href="?cateChange=5&menuChange=2&pageChange=/admin/banner_product" title="제작상품">제작상품</a></li>
								<li class=""><a href="?cateChange=5&menuChange=3&pageChange=/admin/banner_utube" title="유투브영상">유투브영상</a></li>
								<li class=""><a href="?cateChange=5&menuChange=4&pageChange=/admin/banner_influ" title="인플루언서">인플루언서</a></li>
								<li class=""><a href="?cateChange=5&menuChange=5&pageChange=/admin/banner_review" title="제작후기">제작후기</a></li>
							</ul>
						</li>
						
						<% } %>
						
					</ul>
				</div>
			<!-- /.breadcrumbs -->
				
				
				<div class="div-sign d-table-cell">

					<c:if test="${user_id==null}">
						<a href="/admin"><input type="button" value="로그인" class="btn-login"/></a>
					</c:if>
					<c:if test="${user_id!=null}">
						<div class="div-user">
							<span class="user-manager big-text">매니저 : <b>${user_id}</b></span>&nbsp;&nbsp;|&nbsp;&nbsp;
							<button onClick="location.href='/admin/logout'" class="btn-logout">로그아웃</button>
						</div>
					</c:if>
				</div>
			</div>
		</div>
		
		<div class="d-block" style="height:70px;"></div>

		
		<!-- pc view //일반 데스크탑 웹 버전-->
		<div class="d-table w100pro " id="pc-view" style="border-top:1px solid #ecf1f4;">
			<div class="d-table-cell w10pro v-top pa-t-1em" style="min-width:120px; max-width:250px;  height:650px;">
				<jsp:include page="category.jsp"/>
			</div>
			<div class="d-table-cell w80pro v-top pa-2em" style="min-height:800px;">
				<jsp:include page="<%= select %>" />
			</div>
		</div>
		
		<div class="div-bottom d-table w100pro">
			<jsp:include page="/WEB-INF/views/layout/adm/mbot.jsp"></jsp:include>
			<jsp:include page="/WEB-INF/views/layout/adm/mpopup.jsp"></jsp:include>
		</div>
		
		
		<!-- mobile view //창을 줄였을 때 버전 -->
		<!-- 
		<div class="div-center" id="mobile-view">
			<div class="div-category"><jsp:include page="category.jsp"/></div>
			<div class="div-content"><p>loremlipsum</p></div>
		</div>
		<div class="div-bottom">
		</div>
		 -->
		 
		 <script>
		 
		//****************         좌측메뉴, 상단히스트로 동기화를 위한 스크립트 좌측 메뉴의 text 와 url 이 기준값         ******************//
		//****************         clone 으로 작업하고 알아보기 어렵게 함수를 하나로 만들 수 있으나 팀원을 보기위해 풀어서 만들었어요.         ******************//
		 
			 var cate1 = ["","회원관리","기타관리","게시판관리","후기관리","진열관리"];
			 var cate2 = [["일반화원","업체회원"],["정산내역","상품내역","카테고리"],["1:1문의","문의게시판","신고게시판","공지사항"],
				 ["완성후기","공정별후기","상품후기"],["메인배너","제작상품","유투브영상","인플루언서","제작후기"]];
			 var cate3 = [["?cateChange=1&menuChange=1&pageChange=/admin/user","?cateChange=1&menuChange=2&pageChange=/admin/company"],
				 ["?cateChange=2&menuChange=1&pageChange=/admin/settle","?cateChange=2&menuChange=2&pageChange=/admin/product","?cateChange=2&menuChange=3&pageChange=/admin/cate"],
				 ["?cateChange=3&menuChange=1&pageChange=/admin/inquiry","?cateChange=3&menuChange=2&pageChange=/admin/qna","?cateChange=3&?menuChange=3&pageChange=/admin/tell","?cateChange=3&?menuChange=4&pageChange=/admin/notice"], 
				 ["?cateChange=4&menuChange=1&pageChange=/admin/review_done","?cateChange=4&menuChange=2&pageChange=/admin/review_process","?cateChange=4&menuChange=3&pageChange=/admin/review_product"],
				 ["?cateChange=5&menuChange=1&pageChange=/admin/banner_main","?cateChange=5&menuChange=2&pageChange=/admin/banner_product","?cateChange=5&menuChange=3&pageChange=/admin/banner_utube","?cateChange=5&menuChange=4&pageChange=/admin/banner_influ","?cateChange=5&menuChange=5&pageChange=/admin/banner_review"]];
		 	
			 // category.jsp 메뉴 설정
			 $('ul .adm-side-menu:nth-child(<%= catem %>) > a').removeClass('adm-current');
			 $('ul .adm-side-menu:nth-child(<%= catem %>) > a').addClass('adm-current');
			 $('ul .adm-side-menu:nth-child(<%= catem %>) > ul').removeClass('adm-hide');
			 $('ul .adm-side-menu:nth-child(<%= catem %>) .menu-item:nth-child(<%= activem %>) a').addClass('active');
			 
			 // main.jsp breadcrumbs history 설정
			 
			 $(".breadcrumbs > li:nth-child(2) > a").text(cate1[<%= catem %>]);
			 $(".breadcrumbs > li:nth-child(2) > ul > li:nth-child(<%= catem %>) a").addClass('current');
			 $(".breadcrumbs > li:nth-child(3) > a").text(cate2[<%= catem %>-1][<%= activem %>-1]);
			 $(".breadcrumbs > li:nth-child(3) > ul > li:nth-child(<%= activem %>) a").addClass('current');
			 
			 // 페이지 전환하지 않고 history 변경
			 
			 function cateChange(cate) {
				 
				 $(".breadcrumbs > li:nth-child(2) > a").removeClass('show');
				 $(".breadcrumbs > li:nth-child(2) > ul").removeClass('show');
				 
				 
				 $(".breadcrumbs > li:nth-child(2) > a").text(cate1[cate+1]);
				 $(".breadcrumbs > li:nth-child(3) > a").text(cate2[cate][0]);
				 
				
				 //$(".breadcrumbs > li:nth-child(3) > a").removeClass('open');
				 //$(".breadcrumbs > li:nth-child(3) > ul").removeClass('open-target');
				 
				 //$(".breadcrumbs > li:nth-child(3) > a").addClass('show');
				 //$(".breadcrumbs > li:nth-child(3) > ul").addClass('show');
				 
				 $(".breadcrumbs > li:nth-child(3) > ul").empty();
				 
				 
				 $.each(cate2[cate], function(index, item) {
					 $(".breadcrumbs > li:nth-child(3) > ul").append("<li><a class='' href='" + cate3[cate][index] + "' title='" + cate2[cate][index] + "'>" + cate2[cate][index] + "</a></li>");
				 });
				 
				 
			 }
			 
		 </script>
</body>
</html>