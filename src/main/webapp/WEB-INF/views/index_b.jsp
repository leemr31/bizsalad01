<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


	<div class="d-table w100pro big-text">
		<c:choose>
			<c:when test="${user_name== null}">
		    	${user_id}
			</c:when>
			<c:otherwise>
				${user_name}
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${user_type== 3}">
		    	님-<a href="/admin">관리자(${user_type})</a><br/>
			</c:when>
			<c:when test="${user_type== 1}">
		    	님-유저(${user_type})<br/>
			</c:when>
			<c:when test="${user_type== 2}">
		    	님-유저(${user_type})<br/>
			</c:when>
			<c:otherwise>
				사용자(게스트)<br/>
			</c:otherwise>
		</c:choose>
	
		<c:if test="${user_id== null}">
	      <a href="/user/login" target="_self">유저로그인하러 가기</a>
		</c:if>
		
		<c:if test="${company_id== null}">
	      <a href="/company/login" target="_self">업체로그인하러 가기</a>
	   </c:if>
	   
	   <c:if test="${user_id!= null}">
	   <div>
	      <a href="/user/read" target="_self">유저정보읽기</a>
	      <a href="/user/info" target="_self">유저정보넣기</a>
	      <a href="/user/logout" target="_self">로그아웃</a>
	    </div>
	    
	    <c:if test="${user_id!= null}">
	    
	   	</c:if>
	    
	   </c:if>
	   
	   
	   
		<c:if test="${company_id!= null}">
		<div>
	      <a href="/company/read" target="_self">업체정보읽기</a>
	      <a href="/company/info" target="_self">업체정보넣기</a>
	      <a href="/company/logout" target="_self">로그아웃</a>
	    </div>
	   </c:if>
	</div>