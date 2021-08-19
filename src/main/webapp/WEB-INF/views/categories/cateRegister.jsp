<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>카테고리 관리</h1>
	<h2>카테고리 목록</h2>
	<button id="addCategory"> + </button>
	<div id="cateAdd" style="display:none;border:1px solid black;width:500px;">
			카테고리 추가
			<br>
			<input type="text" placeholder=" 카테고리명 입력"/>
			<textarea rows="5" cols="50" placeholder=" 카테고리 설명 입력"></textarea>
			<c:forEach items="${manufacture}" var="manf">
				<div>
					<input type="checkbox" name="manufacture" value="${manf.manufacture_name}"/>
					<span id="${manf.manufacture_name}">
						${manf.manufacture_name} 공정 
						<select>
							<c:forEach items="${material}" var="matr">
								<option value="${matr.material_name}">${matr.material_name}</option>
							</c:forEach>
						</select>
					</span>
				</div>
			</c:forEach>
			<input type="checkbox" name="manufacture" value=""/>
					<span id="">공정선택 안함</span>
			<button>취소</button>
			<button>수정</button>
		</div>
	<c:forEach items="${list}" var="vo">
		<div>
			<input type="checkbox" name="category" value="${vo.product_name}"/>
			<span id="${vo.product_seq}" prod_seq="${vo.product_seq}">${vo.product_name} ▶ </span>
		</div>	
		<div id="cateInfo" style="display:none;border:1px solid black;width:500px;"></div>
		<script id="temp" type="text/x-handlebars-template">
		{{#each .}}	
			<p>{{product_name}}</p>
			<p>{{product_seq}}</p>
			{{product_description}}
			공정관리	
			{{#isVowel}}	
			{{/isVowel}}
		{{/each}}
		</script>
		
	</c:forEach>
	<button id="btnDelete">선택한 카테고리 삭제</button>

</body>
<script>
	var array1 = ["manf_0000000001","manf_0000000002","manf_0000000003","manf_0000000004","manf_0000000005","manf_0000000006","manf_0000000007","manf_0000000008","manf_0000000009","manf_0000000010"];
	var array2 = ["금형","땜","샌딩","도금","조립","포장","체인","기본부자재","2차가공",""];
	
	var tmparray = "";
	var tmparray1 = "";
	
	Handlebars.registerHelper("isVowel", function(){		//수정버튼은 자기것만 보이도록(핸들바의 특정 메서드를 씀. hidden이라는 이름으로 writer를 매개변수로
		tmparray1 += manu_no(this.product_seq, this.manu_01);
		tmparray1 += manu_no(this.product_seq, this.manu_02);
		tmparray1 += manu_no(this.product_seq, this.manu_03);
		tmparray1 += manu_no(this.product_seq, this.manu_04);
		tmparray1 += manu_no(this.product_seq, this.manu_05);
		tmparray1 += manu_no(this.product_seq, this.manu_06);
		tmparray1 += manu_no(this.product_seq, this.manu_07);
		tmparray1 += manu_no(this.product_seq, this.manu_08);
		
		tmparray1 += "<br/><input type='button' value='취소' /> <input type='button' onclick=fnSel('"+ this.product_seq +"') value='수정'>";
		return tmparray1;
	});
	
	function manu_no(product_seq,manu_no) {
		
		tmparray = "<div style='display:block;'><input type='checkbox' id='' /> <select class='" + product_seq + " " + manu_no + "'>";
		for(var i=0; i<array1.length; i++) {
			
			if(manu_no == array1[i]) {
				tmparray += "<option value='" + array1[i] + "' selected>"+array2[i]+"</option>";
			} else if(array1[i] == "") {
				
			} else {
				tmparray += "<option value='" + array1[i] + "'>"+array2[i]+"</option>";
			}
		}
		tmparray += "</select></div>";
		
		return tmparray;
	}
	//셀렉트박스의 값들을 비교해서 같은값이 존재하는지 여부 함수 추가하는곳
	//
function fnSel(product_seq){
   
   var dupYn = false;
   var selo = $('.'+product_seq);
   for(let i =0; i<selo.length; i++) {
      const currEle = selo[i].value;
      
      for(let j = i+1; j < selo.length; j++) {
    	  console.log(selo[i].value+" , "+selo[j].value);
         if(currEle === selo[j].value) {
            dupYn = true;
            break;
            //return dupYn;
         }
      }
   }
   
   if(dupYn) {
      alert("중복된 공정이 있습니다.");

   } else {
      //fnSelAjax();
      alert("변경신청 완료");
      //창닫기
      //갱신
   }
      
   //return dupYn;
}

function fnSelAjax() { //수정 - 작업해야함

	   $.ajax({
	      type:'post',
	      url: '/modify',
	      dataType:'json',
	      data : '',
	      beforSend: function() {
	      },
	      success : function(result) {
	      
	      },
	      error : function(request, status, error) {

	      }
	      complete : function() {
	      
	      }
	   
	   });

	}
	
</script>
<script>


// + 버튼으로 카테고리 추가 시 
var cate=0;
$("#addCategory").on("click",function(){
	if(cate==0){
		$("#cateAdd").show();
		cate=1;
	}
	else if(cate==1){
		$("#cateAdd").hide();
		cate=0;	
	}
});
// 각 목록 클릭 시 해당 카테고리의 공정내용 출력
$("#prod_0000000001").on("click",function(){
	$("#cateInfo").show();
	var prod_seq= $(this).attr("prod_seq");
	$.ajax({
		type:"get",
		url:"/product/proRead",
		dataType:"json",
		data:{"prod_seq":prod_seq},
		success:function(data){
			var temp=Handlebars.compile($("#temp").html());
			$("#cateInfo").html(temp(data));
			
		}
	});
});

	getList1;
	getList2;
	getList3;
	
	function getList1(){
		$.ajax({
			type:"post",
			url:"",
			data:{},
			success:function(data){
				
			}
		});
	}
	function getList2(){
		$.ajax({
			type:"post",
			url:"",
			data:{},
			success:function(data){
				
			}
		});
	}
	function getList3(){
		$.ajax({
			type:"post",
			url:"",
			data:{},
			success:function(data){
				
			}
		});
	}

</script>
</html>