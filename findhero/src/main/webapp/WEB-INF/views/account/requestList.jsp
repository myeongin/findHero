<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
  <style type="text/css">
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
	
	
<c:if test="${not empty newRequests }">
<c:if test="${newRequests ne 0 }">
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
			<p class="pt-3 pr-2"><strong>${newRequests}</strong>개의 새로운 요청서가 도착했습니다.</p>
          <button type="button" class="btn btn-outline-danger" data-dismiss="modal">확인</button>          
        </div>
      </div>
    </div>
    <!--/.Content-->
  </div>
</div>
</c:if>
</c:if>



<c:if test="${not empty oks}">
<c:forEach var="ok" items="${oks}">
<script>
 $(function(){
	 $('#modalCookie'+${ok.get("okNo")}).modal('show')
	 
	 $('#yes'+${ok.get('okNo')}).on('click',function(e){
		
		 e.preventDefault();
		 
		 $.ajax({
			 url:"/findhero/account/changeOkY",
			 type:'POST',
			 data:$('#submitY'+${ok.get('okNo')}).serialize(),
			 success:function(data){	
				 $('#modalCookie'+${ok.get("okNo")}).modal('hide');
			 }
		 })
		 
	 });
	 
	 $('#no'+${ok.get('okNo')}).on('click',function(e){
			
		 e.preventDefault();
		 
		 $.ajax({
			 url:"/findhero/account/changeOkN",
			 type:'POST',
			 data:$('#submitN'+${ok.get('okNo')}).serialize(),
			 success:function(data){	
				 $('#modalCookie'+${ok.get("okNo")}).modal('hide');
			 }
		 })
		 
	 });
	 
 });
 </script>
  <div class="modal fade top" id='modalCookie${ok.get("okNo")}' tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true" data-backdrop="false">
  <div class="modal-dialog modal-frame modal-top modal-notify modal-info" role="document">
    <!--Content-->
    <div class="modal-content">
      <!--Body-->
      <div class="modal-body">
        <div class="row d-flex justify-content-center align-items-center">
			<p class="pt-3 pr-2">${ok.get("RequestField1")}-${ok.get("RequestField2")}에 대한 서비스가 등록되었습니다.</p><br>
			<p class="pt-3 pr-2">등록 히어로  정보:${ok.get("HeroName")}/${ok.get("HeroAdd3")}/${ok.get("HeroPhone")}</p><br>
			<form id="submitY${ok.get('okNo')}">
			<input text="hidden" value='${ok.get("okNo") }' name="okNo" style="display:none">
			<input text="hidden" value='${user.userNo}' name="userNo" style="display:none">
			<input text="hidden" value='${ok.get("rsNo")}' name="rsNo" style="display:none">			
          	<button type="button" class="btn btn-outline-primary"  id="yes${ok.get('okNo')}">승인</button>          	
          </form>          
          	<form  id="submitN${ok.get('okNo')}">
          	<input text="hidden" value='${ok.get("okNo") }' name="okNo" style="display:none">
          	<input text="hidden" value='${user.userNo}' name="userNo" style="display:none">
          	<input text="hidden" value='${ok.get("rsNo")}' name="rsNo" style="display:none">
          	<button type="button" class="btn btn-outline-danger"  id="no${ok.get('okNo')}">거절</button>
          	</form>
        </div>
      </div>
    </div>
    <!--/.Content-->
  </div>
