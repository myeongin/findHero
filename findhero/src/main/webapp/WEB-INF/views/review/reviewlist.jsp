<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>EstateAgency Bootstrap Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicons -->
<link href="/findhero/resources/img/favicon.png" rel="icon">
<link href="/findhero/resources/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700"
	rel="stylesheet">

<!-- Bootstrap CSS File -->
<link href="/findhero/resources/lib/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Libraries CSS Files -->
<link
	href="/findhero/resources/lib/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="/findhero/resources/lib/animate/animate.min.css"
	rel="stylesheet">
<link href="/findhero/resources/lib/ionicons/css/ionicons.min.css"
	rel="stylesheet">
<link
	href="/findhero/resources/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Main Stylesheet File -->
<link href="/findhero/resources/css/style.css" rel="stylesheet">

<!-- =======================================================
    Theme Name: EstateAgency
    Theme URL: https://bootstrapmade.com/real-estate-agency-bootstrap-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
</head>




<!--  -->
<form action="listAll" method="get">
	<body>
		<button type="submit">CRUD게시판 가기</button>
		<h1>Hello world!</h1>
		<P>The time on the server is ${serverTime}.</P>
	</body>
</form>



<!-- 리뷰목록 버튼 클릭했을때 리뷰만 띄우고싶은데. -->
<form action="reviewlist" method="get">
		<table border="1" width="880">
			<tr>
				<td width="77">
					<p align="center">리뷰번호</p>
				</td>
				
				<td width="327">
					<p align="center">제목</p>
				</td>
				
				<td width="197">
					<p align="center">작성자</p>
				</td>
				
				<td width="155">
					<p align="center">작성일</p>
				</td>

			</tr>
			
			
			

			<c:forEach items="${review}" var="ReviewVo"> <!-- JSTL 사용위해 DTD선언 , 	밑에는 DB저장된 데이터 불러오기위한 반복문=c:forEach -->

				<tr>

					<td>${HeroVo.ReviewNo}</td>

					<td><a href='/read?ReviewNo=${HeroVo.ReviewNo}'>${HeroVo.ReviewNo}</a></td>

					<td>${HeroVo.ReviewNo}</td>

				</tr>
			</c:forEach>
		</table>
		<button type="submit">글쓰기</button>
	
</form>


<!--테스트샘플끝  -->



<!--/ footer Star /-->
<section class="section-footer">
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-md-4">
				<div class="widget-a">
					<div class="w-header-a">
						<h3 class="w-title-a text-brand">EstateAgency</h3>
					</div>
					<div class="w-body-a">
						<p class="w-text-a color-text-a">Enim minim veniam quis
							nostrud exercitation ullamco laboris nisi ut aliquip exea commodo
							consequat duis sed aute irure.</p>
					</div>
					<div class="w-footer-a">
						<ul class="list-unstyled">
							<li class="color-a"><span class="color-text-a">Phone
									.</span> contact@example.com</li>
							<li class="color-a"><span class="color-text-a">Email
									.</span> +54 356 945234</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-4 section-md-t3">
				<div class="widget-a">
					<div class="w-header-a">
						<h3 class="w-title-a text-brand">The Company</h3>
					</div>
					<div class="w-body-a">
						<div class="w-body-a">
							<ul class="list-unstyled">
								<li class="item-list-a"><i class="fa fa-angle-right"></i> <a
									href="#">Site Map</a></li>
								<li class="item-list-a"><i class="fa fa-angle-right"></i> <a
									href="#">Legal</a></li>
								<li class="item-list-a"><i class="fa fa-angle-right"></i> <a
									href="#">Agent Admin</a></li>
								<li class="item-list-a"><i class="fa fa-angle-right"></i> <a
									href="#">Careers</a></li>
								<li class="item-list-a"><i class="fa fa-angle-right"></i> <a
									href="#">Affiliate</a></li>
								<li class="item-list-a"><i class="fa fa-angle-right"></i> <a
									href="#">Privacy Policy</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-12 col-md-4 section-md-t3">
				<div class="widget-a">
					<div class="w-header-a">
						<h3 class="w-title-a text-brand">International sites</h3>
					</div>
					<div class="w-body-a">
						<ul class="list-unstyled">
							<li class="item-list-a"><i class="fa fa-angle-right"></i> <a
								href="#">Venezuela</a></li>
							<li class="item-list-a"><i class="fa fa-angle-right"></i> <a
								href="#">China</a></li>
							<li class="item-list-a"><i class="fa fa-angle-right"></i> <a
								href="#">Hong Kong</a></li>
							<li class="item-list-a"><i class="fa fa-angle-right"></i> <a
								href="#">Argentina</a></li>
							<li class="item-list-a"><i class="fa fa-angle-right"></i> <a
								href="#">Singapore</a></li>
							<li class="item-list-a"><i class="fa fa-angle-right"></i> <a
								href="#">Philippines</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<footer>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<nav class="nav-footer">
					<ul class="list-inline">
						<li class="list-inline-item"><a href="#">Home</a></li>
						<li class="list-inline-item"><a href="#">About</a></li>
						<li class="list-inline-item"><a href="#">Property</a></li>
						<li class="list-inline-item"><a href="#">Blog</a></li>
						<li class="list-inline-item"><a href="#">Contact</a></li>
					</ul>
				</nav>
				<div class="socials-a">
					<ul class="list-inline">
						<li class="list-inline-item"><a href="#"> <i
								class="fa fa-facebook" aria-hidden="true"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fa fa-twitter" aria-hidden="true"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fa fa-instagram" aria-hidden="true"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fa fa-pinterest-p" aria-hidden="true"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fa fa-dribbble" aria-hidden="true"></i>
						</a></li>
					</ul>
				</div>
				<div class="copyright-footer">
					<p class="copyright color-text-a">
						&copy; Copyright <span class="color-a">EstateAgency</span> All
						Rights Reserved.
					</p>
				</div>
				<div class="credits">
					<!--
              All the links in the footer should remain intact.
              You can delete the links only if you purchased the pro version.
              Licensing information: https://bootstrapmade.com/license/
              Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=EstateAgency
            -->
					Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
				</div>
			</div>
		</div>
	</div>
</footer>
<!--/ Footer End /-->

<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
<div id="preloader"></div>

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
