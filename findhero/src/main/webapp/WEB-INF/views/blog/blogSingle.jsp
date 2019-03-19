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
  <link href="/findhero/resources/lib/animate/animate.min2.css" rel="stylesheet">
  <link href="/findhero/resources/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="/findhero/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="/findhero/resources/css/style.css" rel="stylesheet">
  
    <!-- maps -->
  <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=klILrBhXNQGUydU65xpA&submodules=geocoder"></script>

  <!-- =======================================================
    Theme Name: EstateAgency
    Theme URL: https://bootstrapmade.com/real-estate-agency-bootstrap-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
</head>

<body>


 <jsp:include page="/WEB-INF/views/include/header.jsp" />
  <!--/ Nav End /-->

  <!--/ Intro Single star /-->
  <section class="intro-single">
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-lg-8">
          <div class="title-single-box">
            <h1 class="title-single">인터뷰) ${blog.blogName} ${hero.heroName} 히어로를 만나다</h1>
            <span class="color-text-a">숨히가 만난 히어로</span>
           	
               
               <!-- 삭제 modal -->

				<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-lg">삭제하기</button>
				
					<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  						<div class="modal-dialog modal-lg">
    						<div class="modal-content">
      							<div class="col-md-10 offset-md-1 col-lg-8 offset-lg-2">
      							<div class="post-content color-text-a">
            						<p class="post-intro"><br>인터뷰를 정말 <strong>삭제</strong> 하시겠습니까?<br></p>
									<a href="/findhero/blog/blogDel.action?blogNo=${blog.blogNo}"><button type="button" class="btn btn-primary btn-lg btn-block">삭제하기</button></a>
									<p><br></p>            					
            					</div>
      							</div>
      							
    						</div>
  						</div>
					</div>
					
							
		
               <!-- -------------------------------------------------- -->
               
  
          </div>
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
              <div class="agent-avatar-box">
                <img src="/findhero/resources/blog-img/${blog.attachments.get(0).imgSavedName}" alt="" class="agent-avatar img-fluid">
              </div>
            </div>
            <div class="col-md-5 section-md-t3">
              <div class="agent-info-box">
                <div class="agent-title">
                  <div class="title-box-d">
                    <h3 class="title-d">${hero.heroName}</h3>
                  </div>
                </div>
                <div class="agent-content mb-3">
                  <p class="content-d color-text-a">
                   	<strong>${hero.heroField}</strong> 분야의 <strong>${hero.heroName}</strong> 전문가 <br>
					<br>
					<strong>'${hero.heroField2}'</strong> 히어로, <strong>${hero.heroName}</strong>
                  </p>
                  <div class="info-agents color-a">
                    <p>
                      <strong>Phone: </strong>
                      <span class="color-text-a"> ${hero.heroPhone} </span>
                    </p>
                    <p>
                      <strong>Email: </strong>
                      <span class="color-text-a"> ${hero.heroEmail}</span>
                    </p>
                     <p>
                      <strong>직업: </strong>
                      <span class="color-text-a"> ${blog.blogName}</span>
                    </p>
<!--                    <p>
                      <strong>Email: </strong>
                      <span class="color-text-a"> josebp45@naver.com</span>
                    </p> -->
                  </div>
                </div>
                <div class="col-md-12 mb-5">
               <%--  <!-- ------------Modal----------------- -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bd-example-modal-xl">히어로 레슨 바로가기</button>



<div class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-xl">
    <div class="modal-content">
     <div class="modal-body">
   						
   						  <section class="section-about">

                <div class="title-box-d">
                <h3 class="title-d">'${hero.heroName}' 는 <br>총 <strong>${rsCount}</strong>개의 레슨을 진행 중입니다.</h3>
              </div>
            <div class="col-md-6 col-lg-5">
              <img src="/findhero/resources/blog-img/${blog.attachments.get(0).imgSavedName}" alt="" class="img-fluid">
            </div>

            

              <div>
              <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">레슨명</th>
      <th scope="col">가격</th>
      <th scope="col">바로가기</th>
    </tr>
  </thead>
  <c:forEach var="lesson" items="${lesson}">
  
  <tbody>
    <tr>
      <td>${lesson.rsTitle}</td>
      <td>${lesson.rsPrice}</td>
      <td><a href="/findhero/contents/lessondetail.action?RsNo=${lesson.rsNo}">바로가기</a></td>
    </tr>
    </tbody>
