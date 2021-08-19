<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="pageName" value="인덱스"/>
<html>
<head>
	
	<title>비즈샐러드</title>
	<jsp:include page="/WEB-INF/views/layout/user/minclude.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/layout/user/add_css.jsp"></jsp:include>
	
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
		
	</style>
	
	<script>
	
		/**** page loading ****/
		
		$(document).ready(function() {
			$('.ui-loader-t').fadeIn("fast");
		});
		
		$(window).on('load', function() {
			$('.ui-loader-t').fadeOut("fast");
			$("#biz-content-wrap").css('visibility','visible');
			//$('#biz-content-wrap').fadeIn("fast");

		});
		
	</script>

</head>
<body class="" style="width:100%; height:100%;">


	<!-- <div class="ui-loader"><span class="ui-icon-loading"></span></div> -->
	<div class="ui-loader-t"><span class="ui-icon-loading-gr"></span></div>
	
    <!--어두워지는 부분-->
    <div class="dg-hd-mo-menu-panel-overlay"></div>
    
    

	<div id="biz-content-wrap">
		
		<jsp:include page="/WEB-INF/views/layout/user/ptop.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/user/mtop.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/user/mmenu.jsp"></jsp:include>
		
		
		
		<!-------------------------------------- index contents start //----------------------------------->
		    
		  <!-- Swiper main banner -->
		  <div class="swiper-container main_slide" style="height:520px;">
		    <div class="swiper-wrapper">
		      <div class="swiper-slide" style="background-color:#afafad"><a href="#"></a></div>
		      <div class="swiper-slide" style="background-color:#f7f8fa"><a href="#"></a></div>
		      <div class="swiper-slide"><a href="#"></a></div>
		      <div class="swiper-slide" style="background-color:#f4f5f7"><a href="#"></a></div>
		    </div>
		    <!-- Add Pagination -->
		    <div class="swiper-pagination"></div>
		  </div>
		

    
	    <div class="d-table w100pro t-center ma-t-3em">
	        <div class="new-banner2-title2">
	            <p><span>나만의 상품 만들기</span><span>!</span></p>
	            <p>자신만의 악세사리! 지금 만들어보세요.</p>
	        </div>
	    </div>
    
    	<!-- responsive category -->
    	
	    <div class="d-table w100pro biz-content-wrap-con ma-t-3em">
	        <div class="d-table-cell w100pro">
	            <ul class="midcls">
	                <li>
	                	<div>
	                		<a href="/cart/insert?cate=1">
		                		<img src="/resources/img/necklace.jpg">
		                		<p>목걸이</p>
	                		</a>
	                	</div>
	                    
	                    <div></div>
	                </li>
	                <li>
	                	<div>
		                	<a href="/cart/insert?cate=2">
			                    <img src="/resources/img/bracelet.jpg">
			                    <p>팔찌</p>
		                    </a>
	                	</div>

	                </li>
	                <li>
	                	<div>
		                	<a href="/cart/insert?cate=3">
			                    <img src="/resources/img/anklet.jpg">
			                    <p>발찌</p>
		                    </a>
	                	</div>
	                    
	                    <div></div>
	                </li>
	                <li>
	                	<div>
		                	<a href="/cart/insert?cate=4">
			                    <img src="/resources/img/earring.jpg">
			                    <p>귀걸이</p>
		                    </a>
	                	</div>
	                </li>
	                <li>
	                	<div>
	                		<a href="/cart/insert?cate=5">
		                		<img src="/resources/img/ring.jpg">
		                		<p>반지</p>
	                		</a>
	                	</div>
	                </li>
					<li>
						<p></p>
	                </li>
	            </ul>
	        </div>
	    </div>
	    
	    <div class="d-table w100pro t-center ma-t-3em">
	        <div class="new-banner2-title2">
	            <p><span>제작상품</span><span>!</span></p>
	            <p>이미 많은 사람들이 이용하는 비즈샐러드</p>
	        </div>
	    </div>
	    
		    
		  <!-- Swiper -->
		  <div class="swiper-container product_slide ma-t-3em biz-content-wrap-slide" style="height:300px;">
		    <div class="swiper-wrapper">
		        <div class="swiper-slide"><div class="d-block w100pro h100pro"><img src="/resources/img/sample1.jpg"></div></div>
		        <div class="swiper-slide"><div class="d-block w100pro h100pro"><img src="/resources/img/sample2.jpg"></div></div>
		        <div class="swiper-slide"><div class="d-block w100pro h100pro"><img src="/resources/img/sample3.jpg"></div></div>
		        <div class="swiper-slide"><div class="d-block w100pro h100pro"><img src="/resources/img/sample4.jpg"></div></div>
		        <div class="swiper-slide"><div class="d-block w100pro h100pro"><img src="/resources/img/sample5.jpg"></div></div>
		        <div class="swiper-slide"><div class="d-block w100pro h100pro"><img src="/resources/img/sample6.jpg"></div></div>
		        <div class="swiper-slide"><div class="d-block w100pro h100pro"><img src="/resources/img/sample7.jpg"></div></div>
		        <div class="swiper-slide"><div class="d-block w100pro h100pro"><img src="/resources/img/sample8.jpg"></div></div>
		        <div class="swiper-slide"><div class="d-block w100pro h100pro"><img src="/resources/img/sample9.jpg"></div></div>
		    </div>
		    <!-- Add Pagination -->
		    <div class="swiper-pagination"></div>
		  </div>
		
		
		
		<div class="d-table w100pro " style=" margin-top:10em;"></div>

	    <div class="d-table w100pro " style="height:500px; background:url(/resources/img/utbg.png)">
		    <div class="d-table w100pro biz-content-wrap-con youtube" style="padding:4em 1em;">
		    
		    	<iframe width="50%" height="360px" src="https://www.youtube.com/embed/NCUmUA6I-NY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		    	<div class="f-right pa-1em" style="background-color:#000; opacity:.6; border-radius:20px;">
		    		<p class="v-middle t-center big-text bold" style="color:#fff;">ALL about MY ACCS💍 최애 악세사리 총 정리 모음zip. (오늘도 tmi 가득..)</p>
		    		<p class="ma-t-1em" style="color:#fff;">
		    		