</div>
</c:forEach>
</c:if>
	
			
  <!--/ Intro Single star /-->
  <section class="intro-single">
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-lg-8">
          <div class="title-box-d">
            	<h1 class="title-d">요청서 정보</h1>         	            
          </div>
        </div>
                <div class="col-md-12 col-lg-4">
          <nav aria-label="breadcrumb" class="breadcrumb-box d-flex justify-content-lg-end">
            <ol class="breadcrumb">
            
              <li class="breadcrumb-item">
                <c:if test="${not empty user }">
                <a href="serviceList.action?userNo=${user.userNo}">
            	서비스 이용 정보
            	</a>
            </c:if>
            <c:if test="${not empty hero }">
            <a href="serviceList.action?heroNo=${hero.heroNo}">
            	서비스 등록 정보
            	</a>
            </c:if>
              </li>
              <li class="breadcrumb-item active" aria-current="page">
                	요청서 정보
              </li>
            </ol>
          </nav>
        </div>
      </div>
    </div>
  </section>
  <!--/ Intro Single End /-->

  <!--/ Contact Star /-->
  <section class="contact">
    <div class="container">
	<div class="row">
		
        
        <div class="col-md-12">  
        <div class="table-responsive">

                
              <table id="mytable" class="table table-bordred table-hover">
                <c:if test="${not empty hero }"> 
         
                   <thead>                   
                   <th></th>
                   <th>회원이름</th>
                   <th>분야</th>
                    <th>내용</th>
                     <th>주소</th>
                     <th>기간</th>
                     <th>요일</th>                                                               
                       <th>메시지</th>
                       <th>승낙거절</th>
                   </thead>
    <tbody id="">
    <c:forEach var="request" items="${requests}">
    
    <tr id="registerModal${request.get('RequestNo')}">
    <td></td>
    <td>${request.get("UserName") }</td>
    <td>${request.get("RequestField1") }/${request.get("RequestField2") }</td>
    <td>${request.get("RequestContent") }</td>
    <td>${request.get("RequestAdd1") }${request.get("RequestAdd2") }${request.get("RequestAdd3") }</td>
    <td>${request.get("RequestTerm") }</td>
    <td>${request.get("RequestDay") }</td>  
     <td><a href='/findhero/chat/insert.action?userNo=${request.get("UserNo")}&heroNo=${hero.heroNo}'><strong class="fa fa-comments-o btn" style=""></strong></a></td>  
    <td>
    <c:if test='${request.get("Consent") eq "대기" }'>
    	<button class="btn btn-primary btn-xs confirm" data-confirmNo ='${request.get("ConfirmNo")}' data-confirm="승인" id='y${request.get("ConfirmNo")}'><span class="glyphicon glyphicon-pencil"></span></button>
    	<button class="btn btn-danger btn-xs confirm" data-confirmNo ='${request.get("ConfirmNo")}'  data-confirm="거절" id='n${request.get("ConfirmNo")}'><span class="glyphicon glyphicon-trash"></span></button>
    </c:if>	
    <c:if test="${request.get('Consent') eq '승인' }">
    	<button class="btn btn-primary btn-xs confirm" disabled data-confirmNo ='${request.get("ConfirmNo")}' data-confirm="승인" id='y${request.get("ConfirmNo")}'><span class="glyphicon glyphicon-pencil"></span></button>
    </c:if>
     <c:if test="${request.get('Consent') eq '거절' }">
    	<button class="btn btn-danger btn-xs confirm" disabled data-confirmNo ='${request.get("ConfirmNo")}'  data-confirm="거절" id='n${request.get("ConfirmNo")}'><span class="glyphicon glyphicon-trash"></span></button>
    </c:if>
    </td>   
    </tr> 
    
    <c:if test="${request.get('Consent') eq '승인'}">
    <div class="modal fade" id="expertregister${request.get('RequestNo')}" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content" id="find_modal-content${request.get('RequestNo')}">

			<div class="modal-header">
				<div class="title-box-d">
					<h4 class="title-d">Lesson Register</h4>
				</div>
			</div>
			<form action="/findhero/account/requestregister.action" method="post"
				id="expertregisters${request.get('RequestNo')}" enctype="multipart/form-data">

				<input type="hidden" name="heroNo" value="${ hero.heroNo }">

				<div class="modal-body">
					<div id="first${request.get('RequestNo')}" style="display: none">
						<label for="image" class="col-form-label lableweight">Image</label>
						<input type="file" multiple="multiple" id="attach${request.get('RequestNo')}"
							class="btn btn-outline-warning btn-sm" accept="image/*"
							name="attach" /> <br> <label for="title"
							class="col-form-label lableweight">*Title</label> <input
							type="text" class="form-control" id="lesson-title${request.get('RequestNo')}" name="RsTitle" />

						<br> 
						<input type="hidden" value="${request.get('RequestNo')}" name="requestNo">
 						<input type="hidden" value="${request.get('RequestField1')}" name="rsField1">
						<input type="hidden" value="${request.get('RequestField2')}" name="rsField2">						
						<input type="hidden" value="요청" name="rsType">
						<input type="hidden" value="승인대기" name="rsDel">
					</div>
					<div id="second${request.get('RequestNo')}" style="display: none">
						<label for="count" class="col-form-label lableweight">*인원
							수 </label>&nbsp; <select size=1 name="RsCount">
							<option value="">인원 수 선택</option>
							<%
								for (int i = 0; i <= 100; i += 5) {
							%>
							<option value="<%=i%>"><%=i%></option>
							<%
								}
							%>
						</select> <br> <label for="term" class="col-form-label lableweight">*기간</label><br>
						<span class="term"> (예: 예상기간입력  03/03/2019 - ) </span> 
						<input type="text" class="form-control"  name="RsTerm" />


					</div>

					<div id="third${request.get('RequestNo')}" style="display: none">
						<label for="meetingday" class="col-form-label lableweight">만나고싶은 희망 요일</label><br> 
						<div class="weekDays-selector">
						  <input type="checkbox" id="weekday-mon${request.get('RequestNo')}" class="weekday" name="RsDay" value="월"/>
						  <label for="weekday-mon${request.get('RequestNo')}">월</label>
						  <input type="checkbox" id="weekday-tue${request.get('RequestNo')}" class="weekday" name="RsDay" value="화"/>
						  <label for="weekday-tue${request.get('RequestNo')}">화</label>
						  <input type="checkbox" id="weekday-wed${request.get('RequestNo')}" class="weekday" name="RsDay" value="수"/>
						  <label for="weekday-wed${request.get('RequestNo')}">수</label>
						  <input type="checkbox" id="weekday-thu${request.get('RequestNo')}" class="weekday" name="RsDay" value="목"/>
						  <label for="weekday-thu${request.get('RequestNo')}">목</label>
						  <input type="checkbox" id="weekday-fri${request.get('RequestNo')}" class="weekday" name="RsDay" value="금"/>
						  <label for="weekday-fri${request.get('RequestNo')}">금</label>
						  <input type="checkbox" id="weekday-sat${request.get('RequestNo')}" class="weekday" name="RsDay" value="토"/>
						  <label for="weekday-sat${request.get('RequestNo')}">토</label>
						  <input type="checkbox" id="weekday-sun${request.get('RequestNo')}" class="weekday" name="RsDay" value="일"/>
						  <label for="weekday-sun${request.get('RequestNo')}">일</label>
						</div>
						
						
						
						 
						<label for="address1"class="col-form-label lableweight">*만나고 싶은 희망 장소</label> 
						<input type="hidden" id="sample6_postcode-1${request.get('RequestNo')}" class="span2 m-wrap"placeholder="우편번호"> 
						<input type="button" onclick="sample6_execDaumPostcode1${request.get('RequestNo')}()"class="btn btn-outline-warning btn-sm" value="주소 찾기"><br>
						<input type="text" name="rsAdd1" id="requestAdd1-1${request.get('RequestNo')}" class="span3_m-wrap" placeholder="주소"><br> 
						<input type="text" name="rsAdd2" id="requestAdd2-1${request.get('RequestNo')}" class="span2_m-wrap"placeholder="상세주소"><br> 
						<input type="text" name="rsAdd3" id="requestAdd3-1${request.get('RequestNo')}" class="span2_m-wrap" placeholder="상세주소2">
					</div>

					<div id="forth${request.get('RequestNo')}" style="display: none">
						<label for="price" class="col-form-label lableweight">*가격</label>
						<input type="text" class="form-control" name="RsPrice" id="price${request.get('RequestNo')}" /> <!-- <label
							for="startday" class="col-form-label lableweight">*시작일
							(정식기간)</label> --> 
						<!-- <label for="endday" class="col-form-label lableweight">*종료일</label> -->
						 <br><label for="content"
							class="col-form-label lableweight">사용자분들에게 등록하신 서비스에 대해서
							알려주세요!
						</label> <br>
						<span style="color: red; margin-left:240px;" id="counter${request.get('RequestNo')}">(0 / 최대 1000자)</span>
						<br>
						<textarea name="RsContent" id="content${request.get('RequestNo')}" cols="43" rows="5"></textarea>
						

					</div>
					<br>
				</div>



				<div class="modal-footer">

					<button type="button" class="btn btn btn-outline-info"
						style="display: none" id="back1${request.get('RequestNo')}">
						<span class="ion-ios-arrow-back"></span>
					</button>
					<button type="button" class="btn btn btn-outline-info"
						style="display: none" id="back2${request.get('RequestNo')}">
						<span class="ion-ios-arrow-back"></span>
					</button>
					<button type="button" class="btn btn btn-outline-info"
						style="display: none" id="back3${request.get('RequestNo')}">
						<span class="ion-ios-arrow-back"></span>
					</button>
					<button type="button" class="btn btn btn-outline-info"
						style="display: none" id="back4${request.get('RequestNo')}">
						<span class="ion-ios-arrow-back"></span>
					</button>
					<button type="button" class="btn btn-outline-warning"
						style="display: none" id="next1${request.get('RequestNo')}">다음</button>
					<button type="button" class="btn btn-outline-warning"
						style="display: none" id="next2${request.get('RequestNo')}">다음</button>
					<button type="button" class="btn btn-outline-warning"
						style="display: none" id="next3${request.get('RequestNo')}">다음</button>
					&nbsp;

					<button type="button" id="reg${request.get('RequestNo')}" class="btn btn-outline-success"
						style="display: none">등록</button>
					&nbsp;
					<button type="button" id="close${request.get('RequestNo')}" class="btn btn-outline-danger"
						style="display: none" data-dismiss="modal">cancel</button>

				</div>
			</form>
		</div>
	</div>
