/*************************************************************************
-- 모달팝업 --
title		 : 타이틀
subtitle	 : 서브제목 : 타이블의 서브 제목
mgtype		 : 메세지타입 : info(I), error(E), success(S), warning(W), Qustion(Q)
iconcls		 : 사용자정의 icon : 메세지타입 것을 사용하지 않고 사용자가 icon Class 를 정의하여 사용 가능(예:icon icon-information-black)
headerColor	 : 사용자정의 HeaderColor : 메세지 타입 것을 사용하지 않고 사용자가 Header BackColor 정의 사용
CloseBtnYn	 : CloseButton 사용여부 : Y/N, 기본값 : Y
FullWinYn	 : Full창으로 뛰우는 옵션 사용여부 : Y/N, 기본값 : N
Mwidth		 : 가로크기 : 모달팝업 가로 크기 : 모달팝업 가로길이(필수 int 값으로만 해야함)
contenttype	 : 내용타입 : html, ajax
contenthtml	 : html일경우 내용 :
ajaxurl		 : ajax일경우 URL :
ajaxparm	 : ajax일경우 Parm : parm1=aaa&parm2=bbbb
**************************************************************************/

function iziModalShow(title, subtitle, mgtype, iconcls, headerColor, CloseBtnYn, FullWinYn, Mwidth, contenttype, contenthtml, ajaxurl, ajaxparm){
 $('body').css("overflow", "hidden"); // 스크롤 방지
	var divObj = "izi_Modal_div"
	var main_divObj = "#"+divObj;	

	// headerType
	var hdcolor = "#54595F"
	var iconclass = "icon icon-check-1"
	
	// 정보타입
	// mgtype : info(I), error(E), success(S), warning(W)
	if(mgtype==""){
		hdcolor = "#54595F"
		iconclass = ""
	}else if(mgtype=="I"){ 
		iconclass = "icon icon-information-black"
		hdcolor = "#54595F"
	}else if(mgtype=="E"){
		iconclass = "icon icon-forbid"
		hdcolor = "#EF7428"
	}else if(mgtype=="S"){
		iconclass = "icon icon-check-circle"
		hdcolor = "#A6C700"
	}else if(mgtype=="W"){
		iconclass = "icon icon-warning"	
		hdcolor = "#E22C17"
	}else if(mgtype=="C"){
		iconclass = "icon icon-black-question"	
		hdcolor = "#3493F9"
	}else{
		hdcolor = "#54595F"
		iconclass = "icon icon-check-1"
	}
	
	// 사용자 정의 icon class
	if(typeof iconcls != "undefined"){
		if(iconcls != ""){
			iconclass = iconcls;
		}
	}

	// 사용자 정의 icon class
	if(typeof headerColor != "undefined"){
		if(headerColor != ""){
			hdcolor = headerColor;
		}
	}

	// 닫기 버튼 사용여부
	var closebtnbool = true
	if(typeof CloseBtnYn != "undefined"){
		if(CloseBtnYn == "Y"){
			closebtnbool = true
		}else if(CloseBtnYn == "N"){
			closebtnbool = false
		}else{
			closebtnbool = true
		}
	}

	// Full 화면 보기 버튼 사용여부
	var fullbtnbool = false
	if(typeof FullWinYn != "undefined"){
		if(FullWinYn == "Y"){
			fullbtnbool = true
		}else if(FullWinYn == "N"){
			fullbtnbool = false
		}else{
			fullbtnbool = false
		}
	}

	// Full 화면 보기 버튼 사용여부
	var modalwidth = 600
	if(typeof Mwidth != "undefined"){
		if(Mwidth == ""){
			modalwidth = 600
		}else{
			modalwidth = Mwidth
		}
	}

	// Full 화면 보기 버튼 사용여부
	var texttype = "html"
	if(typeof contenttype != "undefined"){
		if(contenttype == ""){
			texttype = "html"
		}else{
			texttype = contenttype
		}
	}

	var modalcontent = ""
	if(texttype=="html"){
		modalcontent = contenthtml
	}else if(texttype=="ajax"){
		var targeturl = ajaxurl
		var datastring = ajaxparm
		$.ajax({ 
			type: "POST", 
			url: targeturl, 
			async: false,
			data: datastring, 
			dataType: "html", 
			success:function(data){ 
				modalcontent = data
			},
			error:function(xhr,status,error){
				console.log(xhr);
				alert(error);
				return;
			}
		});
	}

	if($(main_divObj).length > 0){
		$(main_divObj).html(modalcontent);
	}else{
		 
		$("body").append("<div id='"+ divObj +"'>"+ modalcontent +"</div>");
	}

	$(main_divObj).iziModal('destroy');
	$(main_divObj).iziModal({
		title: title,
		subtitle: subtitle,
		headerColor: hdcolor,
		background: null,
		theme: '',  // light
		icon: iconclass,
		iconText: '',
		iconColor: '',
		rtl: false,
		width: modalwidth,
		top: null,
		bottom: null,
		borderBottom: true,
		padding: 0,
		radius: 3,
		zindex: 9999999,
		iframe: false,
		iframeHeight: 400,
		iframeURL: null,
		focusInput: true,
		group: '',
		loop: false,
		arrowKeys: true,
		navigateCaption: true,
		navigateArrows: true, // Boolean, 'closeToModal', 'closeScreenEdge'
		history: false,
		restoreDefaultContent: false,
		autoOpen: 0, // Boolean, Number
		bodyOverflow: false,
		fullscreen: fullbtnbool,
		openFullscreen: false,
		closeOnEscape: true,
		closeButton: closebtnbool,
		appendTo: 'body', // or false
		appendToOverlay: 'body', // or false
		overlay: true,
		overlayClose: false,
		overlayColor: 'rgba(0, 0, 0, 0.1)',
		timeout: false,
		timeoutProgressbar: false,
		pauseOnHover: false,
		timeoutProgressbarColor: 'rgba(255,255,255,0.5)',
		transitionIn: 'comingIn',
		transitionOut: 'comingOut',
		transitionInOverlay: 'fadeIn',
		transitionOutOverlay: 'fadeOut',
		onFullscreen: function(){},
		onResize: function(){},
		onOpening: function(){},
		onOpened: function(){},
		onClosing: function(){
			iziModalClose();
		},
		onClosed: function(){},
		afterRender: function(){}
	});
	$(main_divObj).iziModal('open');
}

