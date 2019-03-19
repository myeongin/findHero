<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Chat List</title>
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

</head>

<body>

<jsp:include page="/WEB-INF/views/include/header.jsp" />

<section class="intro-single" style="background-color: #FAFAFA">
 <div class="container">
  <div class="row">
   <div class="col-md-12 col-lg-8">
	<div class="title-box-d">
	 <h6 class="title-d">진행중인 채팅</h6>
	</div>
   </div>
    <div class="col-md-12 col-lg-4">
     <div class="pull-right">
	  <div class="btn-group">
<!-- <button type="button" class="btn btn-success btn-filter" data-target="pagado">Pagado</button>
<button type="button" class="btn btn-warning btn-filter" data-target="pendiente">Pendiente</button>
<button type="button" class="btn btn-danger btn-filter" data-target="cancelado">Cancelado</button>
<button type="button" class="btn btn-default btn-filter" data-target="all">Todos</button> -->
     </div>
    </div>
   </div>
  </div>
 </div>
</section>

	<!--/ Contact Star /-->
<section class="content" style="background-color: #FAFAFA">
 <div class="container">
  <div class="row">
   <div class="col-md-12">
    <div class="panel-body">
	 <div class="table-container">
	  <table class="table table-filter">
	   <tbody>
	   
		<c:forEach var="chat" items="${ chats }">
	     <tr data-status="pagado">
	     
		  <td style="width:60px;height:60px; background-color:#FFFFFF ;text-align: center; margin: 2px 0px; vertical-align:middle" >
		  
		   <c:choose>
		    <c:when test="${ not empty user or not empty hero}">
		     <c:if test="${ not empty user }">
		      <a href="/findhero/chat/content.action?userNo=${ user.userNo }&chatNo=${ chat.chatNo }">
		       <img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg">
		      </a>
		     </c:if>
		     <c:if test="${ not empty hero }">
		      <a href="/findhero/chat/content.action?heroNo=${ hero.heroNo }&chatNo=${ chat.chatNo }">
		       <img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg" class="media-photo">
		      </a>
		     </c:if>
		    </c:when>
	       </c:choose>
	      </td>
	      
		  <td style="background-color: #FFFFFF" >
		  
		   <c:choose>
		    <c:when test="${ not empty user or not empty hero}">
		    
		     <c:if test="${ not empty user }">
			  <a href="/findhero/chat/content.action?userNo=${ userNo }&chatNo=${ chat.chatNo }">
			 </c:if>
			  
			 <c:if test="${ not empty hero }">
			  <a href="/findhero/chat/content.action?heroNo=${ hero.heroNo }&chatNo=${ chat.chatNo }">
			 </c:if>
			   
			 <div class="media">
			  <div class="media-body" style="vertical-align:middle">
			  
			   <br>
			   
			     <h5 class="title" style="text-align:center;">

			  
			      <c:if test="${ not empty user }">
			       <c:forEach var="hero" items="${ chat.heroVo }">
				    ${ hero.heroName }
			       </c:forEach>
			      </c:if>
			   
			      <c:if test="${ not empty hero }">
			   	   <c:forEach var="user" items="${ chat.userVo }">
				    ${ user.userName }
			       </c:forEach>
			      </c:if>
			      
			      
			      <span class="pull-right pagado" style="color: #323232;">
			       
			       <c:if test="${ not empty user }">
			        <c:forEach var="hero" items="${ chat.heroVo }">
				     ${ hero.heroField2 }
			        </c:forEach>
			       </c:if>
			   
			       <c:if test="${ not empty hero }">
			       
     			   </c:if>
     			   
  			      </span>
			      
			      </h5>
			      
			       
			   	<hr>
			   
			     
			     
			     
			     <p class="summary">
			      <c:forEach var="content" items="${ chat.chatContents }">
			       ${ content.content }
			      </c:forEach>
			     </p>
			     
			     
			     <span style="font-size:0.8em" > 
			     <c:forEach var="content" items="${ chat.chatContents }">
			     
			     <fmt:formatDate value="${content.time}" pattern="yyyy년 MM월 dd일 a hh:mm"/>

			     
			     </c:forEach>
			    </span>
			    
			    </div>
			   </div>
		      </a>
		      
		     </c:when>
		    </c:choose>
		    
		   </td>
		   
		   
		 </tr>
		</c:forEach>
		
	   </tbody>
	  </table>
     </div>
	</div>
   </div>
  </div>
 </div>
 
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
</body>
</html>

