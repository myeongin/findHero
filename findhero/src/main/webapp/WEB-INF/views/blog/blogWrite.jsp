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
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

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
  <style>
  .filebox label {
  display: inline-block;
  padding: .5em .75em;
  color: #fff;
  font-size: inherit;
  line-height: normal;
  vertical-align: middle;
  background-color: #5cb85c;
  cursor: pointer;
  border: 1px solid #4cae4c;
  border-radius: .25em;
  -webkit-transition: background-color 0.2s;
  transition: background-color 0.2s;
}

.filebox label:hover {
  background-color: #6ed36e;
}

.filebox label:active {
  background-color: #367c36;
}

.filebox input[type="file"] {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
}
 </style>
 
 
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
            <h1 class="title-single">히어로 셀프인터뷰 작성하기</h1>
            <span class="color-text-a">숨히와 함께한 히어로들의 이야기를 담은 공간. 히어로의 답변 내용과 본인의 사진을 작성해주세요.</span>
          </div>
        </div>
       </div>
    </div>
  </section>
  <!--/ Intro Single End /-->

  <!--/ Contact Star /-->
  <section class="contact">
    <div class="container">
      <div class="row">
        
        <div class="col-sm-12 section-t7">
          <div class="row">
            <div class="col-md-7">
              <form action="/findhero/blog/writePage.action" method="post" enctype="multipart/form-data">

              	<input type="hidden" value="${hero.heroNo}" name="heroNo" />
                <div id="sendmessage">인터뷰 작성을 완료했습니다.</div>
                <div id="errormessage">인터뷰 작성을 실패하였습니다.</div>
                

                  <div class="col-md-12 mb-3">

                <div class="col-md-12 mb-3">
					<p class="post-intro">
						<strong>히어로님의 직업은 무엇인가요? [ex 프리랜서 비주얼 디렉터]</strong> 
					</p>
                 </div>

                  <div class="col-md-6 mb-3">
                    <div class="form-group">
                      <input type="text" name="blogName" class="form-control form-control-lg form-control-a" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars">
                      <div class="validation"></div>
                    </div>
                  </div>

                  <div class="col-md-12 mb-3">
					<p class="post-intro">
						<br>
						<strong>히어로님의 멋진 사진을 첨부해주세요.</strong> 
						
					</p>
                  </div>
<!-- ----------------------------------------------------------------------- -->				  
				 
<!-- 					<input id="fileInput1" type="file" name="attach" data-class-button="btn btn-default" data-class-input="form-control" data-button-text="" data-icon-name="fa fa-upload" class="form-control" tabindex="-1" style="position: absolute; clip: rect(0px 0px 0px 0px);">
					<div class="bootstrap-filestyle input-group">
						<input type="text" id="userfile1" class="form-control" name="userfile" disabled="">
						<span class="group-span-filestyle input-group-btn" tabindex="0">
						<label for="fileInput1" class="btn btn-default ">
						<span class="glyphicon fa fa-upload"></span>
						</label>
						</span>
					</div> -->
				  
<!-- ----------------------------------------------------------------------- -->

				  <input type="file" name="attach1" id="imgFile">
				  
				  
				  
<!-- <button type="button" class="btn btn-primary btn-lg btn-block"><input >히어로님의 멋진 사진을 첨부해주세요.</button></input> -->
<!-- 				  <div class="col-md-12 mb-5">
                    <button type="submit" class="btn btn-a">프로필 사진 첨부</button>
                  </div>  -->
				  
                  <div class="col-md-12 mb-3">
					<p class="post-intro">
					<br><br>
						<strong>Q1.안녕하세요. 자기소개 부탁드립니다.</strong> 
					</p>
                  </div>
                  <div class="col-md-12 mb-3">
                    <div class="form-group">
                      <textarea class="form-control" name="blogAnswer1" cols="45" rows="8" data-rule="required" data-msg="인터뷰 내용에 대해 성실하게 답변해주세요." placeholder="히어로 답변"></textarea>
                      <div class="validation"></div>
                    </div>
                  </div>				  

                  <div class="col-md-12 mb-3">
					<p class="post-intro">
						<strong>Q2.지금 하고 계신 일은 어떤 계기로 관심을 가지게 되었고, 왜 이 일을 시작하게 되셨나요?</strong> 
					</p>
                  </div>
                  <div class="col-md-12 mb-3">
                    <div class="form-group">
                      <textarea class="form-control" name="blogAnswer2" cols="45" rows="8" data-rule="required" data-msg="인터뷰 내용에 대해 성실하게 답변해주세요." placeholder="히어로 답변"></textarea>
                      <div class="validation"></div>
                    </div>
                  </div>
				  
				  <div class="col-md-12 mb-3">
					<p class="post-intro">
						<br><br>
						<strong>레슨 수강생들과 함께한 소중한 시간을 첨부해주세요.</strong> 
					</p>
                  </div>
                  <input type="file" name="attach2">
				  
				  <!-- ----------------------------------------------------------------------- -->				  
				  
<!-- 					<input id="fileInput2" type="file" data-class-button="btn btn-default" data-class-input="form-control" data-button-text="" data-icon-name="fa fa-upload" class="form-control" tabindex="-1" style="position: absolute; clip: rect(0px 0px 0px 0px);">
					<div class="bootstrap-filestyle input-group">
						<input type="text" id="userfile2" class="form-control" name="userfile" disabled="">
						<span class="group-span-filestyle input-group-btn" tabindex="0">
						<label for="fileInput2" class="btn btn-default ">
						<span class="glyphicon fa fa-upload"></span>
						</label>
						</span>
					</div> -->
				  
