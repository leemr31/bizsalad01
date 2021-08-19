<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<script src="https://kit.fontawesome.com/787fdd6bc2.js" crossorigin="anonymous"></script>

<style>
	#floating-chat{
		color: white;
		font-size: 2em;
		display: table;
		text-align: center;
		box-shadow: 0px 10px 20px #0000003f;
		padding: 15;
	}
</style>

<div class="biz-content-wrap-bmenu-wrap ma-t-3em">
	<div class="biz-content-wrap-bmenu">

	    <div class="d-table w100pro pa-dot5 cupoint" style=" font-weight: 500;">
	        <div class="d-table-cell pa-dot5"><a href="#" style="color:#000;">회사소개</a></div>
	        <div class="d-table-cell pa-dot5 open-popup cupoint" id="m-spam">스팸정책</div>
	        <div class="d-table-cell pa-dot5 open-popup cupoint" id="m-service">이용약관</div>
	        <a href="/company" class="d-table-cell pa-dot5 t-center r6 whitefont cupoint" style="background-color: #a8a9a9;">업체전용</a>
	    </div>
    </div>
</div>

<div class="biz-content-wrap-bottom-wrap">
	<div class="biz-content-wrap-bottom">

	    <div class="d-table w100pro pa-2em" style="background-color: #262636;">
	    	<div class="d-table w100pro ma-b-1em">
		        <a class="d-table-cell w30pro ma-b-1em big-text bold" href="admin" style="color:#fff;">bizsalad</a>
		        <a class="d-table-cell w70pro ma-b-1em big-text bold t-right" href="admin" style="color:#fff;"><img src="/resources/img/snsall2.png" style="height:30px;"></a>
			</div>
			
	        <div class="d-table w100pro">
	            <ul class="bot_com">
	                <li>대표이사 : 홍길동</li>
	                <li>상호명 : 비즈샐러드</li>
	                <li>사업자번호 : <span>123-45-67890</span></li>
	                <li>업태 : 도소매</li><li>업종 : 전자상거래</li>
	                <li>ADDRESS : 인천광역시 우리구 우리로123번길 4, 우리빌 1층 101호(우리동)</li>
	                <li>TEL : <span><a href='tel:1234-1234' style="color:#fff;">1234-1234</a></span></li>
	                <li>FAX : <span>050-1234-1234</span></li>
	            </ul>
	        </div>
	    </div>
	    
	    <div class="d-table w100pro pa-dot5 mbot-direct" style="padding-bottom:70px;"> </div>
	    
	    <div class="d-table w100pro pa-dot5 mbot-direct" style="border-top:1px solid #555659; font-weight: 500; position:fixed; bottom:0; background-color:#fff; max-width:1300px; z-index:999;">
	        <div class="d-table-cell w15pro pa-dot5 t-center"><a href="#" class="d-block small-text" style="color:black;"><i class="fas fa-home fa-lg"></i><p class="small-text3 pa-t-dot5">홈</p></a></div>
	        <div class="d-table-cell w20pro pa-dot5 t-center"><a href="tel:1234-1234" class="d-block small-text" style="color:black;"><i class="fas fa-phone fa-lg"></i><p class="small-text3 pa-t-dot5">전화걸기</p></a></div>
	        <div class="d-table-cell w20pro pa-dot5 t-center"><a href="#" class="d-block small-text" style="color:black;"><i class="fas fa-comment-dots fa-lg"></i><p class="small-text3 pa-t-dot5">1:1상담</p></a></div>
	        <div class="d-table-cell w20pro pa-dot5 t-center"><a href="#" class="d-block small-text" style="color:black;"><i class="fas fa-comments fa-lg"></i><p class="small-text3 pa-t-dot5">카톡상담</p></a></div>
	        <div class="d-table-cell w20pro pa-dot5 t-center"><a href="#" class="d-block small-text" style="color:black;"><i class="fas fa-calculator fa-lg"></i><p class="small-text3 pa-t-dot5">계산기</p></a></div>
	    </div>
	    
	    <div id="floating-chat" style="position:fixed; bottom: 80px; right:10px;width:60px; height:60px; border-radius:50%; background-color:#44A733; z-index:1000; cursor:pointer;" onclick="bizPopup('실시간 채팅', '/chat', '550px');">
	    	<i class="far fa-comment-dots"></i>
	    </div>
	    
    </div>
</div>