</div>
<!-- modal end -->

<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>

<script type="text/javascript">
	$(function() {

		$("#registerModal"+${request.get('RequestNo')} ).click(function() {						
			
			$("#expertregister"+${request.get('RequestNo')}).modal("show");
			$('#next1'+${request.get('RequestNo')}).css("display", "block");
			$('#first'+${request.get('RequestNo')}).css("display", "block");
			$('#second'+${request.get('RequestNo')}).css("display", "none");
			$('#third'+${request.get('RequestNo')}).css("display", "none");
			$('#forth'+${request.get('RequestNo')}).css("display", "none");
			$('#reg'+${request.get('RequestNo')}).css("display", "none");
			$('#close'+${request.get('RequestNo')}).css("display", "block");

		});
		
		$('#next1'+${request.get('RequestNo')}).on('click', function(event) {

			if($('#attach'+${request.get('RequestNo')}).val().length == 0){
				alert('이미지는 필수첨부 사항입니다.');
				$('#attach'+${request.get('RequestNo')}).focus();
				return;
			}
			
			if ($('#lesson-title'+${request.get('RequestNo')}).val().length == 0 ) {
				alert('서비스명은 필수입력 사항입니다.');
				$('#lesson-title'+${request.get('RequestNo')}).focus();
				return;
			}
		});

		$('#next1'+${request.get('RequestNo')}).on('click', function(event) {
		
			if (($('#lesson-title'+${request.get('RequestNo')}).val().length != 0) && 
					$('#attach'+${request.get('RequestNo')}).val().length != 0) {
				
				$('.progress-bar').width(40 + '%');
				$('#back1'+${request.get('RequestNo')}).css("display", "block");
				$('#back2'+${request.get('RequestNo')}).css("display", "none");
				$('#back3'+${request.get('RequestNo')}).css("display", "none");
				$('#back4'+${request.get('RequestNo')}).css("display", "none");

				$('#next1'+${request.get('RequestNo')}).css("display", "none");
				$('#next2'+${request.get('RequestNo')}).css("display", "block");
				$('#next3'+${request.get('RequestNo')}).css("display", "none");
				$('#next4'+${request.get('RequestNo')}).css("display", "none");

				$('#first'+${request.get('RequestNo')}).css("display", "none");
				$('#second'+${request.get('RequestNo')}).css("display", "block");
				$('#third'+${request.get('RequestNo')}).css("display", "none");
				$('#forth'+${request.get('RequestNo')}).css("display", "none");
				$('#reg'+${request.get('RequestNo')}).css("display", "none");
				$('#close'+${request.get('RequestNo')}).css("display", "none");
			}
		
		});

		$('#back1'+${request.get('RequestNo')}).on('click', function(event) {
			$('.progress-bar').width(0 + '%');
			$('#back1'+${request.get('RequestNo')}).css("display", "none");
			$('#back2'+${request.get('RequestNo')}).css("display", "none");
			$('#back3'+${request.get('RequestNo')}).css("display", "none");
			$('#back4'+${request.get('RequestNo')}).css("display", "none");

			$('#next1'+${request.get('RequestNo')}).css("display", "block");
			$('#next2'+${request.get('RequestNo')}).css("display", "none");
			$('#next3'+${request.get('RequestNo')}).css("display", "none");
			$('#next4'+${request.get('RequestNo')}).css("display", "none");

			$('#first'+${request.get('RequestNo')}).css("display", "block");
			$('#second'+${request.get('RequestNo')}).css("display", "none");
			$('#third'+${request.get('RequestNo')}).css("display", "none");
			$('#reg'+${request.get('RequestNo')}).css("display", "none");
			$('#close'+${request.get('RequestNo')}).css("display", "none");
		});

		$('#next2'+${request.get('RequestNo')}).on('click', function(event) {
			$('.progress-bar').width(70 + '%')
			$('#back1'+${request.get('RequestNo')}).css("display", "none");
			$('#back2'+${request.get('RequestNo')}).css("display", "block");
			$('#back3'+${request.get('RequestNo')}).css("display", "none");
			$('#back4'+${request.get('RequestNo')}).css("display", "none");

			$('#next1'+${request.get('RequestNo')}).css("display", "none");
			$('#next2'+${request.get('RequestNo')}).css("display", "none");
			$('#next3'+${request.get('RequestNo')}).css("display", "block");
			$('#next4'+${request.get('RequestNo')}).css("display", "none");

			$('#first'+${request.get('RequestNo')}).css("display", "none");
			$('#second'+${request.get('RequestNo')}).css("display", "none");
			$('#third'+${request.get('RequestNo')}).css("display", "block");
			$('#forth'+${request.get('RequestNo')}).css("display", "none");

			$('#reg'+${request.get('RequestNo')}).css("display", "none");
			$('#close'+${request.get('RequestNo')}).css("display", "none");
		});

		$('#back2'+${request.get('RequestNo')}).on('click', function(event) {
			$('.progress-bar').width(40 + '%');
			$('#back1'+${request.get('RequestNo')}).css("display", "block");
			$('#back2'+${request.get('RequestNo')}).css("display", "none");
			$('#back3'+${request.get('RequestNo')}).css("display", "none");
			$('#back4'+${request.get('RequestNo')}).css("display", "none");

			$('#next1'+${request.get('RequestNo')}).css("display", "none");
			$('#next2'+${request.get('RequestNo')}).css("display", "block");
			$('#next3'+${request.get('RequestNo')}).css("display", "none");
			$('#next4'+${request.get('RequestNo')}).css("display", "none");

			$('#first'+${request.get('RequestNo')}).css("display", "none");
			$('#second'+${request.get('RequestNo')}).css("display", "block");
			$('#third'+${request.get('RequestNo')}).css("display", "none");
			$('#reg'+${request.get('RequestNo')}).css("display", "none");
			$('#close'+${request.get('RequestNo')}).css("display", "none");
		});

		$('#next3'+${request.get('RequestNo')}).on('click', function(event) {
			$('.progress-bar').width(100 + '%');
			$('#back1'+${request.get('RequestNo')}).css("display", "none");
			$('#back2'+${request.get('RequestNo')}).css("display", "none");
			$('#back3'+${request.get('RequestNo')}).css("display", "block");
			$('#back4'+${request.get('RequestNo')}).css("display", "none");

			$('#next1'+${request.get('RequestNo')}).css("display", "none");
			$('#next2'+${request.get('RequestNo')}).css("display", "none");
			$('#next3'+${request.get('RequestNo')}).css("display", "none");
			$('#next4'+${request.get('RequestNo')}).css("display", "block");

			$('#first'+${request.get('RequestNo')}).css("display", "none");
			$('#second'+${request.get('RequestNo')}).css("display", "none");
			$('#third'+${request.get('RequestNo')}).css("display", "none");
			$('#forth'+${request.get('RequestNo')}).css("display", "block");

			$('#reg'+${request.get('RequestNo')}).css("display", "block");
			$('#close'+${request.get('RequestNo')}).css("display", "block");
		});

		$('#back3'+${request.get('RequestNo')}).on('click', function(event) {
			$('.progress-bar').width(70 + '%');
			$('#back1'+${request.get('RequestNo')}).css("display", "none");
			$('#back2'+${request.get('RequestNo')}).css("display", "block");
			$('#back3'+${request.get('RequestNo')}).css("display", "none");
			$('#back4'+${request.get('RequestNo')}).css("display", "none");

			$('#next1'+${request.get('RequestNo')}).css("display", "none");
			$('#next2'+${request.get('RequestNo')}).css("display", "none");
			$('#next3'+${request.get('RequestNo')}).css("display", "block");
			$('#next4'+${request.get('RequestNo')}).css("display", "none");

			$('#first'+${request.get('RequestNo')}).css("display", "none");
			$('#second'+${request.get('RequestNo')}).css("display", "none");
			$('#third'+${request.get('RequestNo')}).css("display", "block");
			$('#forth'+${request.get('RequestNo')}).css("display", "none");
			$('#reg'+${request.get('RequestNo')}).css("display", "none");
			$('#close'+${request.get('RequestNo')}).css("display", "none");

		});

		$("#close"+${request.get('RequestNo')}).click(function() {
			$("#register"+${request.get('RequestNo')}).modal("hide");
			$("#first"+${request.get('RequestNo')}).modal("hide");
			$("#second"+${request.get('RequestNo')}).modal("hide");
			$("#third"+${request.get('RequestNo')}).modal("hide");
			$("#forth"+${request.get('RequestNo')}).modal("hide");
		});
	
		$('#reg'+${request.get('RequestNo')}).on('click', function(){
			var price = $('#price'+${request.get('RequestNo')}).val();
			var start = $('#start'+${request.get('RequestNo')}).val();
			var content = $('#content'+${request.get('RequestNo')}).val();
			
			if(price.length == 0){
				alert('가격은 필수입력 사항입니다.');
				price.focus();
				return;
			}
			
			
			if(content.length == 0){
				alert('소개글은 필수입력 사항입니다.');
				content.focus();
				return;
			}
			
			$('#expertregisters'+${request.get('RequestNo')}).submit();
		});
		
		$('#content'+${request.get('RequestNo')}).keyup(function (e){
			
		    var content = $(this).val();
		    $('#counter'+${request.get('RequestNo')}).html("("+content.length+" / 최대 1000자)"); 




		    if (content.length > 1000){
		        alert("최대 1000자까지 입력 가능합니다.");
		        $(this).val(content.substring(0, 200));
		        $('#counter').html("(1000 / 최대 1000자)");
		    }
		});
		
		
		
		$('#lesson-title'+${request.get('RequestNo')}).keyup(function (e){
		    var content = $(this).val();
		   /*  $('#counter').html("("+content.length+" / 최대 1000자)");  */


		    if (content.length > 10){
		        alert("최대 10자까지 입력 가능합니다.");
		        $(this).val(content.substring(0, 1));
		       /*  $('#counter').html("(1000 / 최대 1000자)"); */
		    }
		});

	});

	function sample6_execDaumPostcode1${request.get('RequestNo')}() {
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
							/* if (extraAddr !== '') {
								extraAddr = ' (' + extraAddr + ')';
							} */
							// 조합된 참고항목을 해당 필드에 넣는다.
							document.getElementById("requestAdd3-1"+${request.get('RequestNo')}).value = extraAddr;

						} else {
							document.getElementById("requestAdd3-1"+${request.get('RequestNo')}).value = '';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample6_postcode-1'+${request.get('RequestNo')}).value = data.zonecode;
						document.getElementById("requestAdd1-1"+${request.get('RequestNo')}).value = addr;
						// 커서를 상세주소 필드로 이동한다.
						document.getElementById("requestAdd2-1"+${request.get('RequestNo')}).focus();
					}
				}).open();
	}

