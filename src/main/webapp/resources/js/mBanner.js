
            //viewAds_start();
    
           // 애니메이션기능 사용으로 이미지 최대3개(style 에 포함됨)로 이루어 지며, 스타일과 adBox 의 배열은 계속 추가될 예정
           // 지우진 않았지만 css 부분은 CSS에서 addClass 나 그냥 매칭해서 불러오는 방식이라 필요없음
           // image 부분도 스타일 요소에 포함된 부분이나, only image 인 경우를 대비해서 남겨 놓음.

            var adBox = [ 
                 {        
                    subtitle : [""],
                    title : [""],
                    title2 : ["", ""],
                    title3 : ["", "", ""],
                    content : [""],
                    image : ["4_1.png"],
                    link : ["/test1.htm"],
                    css : {layout : "0"} //only image
                 },    
                 {
                    subtitle : ["복잡한 설명은", "NO"],
                    title : ["이용가이드"],
                    title2 : ["빠른", "이용가이드"],
                    title3 : ["빠른", "이용", "가이드"],
                    content : ["고객 여러분의 편리함을<br>먼저 생각합니다."],
                    image : [""],
                    link : ["/test1.htm"],
                    css : {layout : "1"}
                 },             
                 {
                    subtitle : ["이용이 불편하신가요?",""],
                    title : ["원격지원"],
                    title2 : ["원격지원", "AS"],
                    title3 : ["원격", "지원", "AS"],
                    content : ["상담원이 직접 고객님의<br>PC를 원격지원해드립니다."],
                    image : [""],
                    link : ["/test2.htm"],    
                    css : {layout : "2"}
                 },     
                 { //요금정보는 input hidden 부분에서 가져옵니다.
                    subtitle : ["국내 최저가", "요금"],
                    title : ["사용요금안내"],
                    title2 : ["사용요금", "안내"],
                    title3 : ["사용", "요금", "안내"],
                    content : ["국내 최저가 할인시행<br>발송 단가를 확인하세요."],
                    image : [""],
                    link : ["/test3.htm"],                
                    css : {layout : "3"}
                 },  
                 {
                    subtitle : ["합리적인", "요금"],
                    title : ["충전하기"],
                    title2 : ["충전", "바로하기"],
                    title3 : ["충전", "바로", "하기"],
                    content : ["만족스러운<br>합리적인 요금으로 충전하세요!!"],
                    image : [""],
                    link : ["/test3.htm"],
                    css : {layout : "4"}
                 },
                 {
                    subtitle : [""],
                    title : [""],
                    title2 : [""],
                    title3 : [""],
                    content : [""],
                    image : ["css/imgNew/ban2_3.png"],
                    link : ["/test3.htm"],
                    css : {layout : "5"}
                 },
                 {
                    subtitle : [""],
                    title : [""],
                    title2 : [""],
                    title3 : [""],
                    content : [""],
                    image : ["css/imgNew/ban2_4.png"],
                    link : ["/test3.htm"],
                    css : {layout : "22"}
                 },
                 {
                    subtitle : [""],
                    title : [""],
                    title2 : [""],
                    title3 : [""],
                    content : [""],
                    image : ["css/imgNew/ban2_5.png"],
                    link : ["/test3.htm"],
                    css : {layout : "22"}
                 },
                 {
                    subtitle : [""],
                    title : ["사용요금안내"],
                    title2 : [""],
                    title3 : [""],
                    content : ["#fce3b9"],
                    image : ["css/imgNew/ban2_4_1.png"],
                    link : ["/test3.htm"],
                    css : {layout : "22"}
                 },
                 {
                    subtitle : [""],
                    title : ["충전하기"],
                    title2 : [""],
                    title3 : [""],
                    content : ["#b6e1f2"],
                    image : ["css/imgNew/ban2_5_1.png"],
                    link : ["/test3.htm"],
                    css : {layout : "22"}
                 }
                
            ];
        
            var adBox2 = [ 
                 {        
                    title : [""],
                    content : [""],
                    image : ["4_1.png"],
                    link : ["/test1.htm"], //only image
                 },    
                 {
                    title : ["문자보내기"],
                    content : ["한번의 클릭만으로 수천수만 개의<br/>문자를 한번에 발송"],
                    image : ["c_icon01.png"],
                    link : ["/test1.htm"],
                 },             
                 {
                    title : ["선거대량문자"],
                    content : ["한번의 클릭만으로 수천수만 개의<br/>문자를 한번에 발송"],
                    image : ["c_icon02.png"],
                    link : ["/test1.htm"],
                 },     
                 { 
                    title : ["주소록"],
                    content : ["한번의 클릭만으로 수천수만 개의<br/>문자를 한번에 발송"],
                    image : ["c_icon03.png"],
                    link : ["/test1.htm"],
                 },  
                 {
                    title : ["사용통계"],
                    content : ["한번의 클릭만으로 수천수만 개의<br/>문자를 한번에 발송"],
                    image : ["c_icon04.png"],
                    link : ["/test1.htm"],
                 },    
                 {
                    title : ["080 수신거부번호 신청"],
                    content : ["한번의 클릭만으로 수천수만 개의<br/>문자를 한번에 발송"],
                    image : ["c_icon05.png"],
                    link : ["/test1.htm"],
                 },             
                 {
                    title : ["추가하세요"],
                    content : ["추가하세요"],
                    image : ["c_icon06.png"],
                    link : ["/test1.htm"],
                 } 
            ];


            var adBox3 = [ 
                 {        
                    title : [""],
                    image : ["4_1.png"],
                    link : ["/test1.htm"], //only image
                 },    
                 {
                    title : ["문자보내기"],
                    image : ["d_icon01.png"],
                    link : ["/test1.htm"],
                 },             
                 {
                    title : ["팩스보내기"],
                    image : ["d_icon02.png"],
                    link : ["/test1.htm"],
                 },     
                 { 
                    title : ["그림문자보내기"],
                    image : ["d_icon03.png"],
                    link : ["/test1.htm"],
                 },  
                 {
                    title : ["국제문자"],
                    image : ["d_icon04.png"],
                    link : ["/test1.htm"],
                 },    
                 {
                    title : ["대량메일보내기"],
                    image : ["d_icon05.png"],
                    link : ["/test1.htm"],
                 },             
                 {
                    title : ["주소록"],
                    image : ["d_icon06.png"],
                    link : ["/test1.htm"],
                 },    
                 {
                    title : ["문서보관함"],
                    image : ["d_icon07.png"],
                    link : ["/test1.htm"],
                 },             
                 {
                    title : ["선거대량문자"],
                    image : ["d_icon08.png"],
                    link : ["/test1.htm"],
                 },             
                 {
                    title : ["추가하세요"],
                    image : ["d_icon09.png"],
                    link : ["/test1.htm"],
                 } 
                
            ];


        function msgTypeBan(type) {
            if(type == 'fax') return "팩스";
            if(type == 'sms') return "단문";
            if(type == 'lms') return "장문";
            if(type == 'mms') return "포토";
        }
    
        function viewAds(sno, style, box) { 
            //순번, 주제, 이미지파일, 링크, 스타일 -> 이미지파일을 스타일로 쓰셔도 될 것 같습니다.
            
            
                    $(".no_" + sno).addClass("banStyle_" + style);
                    $(".no_" + sno).addClass("banSubject_" + box.css.layout[0]);
            
                    if(sno == 4) {
                        $(".no_4").removeClass("hide");
                        $(".new-banner3 > div.initBan3").removeClass("initBan3");
                        $(".new-banner3 > div.initBan1").removeClass("initBan1");
                        $(".new-banner3 > div").addClass("initBan2");
                    }
            
                    if( (style == 3 && sno == 8) || sno == 9) {
                        $(".nb3-2nd").removeClass("hide");
                        $(".new-banner3 > div.initBan3").removeClass("initBan3");
                        $(".new-banner3 > div.initBan1").removeClass("initBan1");
                        $(".new-banner3 > div").addClass("initBan2");
                    }

                    if(style == 3 && sno < 5) {
                        $(".no_4").addClass("hide");
                        $(".new-banner3 > div.initBan3").removeClass("initBan3");
                        $(".new-banner3 > div.initBan2").removeClass("initBan2");
                        $(".new-banner3 > div").addClass("initBan1");
                        
                        $(".banStyle_3").css("width", "441px");
                    }
            
                    if(style == 3 && sno >= 5) {
                        $(".no_9").addClass("hide");
                        $(".new-banner3 > div.initBan3").removeClass("initBan3");
                        $(".new-banner3 > div.initBan2").removeClass("initBan2");
                        $(".new-banner3 > div").addClass("initBan1");
                        
                        $(".banStyle_3").css("width", "441px");
                    }
            

                    switch (style) { // 스타일번호로 매칭
                        case 0:
                            //onClick=javascript:goLocation('" + box.link + "');
                            break;
                        case 1:
                            $(".no_" + sno).append("<p class='subtitleBanN' onClick=javascript:goLocation('" + box.link + "');><span>" + box.subtitle[0] + "</span><span>" + box.subtitle[1] + "</span></p>");
                            $(".no_" + sno).append("<p class='titleBanN' onClick=javascript:goLocation('" + box.link + "');><span>" + box.title3[0] + "</span><span>" + box.title3[1] + "</span><span>" + box.title3[2] + "</span></p>");
                            $(".no_" + sno).append("<p class='contentBanN' onClick=javascript:goLocation('" + box.link + "');>" + box.content + "</p>");
                            $(".no_" + sno).append("<a href=javascript:goLocation('" + box.link + "');  class='banMore'>더보기</a>");
                            break;
                        case 2:
                            $(".no_" + sno).append("<p class='subtitleBanN' onClick=javascript:goLocation('" + box.link + "');><span>" + box.subtitle[0] + "</span></p>");
                            $(".no_" + sno).append("<p class='titleBanN' onClick=javascript:goLocation('" + box.link + "');><span>" + box.title2[0] + "</span><span>" + box.title2[1] + "</span></p>");
                            $(".no_" + sno).append("<p class='contentBanN' onClick=javascript:goLocation('" + box.link + "');>" + box.content + "</p>");
                            $(".no_" + sno).append("<a href=javascript:goLocation('" + box.link + "');  class='banMore'>더보기</a>");
                            break;
                        case 3:
                            $(".no_" + sno).append("<span class='banStyle_" + style + "-11' onClick=javascript:goLocation('" + box.link + "');></span>");
                            $(".no_" + sno).append("<span class='banStyle_" + style + "-22' onClick=javascript:goLocation('" + box.link + "');></span>");
                            
                            if( $('input[name=ban_charge1]').val() != "" )
                                $(".banStyle_" + style + "-11").append("<p><span class='" + $('input[name=ban_name1]').val() + "Ban_icon'><span>" + msgTypeBan($('input[name=ban_name1]').val()) + "</span><span>" + $('input[name=ban_charge1]').val() + "</span><span>~</span><span>원</span><</span></p>");
                            
                            if( $('input[name=ban_charge2]').val() != "" )
                                $(".banStyle_" + style + "-11").append("<p><span class='" + $('input[name=ban_name2]').val() + "Ban_icon'><span>" + msgTypeBan($('input[name=ban_name2]').val()) + "</span><span>" + $('input[name=ban_charge2]').val() + "</span><span>~</span><span>원</span></span></p>");
                            
                            if( $('input[name=ban_charge3]').val() != "" )
                                $(".banStyle_" + style + "-11").append("<p><span class='" + $('input[name=ban_name3]').val() + "Ban_icon'><span>" + msgTypeBan($('input[name=ban_name3]').val()) + "</span><span>" + $('input[name=ban_charge3]').val() + "</span><span>~</span><span>원</span></span></p>");
                            
                            if( $('input[name=ban_charge4]').val() != "" )
                                $(".banStyle_" + style + "-11").append("<p><span class='" + $('input[name=ban_name4]').val() + "Ban_icon'><span>" + msgTypeBan($('input[name=ban_name4]').val()) + "</span><span>" + $('input[name=ban_charge4]').val() + "</span><span>~</span><span>원</span></span></p>");
                            
                            $(".banStyle_" + style + "-22").append("<p class='contentBanN'><span>" + box.content + "</span></p>");
                            $(".banStyle_" + style + "-22").append("<p class='titleBanN'><span>" + box.title + "</span></p>");
                            $(".banStyle_" + style + "-22").append("<a href=javascript:goLocation('" + box.link + "');  class='banMore'>더보기</a>");
                            break;
                        case 4:
                            $(".no_" + sno).append("<p class='contentBanN' onClick=javascript:goLocation('" + box.link + "');>" + box.content + "</p>");
                            $(".no_" + sno).append("<p class='titleBanN' onClick=javascript:goLocation('" + box.link + "');><span>" + box.title[0] + "</span></p>");
                            $(".no_" + sno).append("<a href=javascript:goLocation('" + box.link + "');  class='banMore'>더보기</a>");
                            break;
                        case 5:

                            break;
                        case 20:

                            break;
                        case 21:
                            $(".no_" + sno).append("<div class='banStyle_" + style + "-1' style='background-color:" + box.content + ";' onClick=javascript:goLocation('" + box.link + "');></div>");
                            $(".banStyle_" + style + "-1").append("<p class='imgBanN'  style='background-image: url(" + box.image + ");' onClick=javascript:goLocation('" + box.link + "');></p>");
                            $(".banStyle_" + style + "-1").append("<p class='titleBanN' onClick=javascript:goLocation('" + box.link + "');><span>" + box.title[0] + "</span></p>");
                            $(".banStyle_" + style + "-1").append("<a href=javascript:goLocation('" + box.link + "');  class='banMore2'>바로가기</a>");
                            break;
                        case 22:
                            $(".no_" + sno).append("<p class='imgBanN' onClick=javascript:goLocation('" + box.link + "');><img src='" + box.image + "' /></p>");
                            break;
                    }

            
            
        }

        function viewAds2(idx, sno) { 
			$(".new-banner2").append("<div><a href='" + adBox2[sno].link + "' target='_self' title='" + adBox2[sno].title + "'><img src='css/imgNew/" + adBox2[sno].image + "' /><p class='newb2-title'>" + adBox2[sno].title + "</p><p class='newb2-desc'>" + adBox2[sno].content + "</p></a></div>");
            
            if(idx < 4) $(".new-banner2 > div").addClass("hide");
            
            if(idx > 4) $(".new-banner2").append("<div class='hide'><a href='" + adBox2[sno].link + "' target='_self' title='" + adBox2[sno].title + "'><img src='css/imgNew/" + adBox2[sno].image + "' /><p class='newb2-title'>" + adBox2[sno].title + "</p><p class='newb2-desc'>" + adBox2[sno].content + "</p></a></div>");
            
            if(idx == 4 || idx == 9) $(".new-banner2 > div").removeClass("hide");
        }

        function viewAds3(idx, sno) { 
            $(".new-banner4").append("<div><a href='" + adBox3[sno].link + "' target='_self' title='" + adBox3[sno].title + "'><div class='newb4-img'><img src='css/imgNew/" + adBox3[sno].image + "' /></div><p>" + adBox3[sno].title + "</p></a></div>");
            
            if(idx < 7) $(".new-banner4 > div").addClass("hide");
            
            if(idx > 7) $(".new-banner4").append("<div class='hide'><a href='" + adBox3[sno].link + "' target='_self' title='" + adBox3[sno].title + "'><div class='newb4-img'><img src='css/imgNew/" + adBox3[sno].image + "' /></div><p>" + adBox3[sno].title + "</p></a></div>");
            
            if(idx == 7 || idx == 15) $(".new-banner4 > div").removeClass("hide");
            
        }
        


/** 100%, 1920px mainbanner **/

    var activeOn = { 
        'background-color': '#d50c0c', 
        'border': '1px solid #d50c0c',
        'padding': '7px 16px'
    };
    var activeOut = { 
        'background-color': '#999', 
        'border': '1px solid #999',
        'padding': '7px'
    };

    

	var mainSliderWidth = 1920;
	var animationTime = 600;
    var isPause = false;

	var n_main=0; 	

	function trans_main(){
        
        if(!isPause) {
            
            n_main++;

            if(n_main==9){
                $('#big_main_img').stop().css({"left":0});
                n_main=1;
            }
            
            $('#circle_main .cts01').css(activeOut);
            $('#circle_main .cts01').eq(n_main).css(activeOn);

            $('#big_main_img').stop().animate({"left":-1920*n_main},animationTime);

            /** animate or fade
            $('#big_main_img .cts02').fadeOut(100);  
            $('#big_main_img .cts02').eq(n_main).fadeIn(500);
            **/

            if(n_main==8){
                $('#circle_main .cts01').css(activeOut);
                $('#circle_main .cts01').eq(0).css(activeOn);
            }

        }

	}	



/** 100%, 1920px mainbanner **/
        
