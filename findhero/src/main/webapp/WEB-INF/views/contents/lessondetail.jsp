<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>${ heros.heroName }의게시글</title>
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

<!--  star ratings -->
<link href="/findhero/resources/css/starrating.css" rel="stylesheet">

<style>
.iw_inner {
	padding: 10px
}

.iw_inner h3 {
	font-size: 18px;
	padding-bottom: 7px
}

#gocenter {
	margin-left: 140px;
}

#leftside {
	margin-left: 50px;
}

.table {
	text-align: center;
}

.arrow_box {
	display: none;
	position: absolute;
	width: 330px;
	padding: 12px;
	left: 0;
	-webkit-border-radius: 8px;
	-moz-border-radius: 8px;
	border-radius: 8px;
	background: #FFEFD5;
	color: orange;
	font-size: 18px;
}

.arrow_box:after {
	position: absolute;
	bottom: 100%;
	left: 50%;
	width: 0;
	height: 0;
	margin-left: 20px;
	border: solid transparent;
	border-color: rgba(51, 51, 51, 0);
	border-bottom-color: #FFEFD5;
	border-width: 10px;
	pointer-events: none;
	content: " ";
}

#star:hover+p.arrow_box {
	display: block;
}
</style>

<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">
$(function(){
	$('#home').on('click', function(event) {
		location.href = "/findhero/home.action";
	});
	
	$('#list').on('click', function(event) {
		
		location.href = "/findhero/contents/lessonlist.action";
	});
	
$('#submit').on('click', function(event) {
			var heroName = $(this).attr('data-heroname');
			var data = $('#applyform').serializeArray();
			$.ajax({
				"url" : "apply.action",
				"method" : "POST",
				"data" : data,
				"success" : function(data, status, xhr) {
					if (data === "success") {
						alert(heroName + ' 님에게 신청되었습니다.');
						$('#beforeapply').css("display", "none");
						$('#afterapply').css("display", "block");
					}
				},
				"error" : function(xhr, status, err) {
					alert('신청실패');
				}
			});
		});
<%-- endsubmit --%>
})
</script>