function iziModalClose(){
	var divObj = "izi_Modal_div"
	var close_divObj = "#"+divObj;
	$(close_divObj).html("");
	 window.parent.location.reload();
	$(close_divObj).iziModal('close');
}


/*************************************************************************
-- 모달 Alert --
title		 : 타이틀
subtitle	 : 서브제목 : 타이블의 서브 제목
mgtype		 : 메세지타입 : info(I), error(E), success(S), warning(W), Qustion(Q)
iconcls		 : 사용자정의 icon : 메세지타입 것을 사용하지 않고 사용자가 icon Class 를 정의하여 사용 가능(예:icon icon-information-black)
headerColor	 : 사용자정의 HeaderColor : 메세지 타입 것을 사용하지 않고 사용자가 Header BackColor 정의 사용
Mwidth		 : 가로크기 : 모달팝업 가로 크기 : 모달팝업 가로길이(필수 int 값으로만 해야함)
contenthtml	 : 기타설명내용
**************************************************************************/
function iziModalAlert(title, subtitle, mgtype, iconcls, headerColor, Mwidth, contenthtml){

	var divObj = "izi_Alert_div"
	var main_divObj = "#"+divObj;	

	// headerType
	var hdcolor = "#54595F"
	var iconclass = "icon icon-check-1"
	
	// 정보타입
	// mgtype : info(I), error(E), success(S), warning(W)
	if(mgtype==""){
		hdcolor = "#54595F"
		iconclass = ""
	}else if(mgtype=="I"){ 
		iconclass = "icon icon-information-black"
		hdcolor = "#54595F"
	}else if(mgtype=="E"){
		iconclass = "icon icon-forbid"
		hdcolor = "#EF7428"
	}else if(mgtype=="S"){
		iconclass = "icon icon-check-circle"
		hdcolor = "#A6C700"
	}else if(mgtype=="W"){
		iconclass = "icon icon-warning"	
		hdcolor = "#E22C17"
	}else if(mgtype=="C"){
		iconclass = "icon icon-black-question"	
		hdcolor = "#3493F9"
	}else{
		hdcolor = "#54595F"
		iconclass = "icon icon-check-1"
	}
	
	// 사용자 정의 icon class
	if(typeof iconcls != "undefined"){
		if(iconcls != ""){
			iconclass = iconcls;
		}
	}

	// 사용자 정의 icon class
	if(typeof headerColor != "undefined"){
		if(headerColor != ""){
			hdcolor = headerColor;
		}
	}

	// 닫기 버튼 사용여부
	var closebtnbool = false

	// Full 화면 보기 버튼 사용여부
	var fullbtnbool = false


	// 가로크기
	var modalwidth = 400
	if(typeof Mwidth != "undefined"){
		if(Mwidth == ""){
			modalwidth = 400
		}else{
			modalwidth = Mwidth
		}
	}

	var modalcontent = ''
		modalcontent += '<div class="tcenter">'
		if(contenthtml != ""){
			modalcontent += '<div class="bline_grey200 mg20_B pd20_B font13">'+contenthtml+'</div>'
		}
		modalcontent += '	<button class="s-btn btn-white2" onclick="javascript:iziModalAlertClose()" style="width:80px;">확인</button>'
		modalcontent += '</div>'

	if($(main_divObj).length > 0){
		$(main_divObj).html(modalcontent);
	}else{
		$("body").append("<div id='"+ divObj +"'>"+ modalcontent +"</div>");
	}

	$(main_divObj).iziModal('destroy');
	$(main_divObj).iziModal({
		title: title,
		subtitle: subtitle,
		headerColor: hdcolor,
		background: null,
		theme: '',  // light
		icon: iconclass,
		iconText: '',
		iconColor: '',
		rtl: false,
		width: modalwidth,
		top: null,
		bottom: null,
		borderBottom: true,
		padding: 20,
		radius: 3,
		zindex: 9999999,
		iframe: false,
		iframeHeight: 400,
		iframeURL: null,
		focusInput: true,
		group: '',
		loop: false,
		arrowKeys: true,
		navigateCaption: true,
		navigateArrows: true, // Boolean, 'closeToModal', 'closeScreenEdge'
		history: false,
		restoreDefaultContent: false,
		autoOpen: 0, // Boolean, Number
		bodyOverflow: false,
		fullscreen: fullbtnbool,
		openFullscreen: false,
		closeOnEscape: true,
		closeButton: closebtnbool,
		appendTo: 'body', // or false
		appendToOverlay: 'body', // or false
		overlay: true,
		overlayClose: false,
		overlayColor: 'rgba(0, 0, 0, 0.1)',
		timeout: false,
		timeoutProgressbar: false,
		pauseOnHover: false,
		timeoutProgressbarColor: 'rgba(255,255,255,0.5)',
		transitionIn: 'comingIn',
		transitionOut: 'comingOut',
		transitionInOverlay: 'fadeIn',
		transitionOutOverlay: 'fadeOut',
		onFullscreen: function(){},
		onResize: function(){},
		onOpening: function(){},
		onOpened: function(){},
		onClosing: function(){},
		onClosed: function(){},
		afterRender: function(){}
	});
	$(main_divObj).iziModal('open');
}

