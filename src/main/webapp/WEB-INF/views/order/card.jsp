<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/resources/css/color.css">
<link rel="stylesheet" type="text/css" href="/resources/css/dev.css">
<link rel="stylesheet" type="text/css" href="/resources/css/env.css">
<link rel="stylesheet" type="text/css" href="/resources/css/font2.css">
<link rel="stylesheet" type="text/css" href="/resources/css/reset.css">

<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="d-table w100pro pa-1em t-center auto" style="width: 400px;">
		<div class="bold t-center ma-t-2em ma-b-dot5" style="font-size: 2.5em;" >신용카드 결제</div>
		<form name="frm">
		<table id="tbl"></table>
		<script id="temp" type="text/x-handlebars-template">
		{{#each .}}
			<tr>
				<td>카드사</td>
				<td><input type="text" id="card_com" value="{{card_name}}"></td>			
			</tr>
			<tr>
				<td>신용카드 번호</td>
				<td><input type="text" id="card_num" value="{{card_number}}"></td>			
			</tr>
			<tr>
				<td>CVC 번호</td>
				<td><input type="text" id="card_cvc" value="{{card_cvc}}"></td>			
			</tr>
			<tr>
				<td>신용카드 비밀번호</td>
				<td><input type="text" id="card_password" value="{{card_password}}"></td>			
			</tr>
			{{/each}}	
		</script>
			<input type="text" id="lastId" value="" class="jsonv input-h40r w100pro big-text3 ma-t-dot5 ma-b-dot5"/>
			<input type="hidden" id="purlastId" class="jsonv input-h40r w100pro big-text3" value=""/>
			<input type="reset" value="취소" class="d-table-cell btn-h40r w40pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-dot5 ma-r-dot5"/>
			<input type="submit" value="결제" class="d-table-cell btn-h40r w40pro big-text letterdot5 pa-2em rrr template_bg1 ma-t-dot5"/>
		</form>
	</div>
</body>
<script>	
	var user_seq = "<%=request.getParameter("user_seq") %>";
	var type = opener.$("input[name='type']:checked").val();
	var order_seq = "";
	   var purchase_seq = "";
	   var cart_seq = opener.$("#cart_seq").val();
	getList();
	
	$(frm).on("reset", function(e){
		e.preventDefault();
		if(!confirm("결재를 취소하시겠습니까?")) return;
		window.close();
	});
	
	function getList(){
		
		$.ajax({
		 	type:"get",
		 	url:"/order/card.json",
		 	data:{"user_seq":user_seq},
		 	dataType:"json",
			success:function(data){				
				var temp=Handlebars.compile($("#temp").html());
                $("#tbl").html(temp(data));
		 	},
		 	error : function(xhr, ajaxSettings, thrownError) 
			   {
			       alert("수정하는데 오류가 발생하였습니다.");
			   },
			complete : function()
			   {
				
			   }
		});		
	}
	
	$(frm).on("submit", function(e){
		e.preventDefault();
		if(type=="샘플"){
			sample();
		}else if(type=="수량"){
			manufacture();
		}
	});
</script>

<script>

getLastId();

function getLastId(){
    $.ajax({
         type:"get",
         url:"/order/lastId",
         data:{"user_seq":user_seq},
         success : function(data){
            $("#lastId").val(data);
            order_seq = $("#lastId").val();
         }
    })
};

function sample(){
   var purchase_payType = opener.$("input[name='purchase_payType']:checked").val();
   var purchase_address = opener.$("#sample .address").val();
   var purchase_total = opener.$("#sample .purchase_total").val();
   var purchase_email = opener.$("#sample .purchase_email").val();
   var purchase_tel = opener.$("#sample .purchase_tel").val();
   var purchase_type= opener.$("input[name='type']:checked").val();      
   var purchase_comment = opener.$("#sample .purchase_comment").val();
   var user_address_seq = opener.$("#user_address_seq").html();
   var order_address_seq = opener.$("#order_address_seq").html();
   
   
   $.ajax({         
      type:"post",
      url:"/order/insertPurchase",
      data:{"purchase_address":purchase_address,
         "purchase_total":purchase_total,
         "purchase_email":purchase_email,
         "purchase_tel":purchase_tel,
         "purchase_type":purchase_type,
         "purchase_payType":purchase_payType,
         "purchase_comment":purchase_comment,
         "user_seq":user_seq,
         "order_address_seq":order_address_seq,
         "user_address_seq":user_address_seq
         },
      success:function(data){
         $.ajax({
            type:"get",
            url:"/order/purlastId",
            data:{"user_seq":user_seq},
            success:function(data){
               $("#purlastId").val(data);
               purchase_seq = $("#purlastId").val();
               var price = parseInt(opener.$("#sum").html());   
            
               $.ajax({
                  type:"post",
                  url:"/order/update",
                  data:{"order_seq":order_seq, "price":price, "purchase_seq":purchase_seq, "cart_seq":cart_seq},
                  success:function(data)
                     {
                        alert("결제가 완료되었습니다.");
                        window.opener.location.href="/order/complete";
                        window.close();
                     },
                  error : function(xhr, ajaxSettings, thrownError) 
                     {
                         alert("수정하는데 오류가 발생하였습니다.");
                     },
                  complete : function()
                     {
                     
                     }               
               });
            }
         });
      },   
      error : function(xhr, ajaxSettings, thrownError) 
         {
             alert("수정하는데 오류가 발생하였습니다.");
         },
      complete : function()
         {
         
         }
      });   
   }

function manufacture(){
   var purchase_payType = opener.$("input[name='purchase_payT']:checked").val();
   var purchase_address = opener.$("#manufacture .address").val();
   var purchase_total = opener.$("#manufacture .purchase_total").val();
   var purchase_email = opener.$("#manufacture .purchase_email").val();
   var purchase_tel = opener.$("#manufacture .purchase_tel").val();
   var purchase_type= opener.$("input[name='type']:checked").val();      
   var purchase_comment = opener.$("#manufacture .purchase_comment").val();
   var user_address_seq = opener.$("#user_address_seq").html();
   var order_address_seq = opener.$("#order_address_seq").html();


   $.ajax({         
      type:"post",
      url:"/order/insertPurchase",
      data:{"purchase_address":purchase_address,
         "purchase_total":purchase_total,
         "purchase_email":purchase_email,
         "purchase_tel":purchase_tel,
         "purchase_type":purchase_type,
         "purchase_payType":purchase_payType,
         "purchase_comment":purchase_comment,
         "user_seq":user_seq,
         "order_address_seq":order_address_seq,
         "user_address_seq":user_address_seq
         },
      success:function(data){
         $.ajax({
            type:"get",
            url:"/order/purlastId",
            data:{"user_seq":user_seq},
            success:function(data){
               $("#purlastId").val(data);
               purchase_seq = $("#purlastId").val();
               var price = parseInt(opener.$("#sum").html());   
   
               $.ajax({
                  type:"post",
                  url:"/order/update",
                  data:{"order_seq":order_seq, "price":price, "purchase_seq":purchase_seq, "cart_seq":cart_seq},
                  success:function(data)
                     {
                        alert("결제가 완료되었습니다.");
                        window.opener.location.href="/order/complete";
                        window.close();
                     },
                  error : function(xhr, ajaxSettings, thrownError) 
                     {
                         alert("수정하는데 오류가 발생하였습니다.");
                     },
                  complete : function()
                     {
                     
                     }               
               });
            }
         });
      },   
      error : function(xhr, ajaxSettings, thrownError) 
         {
             alert("수정하는데 오류가 발생하였습니다.");
         },
      complete : function()
         {
         
         }
      });      
}
	
</script>
</html>