</head>
<body>
	<jsp:include page="/WEB-INF/views/include/header.jsp" />
	<!--/ Intro Single star /-->
	<section class="intro-single">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-8">
					<div class="title-single-box">
						<h1 class="title-single">${ requestScope.rsdetail.rsTitle }</h1>
						<span class="color-text-a">${ heros.heroName }</span>
					</div>
				</div>
				<div class="col-md-12 col-lg-4">
					<nav aria-label="breadcrumb"
						class="breadcrumb-box d-flex justify-content-lg-end">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#" id="home">Home</a></li>
							<li class="breadcrumb-item"><a href="#" id="list">Lesson
									List</a></li>
							<li class="breadcrumb-item active" aria-current="page">${ rsdetail.rsTitle }</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!--/ Intro Single End /-->

	<section class="property-single nav-arrow-b">
		<div class="container">
			<div class="row">

				<div id="gocenter">
					<div class="row">
						<div class="col-md-6 col-lg-4">
							<img src="/findhero/resources/hero-img/${ heros.heroImage }"
								alt="" class="img-fluid"
								onerror="this.src = '/findhero/resources/rsimg/noimg.png'">
						</div>


						<div class="col-md-6 col-lg-4">
							<div class="property-agent">
								<h4 class="title-agent">${ heros.heroName }</h4>


								<c:choose>
									<c:when test="${ not empty heors.heroAbout and not empty hero}">

										<p class="color-text-a">${ heros.heroAbout }</p>

									</c:when>

									<c:otherwise>
										<c:if test="${ empty heros.heroAbout and not empty hero }">
											<p class="color-text-a">
												전문가 찾기 사이트 Find Expert입니다. 소개를 등록하시려면 &nbsp;<a href="#"
													class="btn btn-danger btn-sm" data-toggle="modal"
													data-target="#aboutupdate">소개쓰기</a>&nbsp;를 클릭해주세요! 이용해주셔서
												감사합니다.
											</p>
										</c:if>
										<c:choose>
											<c:when test="${ not empty heros.heroAbout }">
												<p class="color-text-a">${ heros.heroAbout }</p>
											</c:when>

											<c:when test="${ not empty user }">

												<p class="color-text-a">
													${heros.heroName }님에 대한 소개가 등록되지 않았습니다.<br> Find
													Expert를 이용해주셔서 감사합니다.
												</p>

											</c:when>
										</c:choose>

									</c:otherwise>
								</c:choose>

								<jsp:include page="/WEB-INF/views/contents/heroabout.jsp" />


								<c:if test="${ not empty user or not empty hero }">
									<ul class="list-unstyled">

										<li class="d-flex justify-content-between"><strong>Mobile:</strong>
											<span class="color-text-a">${ heros.heroPhone }</span></li>
										<li class="d-flex justify-content-between"><strong>Email:</strong>
											<span class="color-text-a">${ heros.heroEmail }</span></li>
										<li class="d-flex justify-content-between"><strong>Progress:</strong>
											<span style="color: red">"<strong>${ rsdetail.rsDel }</strong>"
										</span></li>
									</ul>

									<form id="applyform">
										<div class="col-md-12 mb-1">
											<br> <input type="hidden" name="userNo"
												value="${ user.userNo }" /> <input type="hidden"
												name="rsNo" value="${ rsdetail.rsNo }" />
										</div>
										<c:if test="${ rsdetail.rsDel eq '접수중' and not empty user}">
											<%-- apply정보 조회해와서 userno의 applyregdate가 없으면 조건걸기 --%>
											<div class="col-md-12" style="margin-left: 30px"
												id="beforeapply">

												<a href="#" id="submit" data-heroname="${ heros.heroName }"
													class="btn btn-a">Apply Now!</a>

											</div>
										</c:if>
										<div class="col-md-12 alert alert-success"
											style="margin-left: 30px; display: none; width: 160px"
											id="afterapply">
											<span style="margin: 0 auto">신청되었습니다!</span>
										</div>
									</form>
								</c:if>

								<div class="socials-a">
									<ul class="list-inline">
										<li class="list-inline-item"><a
											href="https://www.facebook.com"> <i
												class="fa fa-facebook" aria-hidden="true"></i>
										</a></li>
										<li class="list-inline-item"><a
											href="https://twitter.com"> <i class="fa fa-twitter"
												aria-hidden="true"></i>
										</a></li>
										<li class="list-inline-item"><a
											href="https://www.instagram.com/"> <i
												class="fa fa-instagram" aria-hidden="true"></i>
										</a></li>
										<li class="list-inline-item"><a
											href="https://www.youtube.com/"> <i
												class="fa fa-youtube-play" aria-hidden="true"></i>
										</a></li>
										<li class="list-inline-item"><a
											href="https://www.snapchat.com/"> <i
												class="fa fa-snapchat" aria-hidden="true"></i>
										</a></li>
									</ul>
								</div>

							</div>
						</div>


						<div class="col-md-6 col-lg-4">

							<div style="margin-left: 170px; color: red; font-size: 17pt">"${ heroavg }"</div>
							<a href="/findhero/review/review.action?heroNo=${heros.heroNo }">
								<img src="/findhero/resources/rsimg/star.png"
								style="margin-left: 100px; height: 180px" alt=""
								class="img-fluid" id="star"
								onerror="this.src = '/findhero/resources/rsimg/noimg.png'">

								<p class="arrow_box">
									전문성 <img src="/findhero/resources/rsimg/star.png"
										style="width: 25px; height: 25px">&nbsp;&nbsp;<strong>${ professional }</strong>
									<br> 만족도 <img src="/findhero/resources/rsimg/star.png"
										style="width: 25px; height: 25px">&nbsp;&nbsp;<strong>${ satisfied }</strong>
									<br> 신뢰도 <img src="/findhero/resources/rsimg/star.png"
										style="width: 25px; height: 25px">&nbsp;&nbsp;<strong>${ reliability }
									</strong> <br>

								</p>
							</a>


						</div>

					</div>
				</div>
			</div>
		</div>
	</section>

	<br>
	<br>
	<!--/ Property Single Star /-->
	<section class="property-single nav-arrow-b">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="property-single-carousel"
						class="owl-carousel owl-arrow gallery-property">
						<c:forEach var="attach" items="${ rsdetail.attachments }">
							<div class="carousel-item-b">
								<img src="/findhero/resources/rsimg/${ attach.savedFileName }"
									alt="" style="height: 700px">
							</div>
						</c:forEach>
					</div>



					<%-- 		<div class="row justify-content-between">
						<div class="col-md-5 col-lg-4">
							<div class="property-price d-flex justify-content-center foo">
								<div class="card-header-c d-flex">
									<div class="card-box-ico">
										<span class="ion-money">&#8361;</span>
									</div>
									<div class="card-title-c align-self-center">
										<h5 class="title-c">
											<fmt:formatNumber value="${ rsdetail.rsPrice }"
												pattern="#,###.##" />
										</h5>
									</div>
								</div>
							</div>
							<div class="property-summary">
								<div class="row">
									<div class="col-sm-12">
										<div class="title-box-d section-t4">
											<h3 class="title-d">Quick Summary</h3>
										</div>
									</div>
								</div>
								<div class="summary-list">
									<ul class="list">
										<li class="d-flex justify-content-between"><strong>Title
										</strong> <span>${ rsdetail.rsTitle }</span></li>
										<li class="d-flex justify-content-between"><strong>Expert
												Name</strong> <span>${ heros.heroName }</span></li>
										<li class="d-flex justify-content-between"><strong>Field
										</strong> <span> ${ rsdetail.rsField1 }</span></li>
										<li class="d-flex justify-content-between"><strong>Detail
												Field</strong> <span>${ rsdetail.rsField2 }</span></li>
										<li class="d-flex justify-content-between"><strong>Expected
												price</strong> <span>&#8361; <fmt:formatNumber
													value="${ rsdetail.rsPrice }" pattern="#,###.##" />
										</span></li>
										<li class="d-flex justify-content-between"><strong>Meeting
												Day</strong> <span>${ rsdetail.rsDay }</span></li>
										<li class="d-flex justify-content-between"><strong>Peoples
										</strong> <span>${ rsdetail.rsCount }</span></li>
										<li class="d-flex justify-content-between"><strong>Register
												Date</strong> <span>${ rsdetail.rsRegDate }</span></li>
										<li class="d-flex justify-content-between"><strong>Start
												Date</strong> <span>${ rsdetail.rsStart}</span></li>
										<li class="d-flex justify-content-between"><strong>End
												Date</strong> <span>${ rsdetail.rsEnd }</span></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-md-7 col-lg-7 section-md-t3">
							<div class="row">
								<div class="col-sm-12">
									<div class="title-box-d">
										<!-- <h3 class="title-d">Explanation</h3> -->
									</div>
								</div>
							</div>
							<div class="property-description">
								<p class="description color-text-a">${ rsdetail.rsContent }</p>
							</div>
							<br> <br> <br> <br>
							<div class="row section-t3">
								<div class="col-sm-12">
									<div class="title-box-d">
										<h3 class="title-d">Explanation</h3>
									</div>
								</div>
							</div>
							<div class="amenities-list color-text-a">
								<p class="description color-text-a">${ rsdetail.rsContent }</p>
							</div>
						</div>
					</div> --%>
				</div>


				<div class="col-md-10 offset-md-1">
					<ul class="nav nav-pills-a nav-pills mb-3 section-t3"
						id="pills-tab" role="tablist">


						<li class="nav-item"><a class="nav-link active"
							id="pills-video-tab" data-toggle="pill" href="#pills-video"
							role="tab" aria-controls="pills-video" aria-selected="true">${ heros.heroName }님은
								여기 있어요!</a></li>



						<li class="nav-item"><a class="nav-link" id="pills-plans-tab"
							data-toggle="pill" href="#pills-plans" role="tab"
							aria-controls="pills-plans" aria-selected="false">세부정보</a></li>


					</ul>

					<div class="tab-content" id="pills-tabContent">
						<div class="tab-pane fade show active" id="pills-video"
							role="tabpanel" aria-labelledby="pills-video-tab">

							<div id="map" style="width: 100%; height: 400px;"></div>
						</div>

						<div class="tab-pane fade" id="pills-plans" role="tabpanel"
							aria-labelledby="pills-plans-tab">

							<table class="table">
								<thead class="thead-dark">
									<tr>
										<th scope="col">서비스명</th>
										<th scope="col">분야</th>
										<th scope="col">분야2</th>
										<th scope="col">인원 수</th>
										<th scope="col">만나는 요일</th>

									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">${ rsdetail.rsTitle }</th>
										<td>${ rsdetail.rsField1 }</td>
										<td>${ rsdetail.rsField2 }</td>
										<td>${ rsdetail.rsCount }</td>
										<td>${ rsdetail.rsDay }</td>
									</tr>
								</tbody>
							</table>

							<table class="table">
								<thead class="thead-light">
									<tr>
										<th scope="col">예상 기간</th>
										<th scope="col">모임 장소</th>
										<th scope="col">예상 가격</th>
										<th scope="col">시작일</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">${ rsdetail.rsTerm }</th>
										<c:choose>
											<c:when test="${ not empty rsAdd1 }">
												<td>${ rsdetail.rsAdd1 }</td>
											</c:when>

											<c:otherwise>
												<td>정보없음</td>
											</c:otherwise>
										</c:choose>
										<td><fmt:formatNumber value="${ rsdetail.rsPrice }"
												pattern="#,###.##" /></td>
										<td>${ rsdetail.rsStart }</td>
									</tr>
								</tbody>
							</table>

						</div>
					</div>

					<!-- 	<div class="tab-pane fade" id="pills-map" role="tabpanel"
						aria-labelledby="pills-map-tab">
						<img src="/findhero/resources/img/plan2.jpg" alt=""
							class="img-fluid">

					</div> -->

				</div>
			</div>




			<%-- 	<div class="col-md-10 offset-md-1">
					<ul class="nav nav-pills-a nav-pills mb-3 section-t3"
						id="pills-tab" role="tablist">
						<li class="nav-item"><a class="nav-link" id="pills-map-tab"
							data-toggle="pill" href="#pills-map" role="tab"
							aria-controls="pills-map" aria-selected="false">${ hero.heroName }
								님은 여기있어요!</a></li>
					</ul>
					<div class="tab-content" id="pills-tabContent">
						
						<div class="post-content color-text-a">
					
						</div>
						<div id="map" style="width: 100%; height: 400px;"></div>
					</div> --%>




		</div>


		<div class="col-md-10 offset-md-1 col-lg-8 offset-lg-2">
			<div class="post-information">
				<ul class="list-inline text-center color-a">
					<li class="list-inline-item mr-2"><strong>Who's: </strong> <span
						class="color-text-a">${ heros.heroName }</span></li>
					<li class="list-inline-item mr-2"><strong>Where: </strong> <span
						id="address" class="color-text-a">${ rsdetail.rsAdd3 }</span></li>
					<li class="list-inline-item"><strong>Register Date: </strong>
						<span class="color-text-a">${ rsdetail.rsRegDate }</span></li>
				</ul>
			</div>
			<div class="post-content color-text-a">
				<p class="post-intro">
					<strong>사용자분들에게 등록하신 서비스에 대해서 알려주세요!</strong>
				</p>
				<!-- <p>&nbsp;</p> -->
				<p></p>

				<blockquote class="blockquote">
					<p class="mb-4">

						분야: ${ rsdetail.rsField1 }<br> 분야2: ${ rsdetail.rsField2 }
					</p>
					<p class="mb-4"></p>
					<footer class="blockquote-footer">
						<pre>
							<strong>${ rsdetail.rsContent }</strong>
						</pre>
						<cite title="Source Title">${ rsdetail.rsTitle }:
							${heros.heroName }</cite>
					</footer>

				</blockquote>

				<!-- <p>&nbsp;</p> -->
			</div>
			<div class="post-footer">
				<div class="post-share">
					<span>Share: </span>
					<ul class="list-inline socials">
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
					</ul>
				</div>
			</div>
		</div>

		<!--/ Testimonials Star /-->
		<section class="section-testimonials section-t8 nav-arrow-a">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="title-wrap d-flex justify-content-between">
							<div class="title-box">
								<h6 class="title-a">신청 회원 목록(${ usercount })</h6>
							</div>
						</div>
					</div>
				</div>
				<div id="testimonial-carousel" class="owl-carousel owl-arrow">
					<c:forEach var="applylist" items="${ applylist }">
						<div class="carousel-item-a">
							<div class="testimonials-box">
								<div class="row">
									<div class="col-sm-12 col-md-6">
										<div class="testimonial-img">
											<img
												src="/findhero/resources/user-img/${ applylist.userImage }"
												alt="" class="img-fluid"
												onerror="this.src = '/findhero/resources/rsimg/noimg.png'">
										</div>
									</div>
									<div class="col-sm-12 col-md-6">
										<div class="testimonial-ico">
											<span class="ion-ios-quote"></span>
										</div>
										<div class="testimonials-content">
											<p class="testimonial-text">

												현재 ${ heros.heroName }님의 <${ rsdetail.rsTitle }> 에 신청하신
												회원분들입니다.<br> 많은 분들의 지원바랍니다. -Find Expert-<br> <a
													href="/findhero/chat/insert.action?heroNo=${heros.heroNo }&userNo=${applylist.userNo}">
													<img
													<%-- 채팅경로 --%>
													src="/findhero/resources/rsimg/talk.png"
													style="width: 70px; height: 60px;" />
												</a> E-mail: *****${fn:substring (applylist.userEmail, 5, fn:length(applylist.userEmail))}
												<br> Phone :
												<c:choose>
													<c:when test="${ not empty hero }">
                   										${applylist.userPhone } <%--${fn:substring (applylist.userPhone, 0, fn:length(applylist.userPhone) -8 ) }******** --%>
													&nbsp;&nbsp;
													</c:when>

													<c:otherwise>
                 								  	비공개 정보입니다.
                 								  </c:otherwise>
												</c:choose>

											</p>
										</div>
										<div class="testimonial-author-box">

											<img
												src="/findhero/resources/user-img/${ applylist.userImage }"
												alt="" class="testimonial-avatar" id="userimg"
												onerror="this.src = '/findhero/resources/rsimg/noimg.png'">
											<h5 class="testimonial-author">${fn:substring (applylist.userName, 0, fn:length(applylist.userName) -2) }**
												&nbsp;</h5>

										</div>

									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</section>
		<!--/ Testimonials End /-->




		<div class="col-md-12">
			<div class="row section-t3">
				<%-- <c:choose>
					<c:when test="${ not empty user or not empty hero}">
 --%>

				<%-- 	<div class="col-md-10 offset-md-1 col-lg-10 offset-lg-1">
							<div class="title-box-d">
								<h3 class="title-d">Comments(${ reviewcount })</h3>
							</div>
							<c:forEach var="review" items="${ review }">
								<div class="box-comments" id="reviewlist">

									<ul class="list-comments">


										<li class="comment-children">
											<div class="comment-avatar">
												<img src="/findhero/resources/user-img/${ user.userImage }"
													alt=""
													onerror="this.src = '/findhero/resources/rsimg/noimg.png'">
												이미지클릭하면 유저정보보기
											</div> 리뷰반복문

											<div class="comment-details">
												<h4 class="comment-author">${ review.userNo }</h4>
												서비스명 조회해오기
												<span> <fmt:formatDate pattern="yyyy-MM-dd HH:mm"
														value="${ review.regDate }" />
												</span>
												<p class="comment-description">${ review.reviewContent }</p>
											</div>

										</li>


									</ul> --%>

				<!-- <li class="comment-children">
										<div class="comment-avatar">
											<img src="img/author-1.jpg" alt=""
												onerror="this.src = '/findhero/resources/rsimg/noimg.png'">
										</div>
										<div class="comment-details">
											<h4 class="comment-author">Oliver Colmenares</h4>
											<span>18 Sep 2017</span>
											<p class="comment-description">Lorem ipsum dolor sit
												amet, consectetur adipisicing elit. Dolores reprehenderit,
												provident cumque ipsam temporibus maiores quae.</p>
											<a href="3">Reply</a>
										</div>
									</li>
									<li>
										<div class="comment-avatar">
											<img src="img/author-2.jpg" alt=""
												onerror="this.src = '/findhero/resources/rsimg/noimg.png'">
										</div>
										<div class="comment-details">
											<h4 class="comment-author">Emma Stone</h4>
											<span>18 Sep 2017</span>
											<p class="comment-description">Lorem ipsum dolor sit
												amet, consectetur adipisicing elit. Dolores reprehenderit,
												provident cumque ipsam temporibus maiores quae natus libero
												optio.</p>
											<a href="3">Reply</a>
										</div>
									</li>
								</ul> -->
				<%-- </div>
							</c:forEach>
 --%>
				<%-- 	<c:choose>
								<c:when test="${ rsdetail.rsDel eq '종료' }">
									<div class="form-comments">
										<div class="title-box-d">
											<h3 class="title-d">Leave a Reply</h3>
										</div>
										<form class="form-a" id="reviewform">
											<div class="row">
												<div class="col-md-6 mb-3">
													<div class="form-group">
														<label for="inputName">Satisfaction survey</label> <br>
														<div id="leftside">
															서비스 만족도를 남겨주세요! &nbsp;&nbsp; <span class="star-input">
																<span class="input"> <input type="radio"
																	name="satisfied" id="p1" value="1"><label
																	for="p1">1</label> <input type="radio" name="satisfied"
																	id="p2" value="2"><label for="p2">2</label> <input
																	type="radio" name="satisfied" id="p3" value="3"><label
																	for="p3">3</label> <input type="radio" name="satisfied"
																	id="p4" value="4"><label for="p4">4</label> <input
																	type="radio" name="satisfied" id="p5" value="5"><label
																	for="p5">5</label> <input type="radio" name="satisfied"
																	id="p6" value="6"><label for="p6">6</label> <input
																	type="radio" name="satisfied" id="p7" value="7"><label
																	for="p7">7</label> <input type="radio" name="satisfied"
																	id="p8" value="8"><label for="p8">8</label> <input
																	type="radio" name="satisfied" id="p9" value="9"><label
																	for="p9">9</label> <input type="radio" name="satisfied"
																	id="p10" value="10"><label for="p10">10</label>
															</span><br> <br>

															</span>
															<!-- 가격<span class="star-input2">&nbsp;&nbsp;&nbsp;
  <span class="input2">
    <input type="radio" name="star-input" id="p1" value="1"><label for="p1">1</label>
    <input type="radio" name="star-input" id="p2" value="2"><label for="p2">2</label>
    <input type="radio" name="star-input" id="p3" value="3"><label for="p3">3</label>
    <input type="radio" name="star-input" id="p4" value="4"><label for="p4">4</label>
    <input type="radio" name="star-input" id="p5" value="5"><label for="p5">5</label>
    <input type="radio" name="star-input" id="p6" value="6"><label for="p6">6</label>
    <input type="radio" name="star-input" id="p7" value="7"><label for="p7">7</label>
    <input type="radio" name="star-input" id="p8" value="8"><label for="p8">8</label>
    <input type="radio" name="star-input" id="p9" value="9"><label for="p9">9</label>
    <input type="radio" name="star-input" id="p10" value="10"><label for="p10">10</label>
  </span>
