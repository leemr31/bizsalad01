jQuery(document).ready(function($) {
	
    
    
	$('#radio-tog-sms').hide();
	$('#radio-tog-esms').hide();
	$('#radio-tog-mo').hide();
	$('#radio-tog-fax').show();
	
	$('#radio-tog-pw').hide();
	$('#radio-tog-id').show();
    
    $('#radio-tog-adm2').hide();
	$('#radio-tog-adm3').hide();
	$('#radio-tog-adm4').hide();
    $('#radio-tog-adm5').hide();
	$('#radio-tog-adm1').show();
    
    $('#radio-tog-adm22').hide();
	$('#radio-tog-adm11').show();
	
	
	
	/* ���̵� ã�� �˾�â �κ� */
	$('#idpw-popup1').show();
	$('#idpw-popup2').show();
	
	$( '#idpw-close1' ).click(function(){
			$('#idpw-popup1').hide();
	});
	$( '#idpw-close11' ).click(function(){
			$('#idpw-popup1').hide();
	});
	
	$( '#idpw-close2' ).click(function(){
			$('#idpw-popup2').hide();
	});
	
    // ���� ���� �� ������ ��������
	$( '#long-win' ).click(function(){


	});
	
    
	/* /���̵� ã�� �˾�â �κ� */
    
    // menu Ŭ���� �ٷ� ������ �ִ� a �±׸� Ŭ��������
    $(".adm-side-menu > a").click(function(){
        var adm_all_submenu = $(".adm-side-menu .adm-hide");
        var adm_submenu = $(this).next("ul");
        var adm_span = $(this).find("span");

        //adm_submenu.toggle();
        adm_span.text( adm_span.text() == '>' ? '<' : '>' );
        
        if( adm_submenu.is(":visible") ){
            adm_submenu.slideUp();
            //adm_span.show();
        }else{
            adm_all_submenu.slideUp();
            adm_submenu.slideDown();
            //adm_span.hide();
        }
      });
	
	

	$( '#add_member_cell1' ).click(function(){
		$obn = $('#member_cell tbody tr').length;

		var tmpHtml;
		if($obn < 10)
			tmpHtml = "<tr id='mcell0"+$obn+"'><td><div class='small-text3 join-checkbox2'><input type='checkbox' id='checkm0"+$obn+"' name='userchkm0"+$obn+"' class='' /><label for='checkm0"+$obn+"'>&nbsp;</label></div></td><td><input type='text' class='userm-input2' value='' name='mmid0"+$obn+"'></td><td></td><td><input type='text' class='userm-input2' value='' name='mid0"+$obn+"'></td><td><input type='text' class='userm-input1' value='' name='mpart0"+$obn+"'></td><td><input type='email' class='userm-input3' value='' name='memail0"+$obn+"'></td><td><input type='text' class='userm-input2' value='' name='mtel0"+$obn+"'></td><td><input type='text' class='userm-input2 popup-fax-btns-01 open-popup' id='my-select-fax1' value='' name='mfax0"+$obn+"' readonly></td><td><input type='text' class='userm-input2 popup-tel-btn0"+$obn+" open-popup' id='my-select-tel1' value='' name='mno0"+$obn+"' readonly></td></tr>";
		else if($obn < 11)
			tmpHtml = "<tr id='mcell"+$obn+"'><td><div class='small-text3 join-checkbox2'><input type='checkbox' id='checkm"+$obn+"' name='userchkm"+$obn+"' class='' /><label for='checkm"+$obn+"'>&nbsp;</label></div></td><td><input type='text' class='userm-input2' value='' name='mmid"+$obn+"'></td><td></td><td><input type='text' class='userm-input2' value='' name='mid"+$obn+"'></td><td><input type='text' class='userm-input1' value='' name='mpart"+$obn+"'></td><td><input type='email' class='userm-input3' value='' name='memail"+$obn+"'></td><td><input type='text' class='userm-input2' value='' name='mtel"+$obn+"'></td><td><input type='text' class='userm-input2 popup-fax-btns-01 open-popup' id='my-select-fax1' value='' name='mfax"+$obn+"' readonly></td><td><input type='text' class='userm-input2 popup-tel-btn"+$obn+" open-popup' id='my-select-tel1' value='' name='mno"+$obn+"' readonly></td></tr>";
		else {
			alert("MAX 10");
			return;
		}
			
		$("#member_cell tbody").append(tmpHtml);
		//alert($obn);
		//10���� �ʰ��� alert â ����ְ� ���̻� �� ��������� ��.
	});
	
	$( '#add_member_cell2' ).click(function(){
		$obn = $('#member_cell tbody tr').length;

		var tmpHtml;
		if($obn < 10)
			tmpHtml = "<tr id='mcell0"+$obn+"'><td><div class='small-text3 join-checkbox2'><input type='checkbox' id='checkm0"+$obn+"' name='userchkm0"+$obn+"' class='' /><label for='checkm0"+$obn+"'>&nbsp;</label></div></td></td><td><td><input type='text' class='userm-input2' value='' name='muid0"+$obn+"'></td><td><input type='text' class='userm-input2' value='' name='mid0"+$obn+"'></td><td><input type='text' class='userm-input1' value='' name='mpart0"+$obn+"'></td><td><input type='email' class='userm-input3' value='' name='memail0"+$obn+"'></td><td><input type='text' class='userm-input2' value='' name='mtel0"+$obn+"'></td><td><input type='text' class='userm-input2 popup-fax-btns-01 open-popup' id='my-select-fax1' value='' name='mfax0"+$obn+"' readonly></td><td><input type='text' class='userm-input2 popup-tel-btn0"+$obn+" open-popup' id='my-select-tel1' value='' name='mno0"+$obn+"' readonly></td></tr>";
		else if($obn < 11)
			tmpHtml = "<tr id='mcell"+$obn+"'><td><div class='small-text3 join-checkbox2'><input type='checkbox' id='checkm"+$obn+"' name='userchkm"+$obn+"' class='' /><label for='checkm"+$obn+"'>&nbsp;</label></div></td><td></td><td><input type='text' class='userm-input2' value='' name='muid"+$obn+"'></td><td><input type='text' class='userm-input2' value='' name='mid"+$obn+"'></td><td><input type='text' class='userm-input1' value='' name='mpart"+$obn+"'></td><td><input type='email' class='userm-input3' value='' name='memail"+$obn+"'></td><td><input type='text' class='userm-input2' value='' name='mtel"+$obn+"'></td><td><input type='text' class='userm-input2 popup-fax-btns-01 open-popup' id='my-select-fax1' value='' name='mfax"+$obn+"' readonly></td><td><input type='text' class='userm-input2 popup-tel-btn"+$obn+" open-popup' id='my-select-tel1' value='' name='mno"+$obn+"' readonly></td></tr>";
		else {
			alert("MAX 10");
			return;
		}
			
		$("#member_cell tbody").append(tmpHtml);
		//alert($obn);
		//10���� �ʰ��� alert â ����ְ� ���̻� �� ��������� ��.
	});
	


	
	$("input[name='mfax00']").click(function(){
		
		var chkvv = $(this).attr('name');
		//alert(chkvv);
		
		$('#fax1-hidden').val(chkvv);
		//var chkvv = $('#fax1-hidden').val();
		//alert(chkvv);
		
	});
	
	$("input[name='mno00']").click(function(){
		
		var chkvv = $(this).attr('name');
		//alert(chkvv);
		
		$('#num1-hidden').val(chkvv);
		//var chkvv = $('#fax1-hidden').val();
		//alert(chkvv);
		
	});
	
	
	
	$( '#popup-fax-btn' ).click(function(){
		
		//$('#my-select-fax-popup');
		var chkval1 = $("input[name='fax1-radio-2']:checked").val();
		//alert(chkval);
		//$("input[name='mfax01']").val(chkval);
		var chkval2 = $('#fax1-hidden').val();
		//alert(chkval2);
		$("input[name='" + chkval2 + "']").val(chkval1);
	});
	
	$( '#popup-tel-btn' ).click(function(){
		
		//$('#my-select-fax-popup');
		var chkval1 = $("input[name='num1-radio-2']:checked").val();
		//alert(chkval);
		var chkval2 = $('#num1-hidden').val();
		//alert(chkval2);
		$("input[name='" + chkval2 + "']").val(chkval1);
	});
	
	/****** 
	
		â�� �������� input hidden �� name ���� �����ϰ�
		hidden value ���� ����� ���� �ҷ��� �Լ��� �����Ϸ��� ������ �ȵ�
		
		�Ʒ��� ���� 10���� �ΰ�����, 10���� ����� �˾��� �ٸ��� ����� �ϸ� ����
		(�Ʒ��� �ϴ� �߰��� ù��° �� �׽�Ʈ)
		
		+��ư�� Ŭ�� �� �ΰ����� �Ǵ� ����� �Է� �˾��� ��� �� �Է��� ������ ����
		�߰��ϴ� ������� �ؾ� ��.
	
	*****/
	
	
	/***************    ���� �˾�â ����� �Լ� �߰��ϸ� ��     **************/
	
	$( '#popup-fax-btn1' ).click(function(){
		
		var chkval1 = $("input[name='fax1-radio-21']:checked").val();
		//alert(chkval);
		//$("input[name='mfax01']").val(chkval);
		var chkval2 = $('#fax1-hidden1').val();
		//alert(chkval2);
		$("input[name='mfax01']").val(chkval1);
	});
	
	$( '#popup-tel-btn2' ).click(function(){
		
		var chkval1 = $("input[name='num1-radio-21']:checked").val();
		//alert(chkval);
		//$("input[name='mfax01']").val(chkval);
		var chkval2 = $('#num1-hidden1').val();
		//alert(chkval2);
		$("input[name='mno01']").val(chkval1);
	});
	
	/***************    /���� �˾�â ����� �Լ� �߰��ϸ� ��     **************/


	$( '#addr-grp-add10' ).click(function(){
		$obn = $('#addr-direct tbody tr').length + 1;

		var tmpHtml;
		if($obn < 10)
			tmpHtml = "<tr><td><input type='text' id='grps-name0"+$obn+"' name='grps-name0"+$obn+"'  maxlength='15' class='addr-inputs4' placeholder=''></td><td><input type='text' id='grps-company0"+$obn+"' name='grps-company0"+$obn+"'  maxlength='15' class='addr-inputs5' placeholder=''></td><td><input type='text' id='grps-fax0"+$obn+"' name='grps-fax0"+$obn+"'  maxlength='20' class='addr-inputs5' placeholder=''></td><td><input type='text' id='grps-mobile0"+$obn+"' name='grps-mobile0"+$obn+"'  maxlength='20' class='addr-inputs6' placeholder=''></td><td><input type='text' id='grps-tel0"+$obn+"' name='grps-tel0"+$obn+"'  maxlength='20' class='addr-inputs6' placeholder=''></td><td><input type='text' id='grps-email0"+$obn+"' name='grps-email0"+$obn+"'  maxlength='30' class='addr-inputs7' placeholder=''></td></tr>";
		else if($obn < 11)
			tmpHtml = "<tr><td><input type='text' id='grps-name"+$obn+"' name='grps-name"+$obn+"'  maxlength='15' class='addr-inputs4' placeholder=''></td><td><input type='text' id='grps-company"+$obn+"' name='grps-company"+$obn+"'  maxlength='15' class='addr-inputs5' placeholder=''></td><td><input type='text' id='grps-fax"+$obn+"' name='grps-fax"+$obn+"'  maxlength='20' class='addr-inputs5' placeholder=''></td><td><input type='text' id='grps-mobile"+$obn+"' name='grps-mobile"+$obn+"'  maxlength='20' class='addr-inputs6' placeholder=''></td><td><input type='text' id='grps-tel"+$obn+"' name='grps-tel"+$obn+"'  maxlength='20' class='addr-inputs6' placeholder=''></td><td><input type='text' id='grps-email"+$obn+"' name='grps-email"+$obn+"'  maxlength='30' class='addr-inputs7' placeholder=''></td></tr>";
		else {
			alert("MAX 10");
			return;
		}
			
		$("#addr-direct tbody").append(tmpHtml);
		//alert($obn);
		//10���� �ʰ��� alert â ����ְ� ���̻� �� ��������� ��.
	});
	
	//��� ������ư ���
	
	$( '#addr-radio-t1' ).click(function(){
		
		$('#radio-tog-sms').hide();
		$('#radio-tog-esms').hide();
		$('#radio-tog-mo').hide();

		$('#radio-tog-fax').show();
	});
	
	$( '#addr-radio-t2' ).click(function(){
		
		$('#radio-tog-fax').hide();
		$('#radio-tog-esms').hide();
		$('#radio-tog-mo').hide();
		
		$('#radio-tog-sms').show();
	});
	
	$( '#addr-radio-t3' ).click(function(){
		
		$('#radio-tog-fax').hide();
		$('#radio-tog-sms').hide();
		$('#radio-tog-mo').hide();
		
		$('#radio-tog-esms').show();
	});
	
	$( '#addr-radio-t4' ).click(function(){
		
		$('#radio-tog-fax').hide();
		$('#radio-tog-sms').hide();
		$('#radio-tog-esms').hide();
		
		$('#radio-tog-mo').show();
	});
	
	//���̵���ã�� ������ư ���
		
	$( '#idpw-radio-t1' ).click(function(){
		
		$('#radio-tog-pw').hide();

		$('#radio-tog-id').show();
	});
	
	$( '#idpw-radio-t2' ).click(function(){
		
		$('#radio-tog-id').hide();
		
		$('#radio-tog-pw').show();
	});
    
    
    
	//��� ������ư ���
	
	$( '#adm-radio-t1' ).click(function(){
		
		$('#radio-tog-adm2').hide();
		$('#radio-tog-adm3').hide();
		$('#radio-tog-adm4').hide();
        $('#radio-tog-adm5').hide();

		$('#radio-tog-adm1').show();
	});
	
	$( '#adm-radio-t2' ).click(function(){
		
		$('#radio-tog-adm1').hide();
		$('#radio-tog-adm3').hide();
		$('#radio-tog-adm4').hide();
        $('#radio-tog-adm5').hide();

		$('#radio-tog-adm2').show();
	});
	
	$( '#adm-radio-t3' ).click(function(){
		
		$('#radio-tog-adm1').hide();
		$('#radio-tog-adm2').hide();
		$('#radio-tog-adm4').hide();
        $('#radio-tog-adm5').hide();

		$('#radio-tog-adm3').show();
	});
	
	$( '#adm-radio-t4' ).click(function(){
		
		$('#radio-tog-adm1').hide();
		$('#radio-tog-adm2').hide();
		$('#radio-tog-adm3').hide();
        $('#radio-tog-adm5').hide();

		$('#radio-tog-adm4').show();
	});    
    
	$( '#adm-radio-t5' ).click(function(){
		
		$('#radio-tog-adm1').hide();
		$('#radio-tog-adm2').hide();
		$('#radio-tog-adm3').hide();
        $('#radio-tog-adm4').hide();

		$('#radio-tog-adm5').show();
	});   
    
    
    
    $( '#adm-radio-t11' ).click(function(){
		
		$('#radio-tog-adm22').hide();

		$('#radio-tog-adm11').show();
	});    
    
	$( '#adm-radio-t22' ).click(function(){
		
		$('#radio-tog-adm11').hide();

		$('#radio-tog-adm22').show();
	});   
    
    
    
    $('.checkall2').click(function(){

        if($('.checkall2').prop('checked')){
            $('.chks2').prop('checked', true);
        }else{
            $('.chks2').prop('checked', false);
        }

	});
	
    $('.checkall3').click(function(){

        if($('.checkall3').prop('checked')){
            $('.chks3').prop('checked', true);
        }else{
            $('.chks3').prop('checked', false);
        }

	});
    
    $('.checkall4').click(function(){

        if($('.checkall4').prop('checked')){
            $('.chks4').prop('checked', true);
        }else{
            $('.chks4').prop('checked', false);
        }

	});
    
    $('.checkall5').click(function(){

        if($('.checkall5').prop('checked')){
            $('.chks5').prop('checked', true);
        }else{
            $('.chks5').prop('checked', false);
        }

	});
    
    $('.checkall6').click(function(){

        if($('.checkall6').prop('checked')){
            $('.chks6').prop('checked', true);
        }else{
            $('.chks6').prop('checked', false);
        }

	});
	
	
	/**** �⺻���� ��ü���� üũ�ڽ� *****/
	$('.checkall').click(function(){

        if($('.checkall').prop('checked')){
            $('.chks').prop('checked', true);
        }else{
            $('.chks').prop('checked', false);
        }

	});
	
	/**** ��ư��ư �ְ� ��ư�� ��ü���� üũ�ڽ� *****/
	$('.env2-check-all').click( function() {
		if( $('#checkbox-chk').val() == '0' ) {
          $( '.env2-chk' ).prop( 'checked', true );
          $('#checkbox-chk').val(1);
    }
        else {
                    $( '.env2-chk' ).prop( 'checked', false );
                    $('#checkbox-chk').val(0);
        }
    } );
    
    
    $('.wxclose').click( function() {
		window.open('about:blank', '_self').close();

    } );
    
    
    $('#admBtn6-4').click(function () {
          // getter
        var radioVal = $('input[name="adm-radio-1"]:checked').val();
        
        var sNo = radioVal;
        var sWidth = 800;
        var sHeight = 820;
        var popupX = (window.screen.width / 2) - (sWidth / 2);
        var popupY= (window.screen.height /2) - (sHeight / 2) - 20;
        
        if($('input[name="adm-radio-1"]').is(':checked') == false) empty_cell();
        else {
            window.open('adm-popup-6-45.html?sno='+ sNo + '', 'adm-popup01', 'status=no, height='+ sHeight + ', width='+ sWidth + ', left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
        }
        
    });
    
    
    $('#admBtn7-4').click(function () {
          // getter
        var radioVal = $('input[name="adm-radio-1"]:checked').val();
        
        var sNo = radioVal;
        var sWidth = 800;
        var sHeight = 820;
        var popupX = (window.screen.width / 2) - (sWidth / 2);
        var popupY= (window.screen.height /2) - (sHeight / 2) - 20;
        
        if($('input[name="adm-radio-1"]').is(':checked') == false) empty_cell();
        else {
            window.open('adm-popup-7-45.html?sno='+ sNo + '', 'adm-popup01', 'status=no, height='+ sHeight + ', width='+ sWidth + ', left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
        }
        
    });



    $('#summernote').summernote();
    
    


    
    

});

	