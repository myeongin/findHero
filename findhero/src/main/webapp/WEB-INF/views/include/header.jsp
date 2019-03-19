  <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  
  <div class="click-closed"></div>
  <!--/ Form Search Star /-->
  <div class="box-collapse">
    <div class="title-box-d">
      <h3 class="title-d">Login</h3>
    </div>
    <span class="close-box-collapse right-boxed ion-ios-close"></span>
    <div class="box-collapse-wrap form"> 
      <form action="/findhero/account/login.action" method="post">
        <div class="row">
          <div class="col-md-12 mb-2">
            <div class="form-group">
              <label for="Type">Email</label>
              <input type="text" class="form-control form-control-lg form-control-a" placeholder="Email" name="userEmail">
            </div>
          </div>
          <div class="col-md-12 mb-2">
            <div class="form-group">
              <label for="Type">PassWord</label>
              <input type="password" class="form-control form-control-lg form-control-a" placeholder="password" name="userPswd">
            </div>
          </div>
          <div class="col-md-12">
            <button type="submit" class="btn btn-b">Login</button>
          </div>
        </div>
      </form>
    </div>
  </div>
  <!--/ Form Search End /-->

  <!--/ Nav Star /-->
  <nav class="navbar navbar-default navbar-trans navbar-expand-lg fixed-top">
    <div class="container">
      <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarDefault"
        aria-controls="navbarDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span></span>
        <span></span>
        <span></span>
      </button>
      <a class="navbar-brand text-brand" href="/findhero/home.action">fiNd<span class="color-b">hErO</span></a>
      <button type="button" class="btn btn-link nav-search navbar-toggle-box-collapse d-md-none" data-toggle="collapse"
        data-target="#navbarTogglerDemo01" aria-expanded="false">
        <span class="fa fa-user" aria-hidden="true"></span>
      </button>
      <div class="navbar-collapse collapse justify-content-center" id="navbarDefault">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="/findhero/hero/findhero.action">전문가찾기</a>
          </li>
               <li class="nav-item">
            <a class="nav-link" href="property-grid.html"></a>            
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/findhero/blog/blog.action">전문가 인터뷰</a>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="property-grid.html"></a>
          </li>
          
           <c:choose>
		  	<c:when test="${not empty user or not empty hero }">
		  		 <li class="nav-item">
            		<a class="nav-link" href="/findhero/account/accountInfo.action">계정정보</a>
         		 </li>
		  	</c:when>
		  	<c:otherwise>
		  		<li class="nav-item">
            		<a class="nav-link" href="blog-grid.html" data-toggle="modal" id="heroModal">전문가로회원가입</a>
         		 </li>
		  	</c:otherwise>
          </c:choose>
          
           <li class="nav-item">
            <a class="nav-link" href="property-grid.html"></a>            
          </li>
		
		  <c:choose>
		  	<c:when test="${not empty user or not empty hero }">
		  		 <li class="nav-item">
		  		 	<c:if test="${ not empty user}">
            			<a class="nav-link" href="/findhero/account/serviceList.action?userNo=${user.userNo}">서비스</a>
            		</c:if> 
            		<c:if test="${not empty hero }">
            			<a class="nav-link" href="/findhero/account/serviceList.action?heroNo=${hero.heroNo}">서비스</a>
            		</c:if>          
          		</li>
		  	</c:when>
		  	<c:otherwise>
		  		<li class="nav-item">
            		<a class="nav-link" href="" data-toggle="modal" id="userModal">회원가입</a>           
          		</li>
		  	</c:otherwise>
          
          </c:choose>
          
             <li class="nav-item">
            <a class="nav-link" href="property-grid.html"></a>            
          </li>
          
		  	<c:if test="${not empty user or not empty hero }">
		  		 <li class="nav-item">
		  		 <c:if test="${not empty user }">
            		<a class="nav-link" href="/findhero/chat/chats.action?userNo=${user.userNo }">채팅</a>
            	</c:if>
            	<c:if test="${not empty hero }">
            		<a class="nav-link" href="/findhero/chat/chats.action?heroNo=${hero.heroNo }">채팅</a>
            	</c:if>           
          		</li>
		  	</c:if>
                    
        </ul>
      </div>
     
        <c:choose>
        	<c:when test="${not empty user or not empty hero}">
        			<button type="button" class="btn btn-b-n d-none d-md-block" aria-expanded="false" onclick="location='/findhero/account/logout.action'">        	
        			<span class="fa fa-sign-out" aria-hidden="true">&nbsp;로그아웃</span>
        		</button>
        	</c:when>        	      	
        	<c:otherwise>
        		 <button type="button" class="btn btn-b-n navbar-toggle-box-collapse d-none d-md-block" data-toggle="collapse"
        			data-target="#navbarTogglerDemo01" aria-expanded="false">        	
        			<span class="fa fa-sign-in" aria-hidden="true">&nbsp;로그인</span>
        		</button>
        	</c:otherwise>
        </c:choose>
        
      
    </div>
  </nav>
  <!--/ Nav End /-->

