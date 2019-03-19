<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Chat Content</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicons -->
<link href="/findhero/resources/img/favicon.png" rel="icon">
<link href="/findhero/resources/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">

<!-- Bootstrap CSS File -->
<link href="/findhero/resources/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Libraries CSS Files -->
<link href="/findhero/resources/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="/findhero/resources/lib/animate/animate.min.css" rel="stylesheet">
<link href="/findhero/resources/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
<link href="/findhero/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!-- Main Stylesheet File -->
<link href="/findhero/resources/css/style.css" rel="stylesheet">
<link href="/findhero/resources/css/chatstyle.css" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">



$(function() {
	
	$('#send_btn').on('click', function(event) {
		event.preventDefault();
		var contents = $('#chat_content').serialize();
	    		
		$.ajax({
			"url" : "/findhero/chat/content.action",
			"method" : "POST",
			"data" : contents,
			"success" : function(data,status,xhr) {
				
				$('.msg_history').load("content2.action?userNo=${ userNo }&chatNo=${ chatNo }", function() {
					//var div = $('#chatMessageArea');
					//div.scrollTop(div.prop('scrollHeight') - div.prop('clientHeight'));
					$('#chatMessageArea').scrollTop($("#chatMessageArea")[0].scrollHeight);
				});
				
				$('.write_msg.message').val('');
								
			},
			"error":function(xhr,status,err){
				alert(err);
			}
		});
		
	});
	
	$('.write_msg.message').on('keypress', function(event) {
		if (event.which == 13){
			
			
		// do ajax request
		event.preventDefault();
		var contents = $('#chat_content').serialize();
		
			$.ajax({
				"url" : "/findhero/chat/content.action",
				"method" : "POST",
				"data" : contents,
				"success" : function(data,status,xhr) {
					
					$('.msg_history').load("content2.action?userNo=${ userNo }&chatNo=${ chatNo }", function() {
						//var div = $('#chatMessageArea');
						//div.scrollTop(div.prop('scrollHeight') - div.prop('clientHeight'));
						$('#chatMessageArea').scrollTop($("#chatMessageArea")[0].scrollHeight);
					});
					
					$('.write_msg.message').val('');
									
				},
				"error":function(xhr,status,err){
					alert(err);
				}
			});
		}
	});
	
	
	
	
	$('#chat_content').on('submit', function(event) {
		return false;	
	})
	
	$(document).ready(function(){
		$('#chatMessageArea').scrollTop($("#chatMessageArea")[0].scrollHeight);
	});
	
	
});


 
</script>

</head>

<body>

<jsp:include page="/WEB-INF/views/include/header.jsp" />

<section class="intro-single" style="background-color: #FAFAFA">

</section>
 