</script>
 </c:if> 
    
    
    
    
    
    
    
    
    
    
    
           
    </c:forEach>
    </tbody>
 
    </c:if>
    
    <c:if test="${not empty user }">
    	
                       <thead>
                   
                   	<th></th>
                   	<th>분야</th>
                   	<th>내용</th>
                    <th>주소</th>
                    <th>기간</th>
                    <th>요일</th>
                    <th>신청일</th>                                                               
                    <th>확인</th>
                    <th>승인</th>
                   </thead>
    <tbody>
    <c:forEach var="request" items="${requests}">
    <tr data-toggle="modal" data-target="#exampleModal${request.requestNo}">
    <td></td>
    <td>${request.requestField1}/${request.requestField2}</td>
    <td>${request.requestContent }</td>
    <td>${request.requestAdd1}/${request.requestAdd2}/${request.requestAdd3}</td>
    <td>${request.requestTerm}</td>
    <td>${request.requestDay}</td>
    <td><fmt:formatDate value='${request.requestRegDate}' pattern="MM/dd" /></td>
    <td>${request.confirmYCount}/${request.confirmCount}</td>
    <td>${request.heros.size() }</td>      
    </tr>
    
        
        <div class="modal" id="exampleModal${request.requestNo}">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
        <div class="modal-body">
        	<div class="row">
        	<div class="col-md-12">
       	   <div id="member-account">
            <div class="title-box-d">
             <h4 class="title-d">전문가 정보</h4>                    
            </div>
            <c:if test="${not empty request.heros }">
            <c:forEach var="hero" items="${request.heros }">
            <div class="row">
	       			<div class="col-sm" style="text-align:center">이름:${hero.heroName}</div>	       				
	       					<div class="col-sm" style="text-align:center">전화번호:${hero.heroPhone }</div>
	       			<div class="col-sm" style="text-align:center">주소:${hero.heroAdd3 }</div>
	       			<div  class="col-sm" style="text-align:center">메시지:<a href='/findhero/chat/insert.action?userNo=${user.userNo}&heroNo=${hero.heroNo}'><strong class="fa fa-comments-o btn" style=""></strong></a></div>
	       			<br>	       			
	       	</div>
       		</c:forEach>   
       		</c:if>
       		
       		<c:if test="${empty request.heros }">
       		전문가 정보가 없습니다.
       		</c:if>
      </div>
   </div>
   </div>
    </div>
  </div>