</c:forEach>
</table>


        </div>
        </section>
        
        			</div>
   					</div>	
    				</div>
  					</div>
					</div>
                 <!-- --------------------------------- --> 
                 <div><span><br></span></div> --%>
<!-- 상품 리스트 -->
<button type="button" class="btn btn-b-n navbar-toggle-box-collapse d-none d-md-block" data-toggle="collapse"
        data-target="#navbarTogglerDemo01" aria-expanded="false">
        <span>히어로가 진행 중인 상품리스트 보기</span>
      </button>
      
<!-- --------------------- -->
                 
                </div>
              </div>
            </div>
          </div>
        </div>
		
		
		
 
<div class="post-information">
            <ul class="list-inline text-center color-a">
              <li class="list-inline-item mr-2">
                <strong>name: </strong>
                <span class="color-text-a">${hero.heroName}</span>
              </li>
              <li class="list-inline-item mr-2">
                <strong>이메일: </strong>
                <span class="color-text-a">${hero.heroEmail}</span>
              </li>
              <li class="list-inline-item">
                <strong>연락처: </strong>
                <span class="color-text-a">${hero.heroPhone}</span>
              </li>
              <li class="list-inline-item">
                <strong>작성일: </strong>
                <span class="color-text-a">${blog.regDate}</span>
              </li>
            </ul>
          </div>
          <div class="post-content color-text-a">
            <p class="post-intro">
              <strong>안녕하세요. 고수님 자기소개 부탁드립니다.</strong> 
            </p>
            <p>
           	  ${blog.blogAnswer1}
            </p>
			
			            <p class="post-intro">
              <strong>지금 하고 계신 일은 어떤 계기로 관심을 가지게 되었고, 왜 이 일을 시작하게 되셨나요?</strong> 
            </p>
            <p>
              ${blog.blogAnswer2}
            </p>
			
			  <div class="col-sm-12">
          <div class="news-img-box">
            <img src="/findhero/resources/blog-img/${blog.attachments.get(1).imgSavedName}" alt="" class="img-fluid">
          </div>
        </div>
        
			
			
			<p class="post-intro">
              <strong>레슨 수강생들이 잘 이해할 수 있도록 진심 어리게 강의하시는 게 느껴져요. 어떤 마음으로 레슨을 하시나요?</strong> 
            </p>
            
            <p>
            ${blog.blogAnswer3}
			</p>
						<p class="post-intro">
              <strong>레슨을 하시면서 가장 기억에 남는 학생은 누구인가요?</strong> 
            </p>
            <p>
            ${blog.blogAnswer4}
 			</p>
			
			<p class="post-intro">
              <strong>마지막으로 개인적인 꿈이나 목표가 있으시다면 말씀해주세요.</strong> 
            </p>
            <p>
			${blog.blogAnswer5}
			</p>

			

				<div class="col-sm-12">
          <div class="news-img-box">
            <img src="/findhero/resources/blog-img/${blog.attachments.get(2).imgSavedName}" alt="" class="img-fluid">
          </div>
        </div>
            
          </div>

          
		
		

<div class="col-md-12 mb-5">
                  
                </div>
                
            <div class="post-content color-text-a">
            <p class="post-intro">
              <strong>히어로 주요 활동 지역</strong> 
            </p>
            <p id="address">${hero.heroAdd1} ${hero.heroAdd2} ${hero.heroAdd3}</p>
            </div> 
		<div id="map" style="width:100%;height:400px;"></div>
		
      </div>
    </div>
  </section>
  
  
  <!--/ Testimonials Star /-->
  <section class="section-testimonials section-t8 nav-arrow-a">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="title-wrap d-flex justify-content-between">
            <div class="title-box">
              <h2 class="title-a">비슷한 분야의 히어로 인터뷰</h2>
            </div>
          </div>
        </div>
      </div>
      <div id="testimonial-carousel" class="owl-carousel owl-arrow">
 