<section class="content" style="background-color: #FAFAFA">
 <c:choose>
  <c:when test="${ not empty user or not empty hero}">
   <div class="container">
    <div class="row">
     <div class="col-md-12">

      <div class="container">
       <div class="messaging" style="width: 100%;height: 100%" >
        <div class="inbox_msg" >
         <div class="inbox_people" style="background-color: #FFFFFF">
          <div class="headind_srch" style="background-color: #FFFFFF">
          
           <h4 style="text-align: center; margin: 6px 0px;">
		     <c:if test="${ not empty user}">
              <c:forEach var="hero" items="${ heros }">
               ${ hero.heroName }
              </c:forEach>
             </c:if>

		     <c:if test="${ not empty hero}">
              <c:forEach var="user" items="${ users }">
               ${ user.userName }
              </c:forEach>
             </c:if>
            </h4>
           <div class="recent_heading">
         
           
          
           </div>
          </div>
          <div class="inbox_chat" >
           <div class="chat_list" style="text-align: center; ">
         
            <c:if test="${ not empty user}">
             <c:forEach var="hero" items="${ heros }">
              <img src="/findhero/resources/hero-img/${ hero.heroImage }" alt="" class="testimonial-avatar" style="width: 150px; height: 150px">
             </c:forEach>
            </c:if>
          
            <c:if test="${ not empty hero}">
             <c:forEach var="user" items="${ users }">
              <img src="/findhero/resources/user-img/${ user.userImage }" alt="" class="testimonial-avatar" style="width: 150px; height: 150px">
             </c:forEach>
            </c:if>
          
           </div>
           
           <div class="chat_list">
            <div class="chat_people">
             <div>
           
              <p style="text-align: center; font-size: 20px">
               <c:if test="${ not empty user}">
                <c:forEach var="hero" items="${ heros }">
                 ${ hero.heroField }
                </c:forEach>
               </c:if>
            
               <c:if test="${ not empty hero }">
                <c:forEach var="user" items="${ users }">
                 ${ user.userEmail }
                </c:forEach>
               </c:if>
              </p>
            
             </div>
            </div>
           </div>
           
           <div class="chat_list">
            <div class="chat_people">
             
             <p style="text-align: center; font-size: 20px">
              <c:if test="${ not empty user}">
               <c:forEach var="hero" items="${ heros }">
                ${ hero.heroField2 }
               </c:forEach>
              </c:if>
            
              <c:if test="${ not empty hero }">
               <c:forEach var="user" items="${ users }">
                ${ user.userPhone }
               </c:forEach>
              </c:if>
             </p>
           
            </div>
           </div>
           
           <div class="chat_list">
            <div class="chat_people">
             
             <p style="text-align: center;font-size: 20px;">
              <c:if test="${ not empty user}">
               <c:forEach var="hero" items="${ heros }">
                ${ hero.heroAbout }
               </c:forEach>
              </c:if>
            
              <c:if test="${ not empty hero }">
               <c:forEach var="user" items="${ users }">
               </c:forEach>
              </c:if>
             </p>

            </div>
           </div>

           <div class="chat_list">
            <div class="chat_people">
             <p></p>
            </div>
           </div>
           
         

           <div class="chat_list">
          
            <ul class="nav nav-pills nav-justified">
           
             <c:if test="${ not empty user}">
              <li class="nav-item">
               <a href="/findhero/chat/chats.action?userNo=${ userNo }">
                <span class="fa fa-pencil-square-o" style="font-size: 2rem;"></span> 
                <span style="font-size: 1rem;">채팅리스트</span>
               </a>
              </li> 
             </c:if>
            
             <c:if test="${ not empty hero }">
              <c:forEach var="user" items="${ users }">
               <li class="nav-item">
                <a href="/findhero/chat/chats.action?heroNo=${ heroNo }">
                 <span class="fa fa-pencil-square-o" style="font-size: 2rem;"></span> 
                 <span style="font-size: 1rem;">채팅리스트</span>
                </a>
               </li> 
              </c:forEach>
             </c:if>
            
           <c:if test="${ not empty user}">
           <li class="nav-item">
           <a href="/findhero/review/review.action?heroNo=${ heroNo }">
            <span class="fa fa-pencil-square-o" style="font-size: 2rem;"></span> 
            <span style="font-size: 1rem;">리뷰</span>
            </a>
           </li>
           </c:if>
          
          
          <c:if test="${ not empty user}">
           <li class="nav-item">

           <a id="end_chat" href="/findhero/chat/delete.action?chatNo=${ chatNo }&userNo=${ userNo }&heroNo=${ heroNo }">
			
            <span class="fa fa fa-sign-out" style="font-size: 2rem;"></span> 
            <span style="font-size: 1rem;">나가기</span>

            </a>

           </li>
           </c:if>
           
          </ul>
         </div>
        </div>
       </div>
       
 
       <div class="mesgs" style="background-color: #F2F2F2"> 
        <div class="msg_history" id="chatMessageArea">
        
         <c:forEach var="content" items="${ contents }">

		<!--  User -->
         <!-- 상대 메세지 -->
		   <c:if test="${ not empty user}">
		    <c:if test="${ content.user == 2 }">
           <div class="incoming_msg" >
            <div class="incoming_msg_img">
            
            <c:forEach var="hero" items="${ heros }">
             <img src="/findhero/resources/hero-img/${ hero.heroImage }" alt="sunil">
             </c:forEach>
             
            </div>
            
            <div class="received_msg">
             <div class="received_withd_msg" >
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
              <fmt:formatDate value="${ content.time}" pattern="a hh:mm"/>
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
         
        </div>
        
        <!-- 메세지 입력 창 -->        
        <div class="type_msg" style="background-color: white;border: 1px;">
         <div class="input_msg_write">
											
          <form id="chat_content" method="post">
												
												
			<c:if test="${not empty user}">												
           <input type="hidden" name="user" value="1">
            </c:if>
           
           <c:if test="${not empty hero}">
           <input type="hidden" name="user" value="2">
           </c:if>
           
           <input type="hidden" name="chatNo" value="${ chatNo }">
            
            <c:if test="${not empty user}">
            <input type="text" name="content" class="write_msg message" data-member="user" placeholder="Type a message" />
            </c:if>
            
            <c:if test="${not empty hero}">
             <input type="text" name="content" class="write_msg message" data-member="hero" placeholder="Type a message" />
            </c:if>
            
           <button id="send_btn" class="msg_send_btn" type="button">
            <i class="fa fa-paper-plane-o" aria-hidden="true"></i>
           </button>
          </form>
 											
         </div>
        </div>
       </div>
       
       
      </div>
     </div>
    </div>
   </div>
  </div>
 </div>
</c:when>
</c:choose>
</section>

<jsp:include page="/WEB-INF/views/include/footer.jsp" />

<!-- JavaScript Libraries -->
<script src="/findhero/resources/lib/jquery/jquery.min.js"></script>
<script src="/findhero/resources/lib/jquery/jquery-migrate.min.js"></script>
<script src="/findhero/resources/lib/popper/popper.min.js"></script>
<script src="/findhero/resources/lib/bootstrap/js/bootstrap.min.js"></script>
<script src="/findhero/resources/lib/easing/easing.min.js"></script>
<script src="/findhero/resources/lib/owlcarousel/owl.carousel.min.js"></script>
<script src="/findhero/resources/lib/scrollreveal/scrollreveal.min.js"></script>

<!-- Contact Form JavaScript File -->
<script src="/findhero/resources/contactform/contactform.js"></script>

<!-- Template Main Javascript File -->
<script src="/findhero/resources/js/main.js"></script>
	
<!-- Web socket CDN  -->
<script src ="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js "></script>

<script type="text/javascript">
	
	
		 
</script>

</body>
</html>
