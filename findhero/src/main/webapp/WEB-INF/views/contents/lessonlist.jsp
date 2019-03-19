<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>서비스 목록</title>
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

<!-- datepicker -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" /> 

<style>
#lesson-title {
	width: 300px;
}

#rstitle {
	width: 300px;
}

.expl {
	font-size: "small";
}

.term {
	font-size: "small";
}

.buttons {
	text-align: center;
	display: none;
}

.form-control {
	width: 350px;
}

.lableweight {
	font-weigth: bold;
}

.modal-footer {
	text-align: center;
}

.buis {
	display: none;
}

.design {
	display: none;
}

.buis2 {
	display: none;
}

.design2 {
	display: none;
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

<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	$(function() {
		$('#home').on('click', function(event) {
			location.href = "/findhero/home.action";
		});
		
		$('#delete').on('click', function(event){
			var no = confirm('글을 삭제하시겠습니까?');
			if(no == false){
				location.href="/findhero/contents/lessonlist.action?heroNo=${hero.heroNo}"
			};
		});
		$('a[id ^=btn-update-modal-form]').on("click", function(e) {
			
			e.preventDefault();
			
			var rsno = $(this).attr('data-rsno');
			
			$('#expert-update-form #hidden-rsno').val(rsno);
			
			var rstitle = $(this).attr('data-title');
			$('#expert-update-form #rstitle').val(rstitle);
			
			//var rsfield1 = $(this).attr('data-rsfield1');
			//$('#expert-update-form #rsfield1').val(rsfield1);
			
			var rsfield2 = $(this).attr('data-rsfield2');
			$('#expert-update-form #rsfield2').val(rsfield2);
			
			var rscount = $(this).attr('data-rscount');
			$('#expert-update-form #rscount').val(rscount);
			
			var rsterm = $(this).attr('data-rsterm');
			$('#expert-update-form #rsterm').val(rsterm);
			
			var rsday = $(this).attr('data-rsday');
			$('#expert-update-form #rsday').val(rsday);
			
			/* var rsadd1 = $(this).attr('data-rsadd1');
			$('#expert-update-form #rsadd1').val(rsadd1);
			
			var rsadd2 = $(this).attr('data-rsadd2');
			$('#expert-update-form #rsadd2').val(rsadd2);
			
			var rsadd3 = $(this).attr('data-rsadd3');
			$('#expert-update-form #rsadd3').val(rsadd3); */
			
			var rsprice = $(this).attr('data-rsprice');
			$('#expert-update-form #rsprice').val(rsprice);
			
			var rsstart = $(this).attr('data-rsstart');
			$('#expert-update-form #rsstart').val(rsstart);
			
			var rsend = $(this).attr('data-rsend');
			$('#expert-update-form #rsend').val(rsend);
			
			var rscontent = $(this).attr('data-rscontent');
			$('#expert-update-form #rscontent').val(rscontent);
			
			
			
			$('#expertupdate').modal('show');
			   $('#next1s').css("display","block");
	              $('#firsts').css("display","block");
	              $('#seconds').css("display","none");
	              $('#thirds').css("display","none");
	              $('#forths').css("display","none");
	              $('#upd').css("display","none");
	              $('#closes').css("display","block");
		});
	 	
		$('#next1s').on('click', function(event) {

			if ($('#rstitle').val().length == 0) {
				alert('서비스명은 필수입력 사항입니다.');
				$('#rstitle').focus();
				return;
			}
		});
		
		  $('#next1s').on('click',function(event){  
			  if ($('#rstitle').val().length != 0){
			  
			  $('.progress-bar').width(40 + '%');				
	    		$('#back1s').css("display","block");
	    		$('#back2s').css("display","none");
	    		$('#back3s').css("display","none");
	    		$('#back4s').css("display","none");
	    		
	          $('#next1s').css("display","none");
	          $('#next2s').css("display","block");
	          $('#next3s').css("display","none");
	          $('#next4s').css("display","none");
	          
	          $('#firsts').css("display","none");
	          $('#seconds').css("display","block");    	  
	          $('#thirds').css("display","none");
	          $('#forths').css("display","none");
	          $('#upd').css("display","none");
	          $('#closes').css("display","none");
			  }
	      });
	      
	      $('#back1s').on('click',function(event){  
	    	  $('.progress-bar').width(0 + '%');
				$('#back1s').css("display","none");
				$('#back2s').css("display","none");
	    		$('#back3s').css("display","none");
	    		$('#back4s').css("display","none");
	  
				$('#next1s').css("display","block");
				$('#next2s').css("display","none");
				$('#next3s').css("display","none");
				$('#next4s').css("display","none");
				
				$('#firsts').css("display","block");
				$('#seconds').css("display","none"); 
				$('#thirds').css("display","none"); 
		        $('#upd').css("display","none");
		        $('#closes').css("display","none");
	      }); 
	      
	      $('#next2s').on('click',function(event){
	    	  $('.progress-bar').width(70 + '%')
	    		$('#back1s').css("display","none");
	    		$('#back2s').css("display","block");
	    		$('#back3s').css("display","none");
	    		$('#back4s').css("display","none");
	    		
	          $('#next1s').css("display","none");
	          $('#next2s').css("display","none");
	      		$('#next3s').css("display","block");
				$('#next4s').css("display","none");
				
	          $('#firsts').css("display","none");
	          $('#seconds').css("display","none");    	  
	          $('#thirds').css("display","block");
	          $('#forths').css("display","none");
	          
	          $('#upd').css("display","none");
	          $('#closes').css("display","none");
	      });
	      
	      $('#back2s').on('click',function(event){
	    	  $('.progress-bar').width(40 + '%');
				$('#back1s').css("display","block");
				$('#back2s').css("display","none");
				$('#back3s').css("display","none");
				$('#back4s').css("display","none");
				
				$('#next1s').css("display","none");
				$('#next2s').css("display","block");
				$('#next3s').css("display","none");
				$('#next4s').css("display","none");
				
				$('#firsts').css("display","none");
				$('#seconds').css("display","block"); 
				$('#thirds').css("display","none"); 
		        $('#upd').css("display","none");
		        $('#closes').css("display","none"); 
	      }); 
	      
	      $('#next3s').on('click',function(event){ 
	    	  $('.progress-bar').width(100 + '%');
	   		$('#back1s').css("display","none");
	   		$('#back2s').css("display","none");
	   		$('#back3s').css("display","block");
	   		$('#back4s').css("display","none");
	   		
	         $('#next1s').css("display","none");
	         $('#next2s').css("display","none");
	     	$('#next3s').css("display","none");
			$('#next4s').css("display","block");
				
	         $('#firsts').css("display","none");
	         $('#seconds').css("display","none");    	  
	         $('#thirds').css("display","none");
	         $('#forths').css("display","block");
	         
	         $('#upd').css("display","block");
	         $('#closes').css("display","block"); 
	     });
	      
	      $('#back3s').on('click',function(event){
	    	  $('.progress-bar').width(70 + '%');
				$('#back1s').css("display","none");
				$('#back2s').css("display","block");
				$('#back3s').css("display","none");
				$('#back4s').css("display","none");
				
				$('#next1s').css("display","none");
				$('#next2s').css("display","none");
				$('#next3s').css("display","block");
				$('#next4s').css("display","none");
				
				$('#firsts').css("display","none");
				$('#seconds').css("display","none"); 
				$('#thirds').css("display","block");
				$('#forths').css("display","none");
				 $('#upd').css("display","none");
		         $('#closes').css("display","none"); 
			
	     }); 
	      
	      $("#closes").click(function() {
	          $("#update").modal("hide");
	          $("#firsts").modal("hide");
	          $("#seconds").modal("hide");
	          $("#thirds").modal("hide");
	          $("#forths").modal("hide");
	      });
	      
	      $('#upd').on('click', function() {
				var price2 = $('#rsprice').val();
				var start = $('#start').val();
				var content2 = $('#rscontent').val();

				if (price2.length == 0) {
					alert('가격은 필수입력 사항입니다.');
					price2.focus();
					return;
				}

				/* if (start.length == 0) {
					alert('시작일은 필수입력 사항입니다.');
					start.focus();
					return;
				} */

				if (content2.length == 0) {
					alert('소개글은 필수입력 사항입니다.');
					content2.focus();
					return;
				}

				$('#expert-update-form').submit();
			});
	      
	  	$('#rscontent').keyup(function(e) {
			var content2 = $(this).val();
			$('#counter2').html("(" + content2.length + " / 최대 1000자)");

			if (content2.length > 1000) {
				alert("최대 1000자까지 입력 가능합니다.");
				$(this).val(content2.substring(0, 1000));
				$('#counter2').html("(1000 / 최대 1000자)");
			}
		});
	  	
	  	$('#rstitle').keyup(function(e) {
			var content3 = $(this).val();
			/*  $('#counter').html("("+content.length+" / 최대 1000자)");  */

			if (content3.length > 10) {
				alert("최대 10자까지 입력 가능합니다.");
				$(this).val(content3.substring(0, 10));
				/*  $('#counter').html("(1000 / 최대 1000자)"); */
			}
		});


	  	$("#expertregister input[name=RsField1]").change(function() {
	  		var radioValue = $(this).val();
	  		
	  		if (radioValue == "레슨") {
	  		$('#selectBox').append("<option value=''>분야선택</option>");
			$('#selectBox').append("<option value='축구 트레이닝'>축구 트레이닝</option>");
			$('#selectBox').append("<option value='보컬레슨'>보컬레슨</option>");
			$('#selectBox').append("<option value='기타레슨'>기타레슨</option>");
			$('#selectBox').show();
			$('.buis').hide();
			$('.buis').empty();
			$('.design').hide();
			$('.design').empty();
			
	  		} else if (radioValue == "비즈니스") {
	  		$('.buis').append("<option value=''>분야선택</option>");
	  		$('.buis').append("<option value='비즈니스 영어'>비즈니스 영어</option>");
	  		$('.buis').append("<option value='블로그 마케팅'>블로그 마케팅</option>");	
	  		$('.buis').append("<option value='회계/세무'>회계/세무</option>");
	  		$('.buis').show();
	  		$('#selectBox').hide();
	  		$('#selectBox').empty();
			$('.design').hide();
			$('.design').empty();

	  		} else if (radioValue == "디자인/개발") {
	  		 $('.design').append("<option value=''>분야선택</option>");
		  	$('.design').append("<option value='소프트웨어 개발'>소프트웨어 개발</option>");
		  	$('.design').append("<option value='제품 디자인'>제품디자인</option>");	
		  	$('.design').append("<option value='라벨 디자인'>회계/세무</option>");
		  	$('.design').show();
		  	$('#selectBox').hide();
		  	$('#selectBox').empty();
			$('.buis').hide();
			$('.buis').empty();
	  		}
	  		
		});
	  	
	  	
	  	$("#expertupdate input[name=RsField1]").change(function() {
	  		var radioValue2 = $(this).val();
	  		
	  		if (radioValue2 == "레슨") {
	  		$('#selectBox2').append("<option value=''>분야선택</option>");
			$('#selectBox2').append("<option value='축구 트레이닝'>축구 트레이닝</option>");
			$('#selectBox2').append("<option value='보컬레슨'>보컬레슨</option>");
			$('#selectBox2').append("<option value='기타레슨'>기타레슨</option>");
			$('#selectBox2').show();
			$('.buis2').hide();
			$('.buis2').empty();
			$('.design2').hide();
			$('.design2').empty();
			
	  		} else if (radioValue2 == "비즈니스") {
	  		$('.buis2').append("<option value=''>분야선택</option>");
	  		$('.buis2').append("<option value='비즈니스 영어'>비즈니스 영어</option>");
	  		$('.buis2').append("<option value='블로그 마케팅'>블로그 마케팅</option>");	
	  		$('.buis2').append("<option value='회계/세무'>회계/세무</option>");
	  		$('.buis2').show();
	  		$('#selectBox2').hide();
	  		$('#selectBox2').empty();
			$('.design2').hide();
			$('.design2').empty();

	  		} else if (radioValue2 == "디자인/개발") {
	  		$('.design2').append("<option value=''>분야선택</option>");
		  	$('.design2').append("<option value='소프트웨어 개발'>소프트웨어 개발</option>");
		  	$('.design2').append("<option value='제품 디자인'>제품디자인</option>");	
		  	$('.design2').append("<option value='라벨 디자인'>회계/세무</option>");
		  	$('.design2').show();
		  	$('#selectBox2').hide();
		  	$('#selectBox2').empty();
			$('.buis2').hide();
			$('.buis2').empty();
	  		}
	  		
		});	 
	
	});<%-- end function--%>
	
	function sample6_execDaumPostcode1() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var addr = ''; // 주소 변수
						var extraAddr = ''; // 참고항목 변수

						//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							addr = data.roadAddress;
						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							addr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
						if (data.userSelectedType === 'R') {
							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						/* 	if (extraAddr !== '') {
								extraAddr = ' (' + extraAddr + ')';
							} */
							// 조합된 참고항목을 해당 필드에 넣는다.
							document.getElementById("rsAdd3-1").value = extraAddr;

						} else {
							document.getElementById("rsAdd3-1").value = '';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample6_postcode-1').value = data.zonecode;
						document.getElementById("rsAdd1-1").value = addr;
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("rs2-1").focus();
					}
				}).open();
	}
	
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
						<h1 class="title-single">Lists</h1>
						<span class="color-text-a">Grid News</span>
					</div>
				</div>
				<div class="col-md-12 col-lg-4">
					<nav aria-label="breadcrumb"
						class="breadcrumb-box d-flex justify-content-lg-end">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#" id="home">Home</a></li>
							<c:if test="${ not empty hero.heroNo }">
								<li class="breadcrumb-item active" aria-current="page"><a
									href="#" id="registermodal"> 서비스등록 </a> <jsp:include
										page="/WEB-INF/views/contents/register.jsp" /></li>
									
							</c:if>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!--/ Intro Single End /-->


	<jsp:include page="/WEB-INF/views/contents/update.jsp" />
	<%-- hero --%>
	<section class="news-grid grid">
		<div class="container">
			<div class="row">
				<c:choose>
					<c:when test="${ not empty hero.heroNo }">
						<c:forEach var="rs" items="${ rs }">
							<div class="col-md-4">
								<div class="card-box-d">
									<div class="img-box-d">
										<img src="/findhero/resources/hero-img/${hero.heroImage }"
											alt="" class="img-d img-fluid"
											onerror="this.src = '/findhero/resources/rsimg/noimg.png'">
									</div>
									<div class="card-overlay card-overlay-hover">
										<div class="card-header-d">
											<div class="card-title-d align-self-center">
												<h3 class="title-d" style="text-align: center">
													<a
														href="/findhero/contents/lessondetail.action?RsNo=${ rs.rsNo }&heroNo=${hero.heroNo}"
														class="link-two">${ rs.rsTitle }</a>
														<br>
												</h3>
											</div>
											
											<div class="card-body-d">
									
												<p class="content-d color-text-a" style="text-align: center;">
														<span style="color:brown"><strong>"${ rs.rsDel }"</strong></span><br>
													 ${ rs.rsField2 } 
													<br><br> <a
														id="btn-update-modal-form${ rs.rsNo }
														${rs.rsTitle}
														${rs.rsField1}
														${rs.rsField2}
														${rs.rsCount}
														${rs.rsTerm}
														${rs.rsDay}
														<%-- ${rs.rsAdd1}
														${rs.rsAdd2}
														${rs.rsAdd3} --%>
														${rs.rsPrice}
														${rs.rsStart}
														${rs.rsEnd}
														${rs.rsContent}"
														data-rsno="${ rs.rsNo }" data-title="${ rs.rsTitle }"
														data-rsfield1="${ rs.rsField1 }"
														data-rsfield2="${ rs.rsField2 }"
														data-rscount="${ rs.rsCount }"
														data-rsterm="${ rs.rsTerm }" data-rsday="${ rs.rsDay }"
														data-rsadd1="${ rs.rsAdd1 }" data-rsadd2="${ rs.rsAdd2 }"
														data-rsadd3="${ rs.rsAdd3 }"
														data-rsprice="${ rs.rsPrice }"
														data-rsstart="${ rs.rsStart }" data-rsend="${ rs.rsEnd }"
														data-rscontent="${ rs.rsContent }" class="btn btn-info"
														href="#">Update</a>&nbsp; <a id="delete"
														href="/findhero/contents/contentDelete.action?heroNo=${ hero.heroNo }&pageNo=${ pageNo }&RsNo=${ rs.rsNo }&field=${rs.rsField1}"
														class="btn btn-info">Delete</a>
												</p>
											</div>
											<div class="card-footer-d">
												<div class="social-footer d-flex justify-content-center">
													<br> <span class="date-b">${rs.rsRegDate }</span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:when>


					<%-- 일반유저  --%>
					<c:otherwise>
						<c:forEach var="rs" items="${ rs2 }" varStatus="stat">
							<div class="col-md-4">
								<div class="card-box-b card-shadow news-box">
									<div class="img-box-b">
										<img
											src="/findhero/resources/hero-img/${ heroes[stat.index].heroImage }"
											alt="" class="img-b img-fluid"
											onerror="this.src = '/findhero/resources/rsimg/noimg.png'">
									</div>
									<div class="card-overlay">
										<div class="card-header-b">
											<div class="card-category-b">
												<a
													href="/findhero/contents/lessondetail.action?RsNo=${rs.rsNo}&pageNo=${pageNo}"
													class="category-b">${ rs.rsTitle }</a>
											</div>
											<div class="card-title-b">
												<h2 class="title-2">
													<a
														href="/findhero/contents/lessondetail.action?RsNo=${rs.rsNo}&pageNo=${pageNo}">${ rs.rsDel }
														<br> ${hero.heroName}<%-- 회원상세이동 --%>
													</a>
												</h2>
											</div>
											<div class="card-date">
												<span class="date-b">${rs.rsRegDate }</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>

			</div>
			<c:choose>
				<c:when test="${ not empty hero }">
					<div class="row">
						<div class="col-sm-12">
							<nav class="pagination-a">
								<ul class="pagination justify-content-end">
								${ pager }
								</ul>
							</nav>
						</div>
					</div>
				</c:when>

				<c:otherwise>
					<div class="row">
						<div class="col-sm-12">
							<nav class="pagination-a">
								<ul class="pagination justify-content-end">
								${ pager2 }
								</ul>
							</nav>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</section>
	<!--/ News Grid End /-->

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