BRACELET<br/>
pandora<br/>
스트랩 ∙ (590702HV)<br/>
클립 ∙ cherry blossom clip (791826EN40)<br/>
스페이서 ∙ daisy silver spacer with white enamel (791495EN12)<br/>
(저는 핑크색인데..홈페이지에는 실버밖에 없더라구요?)<br/><br/>

NECKLACE<br/>
brillpiece ∙ love pendant necklace<br/>
morethancheese ∙ oval pearl & onxy necklace (sold out)<br/>
mirabelle ∙ transparent crystal necklace<br/>
L'éclat atelier ∙ essentiel boucle s necklace <br/>
eou studio ∙ the texture of glass / 03<br/>
finnlee ∙ bleeding hearts / pearl<br/>
finnlee ∙ bleeding hearts / choaker<br/>

		    		</p>
		    		
		    	</div>

		    </div>
	    </div>
	    
	    
	    
	    
	    <div class="d-table w100pro t-center ma-t-3em">
	        <div class="new-banner2-title2">
	            <p><span>인플루언서</span><span>!</span></p>
	            <p>인플루언서들이 대신 팔아드립니다.</p>
	        </div>
	    </div>
	    
		    
		  <!-- Swiper -->
		  <div class="swiper-container influr_slides ma-t-3em biz-content-wrap-slide" style="">
		    <div class="swiper-wrapper">
		        <div class="swiper-slide influrs"><div class="d-block w100pro h100pro"><img src="/resources/img/ut1.png"></div></div>
		        <div class="swiper-slide influrs"><div class="d-block w100pro h100pro"><img src="/resources/img/ut2.png"></div></div>
		        <div class="swiper-slide influrs"><div class="d-block w100pro h100pro"><img src="/resources/img/ut3.png"></div></div>
		        <div class="swiper-slide influrs"><div class="d-block w100pro h100pro"><img src="/resources/img/ut4.png"></div></div>
		        <div class="swiper-slide influrs"><div class="d-block w100pro h100pro"><img src="/resources/img/ut5.png"></div></div>
		        <div class="swiper-slide influrs"><div class="d-block w100pro h100pro"><img src="/resources/img/ut6.png"></div></div>
		        <div class="swiper-slide influrs"><div class="d-block w100pro h100pro"><img src="/resources/img/ut1.png"></div></div>
		        <div class="swiper-slide influrs"><div class="d-block w100pro h100pro"><img src="/resources/img/ut2.png"></div></div>
		        <div class="swiper-slide influrs"><div class="d-block w100pro h100pro"><img src="/resources/img/ut3.png"></div></div>
		        <div class="swiper-slide influrs"><div class="d-block w100pro h100pro"><img src="/resources/img/ut3.png"></div></div>
		        <div class="swiper-slide influrs"><div class="d-block w100pro h100pro"><img src="/resources/img/ut4.png"></div></div>
		        <div class="swiper-slide influrs"><div class="d-block w100pro h100pro"><img src="/resources/img/ut5.png"></div></div>
		        <div class="swiper-slide influrs"><div class="d-block w100pro h100pro"><img src="/resources/img/ut6.png"></div></div>
		    </div>
		    <!-- Add Pagination -->
		    <div class="swiper-pagination"></div>
		  </div>
		

	    
	    <div class="d-table w100pro t-center ma-t-3em">
	        <div class="new-banner2-title ">
	            <p><span>제작후기</span><span>!</span></p>
	            <p>사용자들의 생생한 후기를 확인하세요.</p>
	        </div>
	    </div>
	    
	    
		    
		  <!-- Swiper -->
		  <div class="swiper-container review_slide ma-t-3em biz-content-wrap-slide" style="height:650px;">
		    <div class="swiper-wrapper">
		        <div class="swiper-slide">
		        	<div class="d-table w100pro" style="background-color:#fff; border-radius:20px;">
		        
				    	<div class="d-table-cell v-middle pa-1em"><img src="/resources/img/sample1.jpg"></div>
				    	<div class="d-table-cell v-middle pa-2em">
				    		<p class="v-middle t-center big-text bold" style="color:#000;">공정마다 세세하게 체크할 수 있고 인플루언서와 연결되어...</p>
				    		<p class="ma-t-1em t-left" style="color:#000;">
				    		
		제가 원하는 디자인에~<br/>
		원하는 수량과 합리적인 가격!!!!<br/>
		비즈샐러드로 주문하길 잘했어요.<br/>
		이번에 대만왕홍과 연결되어 판매도 굉장히 많이 되었습니다.<br/>
		다음주면 2차 리오더 할 수 있을 것 같고,<br/>
		추가로 새로운 디자인도 가능할 것 같아요.<br/><br/>
		
		발품팔지 않아도 이렇게 악세사리를 만들 수 있다니!!!<br/>
		정말 신세계입니다.<br/>
		사업 번창하세요~~~ 비즈샐러드 화이팅!!!<br/>
		
				    		</p>
				    		
				    	</div>
		        
		        	</div>
		        
		        </div>
		        <div class="swiper-slide">
		        	<div class="d-table w100pro" style="background-color:#fff; border-radius:20px;">
		        
				    	<div class="d-table-cell v-middle pa-1em"><img src="/resources/img/sample2.jpg"></div>
				    	<div class="d-table-cell v-middle pa-2em">
				    		<p class="v-middle t-center big-text bold" style="color:#000;">공정마다 세세하게 체크할 수 있고 인플루언서와 연결되어...</p>
				    		<p class="ma-t-1em t-left" style="color:#000;">
				    		
		제가 원하는 디자인에~<br/>
		원하는 수량과 합리적인 가격!!!!<br/>
		비즈샐러드로 주문하길 잘했어요.<br/>
		이번에 대만왕홍과 연결되어 판매도 굉장히 많이 되었습니다.<br/>
		다음주면 2차 리오더 할 수 있을 것 같고,<br/>
		추가로 새로운 디자인도 가능할 것 같아요.<br/><br/>
		
		발품팔지 않아도 이렇게 악세사리를 만들 수 있다니!!!<br/>
		정말 신세계입니다.<br/>
		사업 번창하세요~~~ 비즈샐러드 화이팅!!!<br/>
		
				    		</p>
				    		
				    	</div>
		        
		        	</div>
		        
		        </div>
		        <div class="swiper-slide">
		        	<div class="d-table w100pro" style="background-color:#fff; border-radius:20px;">
		        
				    	<div class="d-table-cell v-middle pa-1em"><img src="/resources/img/sample3.jpg"></div>
				    	<div class="d-table-cell v-middle pa-2em">
				    		<p class="v-middle t-center big-text bold" style="color:#000;">공정마다 세세하게 체크할 수 있고 인플루언서와 연결되어...</p>
				    		<p class="ma-t-1em t-left" style="color:#000;">
				    		
		제가 원하는 디자인에~<br/>
		원하는 수량과 합리적인 가격!!!!<br/>
		비즈샐러드로 주문하길 잘했어요.<br/>
		이번에 대만왕홍과 연결되어 판매도 굉장히 많이 되었습니다.<br/>
		다음주면 2차 리오더 할 수 있을 것 같고,<br/>
		추가로 새로운 디자인도 가능할 것 같아요.<br/><br/>
		
		발품팔지 않아도 이렇게 악세사리를 만들 수 있다니!!!<br/>
		정말 신세계입니다.<br/>
		사업 번창하세요~~~ 비즈샐러드 화이팅!!!<br/>
		
				    		</p>
				    		
				    	</div>
		        
		        	</div>
		        
		        </div>
		        <div class="swiper-slide">
		        	<div class="d-table w100pro" style="background-color:#fff; border-radius:20px;">
		        
				    	<div class="d-table-cell v-middle pa-1em"><img src="/resources/img/sample4.jpg"></div>
				    	<div class="d-table-cell v-middle pa-2em">
				    		<p class="v-middle t-center big-text bold" style="color:#000;">공정마다 세세하게 체크할 수 있고 인플루언서와 연결되어...</p>
				    		<p class="ma-t-1em t-left" style="color:#000;">
				    		
		제가 원하는 디자인에~<br/>
		원하는 수량과 합리적인 가격!!!!<br/>
		비즈샐러드로 주문하길 잘했어요.<br/>
		이번에 대만왕홍과 연결되어 판매도 굉장히 많이 되었습니다.<br/>
		다음주면 2차 리오더 할 수 있을 것 같고,<br/>
		추가로 새로운 디자인도 가능할 것 같아요.<br/><br/>
		
		발품팔지 않아도 이렇게 악세사리를 만들 수 있다니!!!<br/>
		정말 신세계입니다.<br/>
		사업 번창하세요~~~ 비즈샐러드 화이팅!!!<br/>
		
				    		</p>
				    		
				    	</div>
		        
		        	</div>
		        
		        </div>
		        <div class="swiper-slide">
		        	<div class="d-table w100pro" style="background-color:#fff; border-radius:20px;">
		        
				    	<div class="d-table-cell v-middle pa-1em"><img src="/resources/img/sample5.jpg"></div>
				    	<div class="d-table-cell v-middle pa-2em">
				    		<p class="v-middle t-center big-text bold" style="color:#000;">공정마다 세세하게 체크할 수 있고 인플루언서와 연결되어...</p>
				    		<p class="ma-t-1em t-left" style="color:#000;">
				    		
		제가 원하는 디자인에~<br/>
		원하는 수량과 합리적인 가격!!!!<br/>
		비즈샐러드로 주문하길 잘했어요.<br/>
		이번에 대만왕홍과 연결되어 판매도 굉장히 많이 되었습니다.<br/>
		다음주면 2차 리오더 할 수 있을 것 같고,<br/>
		추가로 새로운 디자인도 가능할 것 같아요.<br/><br/>
		
		발품팔지 않아도 이렇게 악세사리를 만들 수 있다니!!!<br/>
		정말 신세계입니다.<br/>
		사업 번창하세요~~~ 비즈샐러드 화이팅!!!<br/>
		
				    		</p>
				    		
				    	</div>
		        
		        	</div>
		        
		        </div>
		        <div class="swiper-slide">
		        	<div class="d-table w100pro" style="background-color:#fff; border-radius:20px;">
		        
				    	<div class="d-table-cell v-middle pa-1em"><img src="/resources/img/sample6.jpg"></div>
				    	<div class="d-table-cell v-middle pa-2em">
				    		<p class="v-middle t-center big-text bold" style="color:#000;">공정마다 세세하게 체크할 수 있고 인플루언서와 연결되어...</p>
				    		<p class="ma-t-1em t-left" style="color:#000;">
				    		
		제가 원하는 디자인에~<br/>
		원하는 수량과 합리적인 가격!!!!<br/>
		비즈샐러드로 주문하길 잘했어요.<br/>
		이번에 대만왕홍과 연결되어 판매도 굉장히 많이 되었습니다.<br/>
		다음주면 2차 리오더 할 수 있을 것 같고,<br/>
		추가로 새로운 디자인도 가능할 것 같아요.<br/><br/>
		
		발품팔지 않아도 이렇게 악세사리를 만들 수 있다니!!!<br/>
		정말 신세계입니다.<br/>
		사업 번창하세요~~~ 비즈샐러드 화이팅!!!<br/>
		
				    		</p>
				    		
				    	</div>
		        
		        	</div>
		        
		        </div>
		        <div class="swiper-slide">
		        	<div class="d-table w100pro" style="background-color:#fff; border-radius:20px;">
		        
				    	<div class="d-table-cell v-middle pa-1em"><img src="/resources/img/sample7.jpg"></div>
				    	<div class="d-table-cell v-middle pa-2em">
				    		<p class="v-middle t-center big-text bold" style="color:#000;">공정마다 세세하게 체크할 수 있고 인플루언서와 연결되어...</p>
				    		<p class="ma-t-1em t-left" style="color:#000;">
				    		
		제가 원하는 디자인에~<br/>
		원하는 수량과 합리적인 가격!!!!<br/>
		비즈샐러드로 주문하길 잘했어요.<br/>
		이번에 대만왕홍과 연결되어 판매도 굉장히 많이 되었습니다.<br/>
		다음주면 2차 리오더 할 수 있을 것 같고,<br/>
		추가로 새로운 디자인도 가능할 것 같아요.<br/><br/>
		
		발품팔지 않아도 이렇게 악세사리를 만들 수 있다니!!!<br/>
		정말 신세계입니다.<br/>
		사업 번창하세요~~~ 비즈샐러드 화이팅!!!<br/>
		
				    		</p>
				    		
				    	</div>
		        
		        	</div>
		        
		        </div>
		        <div class="swiper-slide">
		        	<div class="d-table w100pro" style="background-color:#fff; border-radius:20px;">
		        
				    	<div class="d-table-cell v-middle pa-1em"><img src="/resources/img/sample8.jpg"></div>
				    	<div class="d-table-cell v-middle pa-2em">
				    		<p class="v-middle t-center big-text bold" style="color:#000;">공정마다 세세하게 체크할 수 있고 인플루언서와 연결되어...</p>
				    		<p class="ma-t-1em t-left" style="color:#000;">
				    		
		제가 원하는 디자인에~<br/>
		원하는 수량과 합리적인 가격!!!!<br/>
		비즈샐러드로 주문하길 잘했어요.<br/>
		이번에 대만왕홍과 연결되어 판매도 굉장히 많이 되었습니다.<br/>
		다음주면 2차 리오더 할 수 있을 것 같고,<br/>
		추가로 새로운 디자인도 가능할 것 같아요.<br/><br/>
		
		발품팔지 않아도 이렇게 악세사리를 만들 수 있다니!!!<br/>
		정말 신세계입니다.<br/>
		사업 번창하세요~~~ 비즈샐러드 화이팅!!!<br/>
		
				    		</p>
				    		
				    	</div>
		        
		        	</div>
		        
		        </div>
		        
		    </div>
		    <!-- Add Pagination -->
		    <div class="swiper-pagination"></div>
		  </div>

		

	   
	   
	  <!-- Swiper JS -->
	  <!-- <script src="/resources/package/js/swiper.min.js"></script>  -->
	  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	  
	  <!-- Initialize Swiper -->
	  <script>
	    var swiper = new Swiper('.main_slide', {
	      spaceBetween: 0,
	      centeredSlides: true,
	      autoplay: {
	        delay: 3000,
	        disableOnInteraction: false,
	      },
	      pagination: {
	        el: '.swiper-pagination',
	        clickable: true,
	      },
	        loop: true,
	      navigation: {
	        nextEl: '.swiper-button-next',
	        prevEl: '.swiper-button-prev',
	      },
	    });
	  </script>
	  
	  <!-- Initialize Swiper -->
	  <script>
	    var swiper = new Swiper('.product_slide', {
	        slidesPerView: 3,
	        spaceBetween: 30,
	        slidesPerGroup: 3,
		      autoplay: {
			        delay: 3000,
			        disableOnInteraction: false,
			      },
	        loop: true,
	        loopFillGroupWithBlank: true,
	        pagination: {
	          el: ".swiper-pagination",
	          clickable: true,
	        },
	        navigation: {
	          nextEl: ".swiper-button-next",
	          prevEl: ".swiper-button-prev",
	        },
	      });
	  </script>
	  
	  <!-- Initialize Swiper -->
	  <script>
	    var swiper = new Swiper('.influr_slides', {
	        slidesPerView: 4,
	        slidesPerColumn: 2,
	        spaceBetween: 30,
		      autoplay: {
			        delay: 3000,
			        disableOnInteraction: false,
			      },
	        pagination: {
	          el: ".swiper-pagination",
	          clickable: true,
	        },
	    });
	  </script>
	  
	  <!-- Initialize Swiper -->
	  <script>
	    var swiper = new Swiper('.review_slide', {
	      spaceBetween: 0,
	      centeredSlides: true,
	      autoplay: {
	        delay: 3000,
	        disableOnInteraction: false,
	      },
	      pagination: {
	        el: '.swiper-pagination',
	        clickable: true,
	      },
	        loop: true,
	      navigation: {
	        nextEl: '.swiper-button-next',
	        prevEl: '.swiper-button-prev',
	      },
	    });
	  </script>
	  
	<script>
	
		//$('.ui-loader').css('display','block');
		
	</script>
	  
	  <!------------------------------------------- index contents end //---------------------------->
	  
	  <br/><br/><br/><br/>
	   
		<jsp:include page="/WEB-INF/views/layout/user/mcontent.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/user/mbot.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/layout/user/mpopup.jsp"></jsp:include>
		
		
		
		
		
		
   </div>

</body>
</html>