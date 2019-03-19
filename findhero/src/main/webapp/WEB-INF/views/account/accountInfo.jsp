<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>fiNdhErO</title>
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

  <!-- =======================================================
    Theme Name: EstateAgency
    Theme URL: https://bootstrapmade.com/real-estate-agency-bootstrap-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
</head>

<body>

  <jsp:include page="/WEB-INF/views/include/header.jsp" />

  <!--/ Intro Single star /-->
  <section class="intro-single">
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-lg-8">
          <div class="title-single-box">
            <h1 class="title-single">계정정보</h1>            
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--/ Intro Single End /-->

  <!--/ Property Single Star /-->
  <section class="property-single nav-arrow-b">
    <div class="container">
          <div class="row">
            <div class="col-md-6 col-lg-4">
            
            <c:if test="${not empty user }">
            <form id="fileform" action="/findhero/account/userImgUpload.action" method="post">
            	<input type="hidden" value="${user.userNo}" name="userNo">
            	<label>		
              		<img src="/findhero/resources/user-img/${user.userImage }" style="width: 100%; height: 300px;" alt="" class="img-fluid" id="userImg" onerror="this.src='/findhero/resources/img/noimg.png'">
              		<input type="file" style="display: none" name="img" id="userImageInput">              	 	
              	</label>               	
             </form> 	
            </c:if>
             <c:if test="${not empty hero }">
             <form id="fileform2" action="fileUpload" method="post">
            	<input type="hidden" value="${hero.heroNo}" name="heroNo">
				<label>		
              		<img src="/findhero/resources/hero-img/${hero.heroImage }"  style="width: 100%; height: 300px;" alt="" class="img-fluid" id="heroImg" onerror="this.src='/findhero/resources/img/noimg.png'">
              		<input type="file" style="display: none" name="img" id="heroImageInput">              	 	
              	</label> 
              	
              	</form>
            </c:if>
            
            	
            </div>
            <div class="col-md-6 col-lg-4">
              <div class="property-agent">
              	<c:choose>
              		<c:when test="${not empty user }">
                		<h4 class="title-agent">일반 회원</h4>
                	</c:when>
                	<c:when test="${not empty hero }">
                		<h4 class="title-agent">전문가 회원</h4>
                	</c:when>
                </c:choose>
                <c:if test="${not empty hero }">                        	
	                <p class="color-text-a">${hero.heroAbout }<a style="color:blue;font-weight: bold" class="rehero btn" id="reheroAbout" data-toggle="modal" data-target="#reModal">수정</a></p>	                        	                       	              
                </c:if> 
                <ul class="list-unstyled">
                  <li class="d-flex justify-content-between">
                    <strong>이름:</strong>
                    <c:if test="${not empty user }">
                    	<span class="color-text-a">${user.userName}</span>
                    	<a style="color:blue;font-weight: bold" class="reuser btn" id="reuserName" data-toggle="modal" data-target="#reModal">수정</a>
                    </c:if>
                    <c:if test="${not empty hero }">
                    	<span class="color-text-a">${hero.heroName}</span>
                    	<a style="color:blue;font-weight: bold" class="rehero btn" id="reheroName" data-toggle="modal" data-target="#reModal">수정</a>
                    </c:if>                   
                  </li>
                  <li class="d-flex justify-content-between">
                    <strong>이메일:</strong>
                      <c:if test="${not empty user }">
                    	<span class="color-text-a">${user.userEmail}</span>
                    	<a style="color:blue;font-weight: bold" class="reuser btn" id="reuserEmail" data-toggle="modal" data-target="#reModal">수정</a>
                    </c:if>
                    <c:if test="${not empty hero }">
                    	<span class="color-text-a">${hero.heroEmail}</span>
                    	<a style="color:blue;font-weight: bold" class="rehero btn" id="reheroEmail" data-toggle="modal" data-target="#reModal">수정</a>
                    </c:if>
                  </li>
                  <li class="d-flex justify-content-between">
                    <strong>전화번호:</strong>
                    <c:if test="${not empty user }">
                    	<span class="color-text-a">${user.userPhone}</span>
                    	<a style="color:blue;font-weight: bold" class="reuser btn" id="reuserPhone" data-toggle="modal" data-target="#reModal">수정</a>
                    </c:if>
                    <c:if test="${not empty hero }">
                    	<span class="color-text-a">${hero.heroPhone}</span>
                    	<a style="color:blue;font-weight: bold" class="rehero btn" id="reheroPhone" data-toggle="modal" data-target="#reModal">수정</a>
                    </c:if>
                  </li>
                  <c:if test="${not empty hero }">
                  	 <li class="d-flex justify-content-between">
                  	 	<strong>주소:</strong>
                  	 	<span class="color-text-a">${hero.heroAdd1}/${hero.heroAdd2}/${hero.heroAdd3}</span>
                    	<a style="color:blue;font-weight: bold" class="rehero btn" id="reheroAdd" data-toggle="modal" data-target="#reModal">수정</a>                  	 
                  	 </li>
                  	<li class="d-flex justify-content-between">
                  	 	<strong>분야:</strong>
                  	 	<span class="color-text-a">${hero.heroField}/${hero.heroField2}</span>
                    	<a style="color:blue;font-weight: bold" class="rehero btn" id="reheroField" data-toggle="modal" data-target="#reModal">수정</a>                  	 
                  	 </li>                                                      
                  </c:if>                  
                </ul>
              
              </div>
            </div>         
          </div>
        </div>  
  </section>
  <!--/ Property Single End /-->
  
  <!-- The Modal -->
	<div class="modal" id="reModal">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      
	        <div class="modal-body">	      
		     <div>
	            <div class="title-box-d">
	             	<h4 class="title-d">개인정보수정</h4>       
	            </div>
	            	<form action="/findhero/account/userRewrite.action" method="post" id="userReWrite">  
	            	<input type="hidden" name="userNo" value="${user.userNo }">          	            
					<div style="display:none" id="reuName">
						<label><span>이름</span></label>
	                	<input type="text" class="form-control" name="userName" value="${user.userName}">
	              	</div>
	              	<div style="display:none" id="reuEmail">
	              		<label><span>이메일</span></label>
	                	<input type="text" class="form-control" name="userEmail" value="${user.userEmail }">
	              	</div>
	              	<div style="display:none" id="reuPhone">
	              		<label><span>전화번호</span></label>
	                	<input type="text" class="form-control" name="userPhone" value="${user.userPhone }">
	              	</div>	
	              	</form>
					
					<form action="/findhero/account/heroRewrite.action" method="post" id="heroReWrite"> 
					<input type="hidden" name="heroNo" value="${hero.heroNo }">	              	
	              	<div style="display:none" id="rehName">
	              		<label><span>이름</span></label>
	                	<input type="text" class="form-control" name="heroName" value="${hero.heroName }">
	              	</div>	
	              	
	              	<div style="display:none" id="rehEmail">
	              		<label><span>이메일</span></label>
	                	<input type="text" class="form-control" name="heroEmail" value="${hero.heroEmail }">
	              	</div>	
	              		
	              	<div style="display:none" id="rehPhone"> 
	              		<label><span>전화번호</span></label>
	                	<input type="text" class="form-control" name="heroPhone" value="${hero.heroPhone }">
	              	</div>	
	              	
	              	<div style="display:none" id="rehAdd"> 
	              		<label><span>주소1</span></label>
	                	<input type="text" class="form-control" name="heroAdd1" value="${hero.heroAdd1 }">
	                	<label><span>주소2</span></label>
	                	<input type="text" class="form-control" name="heroAdd2" value="${hero.heroAdd2 }">
	                	<label><span>주소3</span></label>
	                	<input type="text" class="form-control" name="heroAdd3" value="${hero.heroAdd3 }">
	              	</div>
	              	
	              	<div style="display:none" id="rehField"> 
	              		<label><span>분야</span></label>
	                	<input type="text" class="form-control" name="heroField" value="${hero.heroField }">
	                	
	                	<label><span>전공분야</span></label>
	                	<input type="text" class="form-control" name="heroField2" value="${hero.heroField2 }">	              	
	              	</div>
	              	
					
					<div style="display:none" id="rehAbout"> 
	              		<label><span>자기소개</span></label>
	                	<textarea class="form-control" name="heroAbout">${hero.heroAbout}</textarea>
	              	</div>
						              	              
	              	</form>		             
	        </div>	
	    	</div>
	    
	    <div class="modal-footer">
         <button type="button" class="btn btn-s" id="userReWritesubmit" style="display: none">수정</button>
         <button type="button" class="btn btn-s" id="heroReWritesubmit" style="display:none">수정</button>
        <button type="button" class="btn btn-s" data-dismiss="modal">취소</button>
      </div>
        
	  </div>
	</div>
	</div>

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
 	
  <script type="text/javascript">
  	$(function(){
		
  		$('#reuserName').on('click',function(event){
  			$('#reuName').css("display","block");
  			$('#rehName').css("display","none");
  			$('#reuEmail').css("display","none");
  			$('#rehEmail').css("display","none");
  			$('#reuPhone').css("display","none");
  			$('#rehPhone').css("display","none");
  			$('#rehAdd').css("display","none");
  			$('#rehfield').css("display","none");
  			$('#rehAbout').css("display","none");
  			$('#userReWritesubmit').css("display","block");
  			$('#heroReWritesubmit').css("display","none");
  		});
  		
  		$('#reheroName').on('click',function(event){
  			$('#reuName').css("display","none");
  			$('#rehName').css("display","block");
  			$('#reuEmail').css("display","none");
  			$('#rehEmail').css("display","none");
  			$('#reuPhone').css("display","none");
  			$('#rehPhone').css("display","none");
  			$('#rehAdd').css("display","none");
  			$('#rehfield').css("display","none");
  			$('#rehAbout').css("display","none");
  			$('#userReWritesubmit').css("display","none");
  			$('#heroReWritesubmit').css("display","block");
  		});
  		
  		$('#reuserEmail').on('click',function(event){
  			$('#reuName').css("display","none");
  			$('#rehName').css("display","none");
  			$('#reuEmail').css("display","block");
  			$('#rehEmail').css("display","none");
  			$('#reuPhone').css("display","none");
  			$('#rehPhone').css("display","none");
  			$('#reuPswd').css("display","none");
  			$('#rehPswd').css("display","none");
  			$('#rehAdd').css("display","none");
  			$('#rehfield').css("display","none");
  			$('#rehAbout').css("display","none");
  			$('#userReWritesubmit').css("display","block");
  			$('#heroReWritesubmit').css("display","none");
  		});
  		
  		$('#reheroEmail').on('click',function(event){
  			$('#reuName').css("display","none");
  			$('#rehName').css("display","none");
  			$('#reuEmail').css("display","none");
  			$('#rehEmail').css("display","block");
  			$('#reuPhone').css("display","none");
  			$('#rehPhone').css("display","none");
  			$('#rehAdd').css("display","none");
  			$('#rehfield').css("display","none");
  			$('#rehAbout').css("display","none");
  			$('#userReWritesubmit').css("display","none");
  			$('#heroReWritesubmit').css("display","block");
  		});
  		
  		$('#reuserPhone').on('click',function(event){
  			$('#reuName').css("display","none");
  			$('#rehName').css("display","none");
  			$('#reuEmail').css("display","none");
  			$('#rehEmail').css("display","none");
  			$('#reuPhone').css("display","block");
  			$('#rehPhone').css("display","none");
  			$('#rehAdd').css("display","none");
  			$('#rehfield').css("display","none");
  			$('#rehAbout').css("display","none");
  			$('#userReWritesubmit').css("display","block");
  			$('#heroReWritesubmit').css("display","none");
  		});
  		
  		$('#reheroPhone').on('click',function(event){
  			$('#reuName').css("display","none");
  			$('#rehName').css("display","none");
  			$('#reuEmail').css("display","none");
  			$('#rehEmail').css("display","none");
  			$('#reuPhone').css("display","none");
  			$('#rehPhone').css("display","block");
  			$('#rehAdd').css("display","none");
  			$('#rehfield').css("display","none");
  			$('#rehAbout').css("display","none");
  			$('#userReWritesubmit').css("display","none");
  			$('#heroReWritesubmit').css("display","block");
  		});
  		
  		$('#reheroAdd').on('click',function(event){
  			$('#reuName').css("display","none");
  			$('#rehName').css("display","none");
  			$('#reuEmail').css("display","none");
  			$('#rehEmail').css("display","none");
  			$('#reuPhone').css("display","none");
  			$('#rehPhone').css("display","none");
  			$('#rehAdd').css("display","block");
  			$('#rehfield').css("display","none");
  			$('#rehAbout').css("display","none");
  			$('#userReWritesubmit').css("display","none");
  			$('#heroReWritesubmit').css("display","block");
  		});

  		$('#reheroField').on('click',function(event){
  			$('#reuName').css("display","none");
  			$('#rehName').css("display","none");
  			$('#reuEmail').css("display","none");
  			$('#rehEmail').css("display","none");
  			$('#reuPhone').css("display","none");
  			$('#rehPhone').css("display","none");
  			$('#rehAdd').css("display","none");
  			$('#rehField').css("display","block");
  			$('#rehAbout').css("display","none");
  			$('#userReWritesubmit').css("display","none");
  			$('#heroReWritesubmit').css("display","block");
  		});
  		
  		$('#reheroAbout').on('click',function(event){
  			$('#reuName').css("display","none");
  			$('#rehName').css("display","none");
  			$('#reuEmail').css("display","none");
  			$('#rehEmail').css("display","none");
  			$('#reuPhone').css("display","none");
  			$('#rehPhone').css("display","none");
  			$('#rehAdd').css("display","none");
  			$('#rehfield').css("display","none");
  			$('#rehAbout').css("display","block");
  			$('#userReWritesubmit').css("display","none");
  			$('#heroReWritesubmit').css("display","block");
  		});
  		
  		$('#userReWritesubmit').on('click',function(event){
  			$('#userReWrite').submit();
  		});
  		
  		$('#heroReWritesubmit').on('click',function(event){
  			$('#heroReWrite').submit();
  		});
  		  	
  		$('#userImageInput:file').on('change',function(event){
  			
  			var formData = new FormData($('#fileform')[0]);
  			
  			$.ajax({
  				"type":'post',
  				"url":'/findhero/account/userImgUpload.action',
  				"data":formData,
  				"processData":false,
  				"contentType":false,
  				success:function(data,status,xhr){  
  					alert(data);
  					$('#userImg').attr("src",'/findhero/resources/user-img/'+data);
  				},
  				error:function(xhr,status,err){
  					alert("수정에 실패하였습니다.");
  				}  				  			  			
  			});
  		});
  			
  		$('#heroImageInput:file').on('change',function(event){
  	  			
  	  		var formData = new FormData($('#fileform2')[0]);
  	  			
  	  		$.ajax({
  	  			"type":'post',
  	  			"url":'/findhero/account/heroImgUpload.action',
  	  			"data":formData,
  	  			"processData":false,
  	  			"contentType":false,
  	  			success:function(data,status,xhr){  	  	  				
  	  				$('#heroImg').attr("src",'/findhero/resources/hero-img/'+data);
  	  			},
  	  			error:function(xhr,status,err){
  	  				alert("수정에 실패하였습니다.");
  	  			}  				  			  			
  	  		});
  		
  		});
  		
  		  		
  		
  		});

  </script>	

</body>
</html>