</span><br><br>

												완성도<span class="star-input3">
  <span class="input3">
    <input type="radio" name="star-input" id="p1" value="1"><label for="p1">1</label>
    <input type="radio" name="star-input" id="p2" value="2"><label for="p2">2</label>
    <input type="radio" name="star-input" id="p3" value="3"><label for="p3">3</label>
    <input type="radio" name="star-input" id="p4" value="4"><label for="p4">4</label>
    <input type="radio" name="star-input" id="p5" value="5"><label for="p5">5</label>
    <input type="radio" name="star-input" id="p6" value="6"><label for="p6">6</label>
    <input type="radio" name="star-input" id="p7" value="7"><label for="p7">7</label>
    <input type="radio" name="star-input" id="p8" value="8"><label for="p8">8</label>
    <input type="radio" name="star-input" id="p9" value="9"><label for="p9">9</label>
    <input type="radio" name="star-input" id="p10" value="10"><label for="p10">10</label>
  </span>

</span> -->
														</div>
														<!-- <input
													type="text"
													class="form-control form-control-lg form-control-a"
													id="inputName" placeholder="Name *" required> -->
													</div>
												</div>

												<div class="col-md-12 mb-3">
													<div class="form-group">
														<label for="inputUrl">name</label> <input type="hidden"
															class="form-control form-control-lg form-control-a"
															id="inputUrl" name="userNo" value="${ user.userNo }">&nbsp;&nbsp;&nbsp;<strong>${ user.userName }</strong>
													</div>
													<input type="hidden" name="reliability" value="3" /> <input
														type="hidden" name="pro" value="3" /> <input
														type="hidden" name="heroNo" value="${ heros.heroNo }" />
												</div>
												<div class="col-md-12 mb-3">
													<div class="form-group">
														<label for="textMessage">Enter message</label>
														<textarea id="textMessage" class="form-control"
															placeholder="Comment *" name="reviewContent" cols="20"
															rows="2" required></textarea>
													</div>
												</div>
												<div class="col-md-12">
													<a href="#" id="review" class="btn btn-a">Send Message</a>
												</div>
											</div>
										</form>
									</div>
								</c:when>
							</c:choose> --%>
				<%-- 		</div>


					</c:when>

					user list
					<c:when test="${ not empty hero }"> --%>






				<%-- 	<div class="col-md-10 offset-md-1 col-lg-10 offset-lg-1">
							<div class="title-box-d">
								<h3 class="title-d">Application Users List ()</h3>
							</div>

							<div class="box-comments">
								<c:forEach var="applylist" items="${ applylist }">
									<ul class="list-comments">
										<li>
											<div class="comment-avatar">
												<img
													src="/findhero/resources/user-img/${ applylist.userImage }"
													alt=""
													onerror="this.src = '/findhero/resources/rsimg/noimg.png'">
											</div>
											<div class="comment-details">
												<h4 class="comment-author">${ applylist.userName }</h4>
												<span> </span>
												<p class="comment-description">
													E-mail: ${ applylist.userEmail }<br> Phone : ${ applylist.userPhone }
												</p>

											</div>
										</li>

									</ul>

								</c:forEach>
							</div>

						</div> --%>
				<%-- user list end --%>
				<%-- 
					</c:when>
				</c:choose> --%>
			</div>
		</div>


	</section>
	<!--/ Property Single End /-->
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

	<!-- maps -->
	<script type="text/javascript"
		src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=klILrBhXNQGUydU65xpA&submodules=geocoder"></script>

	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript"
		src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=개발자ID&submodules=geocoder"></script>
	<script type="text/javascript">
	$(function() {

	$('#review').on('click', function(event){
		var data = $('#reviewform').serializeArray();
			
		$.ajax({
			"url" : "reviewregister.action",
			"method": "POST",
			"data" : data,
			"success" : function(data, status, xht){
				
				alert("리뷰가 등록되었습니다.");
				$('.form-comments').css("display", "none");
				
	 			$('#reviewlist').load("reviewload.action", { "RsNo" : ${ rsdetail.rsNo}, "heroNo" : ${ hero.heroNo } }
	 			/*,  function(erspText, status, xhr) {
	 				alert(status); */
	 			); 	
			
		},
		
		"error" : function(xhr, status, err){
				alert('등록 실패');
			}
		});
	});	<%--end review --%>


	//star rating
		var starRating = function() {
			var $star = $(".star-input"), $result = $star.find("output>b");
			$(document).on("focusin", ".star-input>.input", function() {
				$(this).addClass("focus");
			}).on("focusout", ".star-input>.input", function() {
				var $this = $(this);
				setTimeout(function() {
					if ($this.find(":focus").length === 0) {
						$this.removeClass("focus");
					}
				}, 100);
			}).on("change", ".star-input :radio", function() {
				$result.text($(this).next().text());
			}).on("mouseover", ".star-input label", function() {
				$result.text($(this).text());
			}).on("mouseleave", ".star-input>.input", function() {
				var $checked = $star.find(":checked");
				if ($checked.length === 0) {
					$result.text("0");
				} else {
					$result.text($checked.next().text());
				}
			});
		};
		starRating();<%-- rating1--%>
		
		
		<%-- //star rating
		var starRating2= function() {
			var $star = $(".star-input2"), $result = $star.find("output2>b");
			$(document).on("focusin", ".star-input2>.input2", function() {
				$(this).addClass("focus");
			}).on("focusout", ".star-input2>.input2", function() {
				var $this = $(this);
				setTimeout(function() {
					if ($this.find(":focus").length === 0) {
						$this.removeClass("focus");
					}
				}, 100);
			}).on("change", ".star-input2 :radio", function() {
				$result.text($(this).next().text());
			}).on("mouseover", ".star-input2 label", function() {
				$result.text($(this).text());
			}).on("mouseleave", ".star-input2>.input2", function() {
				var $checked = $star.find(":checked");
				if ($checked.length === 0) {
					$result.text("0");
				} else {
					$result.text($checked.next().text());
				}
			});
		};
		starRating2();rating2
		
		//star rating
		var starRating3 = function() {
			var $star = $(".star-input3"), $result = $star.find("output3>b");
			$(document).on("focusin", ".star-input3>.input3", function() {
				$(this).addClass("focus");
			}).on("focusout", ".star-input3>.input3", function() {
				var $this = $(this);
				setTimeout(function() {
					if ($this.find(":focus").length === 0) {
						$this.removeClass("focus");
					}
				}, 100);
			}).on("change", ".star-input3 :radio", function() {
				$result.text($(this).next().text());
			}).on("mouseover", ".star-input3 label", function() {
				$result.text($(this).text());
			}).on("mouseleave", ".star-input3>.input3", function() {
				var $checked = $star.find(":checked");
				if ($checked.length === 0) {
					$result.text("0");
				} else {
					$result.text($checked.next().text());
				}
			});
		};
		starRating3();rating3 --%>
		
		$('#heroabout').keyup(function (e){
		    var content = $(this).val();
		    $('#counter').html("("+content.length+" / 최대 45자)"); 

		    if (content.length > 45){
		        alert("최대 45자까지 입력 가능합니다.");
		        $(this).val(content.substring(0, 200));
		        $('#counter').html("(45 / 최대 45자)");
		    }
		});
		
		
		$('#userimg').on('click', function(event){
			location.href="/findhero/chat/chats.action";
		});
					
	});<%-- end function--%>


	

