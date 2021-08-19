<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    <div class="body-inner">


        <div id="header" class="header po-r">

			<!-- 헤더팝업 쿠키가 없는 경우 연출 있는 경우 아래의 div에 hide class 추가-->
			<div id="header-popup" class="popup-div topbanner">
				<div class="body-inner-table">
					<div class="popup-close-div">
						<label for="header-popup-close">
							<input type="checkbox" id="header-popup-close" name="header-popup-close" class=""> <span>하루동안 열지 않기</span>
						</label>
						<span class="popup-close" title="닫기"> </span>
					</div>

					<a href="/" title="신규고객혜택"><h2 class="fadein"><span>첫 제작 만원할인</span>신규고객혜택<span>10% 추가할인</span></h2></a>
				</div><!-- .body-inner-table -->
			</div>
			<!-- 헤더팝업 쿠키가 없는 경우 끝 -->
            

            
            
			<!-- .header -->
			<div class="header pctopmenu">
                <div class="w100pro bd-ddd menu2New">
				    <div class="body-inner-table">
                        <div class="d-table-cell v-middle">
                            <!-- <a href="" class="home" title="HOME">HOME</a> -->
                            <a href="/" class="home bold t-center" title="HOME" style="height:100px; text-indent: 0px; font-size:2em !important; letter-spacing:1px; line-height:3.5em; color:#000;">bizsalad</a>
                        </div>
                        <div class="d-table-cell po-u">
                            <div class="d-block t-right v-top">
                                <ul class="wtop-menu f-right">
                                    <li><img src="/resources/img/cstop2.png"></li>
                                    <li>
                                    <span style="color:#000;">
											<c:choose>
												<c:when test="${user_name== null}">
											    	${user_id}
												</c:when>
												<c:otherwise>
													${user_name}
												</c:otherwise>
											</c:choose>
											
											<c:choose>
												<c:when test="${user_type== 3}">
											    	님 <a href="/admin" style="color:#000;">(관리자)</a>
												</c:when>
												<c:when test="${user_type== 0}">
											    	님 <a href="/user/read" style="color:#000;">(비인증)</a>
												</c:when>
												<c:when test="${user_type== 1}">
											    	님 <a href="/user/read" style="color:#000;">(이메일인증)</a>
												</c:when>
												<c:when test="${user_type== 2}">
											    	님 :)
												</c:when>
												<c:otherwise>
													<a href="/user/login" style="color:#000;" target="_self">회원가입하시면 푸짐한 혜택이 있습니다.</a>
												</c:otherwise>
											</c:choose>
										</span>
                                    </li>
                                    
									<c:choose>
										<c:when test="${user_id== null}">
		                          			<li><a href="/user/insert" class="" style="">회원가입</a></li>
		                          			<li><a href="/user/login" class="">로그인</a></li>
										</c:when>
										<c:otherwise>
											<li><a href="/user/mypage" class="" style="">마이페이지</a></li>
		                          			<li><a href="/user/logout" class="" style="">로그아웃</a></li>
										</c:otherwise>
									</c:choose>
									
                                </ul>
                            </div>
                        </div>                   
                    </div>
                </div>
                <div class="w100pro bd-ddd menu3New po-r">
				    <div class="body-inner-table ">
					<div class="d-table-cell po-u">
						<div class="d-block ">

							<ul class="paste-here f-right hide">
								<li><a class="open-menu open" title="OPEN MENU">OPEN MENU</a>
									<div class="open-menu-target open-target body-inner-table">
										<div class="po-f"> </div>
										<div class="all-menu">
											<p>전체메뉴<span class="menu-close" title="닫기"> </span></p>
										</div>
									</div>
								</li>
							</ul>

							<!-- main-menu -->
							<ul class="main-menu copy-this">
								<li><a href="" class="current" title="">주문제작</a>
									<ul class="">
										<li><a href="/cart/insert?cate=1" class="current" title="">목걸이</a></li>
										<li><a href="/cart/insert?cate=2" class="" title="">팔찌</a></li>
										<li><a href="/cart/insert?cate=3" class="" title="">발찌</a></li>
										<li><a href="/cart/insert?cate=4" class="" title="">귀걸이</a></li>
										<li><a href="/cart/insert?cate=5" class="" title="">반지</a></li>
												</ul>								
								</li>
								<li><a href="" class="" title="">주문/공정관리</a>
									<ul class="">
										<li><a href="/kongjeong" class="" title="">주문/공정관리</a></li>
										<!-- 
										<li><a href="/" class="" title="">샘플관리</a></li>
										<li><a href="/" class="" title="">후기관리</a></li>
										 -->
									</ul>								
								</li>
								<li><a href="" class="" title="">마이페이지</a>
									<ul class="">
				                      	<li><a href="/user/basket">장바구니</a></li>
				                        <li><a href="/user/read">정보수정</a></li>
				                        <li><a href="#" onclick="bizPopup('결제관리', '/user/address', '700' ); return false;">주소관리</a></li>
				                        <li><a href="#" onclick="bizPopup('결제관리', '/card/list', '700' ); return false;">결제관리</a></li>
	
									</ul>								
								</li>
								<li><a href="" class="" title="">고객센터</a>
									<ul class="">
				                      	<li><a href="/faq">FAQ</a></li>
				                      	<li><a href="/notice/list">공지사항</a></li>
										<li><a href="/pqna/list">1:1문의</a></li>
				                        <li><a href="/qna/list">Q&A</a></li>
									</ul>								
								</li>
								<li>
                                    <div class="lang-div">
                                        <a href="/">Korean</a>
                                        <a href="/">English</a>
                                        <a href="/">Chinese</a>
                                    </div>
								</li>


							</ul>
							<!-- /.main-menu -->



						</div>
					</div>
				    </div>
                    <div class="main-bg"></div>
			
                </div>
            </div>
			<!-- /.header -->
            
        </div><!-- #header -->
    </div>