<!-- Modal list-->
<!-- The Modal -->
<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal body -->
      <div class="modal-body">
		
		<!-- 회원가입유형 선택 -->
      <!--   <div id="select-account" >
          <div class="title-box-d">
           <h4 class="title-d">Sign up</h4>       
          </div>
          <a href="#" class="btn btn-success btn-block" data-toggle="tooltip" data-placement="top" title="서비스를 제공하는 제공자" id="select-hero">전문가로 가입하기</a>
          <a href="#" class="btn btn-success btn-block" data-toggle="tooltip" data-placement="bottom" title="서비스 이용자" id="select-member">가입하고 서비스 요청하기</a>
        </div> -->
		
		<!-- 일반화워가입 -->
        <div id="member-account" style="display: none" >
            <div class="title-box-d">
             <h4 class="title-d">일반 회원가입</h4>       
            </div>            
            <form action="/findhero/account/memberRegister.action" method="post" id="member-register-form">
              <div>
                <label for="member-name" class="col-form-label">이름</label>
                <input type="text" class="form-control" id="member-name" name="userName">
              </div>
              <div>
                  <label for="member-email" class="col-form-label">이메일</label>
                  <input type="text" class="form-control" id="member-email" name="userEmail">
              </div>
              <div>
                  <label for="member-pswd" class="col-form-label">비밀번호</label>
                  <input type="password" class="form-control" id="member-pswd" name="userPswd">
              </div>
              <div>
                  <label for="member-phone" class="col-form-label">전화번호</label>
                  <input type="text" class="form-control" id="member-phone" name="userPhone">
              </div>
            </form>            
        </div>
        
        <!-- 전문가 회원가입 -->
     <form action="/findhero/account/heroRegister.action" method="post" class="register-form" id="hero-register-form">
        
        <!-- 분야선택 -->
        <div id="hero-account" style="display: none" >
        	<div class="title-box-d">
             	<h4 class="title-d">서비스 분야 선택</h4>       
            </div>
            <div class="row">
        		<div class="col-md-4">  
            		<div class="card-header-d d-flex">
              			<div id="lesson" class="card-box-ico btn btn-outline-success btn-block haccount" style="padding: 0.8rem 2.0rem 0.8rem 2.0rem;" data-toggle="tooltip" data-placement="top" title="레슨">              
                			<span class="fa fa-book"></span>                		
                			<input type="radio" style="display: none" value="레슨" name="heroField" id="rlesson">
              			</div>   
              		</div>            
              	</div>                           	
              	<div class="col-md-4">        
            		<div class="card-header-d d-flex">
              			<div id="bus" class="card-box-ico btn btn-outline-success btn-block haccount" style="padding: 0.8rem 2.0rem 0.8rem 2.0rem;" data-toggle="tooltip" data-placement="top" title="비즈니스">
                			<span class="fa fa-briefcase"></span>   
                			<input type="radio" style="display: none" value="비즈니스" name="heroField" id="rbus">
              			</div>        
              		</div>            
              	</div>              	              	                            
              	<div class="col-md-4">        
            		<div class="card-header-d d-flex">
              			<div id="com" class="card-box-ico btn btn-outline-success btn-block haccount" style="padding: 0.8rem 2.0rem 0.8rem 2.0rem;" data-toggle="tooltip" data-placement="top" title="디자인/개발">              	
                			<span class="fa fa-desktop"></span>                	
                			<input type="radio" style="display: none" value="디자인/개발" name="heroField" id="rcom">
              			</div>    
              		</div>            
              	</div>
            </div>          
        </div>
        
        <!-- 세부정보 -->
        <div id="hero-account2" style="display: none" >
            <div class="title-box-d">
             <h4 class="title-d">전문가 회원가입</h4>       
            </div>
            
              <div>
                <label for="hero-name" class="col-form-label">이름</label>
                <input type="text" class="form-control" id="hero-name" name="heroName">
              </div>              
              <div>
                <label for="hero-field" class="col-form-label">전문분야</label>
                <!-- <input type="text" class="form-control" id="hero-field" name="heroField2"> -->
                <select id="le" class="form-control" style="display: none" name="heroField2">
                	<option value="보컬트레이닝">보컬트레이닝</option>
                	<option value="축구트레이닝">축구트레이닝</option>
                	<option value="기타레슨">기타레슨</option>
                </select>
                <select id="bu" class="form-control" style="display: none" name="heroField2">
                	<option value="외국어번역">외국어번역</option>
                	<option value="마케팅">마케팅</option>
                	<option value="회계/세무">회계/세무</option>
                </select>
                <select id="co" class="form-control" style="display: none" name="heroField2">
                	<option value="소프트웨어개발">소프트웨어개발</option>
                	<option value="제품디자인">제품디자인</option>
                	<option value="라벨디자인">라벨디자인</option>
                </select>                 
              </div>                        
              <div>
                  <label for="hero-email" class="col-form-label">이메일</label>
                  <input type="text" class="form-control" id="hero-email" name="heroEmail">
              </div>
              <div>
                  <label for="hero-pswd" class="col-form-label">비밀번호</label>
                  <input type="password" class="form-control" id="hero-pswd" name="heroPswd">
              </div>
              <div>
                  <label for="hero-phone" class="col-form-label">전화번호</label>
                  <input type="text" class="form-control" id="hero-phone" name="heroPhone">
              </div>
              <div>              		
                <!--   <label for="hero-add1" class="col-form-label">주소1</label>
                  <input type="text" class="form-control" id="hero-add1" name="heroAdd1">
              </div>
              <div>
                  <label for="hero-add2" class="col-form-label">주소2</label>
                  <input type="text" class="form-control" id="hero-add2" name="heroAdd2">
              </div>
              <div>
                  <label for="hero-add3" class="col-form-label">주소3</label>
                  <input type="text" class="form-control" id="hero-add3" name="heroAdd3"> -->
                  <div class="controls">
						<input type="hidden" id="sample6_postcode" class="span2 m-wrap" placeholder="우편번호">
						<span  onclick="sample6_execDaumPostcode()" class="btn" value="주소 찾기">주소</span>
						<input type="text" name="heroAdd1" id="hero-add1" class="span3 m-wrap form-control" placeholder="주소">
						<input type="text" name="heroAdd2" id=hero-add2 class="span3 m-wrap form-control" placeholder="상세주소">
						<input type="text" name="heroAdd3" id="hero-add3" class="span3 m-wrap form-control" placeholder="상세주소2">
						
						<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
						<script>
						    function sample6_execDaumPostcode() {
						        new daum.Postcode({
						            oncomplete: function(data) {
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
						                if(data.userSelectedType === 'R'){
						                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
						                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
						                        extraAddr += data.bname;
						                    }
						                    // 건물명이 있고, 공동주택일 경우 추가한다.
						                    if(data.buildingName !== '' && data.apartment === 'Y'){
						                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
						                    }
						                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						                    if(extraAddr !== ''){
						                        extraAddr = extraAddr ;
						                    }
						                    // 조합된 참고항목을 해당 필드에 넣는다.
						                    document.getElementById("hero-add3").value = extraAddr;
						                
						                } else {
						                    document.getElementById("hero-add3").value = '';
						                }
						
						                // 우편번호와 주소 정보를 해당 필드에 넣는다.
						                document.getElementById('sample6_postcode').value = data.zonecode;
						                document.getElementById("hero-add1").value = addr;
						                // 커서를 상세주소 필드로 이동한다.
						                document.getElementById("hero-add2").focus();
						            }
						        }).open();
						    }
						</script>
						
					</div>
              </div>                        
        </div> 
                       
	</form>
		
      </div>
      <!-- Modal footer -->
      <div class="modal-footer">
          <button type="button" class="btn btn-s" style="display: none" id="back"><span class="ion-ios-arrow-back"></span></button>
          <button type="button" class="btn btn-s reg" style="display: none" id="register">회원가입</button>
          <button type="button" class="btn btn-s reg" style="display: none" id="register2">회원가입</button>
          <!-- <button type="button" class="btn btn-secondary" data-dismiss="modal"><span class='fa fa-close' aria-hidden="true"></span></button> -->
      </div>

    </div>
  </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  
