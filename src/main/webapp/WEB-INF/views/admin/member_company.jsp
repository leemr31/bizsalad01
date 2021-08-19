<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
			<h2 class="blue-circle-arrow big-text">업체회원 관리</h2>
			 
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
                                  <option>가입</option>
                                  <option>탈퇴</option>
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
                 <option>주력1순</option>
                 <option>주력2순</option>
             </select>
		</div>

		<div class="d-table-cell t-right v-middle">
			<input type="button" class="adm-button cupoint" value="업체추가">
			<input type="button" class="adm-button cupoint" value="업체수정">
			<input type="button" class="adm-button cupoint" value="업체승인">
			<input type="button" class="adm-button cupoint" value="업체탈퇴">
		</div>

	</div>
	<div class="d-table w100pro auto ma-b-2em">
		<table class="adm-table-biz w100pro">
			<thead class="t-center bold">
				<tr>
					<td>순번</td>
					<td>company_seq</td>
					<td>company_id</td>
					<td>가입경로</td>
					<td>업체명</td>
					<td>이메일</td>
					<td>연락처</td>
					<td>승인</td>
					<td>주력01</td>
					<td>주력02</td>
					<td>가입일</td>
					<td>탈퇴일</td>
					<td>탈퇴</td>
					<td>수정/탈퇴</td>
				</tr>
			</thead>
			<tbody class="t-center">
			<c:forEach items="${company}" var="vo" varStatus="status" >
	
				<tr>
					<td><label><input type="checkbox" /><span class="bold">${status.index}</span></label></td>
					<td>${vo.company_seq}</td>
					<td>${vo.company_id}</td>
					<td>${vo.company_platform_type}</td>
					<td>${vo.company_name}</td>
					<td>${vo.company_email}</td>
					<td>${vo.company_tel}</td>
					<td>${vo.company_type}</td>
					<td>${vo.manufact_01}</td>
					<td>${vo.manufact_02}</td>
					<td>${vo.join_date}</td>
					<td>${vo.out_date}</td>
					<td>${vo.withdrawal}</td>
					<td><input type="button" class="btn-h40r" value="수정" /> <input type="button" class="btn-h40r" value="탈퇴" /></td>
				</tr>
			
			</c:forEach>
			</tbody>
		</table>
	</div>

	
	
	
</body>
</html>