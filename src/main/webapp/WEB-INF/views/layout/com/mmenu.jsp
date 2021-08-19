<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

	<div class="dg-hd-mo hidden-lg">

          
          <!--메뉴전체 -->
          <nav class="dg-hd-mo-menu-panel">
              
            <b class="dg-hd-mo-menu-btn" title="menu"><span></span></b>
              
              <div class="sideNew">
                  <div class="mo-menu-title">
                    <a href="/company" class="dg-white">
	                    <i class="fas fa-home fa-lg"></i>
	                    &nbsp;&nbsp;
	                    <span class="small-text" style="color:#fff;">
							<c:choose>
								<c:when test="${company_name== null}">
							    	${company_id}
								</c:when>
								<c:otherwise>
									${company_name}
								</c:otherwise>
							</c:choose>
							<c:choose>
								<c:when test="${company_type== 3}">
							    	님 <a href="/admin" class="small-text" style="color:#fff;">(관리자)</a>
								</c:when>
								<c:when test="${company_type== 0}">
							    	님 <a href="company/read" class="small-text" style="color:#fff;">(비인증)</a>
								</c:when>
								<c:when test="${company_type== 1}">
							    	님 <a href="company/read" class="small-text" style="color:#fff;">(이메일인증)</a>
								</c:when>
								<c:when test="${company_type== 2}">
							    	님 :)
								</c:when>
								<c:otherwise>
									<a href="/company/login" class="small-text" style="color:#fff;" target="_self">guest</a><br/>
								</c:otherwise>
							</c:choose>
						</span>
                    </a>
                  </div>
                  <div class="w100pro pa-2em " style="background-color:#f0f1f5; border-bottom:1px solid #d2d2d2;">
                      <div class="d-table w100pro big-text" style="margin-bottom:0.5em;">
							<c:choose>
								<c:when test="${company_id== null}">
                          			<a href="/company/insert" class="d-table-cell w50pro dg-white pa-dot5 t-center f-left" style="background-color:#000;border:1px solid #000; letter-spacing:0.0.05em; height:50px;">회원가입</a>
                          			<a href="/company/login" class="d-table-cell w50pro pa-dot5 t-center f-left" style="background-color:#fff; border:1px solid #000; color:#000; letter-spacing:0.05em; height:50px;">로그인</a>
								</c:when>
								<c:otherwise>
									<a href="/company/read" class="d-table-cell w50pro dg-white pa-dot5 t-center f-left" style="background-color:#000;border:1px solid #000; letter-spacing:0.0.05em; height:50px;">정보수정</a>
                          			<a href="/company/logout" class="d-table-cell w50pro pa-dot5 t-center f-left" style="background-color:#fff; border:1px solid #000; color:#000; letter-spacing:0.05em; height:50px;">로그아웃</a>
								</c:otherwise>
							</c:choose>
                      
                      

                      </div>
                      <!-- 
                      <div class="d-table w100pro big-text3">
                          <a href="#" class="d-table-cell dg-white t-center r6 f-left" style="background-color:#9facb5; width:36%; margin-right:2%; letter-spacing:1px; padding: 0.5em 0;">추가<br>메뉴</a>
                          <a href="#" class="d-table-cell dg-white t-center r6 f-left" style="background-color:#9facb5; width:30%; margin-right:2%; letter-spacing:1px; padding: 0.5em 0;">추가<br>메뉴</a>
                          <a href="#" class="d-table-cell dg-white t-center r6 f-left" style="background-color:#9facb5; width:30%; letter-spacing:1px; padding: 0.5em 0;">추가<br>메뉴</a>
                      </div>
						 -->
                  </div>
                  <ul class="auto">
                    <li class="menu-label menu-arrow-active-li">
                      <a href="#" class="dg-point dg-a">업체관리</a>
                      <span class="dg-hd-mo-menu-arrow menu-arrow-active"></span>
                      <ul class="sub-menu sub-menu-on">
                        <li><a href="/process/list?company_seq=${company_seq}">발주관리</a></li>
                        <li><a href="/process/list2?company_seq=${company_seq}">주문관리</a></li>
                        <li><a href="/company/ballist">정산관리</a></li>
                      </ul>
                    </li>
                    <li class="menu-label">
                      <a href="#" class="dg-a">마이페이지</a>
                      <span class="dg-hd-mo-menu-arrow"></span>
                      <ul class="sub-menu">
                        <li><a href="/company/read">정보수정</a></li>
                        <li><a href="#" onclick="bizPopup('결제관리', '/com/address/Poplist', '700' ); return false;">주소관리</a></li>
                      </ul>
                    </li>
                    <li class="menu-label menu-arrow-active-li-last">
                      <a href="#" class="dg-a">고객센터</a>
                      <span class="dg-hd-mo-menu-arrow-last"></span>
                      <ul class="sub-menu">
                      	<li><a href="/faq/company">FAQ</a></li>
                      	<li><a href="/notice/list">공지사항</a></li>
                      	<li><a href="/pqna/list">1:1문의</a></li>
                        <li><a href="/qna/list">Q&A</a></li>
						<li><a href="/report/list">신고하기</a></li>
                      </ul>
                    </li>
                  </ul>
              
                  <div class="d-table w100pro pa-1em " style="background-color:#f0f1f5; border-top:1px solid #d2d2d2;">
                    <a href="#" class="dg-hd-mo-close-btn d-block t-center big-text" style="color:#848587;">닫기</a>
                  </div>           
              </div>
              

          </nav>
          

	</div>
	<!-- 
	<div class="panel-overlay"></div>
	
	<div class="d-table w100pro big-text">
		<a href="." class="d-table-cell w50pro dg-white pa-dot5 t-center f-left" style="background-color:#1d2fdf;border:1px solid #1d2fdf; letter-spacing:0.0.05em; height:50px;">메뉴1</a>
		<a href="." class="d-table-cell w50pro pa-dot5 t-center f-left" style="background-color:#fff; border:1px solid #1d2fdf; color:#1d2fdf; letter-spacing:0.05em; height:50px;">메뉴2</a>
	</div>
	 -->
	<!-- 
	<div class="d-tan;e w100pro"style="background-color:#fff; border-bottom:1px solid #000; border-top:1px solid #000; height:50px;">
		<div class="d-table w100pro big-text biz-content-wrap-menu">
			<a href="/cart/insert?cate=1" class="d-table-cell w20pro pa-dot5 t-center f-left" style="color:#000; letter-spacing:0.05em; height:50px;">주문제작</a>
			<a href="/kongjeong" class="d-table-cell w20pro pa-dot5 t-center f-left" style="color:#000; letter-spacing:0.05em; height:50px;">공정관리</a>
			<a href="/order/list1" class="d-table-cell w20pro pa-dot5 t-center f-left" style="color:#000; letter-spacing:0.05em; height:50px;">주문관리</a>
			<a href="/order/list2" class="d-table-cell w20pro pa-dot5 t-center f-left" style="color:#000;letter-spacing:0.05em; height:50px;">샘플관리</a>
			<a href="/board/list" class="d-table-cell w20pro pa-dot5 t-center f-left" style="color:#000;letter-spacing:0.05em; height:50px;">고객센터</a>
		</div>
	</div>
	 -->