</div>
</div>
    
    
    </c:forEach>
    </tbody>
    
    
    
    
    </c:if>



</table>

<div class="clearfix"></div>
          <nav class="pagination-a">
            <ul class="pagination justify-content-end">
           	${pager }
            </ul>
          </nav>

                
            </div>
            
        </div>
	</div>
</div>
    

  </section>
  <!--/ Contact End /-->

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
  
  <!-- --------------------------------- -->

	
	<script type="text/javascript">

		$(function(){	    
			
			$(".confirm").on('click',function(event){
    			
    			var confirmNo=$(this).attr('data-confirmNo');    			 														
				var consent = $(this).attr('data-confirm');
    			
    			$.ajax({
    				"url" : "consent.action",
    				"method" : "POST",
    				"data":{    						    					
    						"confrimNo":confirmNo,
    						"consent":consent    						
    					},    				
    				"success":function(data,status,xhr){
    					/* $('.consent_tr').load("consentlist.action",{"heroNo":${hero.heroNo},"pageNo":${pageNo}}); */
    					alert(data);
    					if(data == "승인"){    						
    						$("#n"+confirmNo).remove();
    					}else if(data == "거절"){
    						$("#y"+confirmNo).remove();
    					}
    				},
    				"error":function(xhr,status,err){
    					alert("실패");
    				}
    			});	
    		})    		
	});

	</script>
</body>
</html>
