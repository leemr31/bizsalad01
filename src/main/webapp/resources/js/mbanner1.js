
            //viewAds_start();
    
           // 애니메이션기능 사용으로 이미지 최대3개(style 에 포함됨)로 이루어 지며, 스타일과 adBox 의 배열은 계속 추가될 예정
           // 지우진 않았지만 css 부분은 CSS에서 addClass 나 그냥 매칭해서 불러오는 방식이라 필요없음
           // image 부분도 스타일 요소에 포함된 부분이나, only image 인 경우를 대비해서 남겨 놓음.

            var adBox = [ 
                 {        
                    subtitle : [""],
                    title : [""],
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
                 }                 
            ];
        
    alert(adBox[1].content);
    

        function msgTypeBan(type) {
            alert(type);
            if(type == 'fax') return "팩스";
            if(type == 'sms') return "단문";
            if(type == 'lms') return "장문";
            if(type == 'mms') return "포토";
        }
    
        function viewAds(sno, style, box) { 
            //순번, 주제, 이미지파일, 링크, 스타일 -> 이미지파일을 스타일로 쓰셔도 될 것 같습니다.
            
                    alert("1");
            
                    //$(".no_" + sno).addClass("banStyle_" + style);
                    //$(".no_" + sno).addClass("banSubject_" + box.no);
alert("2");
                    if (style == 2) {
                        $(".style_3").css("width", "441px");
                        $(".style_1").css("width", "253px");
                        $(".style_2").css("width", "253px");
                        $(".style_4").css("width", "253px");
                    } //지금은 중간 3번째 부분이 넓은 형태이지만, 기본 5개 배치입니다. 현재는 구현해 놓지 않았습니다.
            
alert("3");
                    switch (style) { // 스타일번호로 매칭
                        case 0:
                            break;
                        case 1:
                            $(".no_" + sno).append("<p class='subtitleBanN'><span>" + box.subtitle[0] + "</span><span>" + box.subtitle[1] + "</span></p>");
                            $(".no_" + sno).append("<p class='titleBanN><span>" + box.title3[0] + "</span><span>" + box.title3[1] + "</span><span>" + box.title3[2] + "</span></p>");
                            $(".no_" + sno).append("<p class='contentBanN>" + box.content + "</p>");
                            $(".no_" + sno).append("<a href=javascript:goLocation('" + box.link + "'); >더보기</a>");
                            break;
                        case 2:
                            $(".no_" + sno).append("<p class='subtitleBanN'><span>" + box.subtitle[0] + "</span><span>" + box.subtitle[1] + "</span></p>");
                            $(".no_" + sno).append("<p class='titleBanN><span>" + box.title2[0] + "</span><span>" + box.title2[1] + "</span></p>");
                            $(".no_" + sno).append("<p class='contentBanN>" + box.content + "</p>");
                            $(".no_" + sno).append("<a href=javascript:goLocation('" + box.link + "'); >더보기</a>");
                            break;
                        case 3:
                            $(".no_" + sno).append("<span class='style_" + sno + "-11'></span>");
                            $(".no_" + sno).append("<span class='style_" + sno + "-22'></span>");
                            
                            if($('input[name=ban_charge1]').val() != "")
                                $(".style_" + sno + "-11").append("<p><span class='" + $('input[name=ban_name1]').val() + "Ban_icon'><span>" + msgTypeBan($('input[name=ban_name1]').val()) + "</span><span>" + $('input[name=ban_charge1]').val() + "~원</span></p>");
                            
                            if($('input[name=ban_charge2]').val() != "")
                                $(".style_" + sno + "-11").append("<p><span class='" + $('input[name=ban_name2]').val() + "Ban_icon'><span>" + msgTypeBan($('input[name=ban_name2]').val()) + "</span><span>" + $('input[name=ban_charge2]').val() + "~원</span></p>");
                            
                            if($('input[name=ban_charge3]').val() != "")
                                $(".style_" + sno + "-11").append("<p><span class='" + $('input[name=ban_name3]').val() + "Ban_icon'><span>" + msgTypeBan($('input[name=ban_name3]').val()) + "</span><span>" + $('input[name=ban_charge3]').val() + "~원</span></p>");
                            
                            if($('input[name=ban_charge4]').val() != "")
                                $(".style_" + sno + "-11").append("<p><span class='" + $('input[name=ban_name4]').val() + "Ban_icon'><span>" + msgTypeBan($('input[name=ban_name4]').val()) + "</span><span>" + $('input[name=ban_charge4]').val() + "~원</span></p>");
                            
                            $(".style_" + sno + "-22").append("<p class='contentBanN>" + box.content + "</p>");
                            $(".style_" + sno + "-22").append("<p class='titleBanN><span>" + box.title + "</span></p>");
                            $(".style_" + sno + "-22").append("<a href=javascript:goLocation('" + box.link + "'); >더보기</a>");
                            break;
                        case 4:
                            $(".no_" + sno).append("<p class='contentBanN>" + box.content + "</p>");
                            $(".no_" + sno).append("<p class='titleBanN><span>" + box.title2[0] + "</span><span>" + box.title2[1] + "</span></p>");
                            $(".no_" + sno).append("<a href=javascript:goLocation('" + box.link + "'); >더보기</a>");
                            break;
                        case 5:
                            $(".no_" + sno).append("<p class='subtitleBanN'><span>" + box.subtitle[0] + "</span><span>" + box.subtitle[1] + "</span></p>");
                            $(".no_" + sno).append("<p class='titleBanN><span>" + box.title2[0] + "</span><span>" + box.title2[1] + "</span></p>");
                            $(".no_" + sno).append("<p class='contentBanN>" + box.content + "</p>");
                            $(".no_" + sno).append("<a href=javascript:goLocation('" + box.link + "'); >더보기</a>");
                            break;
                    }

alert("4");
            
            
                }

	