function iziModalAlertClose(){
	var divObj = "izi_Alert_div"
	var close_divObj = "#"+divObj;
	$(close_divObj).html("");
	$(close_divObj).iziModal('close');
}


/*************************************************************************
-- 모달 iziModalComfirm --
title		 : 타이틀
subtitle	 : 서브제목 : 타이블의 서브 제목
mgtype		 : 메세지타입 : info(I), error(E), success(S), warning(W), Qustion(Q)
iconcls		 : 사용자정의 icon : 메세지타입 것을 사용하지 않고 사용자가 icon Class 를 정의하여 사용 가능(예:icon icon-information-black)
headerColor	 : 사용자정의 HeaderColor : 메세지 타입 것을 사용하지 않고 사용자가 Header BackColor 정의 사용
Mwidth		 : 가로크기 : 모달팝업 가로 크기 : 모달팝업 가로길이(필수 int 값으로만 해야함)
contenthtml	 : 기타설명내용
callback	 : True/false 반환
**************************************************************************/
function iziModalComfirm(title, subtitle, mgtype, iconcls, headerColor, Mwidth, contenthtml, callback){

	var cvalue = false;

	var divObj = "izi_Comfirm_div"
	var main_divObj = "#"+divObj;	

	// headerType
	var hdcolor = "#54595F"
	var iconclass = "icon icon-check-1"
	
	// 정보타입
	// mgtype : info(I), error(E), success(S), warning(W)
	if(mgtype==""){
		hdcolor = "#54595F"
		iconclass = ""
	}else if(mgtype=="I"){ 
		iconclass = "icon icon-information-black"
		hdcolor = "#54595F"
	}else if(mgtype=="E"){
		iconclass = "icon icon-forbid"
		hdcolor = "#EF7428"
	}else if(mgtype=="S"){
		iconclass = "icon icon-check-circle"
		hdcolor = "#A6C700"
	}else if(mgtype=="W"){
		iconclass = "icon icon-warning"	
		hdcolor = "#E22C17"
	}else if(mgtype=="C"){
		iconclass = "icon icon-black-question"	
		hdcolor = "#3493F9"
	}else{
		hdcolor = "#54595F"
		iconclass = "icon icon-check-1"
	}
	
	// 사용자 정의 icon class
	if(typeof iconcls != "undefined"){
		if(iconcls != ""){
			iconclass = iconcls;
		}
	}

	// 사용자 정의 icon class
	if(typeof headerColor != "undefined"){
		if(headerColor != ""){
			hdcolor = headerColor;
		}
	}

	// 닫기 버튼 사용여부
	var closebtnbool = false

	// Full 화면 보기 버튼 사용여부
	var fullbtnbool = false


	// 가로크기
	var modalwidth = 400
	if(typeof Mwidth != "undefined"){
		if(Mwidth == ""){
			modalwidth = 400
		}else{
			modalwidth = Mwidth
		}
	}

	var modalcontent = ''
		modalcontent += '<div class="tcenter">'
		if(contenthtml != ""){
			modalcontent += '<div class="bline_grey200 mg20_B pd20_B font13">'+contenthtml+'</div>'
		}
		modalcontent += '	<button class="iziModalComfirm_OK s-btn btn-blueline" style="width:80px;">Ok</button>&nbsp;&nbsp;'
		modalcontent += '	<button class="iziModalComfirm_Cancel s-btn btn-white" style="width:80px;">Cancel</button>'
		modalcontent += '</div>'

	if($(main_divObj).length > 0){
		$(main_divObj).html(modalcontent);
	}else{
		$("body").append("<div id='"+ divObj +"'>"+ modalcontent +"</div>");
	}

	$(main_divObj).iziModal('destroy');
	$(main_divObj).iziModal({
		title: title,
		subtitle: subtitle,
		headerColor: hdcolor,
		background: null,
		theme: '',  // light
		icon: iconclass,
		iconText: '',
		iconColor: '',
		rtl: false,
		width: modalwidth,
		top: null,
		bottom: null,
		borderBottom: true,
		padding: 20,
		radius: 3,
		zindex: 9999999,
		iframe: false,
		iframeHeight: 400,
		iframeURL: null,
		focusInput: true,
		group: '',
		loop: false,
		arrowKeys: true,
		navigateCaption: true,
		navigateArrows: true, // Boolean, 'closeToModal', 'closeScreenEdge'
		history: false,
		restoreDefaultContent: false,
		autoOpen: 0, // Boolean, Number
		bodyOverflow: false,
		fullscreen: fullbtnbool,
		openFullscreen: false,
		closeOnEscape: true,
		closeButton: closebtnbool,
		appendTo: 'body', // or false
		appendToOverlay: 'body', // or false
		overlay: true,
		overlayClose: false,
		overlayColor: 'rgba(0, 0, 0, 0.1)',
		timeout: false,
		timeoutProgressbar: false,
		pauseOnHover: false,
		timeoutProgressbarColor: 'rgba(255,255,255,0.5)',
		transitionIn: 'comingIn',
		transitionOut: 'comingOut',
		transitionInOverlay: 'fadeIn',
		transitionOutOverlay: 'fadeOut',
		onFullscreen: function(){},
		onResize: function(){},
		onOpening: function(){},
		onOpened: function(){},
		onClosing: function(){},
		onClosed: function(){},
		afterRender: function(){
			$(".iziModalComfirm_OK" ).click(function() {
				callback(cvalue=true);
				iziModalComfirmClose();
			});
			$(".iziModalComfirm_Cancel" ).click(function() {
				callback(cvalue=false);
				iziModalComfirmClose();
			});
		}
	});
	$(main_divObj).iziModal('open');
}

function iziModalComfirmClose(){
	var divObj = "izi_Comfirm_div"
	var close_divObj = "#"+divObj;
	$(close_divObj).html("");
	$(close_divObj).iziModal('close');
}