<c:forEach var="bestBlog" items="${bestBlog}">
<div class="carousel-item-a">
          <div class="testimonials-box">
            <div class="row">
              <div class="col-sm-12 col-md-6">
                <div class="testimonial-img">
                  <img src="/findhero/resources/blog-img/${bestBlog.attachments.get(0).imgSavedName}" alt="" class="img-fluid">
                </div>
              </div>
              <div class="col-sm-12 col-md-6">
              <div class="testimonials-content">
              <div class="agent-info-box">
                <div class="agent-title">
                  <div class="title-box-d">
                  <h3 class="title-d">${bestBlog.heroes.heroName}</h3>
                </div>
                </div>
                <div class="agent-content mb-3">
                  
                  <div class="info-agents color-a">
                    <p>
                      <strong>카테고리: </strong>
                      <span class="color-text-a">${bestBlog.heroes.heroField}</span>
                    </p>
                    <p>
                    <strong>분야: </strong>
                      <span class="color-text-a">${bestBlog.heroes.heroField2}</span>
                    </p>
                    <p>
                      <strong>문의하기: </strong>
                      <span class="color-text-a">${bestBlog.heroes.heroEmail}</span>
                    </p>
					
					<p><strong><br>'${bestBlog.heroes.heroField2}' 히어로 '${bestBlog.heroes.heroName}' 전문가</strong></p>
                    
                  </div>
                </div>
                <button type="button" class="btn btn-primary btn-lg">
                <a href="/findhero/blog/blogSingle.action?blogNo=${bestBlog.blogNo}">인터뷰로 바로가기</a>
                </button>
               </div>
                </div>
              </div>
            </div>
          </div>
        </div>

</c:forEach>
      </div>
    </div>
      </section>









<!-- ------------------------------ -->
<div class="click-closed"></div>
  <!--/ Form Search Star /-->
  <div class="box-collapse">
    <div class="title-box-d">
      <h3 class="title-d">상품 리스트</h3>
    </div>
    <span class="close-box-collapse right-boxed ion-ios-close"></span>
    <div class="box-collapse-wrap form">
      <form class="form-a">
        <div class="row">
         <div data-spy="scroll" data-target="#navbar-example3" data-offset="0">
		 
		 <c:forEach var="lesson" items="${lesson}">
		 <table class="table table-bordered">
     		<tr><td width=450 style="word-break:break-all"><a href="/findhero/contents/lessondetail.action?RsNo=${lesson.rsNo}"><img src="/findhero/resources/rsimg/${lesson.attachments.get(0).savedFileName}" width="450" height="250"></a></td></tr>
	 		<tr><td width=450 style="word-break:break-all"><a href="/findhero/contents/lessondetail.action?RsNo=${lesson.rsNo}"><strong>${lesson.rsTitle}</strong></a><br>${lesson.rsField1}<br>가격 : ${lesson.rsPrice}</td></tr>
   </table>
   </c:forEach>
   
   
   </div>
		</div>
      </form>
    </div>
  </div>
  <!--/ Form Search End /-->


<!-- ------------------------------ -->

  
  <!--/ Footer End /-->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />

  <!-- JavaScript Libraries -->
  <script src="/findhero/resources/lib/jquery/jquery.min.js"></script>
  <script src="/findhero/resources/lib/jquery/jquery-migrate.min.js"></script>
  <script src="/findhero/resources/lib/popper/popper.min.js"></script>
  <script src="/findhero/resources/lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="/findhero/resources/lib/bootstrap/js/bootstrap.js"></script>
  <script src="/findhero/resources/lib/easing/easing.min.js"></script>
  <script src="/findhero/resources/lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="/findhero/resources/lib/scrollreveal/scrollreveal.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="/findhero/resources/contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="/findhero/resources/js/main.js"></script>
  


<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=klILrBhXNQGUydU65xpA&submodules=geocoder"></script>

<!-- <div id="map" style="width:100%;height:600px;"></div> -->

<style>

    .iw_inner {padding:10px}

    .iw_inner h3 {font-size: 18px; padding-bottom: 7px}

</style>

<script id="code">


	var addressinhero = $('#address').text();
	
    //function get_pointer (해당주소,대상지도 id,title) {
	
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
	
    get_pointer(addressinhero,'map');

</script>
   
  
</body>
</html>
