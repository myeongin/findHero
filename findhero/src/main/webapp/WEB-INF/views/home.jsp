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
  
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
 
  
<link href="/findhero/resources/css/magic-check.css" rel="stylesheet">



  <!-- Main Stylesheet File -->
  <link href="/findhero/resources/css/style.css" rel="stylesheet">
  <style type="text/css">
  .img-box-b{
  	height: 140px;
  }
  .img-find1{
  	width: 100%;
  	border-radius: 5%;
  }
  #find_modal-content{
  	width: 150%;
  	height: 50%;
  	margin-left: -25%;
  } 
  .span3_m-wrap, #requestTerm, #requestDay {
  	width: 99%;
  }
  .span2_m-wrap{
  	width: 49%;
  }
  .weekDays-selector input {
  display: none!important;
}

.weekDays-selector input[type=checkbox] + label {
  display: inline-block;
  border-radius: 6px;
  background: #dddddd;
  height: 40px;
  width: 30px;
  margin-right: 3px;
  line-height: 40px;
  text-align: center;
  cursor: pointer;
}

.weekDays-selector input[type=checkbox]:checked + label {
  background: #2AD705;
  color: #ffffff;
}
  </style>
</head>

<body>
 <jsp:include page="/WEB-INF/views/include/header.jsp" />

  <!--/ Carousel Star /-->
  <c:if test="${not empty noUser }">
   <script>
 $(function(){
	 $('#modalCookie1').modal('show')
 });
 </script>
  <div class="modal fade top" id="modalCookie1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true" data-backdrop="false">
  <div class="modal-dialog modal-frame modal-top modal-notify modal-info" role="document">
    <!--Content-->
    <div class="modal-content">
      <!--Body-->
      <div class="modal-body">
        <div class="row d-flex justify-content-center align-items-center">
			<p class="pt-3 pr-2">${noUser}
          <button type="button" class="btn btn-outline-danger" data-dismiss="modal">확인</button>          
        </div>
      </div>
    </div>
    <!--/.Content-->
  </div>
</div>   
  </c:if>
  
  
 <c:if test="${not empty herosCount}">
 <c:if test="${herosCount ne 0 }">
 <script>
 $(function(){
	 $('#modalCookie1').modal('show')
 });
 </script>
  <div class="modal fade top" id="modalCookie1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true" data-backdrop="false">
  <div class="modal-dialog modal-frame modal-top modal-notify modal-info" role="document">
    <!--Content-->
    <div class="modal-content">
      <!--Body-->
      <div class="modal-body">
        <div class="row d-flex justify-content-center align-items-center">
			<p class="pt-3 pr-2"><strong>${herosCount}</strong>명의 히어로에게 요청서가 전달되었습니다.</p>
          <button type="button" class="btn btn-outline-danger" data-dismiss="modal">확인</button>          
        </div>
      </div>
    </div>
    <!--/.Content-->
  </div>
</div> 
</c:if>
 <c:if test="${herosCount eq 0 }">
 <script>
 $(function(){
	 $('#modalCookie1').modal('show')
 });
 </script>
  <div class="modal fade top" id="modalCookie1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true" data-backdrop="false">
  <div class="modal-dialog modal-frame modal-top modal-notify modal-info" role="document">
    <!--Content-->
    <div class="modal-content">
      <!--Body-->
      <div class="modal-body">
        <div class="row d-flex justify-content-center align-items-center">
			<p class="pt-3 pr-2">죄송합니다. 현재 조건에 맞는 히어로가 없습니다.</p>
          <button type="button" class="btn btn-outline-danger" data-dismiss="modal">확인</button>          
        </div>
      </div>
    </div>
    <!--/.Content-->
  </div>
