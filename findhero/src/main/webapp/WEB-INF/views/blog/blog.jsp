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
            <h1 class="title-single">히어로를 직접 만나다</h1>
            <span class="color-text-a">히어로 인터뷰</span>
          </div>
        </div>
        <div class="col-md-12 col-lg-4">
        <c:choose>
        <c:when test="${not empty hero}">
         <div class="col-md-12 mb-5">
           <a href="/findhero/blog/writePage.action?${heroNo}"><button type="button" class="btn btn-a">셀프 인터뷰 작성하기</button></a>
         </div>
        </c:when>
        </c:choose>
        </div>
      </div>
    </div>
  </section>
  <!--/ Intro Single End /-->

  <!--/ News Grid Star /-->
  <section class="news-grid grid">
    <div class="container">
      <div class="row">
        <c:forEach var="blog"  items="${blogs}">
        	
        	<div class="col-md-4">
          <div class="card-box-b card-shadow news-box">
            <div class="img-box-b">
            	<c:if test="${not empty blog}">
               		<img src="/findhero/resources/blog-img/${blog.attachments.get(0).imgSavedName}" alt="" class="img-b img-fluid">
               </c:if>
    		</div>
            <div class="card-overlay">
              <div class="card-header-b">
                <div class="card-category-b">
                  <a href="#" class="category-b">히어로</a>
                </div>
                <div class="card-title-b">
                  <h2 class="title-2">
                    <a href="/findhero/blog/blogSingle.action?blogNo=${blog.blogNo}">' ${blog.heroes.heroName} ' 히어로 인터뷰</a>
                  </h2>
                </div>
                <div class="card-date">
                  <span class="date-b">작성일 : ${blog.regDate}</span>
                </div>
              </div>
            </div>
          </div>
	  </div>
	  </c:forEach>
      </div>
      </div>
      <div class="row">
        <div class="col-sm-12">
          <nav class="pagination-a">
            <ul class="pagination justify-content-end">
              <li>${pager}</li>
              
              <!-- <li class="page-item disabled">
                <a class="page-link" href="#" tabindex="-1">
                  <span class="ion-ios-arrow-back"></span>
                </a>
              </li>
              <li class="page-item">
                <a class="page-link" href="#">1</a>
              </li>
              <li class="page-item active">
                <a class="page-link" href="#">2</a>
              </li>
              <li class="page-item">
                <a class="page-link" href="#">3</a>
              </li>
              <li class="page-item next">
                <a class="page-link" href="#">
                  <span class="ion-ios-arrow-forward"></span>
                </a>
              </li> -->
            </ul>
          </nav>
        </div>
        
      </div>
    
  </section>
  <!--/ News Grid End /-->

  <!--/ footer Star /-->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
  <!--/ Footer End /-->


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
