<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>										


		<c:forEach var="content" items="${ contents }">

		<!--  User -->
         <!-- 상대 메세지 -->
		   <c:if test="${ not empty user}">
		    <c:if test="${ content.user == 2 }">
           <div class="incoming_msg">
            <div class="incoming_msg_img">
            
            <c:forEach var="hero" items="${ heros }">
             <img src="/findhero/resources/hero-img/${ hero.heroImage }" alt="sunil">
             </c:forEach>
             
            </div>
            
            <div class="received_msg">
             <div class="received_withd_msg">
              <p>${ content.content }</p>
               <span class="time_date"> 
                <fmt:formatDate value="${content.time}" pattern="a hh:mm"/>
               </span>
             </div>
            </div>
           </div>
			</c:if>

         <!--  내가 보낸 메세지 -->
          <c:if test="${ content.user == 1 }">
           <div class="outgoing_msg">
            <div class="sent_msg">
             <p>${ content.content }</p>
              <span class="time_date">
               <fmt:formatDate value="${content.time}" pattern="a hh:mm"/>
              </span>
            </div>
           </div>
          </c:if>
          </c:if>

          
          <!-- hero -->
          <!-- 상대 메세지 -->
          <c:if test="${ not empty hero}">
		    <c:if test="${ content.user == 1 }">
           <div class="incoming_msg">
            <div class="incoming_msg_img">
            
            <c:forEach var="user" items="${ users }">
             <img src="/findhero/resources/user-img/${ user.userImage }" alt="sunil">
             </c:forEach>
             
            </div>
            <div class="received_msg">
             <div class="received_withd_msg">
              <p>${ content.content }</p>
               <span class="time_date"> 
                <fmt:formatDate value="${content.time}" pattern="a hh:mm"/> 
               </span>
             </div>
            </div>
           </div>
			</c:if>

         <!--  내가 보낸 메세지 -->
          <c:if test="${ content.user == 2 }">
           <div class="outgoing_msg">
            <div class="sent_msg">
             <p>${ content.content }</p>
              <span class="time_date">
               <fmt:formatDate value="${content.time}" pattern="a hh:mm"/>
              </span>
            </div>
           </div>
          </c:if>
          </c:if>
          
         </c:forEach>
									