<script type="text/javascript">
	
    var pwRe = /^[a-zA-Z0-9]{4,20}$/ //비밀번호
    var emailRe = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i; //이메일
    var phoneRe = /^[0-9]{11}$/ //전화번호	        
    
    function check(regular,id,message){
		if(regular.test(id.val())){
			return true;
		}
		alert(message);
		id.val("");
		id.focus();
	}
	
    $(function () {
	
      $('[data-toggle="tooltip"]').tooltip();
      
      //일반회원가입
      $('#userModal').on('click',function(event){
     	 $('#myModal').modal('show');
     	 /* $('#back').css("display","block"); */
         /* $('#select-account').css("display","none"); */
         $('#member-account').css("display","block");
         $('#hero-account').css("display","none");
         $('#hero-account2').css("display","none");
         $('#register').css("display","block");
         $('#register2').css("display","none");
       });
                                         
      //전문가회원가입
      $('#heroModal').on('click',function(event){
    	 $('#myModal').modal('show');
    	 $('#back').css("display","none");
         /* $('#select-account').css("display","none"); */
         $('#member-account').css("display","none");
         $('#hero-account').css("display","block");
         $('#hero-account2').css("display","none");
         $('#register').css("display","none");
         $('#register2').css("display","none");   
      });
      
      //전문가회원가입 - 상세
      $(".haccount").on('click',function(event){  		
     	  $('#back').css("display","block");
        /*  $('#select-account').css("display","none"); */
         $('#member-account').css("display","none");
         $('#hero-account').css("display","none");
         $('#hero-account2').css("display","block");
         $('#register').css("display","none");
         $('#register2').css("display","block");                           
       });     
      	            
      //모달종료시
      $('#myModal').on('hidden.bs.modal',function(event){		
    	$('#back').css("display","none");
       /*  $('#select-account').css("display","block"); */
        $('#member-account').css("display","none");
        $('#hero-account').css("display","none");
        $('#hero-account2').css("display","none");
        $('#register').css("display","none");
        $('#register2').css("display","none");
        $('#myModal input').val('');
      });
      
      //처음으로
      $('#back').on('click',function(event){    	  
    	  $('#back').css("display","none");
    	 /*  $('#select-account').css("display","block"); */
          $('#member-account').css("display","none");
          $('#hero-account').css("display","block");
          $('#hero-account2').css("display","none");
          $('#register2').css("display","none");
          $('#register').css("display","none");    	  
      });
      
      
   /*   $('#register2').on('click',function(event){
    	  $("#hero-register-form").submit();
      }); */
                
    /*   $('#register').on('click',function(event){
    	  
      }); */
      
      
      $('#lesson').on('click',function(evnet){
    	  $('#le').css("display","block");
    	  $('#bu').css("display","none");    	  
    	  $('#co').css("display","none");
    	  $('#le').attr("disabled",false);
    	  $('#bu').attr("disabled",true);    	  
    	  $('#co').attr("disabled",true);
    	 $("#rlesson").attr("checked",true); 
      });
      
      $('#bus').on('click',function(evnet){
    	  $('#le').css("display","none");
	 	  $('#bu').css("display","block");
	  	  $('#co').css("display","none");
	  	 $('#le').attr("disabled",true);
   	  		$('#bu').attr("disabled",false);    	  
   	  		$('#co').attr("disabled",true);
    	 $("#rbus").attr("checked",true); 
      });
      
      $('#com').on('click',function(event){
    	  $('#le').css("display","none");
	 	  $('#bu').css("display","none");
	  	  $('#co').css("display","block");
	  	$('#le').attr("disabled",true);
	  		$('#bu').attr("disabled",true);    	  
	  		$('#co').attr("disabled",false);
    	  $("#rcom").attr("checked",true);
      })
      
      $("#btn-open-dialog,#dialog-background,#btn-close-dialog").click(function () {
  		$("#my-dialog,#dialog-background").toggle();
  	  });
	 
      ////////////////////////////////////////////////////////////////////////////////////////////
      
    
      
       $("#register").on('click',function(event){
    	  
    	var name = $("#member-name");
    	var pswd = $("#member-pswd");
    	var email = $("#member-email");
    	var phone = $("#member-phone");
    	
    	if(name.val() == null){
    		alert("이름을 입력해 주세요");
    		name.focus();
    		return; 
    	}  
    	
    	if(email.val() == null){
    		alert("이메일을 입력해 주세요");
    		email.focus();
    		return;
    	}
    	
    	if(!check(emailRe,email,"적합하지 않은 이메일 형식 입니다.")){
			return;
		}
    	
    	if(pswd.val() == null){
    		alert("비밀번호를 입력해 주세요");
    		pswd.focus();
    		return;
    	}
    	
    	if(!check(pwRe,pswd,"비밀번호는 4~20자의 영문 대소문자와 숫자만 입력할수 있습니다.")){
    		return;
    	}
    	
    	if(phone.val()==null){
    		alert("전화번호를 입력해 주세요");
    		phone.focus();
    		return;
    	}
    	
    	if(!check(phoneRe,phone,"전화번호를 확인해 주세요")){
    		return;
    	}
    	
    	$("#member-register-form").submit();
    	  
      });
      
      
      $("#register2").on('click',function(event){
    	  
    	var name = $("#hero-name");
      	var pswd = $("#hero-pswd");
      	var email = $("#hero-email");
      	var phone = $("#hero-phone");
      	var add1 = $("#hero-add1");
      	var add2 = $("#hero-add2");
      	var add3 = $("#hero-add3");
      	
      	if(name.val() == null){
    		alert("이름을 입력해 주세요");
    		name.focus();
    		return; 
    	}  

    	if(email.val() == null){
    		alert("이메일을 입력해 주세요");
    		email.focus();
    		return;
    	}
    	
		if(!check(emailRe,email,"적합하지 않은 이메일 형식 입니다.")){
			return;
		}
    	
    	if(pswd.val() == null){
    		alert("비밀번호를 입력해 주세요");
    		pswd.focus();
    		return;
    	}
    	
    	if(!check(pwRe,pswd,"비밀번호는 4~20자의 영문 대소문자와 숫자만 입력할수 있습니다.")){
    		return;
    	}
    	
    	if(phone.val()==null){
    		alert("전화번호를 입력해 주세요");
    		phone.focus();
    		return;
    	}
    	
    	if(!check(phoneRe,phone,"전화번호를 확인해 주세요")){
    		return;
    	}
      	
    	if(add1.val()==null){
    		alert("주소1를 입력해 주세요");
    		add1.focus();
    		return;
    	}
    	
    	if(add2.val()==null){
    		alert("주소2를 입력해 주세요");
    		add2.focus();
    		return;
    	}
    	
    	if(add3.val()==null){
    		alert("주소3를 입력해 주세요");
    		add3.focus();
    		return;
    	} 
      	
    	$("#hero-register-form").submit();
    	
      }); 
    });
 </script>
      
    
      
     
   	  
   	 
   	  
   	  
   


