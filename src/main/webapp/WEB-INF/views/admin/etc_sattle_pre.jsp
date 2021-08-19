<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업</title>

	<link rel="stylesheet" href="https://uicdn.toast.com/tui-grid/latest/tui-grid.css" />
	<script src="https://uicdn.toast.com/tui-grid/latest/tui-grid.js"></script>

</head>
<body class="w100pro">

	<!-- 기본 정보  table -->
	<div class="d-table w100pro">
		<div class="d-table-cell w100pro big-text">
			<h2 class="blue-circle-arrow big-text">정산내역 관리</h2>
			 
		</div>
	</div>	

	<div class="d-table w100pro ma-t-1em">
		<div class="d-table-cell v-top t-center">
			<table class="w100pro adm-table3-5-1">
				<tbody>
					<tr>
						<td class="big-text2">검색조건</td>
						<td>  

                             <select class="f-left adm-select1 small-text3 ma-r-dot5">
                                  <option>전체</option>
                                  <option>시퀀스</option>
                                  <option>아이디</option>
                                  <option>업체명</option>
                             </select>	
                             
                             <select class="f-left adm-select1 small-text3 ma-r-dot5">
                                  <option>전체</option>
                                  <option>금형</option>
                                  <option>땜</option>
                                  <option>샌딩</option>
                                  <option>도금</option>
                                  <option>조립</option>
                                  <option>포장</option>
                                  <option>체인</option>
                                  <option>기본부자재</option>
                                  <option>2차가공</option>
                              </select>	
                            
                             <select class="f-left adm-select1 small-text3 ma-r-dot5">
                                  <option>전체</option>
                                  <option>정산</option>
                                  <option>미정산</option>
                              </select>	
                               
                               <input type="text" name="userm-search" id="userm-search" maxlength="15" class="adm-input1" placeholder="검색어 입력">
                               <input type="button" class="adm-button1 cupoint" value="검색">
                           
                               <div class="f-left ma-l-1em ma-t-dot5"><input type="checkbox" class=""></div>
                               
                       </td>
						
					</tr>
					<tr>
						<td class="big-text2">날짜</td>
						<td>
                             <div class="d-table w45pro small-text f-left">
                                         <div class=" f-left ma-r-dot5">
                                             <input type="text" id="fax-send-date-start" name="fax-send-date-start" class="datepicker bigger" readonly placeholder="2021-07-20">&nbsp;&nbsp;~  
                                         </div>

                                         <div class=" f-left ma-r-1em">
                                             <input type="text" id="fax-send-date-end" name="fax-send-date-end" class="datepicker bigger" readonly placeholder="2020-07-20">
                                         </div>
                             </div>
                             <div  class="f-left btn-h40r w250px ma-r-dot5">검색</div>
                             <div  class="f-left btn-h40r w250px">엑셀</div>
                         
                         </td>
						
					</tr>

                 </tbody>
             </table>
         </div>
     </div>
                                
                                
	
	<div class="d-table w100pro auto ma-b-1em v-middle ma-t-2em">
	
		<div class="d-table-cell t-left v-middle">
            <select class="f-left adm-select1 small-text3 ma-r-dot5">
                 <option>30</option>
                 <option>50</option>
                 <option>100</option>
             </select>
             
             <select class="f-left adm-select1 small-text3 ma-r-dot5">
                 <option>날짜역순</option>
                 <option>날짜순</option>
                 <option>이름순</option>
             </select>
		</div>

		<div class="d-table-cell t-right v-middle">
			<input type="button" class="adm-button cupoint" value="정산하기">
		<!-- 
			<input type="button" class="adm-button cupoint" value="회원추가">
			<input type="button" class="adm-button cupoint" value="회원수정">
			<input type="button" class="adm-button cupoint" value="회원탈퇴">
		 -->
		</div>

	</div>
	<div class="d-table w100pro auto ma-b-2em">
		<table id="tbl" class="adm-table-biz w100pro">
			<thead class="t-center bold">
				<tr>
					<td>순번</td>
					<td>주문코드</td>
					<td>주문이메일</td>
					<td>결제가격</td>
					<td>결제일자</td>
					<td>정산유무</td>
				</tr>
			</thead>
			<tbody class="t-center">
			<c:forEach items="${settle}" var="vo" varStatus="status" >
	
				<tr class="rows" oseq="${vo.oseq}">
					<td><label><input type="checkbox" /><span class="bold">${status.index}</span></label></td>
					<td class="oseq" >${vo.oseq}</td>
					<td>${vo.user_email}</td>
					<td>
						<fmt:formatNumber value="${vo.purchase_total}" pattern="#,###원"></fmt:formatNumber>
					</td>
					<td>
						<fmt:formatDate value="${vo.purchase_date}" pattern="yyyy년 MM월 dd일 a hh:mm:ss"/>
					</td>
					<c:if test="${vo.purchase_status==1}"> 			<!-- 0720 -->
						<td>정산됨 | <input type="button" class="btn-h40r" value="정산하기" /></td>
					</c:if>
					<c:if test="${vo.purchase_status!=1}">
						<td>미정산 | <input type="button" class="btn-h40r" value="정산하기" /></td>
					</c:if>
				</tr>
			
			</c:forEach>
			</tbody>
		</table>
	</div>
</body>
<script>
// 한 행을 클릭 시 세부내용 창이 뜸
$("#tbl").on("click", " .rows",function(){
	var oseq=$(this).attr("oseq");
	openChild(oseq);
});
function openChild(oseq){
	alert(oseq);
	bizPopup("공정 상세정보", "<c:url value='/read_jeongsan?oseq="+oseq+"'/>", 450 ); //모달이름, url, 가로사이즈
}
</script>
</html>