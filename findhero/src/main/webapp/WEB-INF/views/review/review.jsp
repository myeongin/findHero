<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
<link href="/findhero/resources/css/starrating.css" rel="stylesheet">
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
						<h1 class="title-single">${hero.heroField2}</h1>
						<span class="color-text-a">${hero.heroField}</span>
					</div>
				</div>
				<div class="col-md-12 col-lg-4">
					<nav aria-label="breadcrumb"
						class="breadcrumb-box d-flex justify-content-lg-end">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="/findhero/home.action">Home</a>
							</li>
							<li class="breadcrumb-item"><a href="#">
									${hero.heroField} </a></li>
							<li class="breadcrumb-item active" aria-current="page">
								${hero.heroField2}</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!--/ Intro Single End /-->

	<!--/ Agent Single Star /-->
	<section class="agent-single">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="row">
						<div class="col-md-6">
								<!-- 히어로사진-->
							<div class="agent-avatar-box">
							
								<img src="/findhero/resources/rsimg/noimg.png" style="width: 100%; height: 300px;" alt="" class="img-d img-fluid"
								 onerror="this.src = '/findhero/resources/rsimg/noimg.png'"> 
							</div>
							<!-- 히어로사진 끝 -->
							
						</div>
						<div class="col-md-5 section-md-t3">
							<div class="agent-info-box">
								<div class="agent-title">
									<div class="title-box-d">
										<h3 class="title-d">
										${hero.heroName}									
										</h3>
									</div>
								</div>
								<div class="agent-content mb-3">
									<p class="content-d color-text-a"></p>
									<h3>${hero.heroAbout}</h3>
									<div class="info-agents color-a">
										
										
										<br>
										<div class="info-agents color-a">
					                    <p>
					                      <strong>휴대전화 </strong>
					                      <span class="color-text-a" font-size="16pt">${hero.heroPhone}</span>
					                    </p>
					                 
					                    <p>
					                      <strong>E-mail </strong>
					                      <span class="color-text-a" font-size="16pt"> ${hero.heroEmail}</span>
					                    </p>
					                    
					                    <p>
					                      <strong>서비스지역 </strong>
					                      <span class="color-text-a" font-size="16pt"> ${hero.heroAdd1} </span>
					                    </p>
					                  </div>
					                  </div>
					                 


										 <!-- ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ히어로채팅으로 이동ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
										 <!-- 혹시모를 예비용 버튼 -->
										<%-- <div>
										<a href="/findhero/chat/insert.action?heroNo=${hero.heroNo}&userNo=${user.userNo}" 
										class="btn btn-outline-warning"><button>히어로와 채팅</button></a>				
										</div> --%>
										<!-- 버튼만들기(완료) -->
										<div>
										<button type="button" class="btn btn-b-n d-none d-md-block" aria-expanded="false">        	
        								<span id="go-chatting" data-herono="${hero.heroNo}" data-userno="${user.userNo}" class="fa fa-sign-out" aria-hidden="true">&nbsp;히어로와의 채팅</span>
        								</button>
										</div>
										
										
										
										
										
										
										<!-- ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ 끝 ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
										
									</div>
								</div>

								<!------------------------------  히어로 프로필 끝------------------------- -->




								<div class="socials-footer">
									<ul class="list-inline">
										<li class="list-inline-item"><a href="#" class="link-one">
												<i class="fa fa-facebook" aria-hidden="true"></i>
										</a></li>
										<li class="list-inline-item"><a href="#" class="link-one">
												<i class="fa fa-twitter" aria-hidden="true"></i>
										</a></li>
										<li class="list-inline-item"><a href="#" class="link-one">
												<i class="fa fa-instagram" aria-hidden="true"></i>
										</a></li>
										<li class="list-inline-item"><a href="#" class="link-one">
												<i class="fa fa-pinterest-p" aria-hidden="true"></i>
										</a></li>
										<li class="list-inline-item"><a href="#" class="link-one">
												<i class="fa fa-dribbble" aria-hidden="true"></i>
										</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-md-12 section-t8">
					<div class="title-box-d">
						 <div class="col-md-10 offset-md-1 col-lg-10 offset-lg-1">
          <div class="title-box-d">
            <h6 class="title-d">후기</h6>
          </div>
          <div class="box-comments">
            <ul class="list-comments">
             <c:forEach var="review" items="${reviewList}">
              <li>
                <div class="comment-avatar">
                 <img src="/findhero/resources/rsimg/noimg.png" style="width: 100%; height: 300px;" alt="" class="img-d img-fluid" 
                 onerror="this.src = '/findhero/resources/rsimg/noimg.png'">
                </div>
                <div class="comment-details">
                  <h4 class="comment-author">${ review.userName }</h4> 
                  
                  <!-- ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ댓글 평점 별모양구현 ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
                  
                     
                  	<!-- 점수 /3 나누기. -->
                  <fmt:formatNumber var="rating" value="${ (review.pro+review.satisfied+review.reliability) / 3 }" pattern=".0"/>
                  <!-- DB에서 pro +  -->
                  	<div class="starRev" data-rating="${ rating }">
						  <span class="starR1 on">별1_왼쪽</span>
						  <span class="starR2">별1_오른쪽</span>
						  <span class="starR1">별2_왼쪽</span>
						  <span class="starR2">별2_오른쪽</span>
						  <span class="starR1">별3_왼쪽</span>
						  <span class="starR2">별3_오른쪽</span>
						  <span class="starR1">별4_왼쪽</span>
						  <span class="starR2">별4_오른쪽</span>
						  <span class="starR1">별5_왼쪽</span>
						  <span class="starR2">별5_오른쪽</span> 
					</div>&nbsp;

         
                  
                  
                  
                  <!-- ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ리뷰 평점평균  ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
         		<!-- EL 문법임.  소수점 1자리 -->
         		 ${ rating }<br>&nbsp;
         		  
                  <!-- ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->

                  <span> <fmt:formatDate value="${review.regDate}" pattern="yyyy년 MM월 dd일 a hh:mm"/>
                  </span>
                  <p class="comment-description">
                    ${ review.reviewContent }
                  </p>
                </div>
              </li>
              
              </c:forEach>
            </ul>
          </div>
					</div>
				</div>





		<!-- 리뷰작성단 -->		<!--  댓글표현 2번째 방법       -->  
		<c:if test="${ empty sessionScope.hero and authorized }">
	<!-- 	<div> -->
				<div class="col-md-12 section-t8">
					<div class="title-box-d">
						<h3 class="title-d">리뷰작성</h3>
						
					</div>
				</div>

				<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ 리뷰 작성칸, 별점 ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ-->
				<form class="form-a" id="comment-data">
					<div class="row">
							<div>
						<!-- <div class="col-md-6 mb-3"> -->
					
			
							<!-- <div class="col-md-6 mb-3"> -->
								<div class="form-group">
									<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;전문성</label>
									
									<select name="pro" id="pro">
										<option value="5">★★★★★</option>									
										<option value="4">★★★★</option>										
										<option value="3">★★★</option>											
										<option value="2">★★</option>
										<option value="1">★</option>
									</select>
								
								</div>

						<!-- 	</div>
						</div>
 -->

					<!-- 	<div class="col-md-6 mb-3"> -->
							 <div class="form-group">
								<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;신뢰성</label>
							<!-- </div> -->

							<select name="reliability" id="reliability" >
										<option value="5">★★★★★</option>									
										<option value="4">★★★★</option>										
										<option value="3">★★★</option>											
										<option value="2">★★</option>
										<option value="1">★</option>
							</select>

						</div>
					


					<!-- <div class="col-md-6 mb-3"> -->
						<div class="form-group">
							<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;만족도</label>
						<!-- </div> -->
						
						<select name="satisfied" id="satisfied">
							<option value="5">★★★★★</option>									
							<option value="4">★★★★</option>										
							<option value="3">★★★</option>											
							<option value="2">★★</option>
							<option value="1">★</option>
						</select>
						</div>
						</div>						
					</div>
			

			<!-- ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ별점 끝ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
			
			<!-- ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ리뷰 내용 ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->

			<div> <!-- reviewVo 이름과 같아야함 name,-->
				<input type="hidden" name="userNo" value="${user.userNo}" />				
				<input type="hidden" name="heroNo" value="${hero.heroNo}" />
			</div>
			

			<div class="col-md-12 mb-3">
				<div class="form-group">
					<label for="textMessage">내용</label>
					<textarea id="reviewcontent" class="form-control"
						placeholder=" 리뷰를 작성해주세요" name="reviewContent" cols="45" rows="8"
						required></textarea>

				</div>
			</div>
			</form>


				<!-- ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ리뷰 내용 끝ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->


			<div class="col-md-12">
				<button id="submit" class="btn btn-a">작성
					완료</button>
			</div>
			</div>
			</c:if>


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
	
    <script type="text/javascript">
    
    $("#submit").on("click", function(event) {
    	
    	<c:if test="${ not empty sessionScope.hero }">
    	alert('전문가는 리뷰를 작성할 수 없습니다.');
    	return;
    	</c:if>
    	
    	<c:if test="${ not authorized }">
	    	alert('전문가 ${ hero.heroName }에 대한 리뷰 작성 권한이 없습니다.');
	    	location.href='/findhero/hero/findhero.action';
    	return;
    	</c:if>
    	
		
		var data1 = $("#comment-data").serialize() /* serialize 정리해줌 */
		/* submit을 누르면  */
		
		
		
		$.ajax({ /* JSTL처럼 따로 지정해줄필요없다. Jquery안에서 쓸수있다.  달러안에서. 문법아님(함수처럼쓰면댐) */

			//controller로 보낸다
			url : "review.action", /* 컨트롤러의 */
			data : data1,  // 위에데이터랑같다.
			method : "POST",
			success : function(data, status, xhr) {
	
				alert(data);
				/* 여기서 data는 리턴된값(controller에서.  위에랑다름) */
				/*  status랑 xhr은 반드시 써줘야함. 그냥 규칙 */
				
				//목록 갱신
				/* alert(data)
				$("#commentlist").load("getcomment.action");/* 큰 껍데기 */
						/* 댓글에있던 html요소들을 다시 또 코멘트리스트에 넣음 */
				/* 코맨트리스 에 삽입 */
			
				/* 코멘트 리스트에 있는애들을 (div)애들을 채워주겠다 =  즉 자동새로고침 */
				/* visitors에있는 애들을   getcomment로 넘어감 */
					
			},
			error: function(xhr, status, err) {
				alert('리뷰 쓰기 실패');
			}

		});
    });

   	$(function() {
   		var divs = $('.starRev')    		
   		divs.each(function(index, div) {
   			$(div).children('span').removeClass('on');
    		rating = $(div).attr("data-rating");
    		rating = parseInt(rating * 10);
    		rating = Math.round(rating / 5);
    		var spans = $(div).children('span:lt(' + rating + ')');
    		spans.addClass('on');
   		});
   		
   		$("#go-chatting").on('click', function(event) {
   			var heroNo = $(this).attr('data-herono');
   			var userNo = $(this).attr('data-userno');
   			
   			location.href = "/findhero/chat/insert.action?userNo=" + userNo + "&heroNo=" + heroNo;
   		});
   	});
         
    </script>

</body>
</html>