</div> 
</c:if>
 </c:if>
 
 
 
 
 
  <div class="intro intro-carousel">
    <div id="carousel" class="owl-carousel owl-theme">
      <div class="carousel-item-a intro-item bg-image" style="background-image: url(/findhero/resources/img/slide-1.jpg)">
        <div class="overlay overlay-a"></div>
        <div class="intro-content display-table">
          <div class="table-cell">
            <div class="container">
              <div class="row">
                <div class="col-lg-8">
                  <div class="intro-body">
                  	<h2 class="intro-title mb-4"> 전문가를 찾아보세요</h2>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="carousel-item-a intro-item bg-image" style="background-image: url(/findhero/resources/img/slide-2.jpg)">
        <div class="overlay overlay-a"></div>
        <div class="intro-content display-table">
          <div class="table-cell">
            <div class="container">
              <div class="row">
                <div class="col-lg-8">
                  <div class="intro-body">
                    <h2 class="intro-title mb-4"> 전문가를 찾아보세요</h2>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="carousel-item-a intro-item bg-image" style="background-image: url(/findhero/resources/img/slide-3.jpg)">
        <div class="overlay overlay-a"></div>
        <div class="intro-content display-table">
          <div class="table-cell">
            <div class="container">
              <div class="row">
                <div class="col-lg-8">
                  <div class="intro-body">
                    <h2 class="intro-title mb-4"> 전문가를 찾아보세요</h2>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--/ Carousel end /-->
	

	<!--/ Services Star /-->
  <section class="section-services section-t8">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="title-wrap d-flex justify-content-between">
            <div class="title-box">
              <h2 class="title-a">서비스 찾기</h2>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-6 col-md-4">
          <div class="card-box-c foo">
            <div class="card-footer-c">
              <a href="/findhero/contents/lessonlist.action?pageNo=${pageNo}&rsfield=1" class="link-c link-icon">
              <div class="card-box-ico" align="center">
                <span class="fa fa-book"></span>
                <h3 style="font-weight: 600px; font-size: 2rem;">레슨</h3>
              </div>
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card-box-c foo">
            <div class="card-footer-c">
              <a href="/findhero/contents/lessonlist.action?pageNo=${pageNo}&rsfield=2" class="link-c link-icon">
              <div class="card-box-ico" align="center">
                <span class="fa fa-briefcase"></span>
                <h3 style="font-weight: 600px; font-size: 2rem;">비지니스</h3>
              </div>
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card-box-c foo">
            <div class="card-footer-c">
              <a href="/findhero/contents/lessonlist.action?pageNo=${pageNo}&rsfield=3" class="link-c link-icon">
              <div class="card-box-ico" align="center">
                <span class="fa fa-desktop"></span>
                <h3 style="font-weight: 600px; font-size: 2rem;">디자인/개발</h3>
              </div>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--/ Services End /-->
  
  <!--/ News Star /-->

    	<jsp:include page="/WEB-INF/views/request/request.jsp"/>
    	<section class="section-news section-t8">
	    <div class="container">
	    
	      <div class="row">
	        <div class="col-md-12">
	          <div class="title-wrap d-flex justify-content-between">
	            <div class="title-box">
	              <h2 class="title-a">서비스 요청</h2>
	            </div>
	          </div>
	        </div>
	      </div>
	      <div class="row">
	      <div class="col-sm-12">
	      	<h4 style="font-size:30px;margin:0 0 10px;line-height:1.22;color:#4d4d4d;font-weight:bold;text-align: center">레슨</h4>
	      </div>
	      </div>
	      <div class="row">
	      
	        <div class="col-md-4">	        		
	          <div id="modal_show" class="card-box-b button" style="background-color: #ffffff;border:1px solid #ddd;border-radius:4px;">				
	            <div class="img-box-b" style="overflow:hidden;">
	              <img src="/findhero/resources/img/recommend-1.jpg" class="card-img-top">
	             </div> 	             
	            <div>
	            	<p style="margin:15px 0;font-size:16px;font-weight:bolder;text-align:center;color:#4d4d4d;">보컬 트레이닝</p>
	            </div>	        
	          </div>	         
	        </div>
	        	        
	      <div class="col-md-4">	        		
	          <div id="modal_show1" class="card-box-b button" style="background-color: #ffffff;border:1px solid #ddd;border-radius:4px;">				
	            <div class="img-box-b" style="overflow:hidden;">
	              <img src="/findhero/resources/img/recommend-4.jpg" alt="" class="card-img-top">
	             </div> 	             
	            <div>
	            	<p style="margin:15px 0;font-size:16px;font-weight:bolder;text-align:center;color:#4d4d4d;">축구 트레이닝</p>
	            </div>	        
	          </div>	         
	        </div>
	        	        
	         <div class="col-md-4">	        		
	          <div id="modal_show2" class="card-box-b button" style="background-color: #ffffff;border:1px solid #ddd;border-radius:4px;">				
	            <div class="img-box-b" style="overflow:hidden;">
	               <img src="/findhero/resources/img/recommend-3.jpg" alt="" class="card-img-top">
	             </div> 	             
	            <div>
	            	<p style="margin:15px 0;font-size:16px;font-weight:bolder;text-align:center;color:#4d4d4d;">기타레슨</p>
	            </div>	        
	          </div>	         
	        </div>
	        
	      </div><br>
	      <div class="row">
	      <div class="col-sm-12">
	      	<h4 style="font-size:30px;margin:30px 0 10px;line-height:1.22;color:#4d4d4d;font-weight:bold;text-align: center">비즈니스</h4>
	      </div>
	      </div>
	      <div class="row">
	      
	      
	      
	      <div class="col-md-4">	        		
	          <div id="modal_show3" class="card-box-b button" style="background-color: #ffffff;border:1px solid #ddd;border-radius:4px;">				
	            <div class="img-box-b" style="overflow:hidden;">
	               <img src="/findhero/resources/img/recommend-2.png" alt="" class="card-img-top">
	             </div> 	             
	            <div>
	            	<p style="margin:15px 0;font-size:16px;font-weight:bolder;text-align:center;color:#4d4d4d;">외국어 번역</p>
	            </div>	        
	          </div>	         
	        </div>
	        
	        
	        
	        <div class="col-md-4">	        		
	          <div id="modal_show4" class="card-box-b button" style="background-color: #ffffff;border:1px solid #ddd;border-radius:4px;">				
	            <div class="img-box-b" style="overflow:hidden;">
	               <img src="/findhero/resources/img/recommend-5.jpg" alt="" class="card-img-top">
	             </div> 	             
	            <div>
	            	<p style="margin:15px 0;font-size:16px;font-weight:bolder;text-align:center;color:#4d4d4d;">마케팅</p>
	            </div>	        
	          </div>	         
	        </div>
	        
	         
	        
	        <div class="col-md-4">	        		
	          <div id="modal_show5" class="card-box-b button" style="background-color: #ffffff;border:1px solid #ddd;border-radius:4px;">				
	            <div class="img-box-b" style="overflow:hidden;">
	               <img src="/findhero/resources/img/recommend-6.jpg" alt="" class="card-img-top">
	             </div> 	             
	            <div>
	            	<p style="margin:15px 0;font-size:16px;font-weight:bolder;text-align:center;color:#4d4d4d;">회계/세무</p>
	            </div>	        
	          </div>	         
	        </div>
	        
	      </div><br>
	    <div class="row">
	      <div class="col-sm-12">
	      	<h4 style="font-size:30px;margin:30px 0 10px;line-height:1.22;color:#4d4d4d;font-weight:bold;text-align: center">개발/디자인</h4>
	      </div>
	      </div>	      	      
	      
	      <div class="row">	      	
	        <div class="col-md-4">	        		
	          <div id="modal_show5" class="card-box-b button" style="background-color: #ffffff;border:1px solid #ddd;border-radius:4px;">				
	            <div class="img-box-b" style="overflow:hidden;">
	               <img src="/findhero/resources/img/recommend-7.jpg" alt="" class="card-img-top">
	             </div> 	             
	            <div>
	            	<p style="margin:15px 0;font-size:16px;font-weight:bolder;text-align:center;color:#4d4d4d;">소프트웨어 개발</p>
	            </div>	        
	          </div>	         
	        </div>	        	   
	        
	             <div class="col-md-4">	        		
	          <div id="modal_show5" class="card-box-b button" style="background-color: #ffffff;border:1px solid #ddd;border-radius:4px;">				
	            <div class="img-box-b" style="overflow:hidden;">
	               <img src="/findhero/resources/img/recommend-8.jpg" alt="" class="card-img-top">
	             </div> 	             
	            <div>
	            	<p style="margin:15px 0;font-size:16px;font-weight:bolder;text-align:center;color:#4d4d4d;">제품 디자인</p>
	            </div>	        
	          </div>	         
	        </div>
	        
	        
	        
	     <div class="col-md-4">	        		
	          <div id="modal_show5" class="card-box-b button" style="background-color: #ffffff;border:1px solid #ddd;border-radius:4px;">				
	            <div class="img-box-b" style="overflow:hidden;">
	               <img src="/findhero/resources/img/recommend-9.jpg" alt="" class="card-img-top">
	             </div> 	             
	            <div>
	            	<p style="margin:15px 0;font-size:16px;font-weight:bolder;text-align:center;color:#4d4d4d;">라벨디자인</p>
	            </div>	        
	          </div>	         
	        </div>
	        
	      </div>
	    </div>
	  </section>
 <!--/ News End /-->


	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
 

  <!-- JavaScript Libraries -->
  <!--  <script src="/findhero/resources/lib/jquery/jquery.min.js"></script>
  <script src="/findhero/resources/lib/jquery/jquery-migrate.min.js"></script> 
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
   
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  
  <script src="/findhero/resources/lib/popper/popper.min.js"></script>
  <script src="/findhero/resources/lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="/findhero/resources/lib/easing/easing.min.js"></script>
  <script src="/findhero/resources/lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="/findhero/resources/lib/scrollreveal/scrollreveal.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="/findhero/resources/contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="/findhero/resources/js/main.js"></script>


      <script>
        $(function() {
        	
        	
        	$('.notice').click(function(){
        		$("#notice-show").modal("show");
        		$('#ns').css("display","block");
        	});
        	
            $("#modal_show").click(function() {
                $("#recommend-show1").modal("show");
                $('.progress-bar').width(0 + '%'); 
                $('#rc1-next1').css("display","block");
                $('#rc1-next2').css("display","none");
                $('#rc1-back1').css("display","none");
				$('#rc1-back2').css("display","none");
                $('.rc1-find1').css("display","block");
                $('#rc1-find2').css("display","none");
                $('#rc1-find3').css("display","none");
                $('#rc1-success').css("display","none"); 
            });
            
            $('#rc1-next1').on('click',function(event){
            	$('.progress-bar').width(50 + '%'); 
          		$('#rc1-back1').css("display","inline-block");
          		$('#rc1-back2').css("display","none");
                $('#rc1-next1').css("display","none");
                $('#rc1-next2').css("display","inline-block");
                $('.rc1-find1').css("display","none");
                $('#rc1-find2').css("display","block");    	  
                $('#rc1-find3').css("display","none");    	  
                $('#rc1-success').css("display","none"); 
            });
            
            $('#rc1-back1').on('click',function(event){ 
            	$('.progress-bar').width(0 + '%'); 
				$('#rc1-back1').css("display","none");
				$('#rc1-back2').css("display","none");
				$('#rc1-next1').css("display","block");
				$('#rc1-next2').css("display","none");
				$('.rc1-find1').css("display","block");
				$('#rc1-find2').css("display","none"); 
				$('#rc1-find3').css("display","none"); 
				$('#rc1-success').css("display","none"); 
            }); 
            
            $('#rc1-next2').on('click',function(event){
            	$('.progress-bar').width(100 + '%'); 
          		$('#rc1-back1').css("display","none");
          		$('#rc1-back2').css("display","inline-block");
                $('#rc1-next1').css("display","none");
                $('#rc1-next2').css("display","none");
                $('.rc1-find1').css("display","none");
                $('#rc1-find2').css("display","none");    	  
                $('#rc1-find3').css("display","block");    	  
                $('#rc1-success').css("display","inline-block"); 
            });
            
            $('#rc1-back2').on('click',function(event){
            	$('.progress-bar').width(50 + '%'); 
				$('#rc1-back1').css("display","inline-block");
				$('#rc1-back2').css("display","none");
				$('#rc1-next1').css("display","none");
				$('#rc1-next2').css("display","inline-block");
				$('.rc1-find1').css("display","none");
				$('#rc1-find2').css("display","block"); 
				$('#rc1-find3').css("display","none"); 
				$('#rc1-success').css("display","none"); 
            }); 
            
            $("#modal_show1").click(function() {
                $("#recommend-show2").modal("show");
                $('.progress-bar').width(0 + '%'); 
                $('#rc2-next1').css("display","block");
                $('#rc2-next2').css("display","none");
                $('#rc2-back1').css("display","none");
				$('#rc2-back2').css("display","none");
                $('.rc2-find1').css("display","block");
                $('#rc2-find2').css("display","none");
                $('#rc2-find3').css("display","none");
                $('#rc2-success').css("display","none"); 
            });
            
            $('#rc2-next1').on('click',function(event){ 
            	$('.progress-bar').width(50 + '%'); 
          		$('#rc2-back1').css("display","inline-block");
          		$('#rc2-back2').css("display","none");
                $('#rc2-next1').css("display","none");
                $('#rc2-next2').css("display","inline-block");
                $('.rc2-find1').css("display","none");
                $('#rc2-find2').css("display","block");    	  
                $('#rc2-find3').css("display","none");    	  
                $('#rc2-success').css("display","none"); 
            });
            
            $('#rc2-back1').on('click',function(event){ 
            	$('.progress-bar').width(0 + '%'); 
				$('#rc2-back1').css("display","none");
				$('#rc2-back2').css("display","none");
				$('#rc2-next1').css("display","block");
				$('#rc2-next2').css("display","none");
				$('.rc2-find1').css("display","block");
				$('#rc2-find2').css("display","none"); 
				$('#rc2-find3').css("display","none"); 
				$('#rc2-success').css("display","none"); 
            }); 
            
            $('#rc2-next2').on('click',function(event){ 
            	$('.progress-bar').width(100 + '%'); 
          		$('#rc2-back1').css("display","none");
          		$('#rc2-back2').css("display","inline-block");
                $('#rc2-next1').css("display","none");
                $('#rc2-next2').css("display","none");
                $('.rc2-find1').css("display","none");
                $('#rc2-find2').css("display","none");    	  
                $('#rc2-find3').css("display","block");    	  
                $('#rc2-success').css("display","inline-block"); 
            });
            
            $('#rc2-back2').on('click',function(event){  
            	$('.progress-bar').width(50 + '%'); 
				$('#rc2-back1').css("display","inline-block");
				$('#rc2-back2').css("display","none");
				$('#rc2-next1').css("display","none");
				$('#rc2-next2').css("display","inline-block");
				$('.rc2-find1').css("display","none");
				$('#rc2-find2').css("display","block"); 
				$('#rc2-find3').css("display","none"); 
				$('#rc2-success').css("display","none"); 
            }); 
            
            $("#modal_show2").click(function() {
                $("#recommend-show3").modal("show");
                $('.progress-bar').width(0 + '%'); 
                $('#rc3-next1').css("display","block");
                $('#rc3-next2').css("display","none");
                $('#rc3-back1').css("display","none");
				$('#rc3-back2').css("display","none");
                $('#rc3-find1').css("display","block");
                $('#rc3-find2').css("display","none");
                $('#rc3-find3').css("display","none");
                $('#rc3-success').css("display","none"); 
            });
            
             $('#rc3-next1').on('click',function(event){ 
            	$('.progress-bar').width(50 + '%');
          		$('#rc3-back1').css("display","block");
          		$('#rc3-back2').css("display","none");
                $('#rc3-next1').css("display","none");
                $('#rc3-next2').css("display","block");
                $('#rc3-find1').css("display","none");
                $('#rc3-find2').css("display","block");    	  
                $('#rc3-find3').css("display","none");    	  
                $('#rc3-success').css("display","none"); 
            });
            
            $('#rc3-back1').on('click',function(event){
            	$('.progress-bar').width(0 + '%');
				$('#rc3-back1').css("display","none");
				$('#rc3-back2').css("display","none");
				$('#rc3-next1').css("display","block");
				$('#rc3-next2').css("display","none");
				$('#rc3-find1').css("display","block");
				$('#rc3-find2').css("display","none"); 
				$('#rc3-find3').css("display","none"); 
				$('#rc3-success').css("display","none"); 
            }); 
            
            $('#rc3-next2').on('click',function(event){
            	$('.progress-bar').width(100 + '%');
          		$('#rc3-back1').css("display","none");
          		$('#rc3-back2').css("display","block");
                $('#rc3-next1').css("display","none");
                $('#rc3-next2').css("display","none");
                $('#rc3-find1').css("display","none");
                $('#rc3-find2').css("display","none");    	  
                $('#rc3-find3').css("display","block");    	  
                $('#rc3-success').css("display","block"); 
            });
            
            $('#rc3-back2').on('click',function(event){
            	$('.progress-bar').width(50 + '%');
				$('#rc3-back1').css("display","block");
				$('#rc3-back2').css("display","none");
				$('#rc3-next1').css("display","none");
				$('#rc3-next2').css("display","block");
				$('#rc3-find1').css("display","none");
				$('#rc3-find2').css("display","block"); 
				$('#rc3-find3').css("display","none"); 
				$('#rc3-success').css("display","none"); 
            });  
            
            $("#modal_show3").click(function() {
                $("#recommend-show4").modal("show");
                $('.progress-bar').width(0 + '%');
                $('#rc4-next1').css("display","block");
                $('#rc4-next2').css("display","none");
                $('#rc4-back1').css("display","none");
				$('#rc4-back2').css("display","none");
                $('.rc4-find1').css("display","block");
                $('#rc4-find2').css("display","none");
                $('#rc4-find3').css("display","none");
                $('#rc4-success').css("display","none"); 
            });
            
             $('#rc4-next1').on('click',function(event){ 
            	$('.progress-bar').width(50 + '%');
          		$('#rc4-back1').css("display","block");
          		$('#rc4-back2').css("display","none");
                $('#rc4-next1').css("display","none");
                $('#rc4-next2').css("display","block");
                $('.rc4-find1').css("display","none");
                $('#rc4-find2').css("display","block");    	  
                $('#rc4-find3').css("display","none");    	  
                $('#rc4-success').css("display","none"); 
            });
            
            $('#rc4-back1').on('click',function(event){
            	$('.progress-bar').width(0 + '%');
				$('#rc4-back1').css("display","none");
				$('#rc4-back2').css("display","none");
				$('#rc4-next1').css("display","block");
				$('#rc4-next2').css("display","none");
				$('.rc4-find1').css("display","block");
				$('#rc4-find2').css("display","none"); 
				$('#rc4-find3').css("display","none"); 
				$('#rc4-success').css("display","none"); 
            }); 
            
            $('#rc4-next2').on('click',function(event){
            	$('.progress-bar').width(100 + '%');
          		$('#rc4-back1').css("display","none");
          		$('#rc4-back2').css("display","block");
                $('#rc4-next1').css("display","none");
                $('#rc4-next2').css("display","none");
                $('.rc4-find1').css("display","none");
                $('#rc4-find2').css("display","none");    	  
                $('#rc4-find3').css("display","block");    	  
                $('#rc4-success').css("display","block"); 
            });
            
            $('#rc4-back2').on('click',function(event){
            	$('.progress-bar').width(50 + '%');
				$('#rc4-back1').css("display","block");
				$('#rc4-back2').css("display","none");
				$('#rc4-next1').css("display","none");
				$('#rc4-next2').css("display","block");
				$('.rc4-find1').css("display","none");
				$('#rc4-find2').css("display","block"); 
				$('#rc4-find3').css("display","none"); 
				$('#rc4-success').css("display","none"); 
            }); 
            
            $("#modal_show4").click(function() {
                $("#recommend-show5").modal("show");
                $('.progress-bar').width(0 + '%');
                $('#rc5-next1').css("display","block");
                $('#rc5-next2').css("display","none");
                $('#rc5-back1').css("display","none");
				$('#rc5-back2').css("display","none");
                $('#rc5-find1').css("display","block");
                $('#rc5-find2').css("display","none");
                $('#rc5-find3').css("display","none");
                $('#rc5-success').css("display","none"); 
            });
            
             $('#rc5-next1').on('click',function(event){ 
            	$('.progress-bar').width(50 + '%');
          		$('#rc5-back1').css("display","block");
          		$('#rc5-back2').css("display","none");
                $('#rc5-next1').css("display","none");
                $('#rc5-next2').css("display","block");
                $('#rc5-find1').css("display","none");
                $('#rc5-find2').css("display","block");    	  
                $('#rc5-find3').css("display","none");    	  
                $('#rc5-success').css("display","none"); 
            });
            
            $('#rc5-back1').on('click',function(event){
            	$('.progress-bar').width(0 + '%');
				$('#rc5-back1').css("display","none");
				$('#rc5-back2').css("display","none");
				$('#rc5-next1').css("display","block");
				$('#rc5-next2').css("display","none");
				$('#rc5-find1').css("display","block");
				$('#rc5-find2').css("display","none"); 
				$('#rc5-find3').css("display","none"); 
				$('#rc5-success').css("display","none"); 
            }); 
            
            $('#rc5-next2').on('click',function(event){
            	$('.progress-bar').width(100 + '%');
          		$('#rc5-back1').css("display","none");
          		$('#rc5-back2').css("display","block");
                $('#rc5-next1').css("display","none");
                $('#rc5-next2').css("display","none");
                $('#rc5-find1').css("display","none");
                $('#rc5-find2').css("display","none");    	  
                $('#rc5-find3').css("display","block");    	  
                $('#rc5-success').css("display","block"); 
            });
            
            $('#rc5-back2').on('click',function(event){
            	$('.progress-bar').width(50 + '%');
				$('#rc5-back1').css("display","block");
				$('#rc5-back2').css("display","none");
				$('#rc5-next1').css("display","none");
				$('#rc5-next2').css("display","block");
				$('#rc5-find1').css("display","none");
				$('#rc5-find2').css("display","block"); 
				$('#rc5-find3').css("display","none"); 
				$('#rc5-success').css("display","none"); 
            }); 
            
            $("#modal_show5").click(function() {
                $("#recommend-show6").modal("show");
                $('.progress-bar').width(0 + '%');
                $('#rc6-next1').css("display","block");
                $('#rc6-next2').css("display","none");
                $('#rc6-back1').css("display","none");
				$('#rc6-back2').css("display","none");
                $('#rc6-find1').css("display","block");
                $('#rc6-find2').css("display","none");
                $('#rc6-find3').css("display","none");
                $('#rc6-success').css("display","none"); 
            });
            
             $('#rc6-next1').on('click',function(event){ 
            	$('.progress-bar').width(50 + '%');
          		$('#rc6-back1').css("display","block");
          		$('#rc6-back2').css("display","none");
                $('#rc6-next1').css("display","none");
                $('#rc6-next2').css("display","block");
                $('#rc6-find1').css("display","none");
                $('#rc6-find2').css("display","block");    	  
                $('#rc6-find3').css("display","none");    	  
                $('#rc6-success').css("display","none"); 
            });
            
            $('#rc6-back1').on('click',function(event){
            	$('.progress-bar').width(0 + '%');
				$('#rc6-back1').css("display","none");
				$('#rc6-back2').css("display","none");
				$('#rc6-next1').css("display","block");
				$('#rc6-next2').css("display","none");
				$('#rc6-find1').css("display","block");
				$('#rc6-find2').css("display","none"); 
				$('#rc6-find3').css("display","none"); 
				$('#rc6-success').css("display","none"); 
            }); 
            
            $('#rc6-next2').on('click',function(event){
            	$('.progress-bar').width(100 + '%');
          		$('#rc6-back1').css("display","none");
          		$('#rc6-back2').css("display","block");
                $('#rc6-next1').css("display","none");
                $('#rc6-next2').css("display","none");
                $('#rc6-find1').css("display","none");
                $('#rc6-find2').css("display","none");    	  
                $('#rc6-find3').css("display","block");    	  
                $('#rc6-success').css("display","block"); 
            });
            
            $('#rc6-back2').on('click',function(event){
            	$('.progress-bar').width(50 + '%');
				$('#rc6-back1').css("display","block");
				$('#rc6-back2').css("display","none");
				$('#rc6-next1').css("display","none");
				$('#rc6-next2').css("display","block");
				$('#rc6-find1').css("display","none");
				$('#rc6-find2').css("display","block"); 
				$('#rc6-find3').css("display","none"); 
				$('#rc6-success').css("display","none"); 
            }); 
            
            $("#modal_show6").click(function() {
                $("#recommend-show7").modal("show");
                $('.progress-bar').width(0 + '%');
                $('#rc7-next1').css("display","block");
                $('#rc7-next2').css("display","none");
                $('#rc7-back1').css("display","none");
				$('#rc7-back2').css("display","none");
                $('#rc7-find1').css("display","block");
                $('#rc7-find2').css("display","none");
                $('#rc7-find3').css("display","none");
                $('#rc7-success').css("display","none"); 
            });
            
             $('#rc7-next1').on('click',function(event){ 
            	$('.progress-bar').width(50 + '%');
          		$('#rc7-back1').css("display","block");
          		$('#rc7-back2').css("display","none");
                $('#rc7-next1').css("display","none");
                $('#rc7-next2').css("display","block");
                $('#rc7-find1').css("display","none");
                $('#rc7-find2').css("display","block");    	  
                $('#rc7-find3').css("display","none");    	  
                $('#rc7-success').css("display","none"); 
            });
            
            $('#rc7-back1').on('click',function(event){
            	$('.progress-bar').width(0 + '%');
				$('#rc7-back1').css("display","none");
				$('#rc7-back2').css("display","none");
				$('#rc7-next1').css("display","block");
				$('#rc7-next2').css("display","none");
				$('#rc7-find1').css("display","block");
				$('#rc7-find2').css("display","none"); 
				$('#rc7-find3').css("display","none"); 
				$('#rc7-success').css("display","none"); 
            });
            
            $('#rc7-next2').on('click',function(event){
            	$('.progress-bar').width(100 + '%');
          		$('#rc7-back1').css("display","none");
          		$('#rc7-back2').css("display","block");
                $('#rc7-next1').css("display","none");
                $('#rc7-next2').css("display","none");
                $('#rc7-find1').css("display","none");
                $('#rc7-find2').css("display","none");    	  
                $('#rc7-find3').css("display","block");    	  
                $('#rc7-success').css("display","block"); 
            });
            
            $('#rc7-back2').on('click',function(event){
            	$('.progress-bar').width(50 + '%');
				$('#rc7-back1').css("display","block");
				$('#rc7-back2').css("display","none");
				$('#rc7-next1').css("display","none");
				$('#rc7-next2').css("display","block");
				$('#rc7-find1').css("display","none");
				$('#rc7-find2').css("display","block"); 
				$('#rc7-find3').css("display","none"); 
				$('#rc7-success').css("display","none"); 
            }); 
            
            $("#modal_show7").click(function() {
                $("#recommend-show8").modal("show");
                $('.progress-bar').width(0 + '%');
                $('#rc8-next1').css("display","block");
                $('#rc8-next2').css("display","none");
                $('#rc8-back1').css("display","none");
				$('#rc8-back2').css("display","none");
                $('#rc8-find1').css("display","block");
                $('#rc8-find2').css("display","none");
                $('#rc8-find3').css("display","none");
                $('#rc8-success').css("display","none"); 
            });
            
             $('#rc8-next1').on('click',function(event){ 
            	$('.progress-bar').width(50 + '%');
          		$('#rc8-back1').css("display","block");
          		$('#rc8-back2').css("display","none");
                $('#rc8-next1').css("display","none");
                $('#rc8-next2').css("display","block");
                $('#rc8-find1').css("display","none");
                $('#rc8-find2').css("display","block");    	  
                $('#rc8-find3').css("display","none");    	  
                $('#rc8-success').css("display","none"); 
            });
            
            $('#rc8-back1').on('click',function(event){
            	$('.progress-bar').width(0 + '%');
				$('#rc8-back1').css("display","none");
				$('#rc8-back2').css("display","none");
				$('#rc8-next1').css("display","block");
				$('#rc8-next2').css("display","none");
				$('#rc8-find1').css("display","block");
				$('#rc8-find2').css("display","none"); 
				$('#rc8-find3').css("display","none"); 
				$('#rc8-success').css("display","none"); 
            });
            
            $('#rc8-next2').on('click',function(event){
            	$('.progress-bar').width(100 + '%');
          		$('#rc8-back1').css("display","none");
          		$('#rc8-back2').css("display","block");
                $('#rc8-next1').css("display","none");
                $('#rc8-next2').css("display","none");
                $('#rc8-find1').css("display","none");
                $('#rc8-find2').css("display","none");    	  
                $('#rc8-find3').css("display","block");    	  
                $('#rc8-success').css("display","block"); 
            });
            
            $('#rc8-back2').on('click',function(event){
            	$('.progress-bar').width(50 + '%');
				$('#rc8-back1').css("display","block");
				$('#rc8-back2').css("display","none");
				$('#rc8-next1').css("display","none");
				$('#rc8-next2').css("display","block");
				$('#rc8-find1').css("display","none");
				$('#rc8-find2').css("display","block"); 
				$('#rc8-find3').css("display","none"); 
				$('#rc8-success').css("display","none"); 
            });
            
            $("#modal_show8").click(function() {
                $("#recommend-show9").modal("show");
                $('.progress-bar').width(0 + '%');
                $('#rc9-next1').css("display","block");
                $('#rc9-next2').css("display","none");
                $('#rc9-back1').css("display","none");
				$('#rc9-back2').css("display","none");
                $('#rc9-find1').css("display","block");
                $('#rc9-find2').css("display","none");
                $('#rc9-find3').css("display","none");
                $('#rc9-success').css("display","none"); 
            });
            
             $('#rc9-next1').on('click',function(event){ 
            	$('.progress-bar').width(50 + '%');
          		$('#rc9-back1').css("display","block");
          		$('#rc9-back2').css("display","none");
                $('#rc9-next1').css("display","none");
                $('#rc9-next2').css("display","block");
                $('#rc9-find1').css("display","none");
                $('#rc9-find2').css("display","block");    	  
                $('#rc9-find3').css("display","none");    	  
                $('#rc9-success').css("display","none"); 
            });
            
            $('#rc9-back1').on('click',function(event){
            	$('.progress-bar').width(0 + '%');
				$('#rc9-back1').css("display","none");
				$('#rc9-back2').css("display","none");
				$('#rc9-next1').css("display","block");
				$('#rc9-next2').css("display","none");
				$('#rc9-find1').css("display","block");
				$('#rc9-find2').css("display","none"); 
				$('#rc9-find3').css("display","none"); 
				$('#rc9-success').css("display","none"); 
            });
            
            $('#rc9-next2').on('click',function(event){
            	$('.progress-bar').width(100 + '%');
          		$('#rc9-back1').css("display","none");
          		$('#rc9-back2').css("display","block");
                $('#rc9-next1').css("display","none");
                $('#rc9-next2').css("display","none");
                $('#rc9-find1').css("display","none");
                $('#rc9-find2').css("display","none");    	  
                $('#rc9-find3').css("display","block");    	  
                $('#rc9-success').css("display","block"); 
            });
            
            $('#rc9-back2').on('click',function(event){
            	$('.progress-bar').width(50 + '%');
				$('#rc9-back1').css("display","block");
				$('#rc9-back2').css("display","none");
				$('#rc9-next1').css("display","none");
				$('#rc9-next2').css("display","block");
				$('#rc9-find1').css("display","none");
				$('#rc9-find2').css("display","block"); 
				$('#rc9-find3').css("display","none"); 
				$('#rc9-success').css("display","none"); 
            });
            
            $('.date').daterangepicker({
                autoUpdateInput: false,
                locale: {
                    cancelLabel: 'Clear'
                }
            });

            $('.date').on('apply.daterangepicker', function(ev, picker) {
                $(this).val(picker.startDate.format('MM/DD/YYYY') + ' - ' + picker.endDate.format('MM/DD/YYYY'));
            });

            $('.date').on('cancel.daterangepicker', function(ev, picker) {
                $(this).val('');
            });
            
            
        });
    </script>

</body>
</html>
