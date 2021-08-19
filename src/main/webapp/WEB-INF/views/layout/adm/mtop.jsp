<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    <div class="d-table w100pro biz-content-wrap-top" style="border-bottom:1px solid #ddd">
        <div class="d-table-cell w30pro ">
            <b class="dg-hd-mo-menu-btn2" title="menu" style="left:5%;">
                <!--<div style="width:50px;">&nbsp;</div>-->
                <!--<p style="float:right; left:80%">-->
                <p style="float:left; left:5%; color:#000;">
                    <span></span>
                </p>
            </b>
        </div>
        <div class="d-table-cell w40pro pa-1em t-center big-text">
            <a class="big-text bold" style="letter-spacing:1px; color:#000;" href="/">bizsalad</a><!-- <img src="./img/logo.png">  -->
        </div>
        <div class="d-table-cell w30pro t-right pa-r-1em">
        	<div class="" >
        		<i class="far fa-bell fa-2x ma-r-dot3"></i>
        		
							<c:choose>
								<c:when test="${user_id == null}">
							    	<a href="/user/login" target="_self" style="color:#000;">
							    		<i class="fas fa-user-circle fa-2x"></i>
							    	</a>
								</c:when>
								<c:otherwise>
									<a href="/user/mypage" target="_self" style="color:#000;">
										<i class="fas fa-user-clock fa-2x"></i>
									</a>
								</c:otherwise>
							</c:choose>
        	</div>
            
        </div>
    </div>