<!-- ----------------------------------------------------------------------- -->
				  
                  <div class="col-md-12 mb-3">
					<p class="post-intro">
						<strong>Q3.레슨 수강생들이 잘 이해할 수 있도록 진심 어리게 강의하시는 게 느껴져요. 어떤 마음으로 레슨을 하시나요?.</strong> 
					</p>
                  </div>
                  <div class="col-md-12 mb-3">
                    <div class="form-group">
                      <textarea class="form-control" name="blogAnswer3" cols="45" rows="8" data-rule="required" data-msg="인터뷰 내용에 대해 성실하게 답변해주세요." placeholder="히어로 답변"></textarea>
                      <div class="validation"></div>
                    </div>
                  </div>
				  
                  <div class="col-md-12 mb-3">
					<p class="post-intro">
						<strong>Q4.레슨을 하시면서 가장 기억에 남는 학생은 누구인가요?</strong> 
					</p>
                  </div>
                  <div class="col-md-12 mb-3">
                    <div class="form-group">
                      <textarea class="form-control" name="blogAnswer4" cols="45" rows="8" data-rule="required" data-msg="인터뷰 내용에 대해 성실하게 답변해주세요." placeholder="히어로 답변"></textarea>
                      <div class="validation"></div>
                    </div>
                  </div>
				  
                  <div class="col-md-12 mb-3">
					<p class="post-intro">
						<strong>Q5.마지막으로 개인적인 꿈이나 목표가 있으시다면 말씀해주세요.</strong> 
					</p>
                  </div>
                  <div class="col-md-12 mb-3">
                    <div class="form-group">
                      <textarea class="form-control" name="blogAnswer5" cols="45" rows="8" data-rule="required" data-msg="인터뷰 내용에 대해 성실하게 답변해주세요." placeholder="히어로 답변"></textarea>
                      <div class="validation"></div>
                    </div>
                  </div>
				  
				  <div class="col-md-12 mb-3">
					<p class="post-intro">
					<br><br>
						<strong>레슨 수강생들과 함께한 소중한 시간을 첨부해주세요.</strong> 
						<input type="file" name="attach3">
					</p>
                  </div>				  
<!-- ----------------------------------------------------------------------- -->				  
				  
<!-- 					<input id="fileInput3" filestyle="" type="file" data-class-button="btn btn-default" data-class-input="form-control" data-button-text="" data-icon-name="fa fa-upload" class="form-control" tabindex="-1" style="position: absolute; clip: rect(0px 0px 0px 0px);">
					<div class="bootstrap-filestyle input-group">
						<input type="text" id="userfile3" class="form-control" name="userfile" disabled="">
						<span class="group-span-filestyle input-group-btn" tabindex="0">
						<label for="fileInput3" class="btn btn-default ">
						<span class="glyphicon fa fa-upload"></span>
						</label>
						</span>
					</div> -->
				 
<!-- ----------------------------------------------------------------------- -->
				  
				  <div class="col-md-12 mb-5">
                    <button type="submit" class="btn btn-a">작성완료</button>
                  </div>
                </div>
              </form>
            </div>
           
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--/ Contact End /-->



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


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script type="text/javascript">

    $(function () {

  //파일 확인 작업 
  $("#imgFile").change(function(){
	  if($(this).val() !==""){
		  //확장자 체크 작업
			var ext = $(this).val().split(".").pop().toLowerCase();
			if($.inArray(ext, ["gif","jpg",,"png"]) == -1){
				alert("gif , jpg, png 파일만 업로드 해주세요!!");
				$(this).val("");
				return
			}
			
/* 		    var fileSize = this.files[0].size;
		    var maxSize = 1024 * 1024;
		    if(fileSize > maxSize) {
		        alert("파일용량을 초과하였습니다.");
		        return;
		    } */
		    
/*  		    var file  = this.files[0];
		    var img = new Image();
		    img.onload = function() {
		        
		        if(img.width != 600 || img.height != 600) {
		            alert("사진이 너무 작아요 ㅠㅠ 이미지 가로 600px, 세로 600px로 이상으로 올려주세요.");
		            $(this).val("");
		        }   */
	  }
    
    
  
  });
  });
  </script>
  
  



<!-- ----------------------------------------------------------------------- -->
<!-- <script type="text/javascript">

$(document).ready(function(){

	$("#fileInput1").on('change', function(){  // 값이 변경되면

		if(window.FileReader){  // modern browser

			var filename = $(this)[0].files[0].name;

		} else {  // old IE

			var filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출

		}



		// 추출한 파일명 삽입

		$("#userfile1").val(filename);

	});

});
/* 
$(document).ready(function(){

	$("#fileInput2").on('change', function(){  // 값이 변경되면

		if(window.FileReader){  // modern browser

			var filename = $(this)[0].files[0].name;

		} else {  // old IE

			var filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출

		}



		// 추출한 파일명 삽입

		$("#userfile2").val(filename);

	});

});


$(document).ready(function(){

	$("#fileInput3").on('change', function(){  // 값이 변경되면

		if(window.FileReader){  // modern browser

			var filename = $(this)[0].files[0].name;

		} else {  // old IE

			var filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출

		}



		// 추출한 파일명 삽입

		$("#userfile3").val(filename);

	});

}); */
</script> -->
<!-- ----------------------------------------------------------------------- -->





</body>
</html>