</script>


	<script id="code">

    //function get_pointer (해당주소,대상지도 id,title) {  	
    	
    var addressinfo = $('#address').text();

    function get_pointer (adress,getid,title) {

        naver.maps.Service.geocode({

            address: adress

        }, function(status, response) {

            if (status !== naver.maps.Service.Status.OK) {

                //return alert('Something wrong!');

                console.log('주소에러');

            }

  

            var result = response.result, // 검색 결과의 컨테이너

                items = result.items; // 검색 결과의 배열

  

            // do Something
            var x = eval(items[0].point.x);

            var y = eval(items[0].point.y);

  

            var HOME_PATH = window.HOME_PATH || '.';

  

            var cityhall = new naver.maps.LatLng(y, x),

                map = new naver.maps.Map('map', {

                    center: cityhall.destinationPoint(500, 500),

                    zoom: 10

                }),

                marker = new naver.maps.Marker({

                    map: map,
                    
                    icon: {
                        url: '/findhero/resources/img/marker.png',
                        size: new naver.maps.Size(100, 100),
                        scaledSize: new naver.maps.Size(100, 100),
                        origin: new naver.maps.Point(0, 0),
                        anchor: new naver.maps.Point(12, 34)
                    },

                    position: cityhall

                });

  



  

            var infowindow = new naver.maps.InfoWindow({

                content: contentString

            });

  

            naver.maps.Event.addListener(marker, "click", function(e) {

                if (infowindow.getMap()) {

                    infowindow.close();

                } else {

                    infowindow.open(map, marker);

                }

            });

  

            infowindow.open(map, marker);

        });

    }

  

    /* 마커중복 사용안됨 */

    get_pointer(addressinfo,'map');

</script>





</body>
</html>