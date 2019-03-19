<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <!-- modal -->
  
  	<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
	
  <div class="modal fade" id="recommend-show1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
    <div class="modal-content" style="max-width: 645px;">
    <form id="requestform" action="findRegister.action" method="post">
        <input type="hidden" name="requestField1" value="레슨">
        <input type="hidden" name="requestField2" value="보컬트레이닝">
        <c:if test="${not empty user}">
        	<input type="hidden" name="userNo" value="${user.userNo }">
        </c:if>
        <c:if test="${empty user }">
        	<input type="hidden" name="userNo" value="0">
        </c:if>        
      <div class="modal-body" style="padding:0;">      
        <div class="row">  
          <div style="background-image: url('/findhero/resources/img/recommend-1.jpg');height: 510px;width:30%;display:none;" class="rc1-find1"></div>
          <div style="width:70%;padding:60px 30px;display:none" class="rc1-find1">
            <h3 class="h3-responsive">
              <span class="green-text" style="line-height: 1.5;color:#4d4d4d;">
                <strong>보컬 트레이닝</strong><br>
                  	 히어로를 소개받기 위해<br>
				몇가지 질문에 답해주세요!!!
              </span>
               </h3>
               <br>
              <span class="grey-text">
              	많은 히어로들이 당신의 요청을 기다립니다.				
              </span>                                  	
                 <button type="button" class="btn btn btn-outline-warning" style="display: none" id="rc1-next1">다음</button>             
          </div>
         <div style="width:100%;padding:30px;display:none;" id="rc1-find2">
         <div>
              <h5 class="modal-title" id="exampleModalLabel">fiNdhErO</h5> 
         </div>
         <div style="padding:30px 0px 10px 0px;">            	
              <div class="progress">
				<div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" style="width: 0%"  aria-valuemin="0" aria-valuemax="100"></div>
  			  </div>
  		</div>	  
			<br>
            <!--Accordion wrapper-->
            <div class="accordion md-accordion" id="accordionEx" role="tablist" aria-multiselectable="true">

              <!-- Accordion card -->
              <div class="card">

                <!-- Card header -->
                <div class="card-header" role="tab" id="headingOne1">
                  <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseOne1" aria-expanded="true"
                    aria-controls="collapseOne1">
                    <h5 class="mb-0">
                     레슨을 받는 목적이 무엇입니까?
                    </h5>
                  </a>
                </div>

                <!-- Card body -->
                <div id="collapseOne1" class="collapse show" role="tabpanel" aria-labelledby="headingOne1"
                  data-parent="#accordionEx">
                  <div class="card-body">
					<ul class="list-group">					  				 
					  <li class="list-group-item fselect1">
					  	<input class="magic-radio" type="radio" name="content1" id="111" value="취미">
						<label for="111">취미</label>
					  </li>
					  <li class="list-group-item fselect2">
					  	<input class="magic-radio" type="radio" name="content1" id="112" value="입시">
						<label for="112">입시</label>				  
					  </li>
					  <li class="list-group-item fselect3">
					  	<input class="magic-radio" type="radio" name="content1" id="113" value="오디션준비">
						<label for="113">오디션준비</label>						  
					  </li>
					  <li class="list-group-item fselect4">
					  	<input class="magic-radio" type="radio" name="content1" id="114" value="음반준비">
						<label for="114">음반준비</label>
					 </li>
					  <li class="list-group-item fselect5">
					  	<input class="magic-radio" type="radio" name="content1" id="115" value=음치탈출>
						<label for="115">음치탈출</label>					  
					  </li>
					</ul>
                  </div>
                </div>

              </div>
              <div class="card">
                <!-- Card header -->
                <div class="card-header" role="tab" id="headingTwo2">
                  <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo2"
                    aria-expanded="false" aria-controls="collapseTwo2">
                    <h5 class="mb-0">
                      어떤 장르의 보컬 레슨에 관심이 있으시나요?
                    </h5>
                  </a>
                </div>

                <!-- Card body -->
                <div id="collapseTwo2" class="collapse" role="tabpanel" aria-labelledby="headingTwo2"
                  data-parent="#accordionEx">
                     <div class="card-body">
					<ul class="list-group">									
					  <li class="list-group-item sselect1">
					  	<input class="magic-radio" type="radio" name="content2" id="121" value="발라드">
						<label for="121">발라드</label>
					  </li>
					  <li class="list-group-item sselect2">
					  	<input class="magic-radio" type="radio" name="content2" id="122" value="재즈">
						<label for="122">재즈</label>
					  </li>
					  <li class="list-group-item sselect3">
					  	<input class="magic-radio" type="radio" name="content2" id="123" value="댄스">
						<label for="123">댄스</label>
					  </li>
					  <li class="list-group-item sselect4">
					  	<input class="magic-radio" type="radio" name="content2" id="124" value="Pop">
						<label for="124">Pop</label>
					  </li>
					  <li class="list-group-item sselect5">
					  	<input class="magic-radio" type="radio" name="content2" id="125" value="R&B">
						<label for="125">R&B</label>
					  </li>
					  <li class="list-group-item sselect6">
					  	<input class="magic-radio" type="radio" name="content2" id="126" value="Rock">
						<label for="126">Rock</label>
					  </li>
					</ul>
                  </div>
                </div>

              </div>
              <!-- Accordion card -->

              <!-- Accordion card -->
              <div class="card">

                <!-- Card header -->
                <div class="card-header" role="tab" id="headingThree3">
                  <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseThree3"
                    aria-expanded="false" aria-controls="collapseThree3">
                    <h5 class="mb-0">
                     그 밖에 히어로에게 원하는 것을 적어보세요
                    </h5>
                  </a>
                </div>

                <!-- Card body -->
                <div id="collapseThree3" class="collapse" role="tabpanel" aria-labelledby="headingThree3"
                  data-parent="#accordionEx">
                   <div class="card-body">
					<div class="list-group">
					  <textarea class="form-control" name="content3" cols="45" rows="8"   placeholder=""></textarea>
					</div>
                  </div>
                </div>
              </div>
              <!-- Accordion card -->
            </div>
            <!-- Accordion wrapper -->
            <!-- Add to Cart -->
            <div class="card-body">
              <div class="row">
              </div>
              <div class="text-center">
				<button type="button" class="btn btn btn-outline-info"  id="rc1-back1"><span class="ion-ios-arrow-back"></span></button>
                <button type="button" class="btn btn btn-outline-warning" id="rc1-next2">다음</button>
              </div>
            </div>
        </div>
<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////////  -->
		<div style="width:100%;padding:30px;display:none" id="rc1-find3">
         <div>
              <h5 class="modal-title" id="exampleModalLabel2">fiNdhErO</h5> 
         </div>
         <div style="padding:30px 0px 10px 0px;">            	
              <div class="progress">
				<div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" style="width: 0%"  aria-valuemin="0" aria-valuemax="100"></div>
  			  </div>
  		</div>	  
			<br>
            <!--Accordion wrapper-->
            <div class="accordion md-accordion" id="accordionEx2" role="tablist" aria-multiselectable="true">

              <!-- Accordion card -->
              <div class="card">

                <!-- Card header -->
                <div class="card-header" role="tab" id="heading2One1">
                  <a data-toggle="collapse" data-parent="#accordionEx2" href="#collapse2One1" aria-expanded="true"
                    aria-controls="collapse2One1">
                    <h5 class="mb-0">
                    	만나기 원하는 요일을 적어주세요
                    </h5>
                  </a>
                </div>

                <!-- Card body -->
                <div id="collapse2One1" class="collapse show" role="tabpanel" aria-labelledby="heading2One1"
                  data-parent="#accordionEx2">
                  <div class="card-body">
					<div class="list-group">
					 <div class="weekDays-selector">
						  <input type="checkbox" id="weekday-mon" class="weekday" name="requestDay" value="월"/>
						  <label for="weekday-mon">월</label>
						  <input type="checkbox" id="weekday-tue" class="weekday" name="requestDay" value="화"/>
						  <label for="weekday-tue">화</label>
						  <input type="checkbox" id="weekday-wed" class="weekday" name="requestDay" value="수"/>
						  <label for="weekday-wed">수</label>
						  <input type="checkbox" id="weekday-thu" class="weekday" name="requestDay" value="목"/>
						  <label for="weekday-thu">목</label>
						  <input type="checkbox" id="weekday-fri" class="weekday" name="requestDay" value="금"/>
						  <label for="weekday-fri">금</label>
						  <input type="checkbox" id="weekday-sat" class="weekday" name="requestDay" value="토"/>
						  <label for="weekday-sat">토</label>
						  <input type="checkbox" id="weekday-sun" class="weekday" name="requestDay" value="일"/>
						  <label for="weekday-sun">일</label>
						</div>
					</div>
                  </div>
                </div>

              </div>
              <!-- Accordion card -->

              <!-- Accordion card -->
              <div class="card">

                <!-- Card header -->
                <div class="card-header" role="tab" id="heading2Two2">
                  <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx2" href="#collapse2Two2"
                    aria-expanded="false" aria-controls="collapse2Two2">
                    <h5 class="mb-0">
                      	원하는 기간을 적어주세요
                    </h5>
                  </a>
                </div>

                <!-- Card body -->
                <div id="collapse2Two2" class="collapse" role="tabpanel" aria-labelledby="heading2Two2"
                  data-parent="#accordionEx2">
                     <div class="card-body">
					<div class="list-group">
					  <input type="text" name="requestTerm" class="date"/>
					</div>
                  </div>
                </div>

              </div>
              <!-- Accordion card -->

              <!-- Accordion card -->
              <div class="card">

                <!-- Card header -->
                <div class="card-header" role="tab" id="heading2Three3">
                  <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx2" href="#collapse2Three3"
                    aria-expanded="false" aria-controls="collapse2Three3">
                    <h5 class="mb-0">
                    	만나기 원하는 장소를 찾아주세요
                    </h5>
                  </a>
                </div>

                <!-- Card body -->
                <div id="collapse2Three3" class="collapse" role="tabpanel" aria-labelledby="heading2Three3"
                  data-parent="#accordionEx2">
                   <div class="card-body">
					<div class="list-group">
					  <input type="hidden" id="sample6_postcode-1" class="span2 m-wrap" placeholder="우편번호">
								<input type="button" onclick="sample6_execDaumPostcode1()" class="btn" value="주소 찾기"><br>
								<input type="text" name="requestAdd1" id="requestAdd1-1" class="span3_m-wrap" placeholder="주소">
								<input type="text" name="requestAdd2" id="requestAdd2-1" class="span3_m-wrap" placeholder="상세주소">
								<input type="text" name="requestAdd3" id="requestAdd3-1" class="span3_m-wrap" placeholder="상세주소2">
								
								<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
								<script>
								    function sample6_execDaumPostcode1() {
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
								                        extraAddr =  extraAddr;
								                    }
								                    // 조합된 참고항목을 해당 필드에 넣는다.
								                    document.getElementById("requestAdd3-1").value = extraAddr;
								                
								                } else {
								                    document.getElementById("requestAdd3-1").value = '';
								                }
								
								                // 우편번호와 주소 정보를 해당 필드에 넣는다.
								                document.getElementById('sample6_postcode-1').value = data.zonecode;
								                document.getElementById("requestAdd1-1").value = addr;
								                // 커서를 상세주소 필드로 이동한다.
								                document.getElementById("requestAdd2-1").focus();
								            }
								        }).open();
								    }
								</script>
					</div>
                  </div>
                </div>				
              </div>
            </div>
            <div class="card-body">
              <div class="row">
              </div>
              <div class="text-center">
               	 <button type="button" class="btn btn btn-outline-info"  id="rc1-back2" style="display:inline;"><span class="ion-ios-arrow-back"></span></button>
                 <button type="submit" class="btn btn btn-outline-success"  id="rc1-success">완료</button>
              </div>
            </div>
        </div>
        </div>                
      </div>
      </form>
    </div>
  </div>
</div>
  
<div class="modal fade" id="recommend-show2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
    <div class="modal-content" style="max-width: 645px;">
    <form id="requestform" action="findRegister.action" method="post">
        <input type="hidden" name="requestField1" value="레슨">
        <input type="hidden" name="requestField2" value="축구트레이닝">
        <input type="hidden" name="userNo" value="${user.userNo }">        
      <div class="modal-body" style="padding:0;">
      
        <div class="row">  
          <div style="background-image: url('/findhero/resources/img/recommend-4.jpg');height: 510px;width:30%;display:none;" class="rc2-find1"></div>
          <div style="width:70%;padding:60px 30px;display:none" class="rc2-find1">
            <h3 class="h3-responsive">
              <span class="green-text" style="line-height: 1.5;color:#4d4d4d;">
                <strong>축구 트레이닝</strong><br>
                  	 히어로를 소개받기 위해<br>
				몇가지 질문에 답해주세요!!!
              </span>
               </h3>
               <br>
              <span class="grey-text">
              	많은 히어로들이 당신의 요청을 기다립니다.				
              </span>                                  	
              <button type="button" class="btn btn btn-outline-warning" style="display: none" id="rc2-next1">다음</button>             
          </div>


         <div style="width:100%;padding:30px;display:none;" id="rc2-find2">
         <div>
              <h5 class="modal-title" id="exampleModalLabel">fiNdhErO</h5> 
         </div>
         <div style="padding:30px 0px 10px 0px;">            	
              <div class="progress">
				<div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" style="width: 0%"  aria-valuemin="0" aria-valuemax="100"></div>
  			  </div>
  		</div>	  
			<br>
            <!--Accordion wrapper-->
            <div class="accordion md-accordion" id="accordionEx3" role="tablist" aria-multiselectable="true">

              <!-- Accordion card -->
              <div class="card">

                <!-- Card header -->
                <div class="card-header" role="tab" id="heading3One1">
                  <a data-toggle="collapse" data-parent="#accordionEx3" href="#collapse3One1" aria-expanded="true"
                    aria-controls="collapse3One1">
                    <h5 class="mb-0">
                    	 레슨을 받는 목적이 무엇입니까?
                    </h5>
                  </a>
                </div>

                <!-- Card body -->
                <div id="collapse3One1" class="collapse show" role="tabpanel" aria-labelledby="heading3One1"
                  data-parent="#accordionEx3">
                  <div class="card-body">
					<ul class="list-group">					  				 
					  <li class="list-group-item fselect1">
					  	<input class="magic-radio" type="radio" name="content1" id="211" value="취미">
						<label for="211">취미</label>
					  </li>
					  <li class="list-group-item fselect2">
					  	<input class="magic-radio" type="radio" name="content1" id="212" value="실력향상">
						<label for="212">실력향상</label>				  
					  </li>
					  <li class="list-group-item fselect3">
					  	<input class="magic-radio" type="radio" name="content1" id="213" value="입시">
						<label for="213">입시</label>						  
					  </li>
					  <li class="list-group-item fselect4">
					  	<input class="magic-radio" type="radio" name="content1" id="214" value="선수 준비">
						<label for="214">선수 준비</label>
					 </li>
					  <li class="list-group-item fselect5">
					  	<input class="magic-radio" type="radio" name="content1" id="215" value="꿈나무 양성">
						<label for="215">꿈나무 양성</label>					  
					  </li>
					</ul>
                  </div>
                </div>

              </div>
              <div class="card">
                <!-- Card header -->
                <div class="card-header" role="tab" id="heading3Two2">
                  <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx3" href="#collapse3Two2"
                    aria-expanded="false" aria-controls="collapse3Two2">
                    <h5 class="mb-0">
                      주 포지션이 어떻게 되시나요?
                    </h5>
                  </a>
                </div>

                <!-- Card body -->
                <div id="collapse3Two2" class="collapse" role="tabpanel" aria-labelledby="heading3Two2"
                  data-parent="#accordionEx3">
                     <div class="card-body">
					<ul class="list-group">									
					  <li class="list-group-item sselect1">
					  	<input class="magic-radio" type="radio" name="content2" id="221" value="골키퍼">
						<label for="221">골키퍼</label>
					  </li>
					  <li class="list-group-item sselect2">
					  	<input class="magic-radio" type="radio" name="content2" id="222" value="수비수">
						<label for="222">수비수</label>
					  </li>
					  <li class="list-group-item sselect3">
					  	<input class="magic-radio" type="radio" name="content2" id="223" value="미드필더">
						<label for="223">미드필더</label>
					  </li>
					  <li class="list-group-item sselect4">
					  	<input class="magic-radio" type="radio" name="content2" id="224" value="공격수">
						<label for="224">공격수</label>
					  </li>
					</ul>
                  </div>
                </div>
              </div>
              <!-- Accordion card -->

              <!-- Accordion card -->
              <div class="card">

                <!-- Card header -->
                <div class="card-header" role="tab" id="heading3Three3">
                  <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx3" href="#collapse3Three3"
                    aria-expanded="false" aria-controls="collapse3Three3">
                    <h5 class="mb-0">
                    	 그 밖에 히어로에게 원하는 것을 적어보세요
                    </h5>
                  </a>
                </div>

                <!-- Card body -->
                <div id="collapse3Three3" class="collapse" role="tabpanel" aria-labelledby="heading3Three3"
                  data-parent="#accordionEx3">
                   <div class="card-body">
					<div class="list-group">
					  <textarea class="form-control" name="content3" cols="45" rows="8"   placeholder=""></textarea>
					</div>
                  </div>
                </div>

              </div>
              <!-- Accordion card -->

            </div>
            <!-- Accordion wrapper -->


            <!-- Add to Cart -->
            <div class="card-body">
              <div class="row">
 

              </div>
              <div class="text-center">
			<button type="button" class="btn btn btn-outline-info"  id="rc2-back1"><span class="ion-ios-arrow-back"></span></button>
               <button type="button" class="btn btn btn-outline-warning"  id="rc2-next2">다음</button>
              </div>
            </div>
        </div>


<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////////  -->
		<div style="width:100%;padding:30px;display:none" id="rc2-find3">
         <div>
              <h5 class="modal-title" id="exampleModalLabel2">fiNdhErO</h5> 
         </div>
         <div style="padding:30px 0px 10px 0px;">            	
              <div class="progress">
				<div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" style="width: 0%"  aria-valuemin="0" aria-valuemax="100"></div>
  			  </div>
  		</div>	  
			<br>
            <!--Accordion wrapper-->
            <div class="accordion md-accordion" id="accordionEx4" role="tablist" aria-multiselectable="true">

              <!-- Accordion card -->
              <div class="card">

                <!-- Card header -->
                <div class="card-header" role="tab" id="heading4One1">
                  <a data-toggle="collapse" data-parent="#accordionEx4" href="#collapse4One1" aria-expanded="true"
                    aria-controls="collapse4One1">
                    <h5 class="mb-0">
                    	만나기 원하는 요일을 적어주세요
                    </h5>
                  </a>
                </div>

                <!-- Card body -->
                <div id="collapse4One1" class="collapse show" role="tabpanel" aria-labelledby="heading4One1"
                  data-parent="#accordionEx4">
                  <div class="card-body">
					<div class="list-group">
					 <div class="weekDays-selector">
						  <input type="checkbox" id="weekday-mon2" class="weekday" name="requestDay" value="월"/>
						  <label for="weekday-mon2">월</label>
						  <input type="checkbox" id="weekday-tue2" class="weekday" name="requestDay" value="화"/>
						  <label for="weekday-tue2">화</label>
						  <input type="checkbox" id="weekday-wed2" class="weekday" name="requestDay" value="수"/>
						  <label for="weekday-wed2">수</label>
						  <input type="checkbox" id="weekday-thu2" class="weekday" name="requestDay" value="목"/>
						  <label for="weekday-thu2">목</label>
						  <input type="checkbox" id="weekday-fri2" class="weekday" name="requestDay" value="금"/>
						  <label for="weekday-fri2">금</label>
						  <input type="checkbox" id="weekday-sat2" class="weekday" name="requestDay" value="토"/>
						  <label for="weekday-sat2">토</label>
						  <input type="checkbox" id="weekday-sun2" class="weekday" name="requestDay" value="일"/>
						  <label for="weekday-sun2">일</label>
						</div>
					</div>
                  </div>
                </div>

              </div>
              <!-- Accordion card -->

              <!-- Accordion card -->
              <div class="card">

                <!-- Card header -->
                <div class="card-header" role="tab" id="heading4Two2">
                  <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx4" href="#collapse4Two2"
                    aria-expanded="false" aria-controls="collapse4Two2">
                    <h5 class="mb-0">
                      	원하는 기간을 적어주세요
                    </h5>
                  </a>
                </div>

                <!-- Card body -->
                <div id="collapse4Two2" class="collapse" role="tabpanel" aria-labelledby="heading4Two2"
                  data-parent="#accordionEx4">
                     <div class="card-body">
					<div class="list-group">
					  <input type="text" name="requestTerm" class="date"/>
					</div>
                  </div>
                </div>

              </div>
              <!-- Accordion card -->

              <!-- Accordion card -->
              <div class="card">

                <!-- Card header -->
                <div class="card-header" role="tab" id="heading4Three3">
                  <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx4" href="#collapse4Three3"
                    aria-expanded="false" aria-controls="collapse4Three3">
                    <h5 class="mb-0">
                    	만나기 원하는 장소를 찾아주세요
                    </h5>
                  </a>
                </div>

                <!-- Card body -->
                <div id="collapse4Three3" class="collapse" role="tabpanel" aria-labelledby="heading4Three3"
                  data-parent="#accordionEx4">
                   <div class="card-body">
					<div class="list-group">
					  <input type="hidden" id="sample6_postcode-2" class="span2 m-wrap" placeholder="우편번호">
								<input type="button" onclick="sample6_execDaumPostcode2()" class="btn" value="주소 찾기"><br>
								<input type="text" name="requestAdd1" id="requestAdd1-2" class="span3_m-wrap" placeholder="주소">
								<input type="text" name="requestAdd2" id="requestAdd2-2" class="span3_m-wrap" placeholder="상세주소">
								<input type="text" name="requestAdd3" id="requestAdd3-2" class="span3_m-wrap" placeholder="상세주소2">																
								<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
								<script>
								    function sample6_execDaumPostcode2() {
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
								                        extraAddr = extraAddr;
								                    }
								                    // 조합된 참고항목을 해당 필드에 넣는다.
								                    document.getElementById("requestAdd3-2").value = extraAddr;
								                
								                } else {
								                    document.getElementById("requestAdd3-2").value = '';
								                }
								
								                // 우편번호와 주소 정보를 해당 필드에 넣는다.
								                document.getElementById('sample6_postcode-2').value = data.zonecode;
								                document.getElementById("requestAdd1-2").value = addr;
								                // 커서를 상세주소 필드로 이동한다.
								                document.getElementById("requestAdd2-2").focus();
								            }
								        }).open();
								    }
								</script>
					</div>
                  </div>
                </div>				
              </div>
            </div>
            <div class="card-body">
              <div class="row">
              </div>
              <div class="text-center">
                <button type="button" class="btn btn btn-outline-info"  id="rc2-back2"><span class="ion-ios-arrow-back"></span></button>                     
                   <button type="submit" class="btn btn btn-outline-success"  id="rc2-success">완료</button>
              </div>
            </div>
        </div>
        </div>                
      </div>
      </form>
    </div>
  </div>
</div>





<%-- <!-- modal -->
<div class="modal fade" id="recommend-show2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
          <div class="modal-content" id="find_modal-content">
              <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">fiNdhErO</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                  </button>
              </div> 
              <div class="progress">
				<div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" style="width: 0%"  aria-valuemin="0" aria-valuemax="100"></div>
  			  </div>
              <form id="requestform" action="findRegister.action" method="post"> 
              <div class="modal-body">
              <input type="hidden" name="userNo" value="${ user.userNo }">
              <input type="hidden" name="requestField1" value="레슨">
              <input type="hidden" name="requestField2" value="축구 트레이닝">
              	<div id="rc2-find1" style="display: none" >
               	<div>
               		<img src="/findhero/resources/img/recommend-4.jpg" class="img-find1"><br><br>
               		<div><h2>몇가지 질문에 답해주세요.</h2></div>
               	</div>
              	</div>
              	<div id="rc2-find2" style="display: none" >
				<div class="title-box-d">
					<h4 class="title-d">STEP1</h4>      
				</div>
               	<div>
					<h5>어떤 부분에서 도움을 원하시나요?</h5>
					<h5>주 포지션이 어떻게 되시나요?</h5>
					<h5>레슨 규모는  어느 정도를 원하나요?</h5>
               	</div><hr>
               	<div class="title-box-d">
					<h5 class="title-d">예시</h5>       
				</div>
               	<div>
					<h5>ex) 킥, 수비수, 4명</h5>
               	</div><hr>
               	<div class="title-box-d">
					<h5 class="title-d">답변</h5>       
				</div>
               	<div>
               		<h5>위의 예시처럼 작성해주세요.</h5>
					<textarea rows="1" cols="1" name="requestContent" id="requestContent" style="width: 100%; height: 70px;"></textarea>
               	</div> 
              	</div>
              	<div id="rc2-find3" style="display: none">
					<div class="title-box-d">
						<h4 class="title-d">STEP2</h4>
					</div>
					<div>
						<h5>만나길 원하는 요일을 적어주세요. (중복가능)</h5>
						<input type="text" name="requestDay" id="requestDay">
						<hr>
						<h5>원하는 기간을 적어주세요.</h5>
						<input type="text" name="requestTerm" id="requestTerm">
						<hr>
						<h5>만나기 원하는 장소를 찾아주세요.</h5>
						<div class="control-group">
							<div class="controls">
								<input type="hidden" id="sample6_postcode-2" class="span2 m-wrap" placeholder="우편번호">
								<input type="button" onclick="sample6_execDaumPostcode2()" class="btn" value="주소 찾기"><br>
								<input type="text" name="requestAdd1" id="requestAdd1-2" class="span3_m-wrap" placeholder="주소"><br>
								<input type="text" name="requestAdd2" id="requestAdd2-2" class="span2_m-wrap" placeholder="상세주소">
								<input type="text" name="requestAdd3" id="requestAdd3-2" class="span2_m-wrap" placeholder="상세주소2">
								
								<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
								<script>
								    function sample6_execDaumPostcode2() {
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
								                        extraAddr = ' (' + extraAddr + ')';
								                    }
								                    // 조합된 참고항목을 해당 필드에 넣는다.
								                    document.getElementById("requestAdd3-2").value = extraAddr;
								                
								                } else {
								                    document.getElementById("requestAdd3-2").value = '';
								                }
								
								                // 우편번호와 주소 정보를 해당 필드에 넣는다.
								                document.getElementById('sample6_postcode-2').value = data.zonecode;
								                document.getElementById("requestAdd1-2").value = addr;
								                // 커서를 상세주소 필드로 이동한다.
								                document.getElementById("requestAdd2-2").focus();
								            }
								        }).open();
								    }
								</script>
							</div>
							<!-- /controls -->
						</div>
						<!-- /control-group -->
					</div>
				</div>
              </div>
              <div class="modal-footer">
              	 
             
              </div>
              </form>
          </div>
      </div>
  </div>
<!-- modal end -->

<!-- modal -->
<div class="modal fade" id="recommend-show3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
          <div class="modal-content" id="find_modal-content">
              <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">fiNdhErO</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                  </button>
              </div> 
              <div class="progress">
				<div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" style="width: 0%"  aria-valuemin="0" aria-valuemax="100"></div>
  			  </div>
              <form id="requestform" action="findRegister.action" method="post"> 
              <div class="modal-body">
              <input type="hidden" name="userNo" value="${ user.userNo }">
              <input type="hidden" name="requestField1" value="레슨">
              <input type="hidden" name="requestField2" value="기타 레슨">
              	<div id="rc3-find1" style="display: none" >
               	<div>
               		<img src="/findhero/resources/img/recommend-3.jpg" class="img-find1"><br><br>
               		<div><h2>몇가지 질문에 답해주세요.</h2></div>
               	</div>
              	</div>
              	<div id="rc3-find2" style="display: none" >
				<div class="title-box-d">
					<h4 class="title-d">STEP1</h4>      
				</div>
               	<div>
					<h5>어떤 종류의 기타를 배루길 원하시나요?</h5>
					<h5>기타 레슨의 목적이 무엇인가요?</h5>
					<h5>레슨 규모는  어느 정도를 원하나요?</h5>
               	</div><hr>
               	<div class="title-box-d">
					<h5 class="title-d">예시</h5>       
				</div>
               	<div>
					<h5>ex) 통기타, 취미, 2명</h5>
               	</div><hr>
               	<div class="title-box-d">
					<h5 class="title-d">답변</h5>       
				</div>
               	<div>
               		<h5>위의 예시처럼 작성해주세요.</h5>
					<textarea rows="1" cols="1" name="requestContent" id="requestContent" style="width: 100%; height: 70px;"></textarea>
               	</div> 
              	</div>
              	<div id="rc3-find3" style="display: none" >
				<div class="title-box-d">
					<h4 class="title-d">STEP2</h4>
				</div>
               	<div>
					<h5>만나길 원하는 요일을 적어주세요. (중복가능)</h5>
					<input type="text" name="requestDay" id="requestDay"><hr>
					<h5>원하는 기간을 적어주세요.</h5> 
					<input type="text" name="requestTerm" id="requestTerm"><hr>
					<h5>만나기 원하는 장소를 찾아주세요.</h5>
					<div class="control-group">											
			<div class="controls">
				<input type="hidden" id="sample6_postcode-3" class="span2 m-wrap" placeholder="우편번호">
								<input type="button" onclick="sample6_execDaumPostcode3()" class="btn" value="주소 찾기"><br>
								<input type="text" name="requestAdd1" id="requestAdd1-3" class="span3_m-wrap" placeholder="주소"><br>
								<input type="text" name="requestAdd2" id="requestAdd2-3" class="span2_m-wrap" placeholder="상세주소">
								<input type="text" name="requestAdd3" id="requestAdd3-3" class="span2_m-wrap" placeholder="상세주소2">
								
								<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
								<script>
								    function sample6_execDaumPostcode3() {
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
								                        extraAddr = ' (' + extraAddr + ')';
								                    }
								                    // 조합된 참고항목을 해당 필드에 넣는다.
								                    document.getElementById("requestAdd3-3").value = extraAddr;
								                
								                } else {
								                    document.getElementById("requestAdd3-3").value = '';
								                }
								
								                // 우편번호와 주소 정보를 해당 필드에 넣는다.
								                document.getElementById('sample6_postcode-3').value = data.zonecode;
								                document.getElementById("requestAdd1-3").value = addr;
								                // 커서를 상세주소 필드로 이동한다.
								                document.getElementById("requestAdd2-3").focus();
								            }
								        }).open();
								    }
								</script>
				
			</div> <!-- /controls -->				
		</div> <!-- /control-group -->
               	</div> 
              	</div>
              </div>
              <div class="modal-footer">
              	 <button type="button" class="btn btn btn-outline-info" style="display: none" id="rc3-back1"><span class="ion-ios-arrow-back"></span></button>
              	 <button type="button" class="btn btn btn-outline-info" style="display: none" id="rc3-back2"><span class="ion-ios-arrow-back"></span></button>
                 <button type="button" class="btn btn btn-outline-warning" style="display: none" id="rc3-next1">다음</button>
                 <button type="button" class="btn btn btn-outline-warning" style="display: none" id="rc3-next2">다음</button>
                 <button type="submit" class="btn btn btn-outline-success" style="display: none" id="rc3-success">완료</button>
              </div>
              </form>
          </div>
      </div>
  </div> --%>
<!-- modal end -->

















<div class="modal fade" id="recommend-show4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
    <div class="modal-content" style="max-width: 645px;">
    <form id="requestform" action="findRegister.action" method="post">
        <input type="hidden" name="requestField1" value="비즈니스">
        <input type="hidden" name="requestField2" value="외국어번역">
        <input type="hidden" name="userNo" value="${user.userNo }">        
      <div class="modal-body" style="padding:0;">
      
        <div class="row">  
          <div style="background-image: url('/findhero/resources/img/recommend-2.png');height: 510px;width:30%;display:none;" class="rc4-find1"></div>
          <div style="width:70%;padding:60px 30px;display:none" class="rc4-find1">
            <h3 class="h3-responsive">
              <span class="green-text" style="line-height: 1.5;color:#4d4d4d;">
                <strong>외국어 번역</strong><br>
                  	 히어로를 소개받기 위해<br>
				몇가지 질문에 답해주세요!!!
              </span>
               </h3>
               <br>
              <span class="grey-text">
              	많은 히어로들이 당신의 요청을 기다립니다.				
              </span>                                  	
              <button type="button" class="btn btn btn-outline-warning" style="display: none" id="rc4-next1">다음</button>             
          </div>


         <div style="width:100%;padding:30px;display:none;" id="rc4-find2">
         <div>
              <h5 class="modal-title" id="exampleModalLabel">fiNdhErO</h5> 
         </div>
         <div style="padding:30px 0px 10px 0px;">            	
              <div class="progress">
				<div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" style="width: 0%"  aria-valuemin="0" aria-valuemax="100"></div>
  			  </div>
  		</div>	  
			<br>
            <!--Accordion wrapper-->
            <div class="accordion md-accordion" id="accordionEx7" role="tablist" aria-multiselectable="true">

              <!-- Accordion card -->
              <div class="card">

                <!-- Card header -->
                <div class="card-header" role="tab" id="heading7One1">
                  <a data-toggle="collapse" data-parent="#accordionEx7" href="#collapse7One1" aria-expanded="true"
                    aria-controls="collapse7One1">
                    <h5 class="mb-0">
                    	어떤 서비스를 원하시나요?
                    </h5>
                  </a>
                </div>

                <!-- Card body -->
                <div id="collapse7One1" class="collapse show" role="tabpanel" aria-labelledby="heading7One1"
                  data-parent="#accordionEx7">
                  <div class="card-body">
					<ul class="list-group">					  				 
					  <li class="list-group-item fselect1">
					  	<input class="magic-radio" type="radio" name="content1" id="411" value="번역">
						<label for="411">번역</label>
					  </li>
					  <li class="list-group-item fselect2">
					  	<input class="magic-radio" type="radio" name="content1" id="412" value="고정">
						<label for="412">교정</label>				  
					  </li>
					  <li class="list-group-item fselect3">
					  	<input class="magic-radio" type="radio" name="content1" id="413" value="편집">
						<label for="413">편집</label>						  
					  </li>
					  <li class="list-group-item fselect4">
					  	<input class="magic-radio" type="radio" name="content1" id="414" value="요악">
						<label for="414">요약</label>
					 </li>	
					</ul>
                  </div>
                </div>

              </div>
              <div class="card">
                <!-- Card header -->
                <div class="card-header" role="tab" id="heading7Two2">
                  <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx7" href="#collapse7Two2"
                    aria-expanded="false" aria-controls="collapse7Two2">
                    <h5 class="mb-0">
                     	번역될 문서는 어떤 분야의 글입니까?
                    </h5>
                  </a>
                </div>

                <!-- Card body -->
                <div id="collapse7Two2" class="collapse" role="tabpanel" aria-labelledby="heading7Two2"
                  data-parent="#accordionEx7">
                     <div class="card-body">
					<ul class="list-group">									
					  <li class="list-group-item sselect1">
					  	<input class="magic-radio" type="radio" name="content2" id="421" value="일반글">
						<label for="421">일반글</label>
					  </li>
					  <li class="list-group-item sselect2">
					  	<input class="magic-radio" type="radio" name="content2" id="422" value="법">
						<label for="422">법</label>
					  </li>
					  <li class="list-group-item sselect3">
					  	<input class="magic-radio" type="radio" name="content2" id="423" value="의료">
						<label for="423">의료</label>
					  </li>
					  <li class="list-group-item sselect4">
					  	<input class="magic-radio" type="radio" name="content2" id="424" value="금용">
						<label for="424">금용</label>
					  </li>
					   <li class="list-group-item sselect4">
					  	<input class="magic-radio" type="radio" name="content2" id="425" value="공학">
						<label for="425">공학</label>
					  </li>
					   <li class="list-group-item sselect4">
					  	<input class="magic-radio" type="radio" name="content2" id="426" value="예술">
						<label for="426">예술</label>
					  </li>
					   <li class="list-group-item sselect4">
					  	<input class="magic-radio" type="radio" name="content2" id="427" value="과학">
						<label for="427">과학</label>
					  </li>
					</ul>
                  </div>
                </div>
              </div>
              <!-- Accordion card -->

              <!-- Accordion card -->
              <div class="card">

                <!-- Card header -->
                <div class="card-header" role="tab" id="heading7Three3">
                  <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx7" href="#collapse7Three3"
                    aria-expanded="false" aria-controls="collapse7Three3">
                    <h5 class="mb-0">
                    	 그 밖에 히어로에게 원하는 것을 적어보세요
                    </h5>
                  </a>
                </div>

                <!-- Card body -->
                <div id="collapse7Three3" class="collapse" role="tabpanel" aria-labelledby="heading7Three3"
                  data-parent="#accordionEx7">
                   <div class="card-body">
					<div class="list-group">
					  <textarea class="form-control" name="content3" cols="45" rows="8"   placeholder=""></textarea>
					</div>
                  </div>
                </div>

              </div>
              <!-- Accordion card -->

            </div>
            <!-- Accordion wrapper -->


            <!-- Add to Cart -->
            <div class="card-body">
              <div class="row">
 

              </div>
              <div class="text-center">
			<button type="button" class="btn btn btn-outline-info" style="display: none" id="rc4-back1"><span class="ion-ios-arrow-back"></span></button>
               <button type="button" class="btn btn btn-outline-warning" style="display: none" id="rc4-next2">다음</button>
              </div>
            </div>
        </div>


<!-- ////////////////////////////////////////////////////////////////////////////////////////////////////////  -->
		<div style="width:100%;padding:30px;display:none" id="rc4-find3">
         <div>
              <h5 class="modal-title" id="exampleModalLabel2">fiNdhErO</h5> 
         </div>
         <div style="padding:30px 0px 10px 0px;">            	
              <div class="progress">
				<div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" style="width: 0%"  aria-valuemin="0" aria-valuemax="100"></div>
  			  </div>
  		</div>	  
			<br>
            <!--Accordion wrapper-->
            <div class="accordion md-accordion" id="accordionEx8" role="tablist" aria-multiselectable="true">

              <!-- Accordion card -->
              <div class="card">

                <!-- Card header -->
                <div class="card-header" role="tab" id="heading8One1">
                  <a data-toggle="collapse" data-parent="#accordionEx8" href="#collapse8One1" aria-expanded="true"
                    aria-controls="collapse8One1">
                    <h5 class="mb-0">
                    	만나기 원하는 요일을 적어주세요
                    </h5>
                  </a>
                </div>

                <!-- Card body -->
                <div id="collapse8One1" class="collapse show" role="tabpanel" aria-labelledby="heading8One1"
                  data-parent="#accordionEx8">
                  <div class="card-body">
					<div class="list-group">
					 <div class="weekDays-selector">
						  <input type="checkbox" id="weekday-mon4" class="weekday" name="requestDay" value="월"/>
						  <label for="weekday-mon4">월</label>
						  <input type="checkbox" id="weekday-tue4" class="weekday" name="requestDay" value="화"/>
						  <label for="weekday-tue4">화</label>
						  <input type="checkbox" id="weekday-wed4" class="weekday" name="requestDay" value="수"/>
						  <label for="weekday-wed4">수</label>
						  <input type="checkbox" id="weekday-thu4" class="weekday" name="requestDay" value="목"/>
						  <label for="weekday-thu4">목</label>
						  <input type="checkbox" id="weekday-fri4" class="weekday" name="requestDay" value="금"/>
						  <label for="weekday-fri4">금</label>
						  <input type="checkbox" id="weekday-sat4" class="weekday" name="requestDay" value="토"/>
						  <label for="weekday-sat4">토</label>
						  <input type="checkbox" id="weekday-sun4" class="weekday" name="requestDay" value="일"/>
						  <label for="weekday-sun4">일</label>
						</div>
					</div>
                  </div>
                </div>

              </div>
              <!-- Accordion card -->

              <!-- Accordion card -->
              <div class="card">

                <!-- Card header -->
                <div class="card-header" role="tab" id="heading8Two2">
                  <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx8" href="#collapse8Two2"
                    aria-expanded="false" aria-controls="collapse8Two2">
                    <h5 class="mb-0">
                      	원하는 기간을 적어주세요
                    </h5>
                  </a>
                </div>

                <!-- Card body -->
                <div id="collapse8Two2" class="collapse" role="tabpanel" aria-labelledby="heading8Two2"
                  data-parent="#accordionEx8">
                     <div class="card-body">
					<div class="list-group">
					  <input type="text" name="requestTerm" class="date"/>
					</div>
                  </div>
                </div>

              </div>
              <!-- Accordion card -->

              <!-- Accordion card -->
              <div class="card">

                <!-- Card header -->
                <div class="card-header" role="tab" id="heading8Three3">
                  <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx8" href="#collapse8Three3"
                    aria-expanded="false" aria-controls="collapse8Three3">
                    <h5 class="mb-0">
                    	만나기 원하는 장소를 찾아주세요
                    </h5>
                  </a>
                </div>

                <!-- Card body -->
                <div id="collapse8Three3" class="collapse" role="tabpanel" aria-labelledby="heading8Three3"
                  data-parent="#accordionEx8">
                   <div class="card-body">
					<div class="list-group">
					 <input type="hidden" id="sample6_postcode-4" class="span2 m-wrap" placeholder="우편번호">
								<input type="button" onclick="sample6_execDaumPostcode4()" class="btn" value="주소 찾기"><br>
								<input type="text" name="requestAdd1" id="requestAdd1-4" class="span3_m-wrap" placeholder="주소">
								<input type="text" name="requestAdd2" id=requestAdd2-4 class="span3_m-wrap" placeholder="상세주소">
								<input type="text" name="requestAdd3" id="requestAdd3-4" class="span3_m-wrap" placeholder="상세주소2">
								
								<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
								<script>
								    function sample6_execDaumPostcode4() {
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
								                        extraAddr = extraAddr;
								                    }
								                    // 조합된 참고항목을 해당 필드에 넣는다.
								                    document.getElementById("requestAdd3-4").value = extraAddr;
								                
								                } else {
								                    document.getElementById("requestAdd3-4").value = '';
								                }
								
								                // 우편번호와 주소 정보를 해당 필드에 넣는다.
								                document.getElementById('sample6_postcode-4').value = data.zonecode;
								                document.getElementById("requestAdd1-4").value = addr;
								                // 커서를 상세주소 필드로 이동한다.
								                document.getElementById("requestAdd2-4").focus();
								            }
								        }).open();
								    }
								</script>
					</div>
                  </div>
                </div>				
              </div>
            </div>
            <div class="card-body">
              <div class="row">
              </div>
              <div class="text-center">
                <button type="button" class="btn btn btn-outline-info" style="display: none" id="rc4-back2"><span class="ion-ios-arrow-back"></span></button>                     
                   <button type="submit" class="btn btn btn-outline-success" style="display: none" id="rc4-success">완료</button>
              </div>
            </div>
        </div>
        </div>                
      </div>
      </form>
    </div>
  </div>
</div>












<!-- modal -->
<%-- /*<div class="modal fade" id="recommend-show4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
          <div class="modal-content" id="find_modal-content">
              <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">fiNdhErO</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                  </button>
              </div> 
              <div class="progress">
				<div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" style="width: 0%"  aria-valuemin="0" aria-valuemax="100"></div>
  			  </div>
              <form id="requestform" action="findRegister.action" method="post"> 
              <div class="modal-body">
              <input type="hidden" name="userNo" value="${ user.userNo }">
              <input type="hidden" name="requestField1" value="ql">
              <input type="hidden" name="requestField2" value="비지니스 영어">
              	<div id="rc4-find1" style="display: none" >
               	<div>
               		<img src="/findhero/resources/img/recommend-2.png" class="img-find1"><br><br>
               		<div><h2>몇가지 질문에 답해주세요.</h2></div>
               	</div>
              	</div>
              	<div id="rc4-find2" style="display: none" >
				<div class="title-box-d">
					<h4 class="title-d">STEP1</h4>      
				</div>
               	<div>
					<h5>어떤 부분에서 도움을 원하시나요?</h5>
					<h5>영어는 주로 언제 사용하시나요?</h5>
					<h5>레슨 규모는  어느 정도를 원하나요?</h5>
               	</div><hr>
               	<div class="title-box-d">
					<h5 class="title-d">예시</h5>       
				</div>
               	<div>
					<h5>ex) 듣기, 전화통화, 2명</h5>
               	</div><hr>
               	<div class="title-box-d">
					<h5 class="title-d">답변</h5>       
				</div>
               	<div>
               		<h5>위의 예시처럼 작성해주세요.</h5>
					<textarea rows="1" cols="1" name="requestContent" id="requestContent" style="width: 100%; height: 70px;"></textarea>
               	</div> 
              	</div>
              	<div id="rc4-find3" style="display: none" >
				<div class="title-box-d">
					<h4 class="title-d">STEP2</h4>
				</div>
               	<div>
					<h5>만나길 원하는 요일을 적어주세요. (중복가능)</h5>
					<input type="text" name="requestDay" id="requestDay"><hr>
					<h5>원하는 기간을 적어주세요.</h5> 
					<input type="text" name="requestTerm" id="requestTerm"><hr>
					<h5>만나기 원하는 장소를 찾아주세요.</h5>
					<div class="control-group">											
			<div class="controls">
				<input type="hidden" id="sample6_postcode-4" class="span2 m-wrap" placeholder="우편번호">
								<input type="button" onclick="sample6_execDaumPostcode4()" class="btn" value="주소 찾기"><br>
								<input type="text" name="requestAdd1" id="requestAdd1-4" class="span3_m-wrap" placeholder="주소"><br>
								<input type="text" name="requestAdd2" id=requestAdd2-4 class="span2_m-wrap" placeholder="상세주소">
								<input type="text" name="requestAdd3" id="requestAdd3-4" class="span2_m-wrap" placeholder="상세주소2">
								
								<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
								<script>
								    function sample6_execDaumPostcode4() {
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
								                        extraAddr = ' (' + extraAddr + ')';
								                    }
								                    // 조합된 참고항목을 해당 필드에 넣는다.
								                    document.getElementById("requestAdd3-4").value = extraAddr;
								                
								                } else {
								                    document.getElementById("requestAdd3-4").value = '';
								                }
								
								                // 우편번호와 주소 정보를 해당 필드에 넣는다.
								                document.getElementById('sample6_postcode-4').value = data.zonecode;
								                document.getElementById("requestAdd1-4").value = addr;
								                // 커서를 상세주소 필드로 이동한다.
								                document.getElementById("requestAdd2-4").focus();
								            }
								        }).open();
								    }
								</script>
				
			</div> <!-- /controls -->				
		</div> <!-- /control-group -->
               	</div> 
              	</div>
              </div>
              <div class="modal-footer">
              	 <button type="button" class="btn btn btn-outline-info" style="display: none" id="rc4-back1"><span class="ion-ios-arrow-back"></span></button>
              	 <button type="button" class="btn btn btn-outline-info" style="display: none" id="rc4-back2"><span class="ion-ios-arrow-back"></span></button>
                 <button type="button" class="btn btn btn-outline-warning" style="display: none" id="rc4-next1">다음</button>
                 <button type="button" class="btn btn btn-outline-warning" style="display: none" id="rc4-next2">다음</button>
                 <button type="submit" class="btn btn btn-outline-success" style="display: none" id="rc4-success">완료</button>
              </div>
              </form>
          </div>
      </div>
  </div> --%>
<!-- modal end -->

<!-- modal -->
<div class="modal fade" id="recommend-show5" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
          <div class="modal-content" id="find_modal-content">
              <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">fiNdhErO</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                  </button>
              </div> 
              <div class="progress">
				<div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" style="width: 0%"  aria-valuemin="0" aria-valuemax="100"></div>
  			  </div>
              <form id="requestform" action="findRegister.action" method="post"> 
              <div class="modal-body">
              <input type="hidden" name="userNo" value="${ user.userNo }">
              <input type="hidden" name="requestField1" value="비지니스">
              <input type="hidden" name="requestField2" value="블로그 마케팅">
              	<div id="rc5-find1" style="display: none" >
               	<div>
               		<img src="/findhero/resources/img/recommend-5.jpg" class="img-find1"><br><br>
               		<div><h2>몇가지 질문에 답해주세요.</h2></div>
               	</div>
              	</div>
              	<div id="rc5-find2" style="display: none" >
				<div class="title-box-d">
					<h4 class="title-d">STEP1</h4>      
				</div>
               	<div>
					<h5>어떤 마케팅 목표를 가지고 계신가요? (조회수, 팔로워 늘리기, 매출, 다운로드, 브랜드 인지도 등등)</h5>
					<h5>어떤 블로그 플랫폼에서 진행하길 원하십나요? (네이버, 티스토리 등등)</h5>
					<h5>마케팅을 집핼할 기간은 어떻게 되시나요?</h5>
               	</div><hr>
               	<div class="title-box-d">
					<h5 class="title-d">예시</h5>       
				</div>
               	<div>
					<h5>ex) 조회수, 네이버, 2개월</h5>
               	</div><hr>
               	<div class="title-box-d">
					<h5 class="title-d">답변</h5>       
				</div>
               	<div>
               		<h5>위의 예시처럼 작성해주세요.</h5>
					<textarea rows="1" cols="1" name="requestContent" id="requestContent" style="width: 100%; height: 70px;"></textarea>
               	</div> 
              	</div>
              	<div id="rc5-find3" style="display: none" >
				<div class="title-box-d">
					<h4 class="title-d">STEP2</h4>
				</div>
               	<div>
					<h5>만나길 원하는 요일을 적어주세요. (중복가능)</h5>
					<input type="text" name="requestDay" id="requestDay"><hr>
					<h5>원하는 기간을 적어주세요.</h5> 
					<input type="text" name="requestTerm" id="requestTerm"><hr>
					<h5>만나기 원하는 장소를 찾아주세요.</h5>
					<div class="control-group">											
			<div class="controls">
				<input type="hidden" id="sample6_postcode-5" class="span2 m-wrap" placeholder="우편번호">
								<input type="button" onclick="sample6_execDaumPostcode5()" class="btn" value="주소 찾기"><br>
								<input type="text" name="requestAdd1" id="requestAdd1-5" class="span3_m-wrap" placeholder="주소"><br>
								<input type="text" name="requestAdd2" id=requestAdd2-5 class="span2_m-wrap" placeholder="상세주소">
								<input type="text" name="requestAdd3" id="requestAdd3-5" class="span2_m-wrap" placeholder="상세주소2">
								
								<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
								<script>
								    function sample6_execDaumPostcode5() {
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
								                        extraAddr = ' (' + extraAddr + ')';
								                    }
								                    // 조합된 참고항목을 해당 필드에 넣는다.
								                    document.getElementById("requestAdd3-5").value = extraAddr;
								                
								                } else {
								                    document.getElementById("requestAdd3-4").value = '';
								                }
								
								                // 우편번호와 주소 정보를 해당 필드에 넣는다.
								                document.getElementById('sample6_postcode-5').value = data.zonecode;
								                document.getElementById("requestAdd1-5").value = addr;
								                // 커서를 상세주소 필드로 이동한다.
								                document.getElementById("requestAdd2-5").focus();
								            }
								        }).open();
								    }
								</script>
				
			</div> <!-- /controls -->				
		</div> <!-- /control-group -->
               	</div> 
              	</div>
              </div>
              <div class="modal-footer">
              	 <button type="button" class="btn btn btn-outline-info" style="display: none" id="rc5-back1"><span class="ion-ios-arrow-back"></span></button>
              	 <button type="button" class="btn btn btn-outline-info" style="display: none" id="rc5-back2"><span class="ion-ios-arrow-back"></span></button>
                 <button type="button" class="btn btn btn-outline-warning" style="display: none" id="rc5-next1">다음</button>
                 <button type="button" class="btn btn btn-outline-warning" style="display: none" id="rc5-next2">다음</button>
                 <button type="submit" class="btn btn btn-outline-success" style="display: none" id="rc5-success">완료</button>
              </div>
              </form>
          </div>
      </div>
  </div>
<!-- modal end -->

<!-- modal -->
<div class="modal fade" id="recommend-show6" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
          <div class="modal-content" id="find_modal-content">
              <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">fiNdhErO</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                  </button>
              </div> 
              <div class="progress">
				<div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" style="width: 0%"  aria-valuemin="0" aria-valuemax="100"></div>
  			  </div>
              <form id="requestform" action="findRegister.action" method="post"> 
              <div class="modal-body">
              <input type="hidden" name="userNo" value="${ user.userNo }">
              <input type="hidden" name="requestField1" value="비지니스">
              <input type="hidden" name="requestField2" value="회계 / 세무">
              	<div id="rc6-find1" style="display: none" >
               	<div>
               		<img src="/findhero/resources/img/recommend-6.jpg" class="img-find1"><br><br>
               		<div><h2>몇가지 질문에 답해주세요.</h2></div>
               	</div>
              	</div>
              	<div id="rc6-find2" style="display: none" >
				<div class="title-box-d">
					<h4 class="title-d">STEP1</h4>      
				</div>
               	<div>
					<h5>사업자 종류는 어떻게 되시나요?</h5>
					<h5>어떤 서비스를 받고 싶으신가요? (세무대리, 종합소득세, 과세자료, 세무조사 등등)</h5>
					<h5>직원은 몇 명인가요? (대표 제외)</h5>
               	</div><hr>
               	<div class="title-box-d">
					<h5 class="title-d">예시</h5>       
				</div>
               	<div>
					<h5>ex) 개인사업자, 세무조사, 10명</h5>
               	</div><hr>
               	<div class="title-box-d">
					<h5 class="title-d">답변</h5>       
				</div>
               	<div>
               		<h5>위의 예시처럼 작성해주세요.</h5>
					<textarea rows="1" cols="1" name="requestContent" id="requestContent" style="width: 100%; height: 70px;"></textarea>
               	</div> 
              	</div>
              	<div id="rc6-find3" style="display: none" >
				<div class="title-box-d">
					<h4 class="title-d">STEP2</h4>
				</div>
               	<div>
					<h5>만나길 원하는 요일을 적어주세요. (중복가능)</h5>
					<input type="text" name="requestDay" id="requestDay"><hr>
					<h5>원하는 기간을 적어주세요.</h5> 
					<input type="text" name="requestTerm" id="requestTerm"><hr>
					<h5>만나기 원하는 장소를 찾아주세요.</h5>
					<div class="control-group">											
			<div class="controls">
				<input type="hidden" id="sample6_postcode-6" class="span2 m-wrap" placeholder="우편번호">
								<input type="button" onclick="sample6_execDaumPostcode6()" class="btn" value="주소 찾기"><br>
								<input type="text" name="requestAdd1" id="requestAdd1-6" class="span3_m-wrap" placeholder="주소"><br>
								<input type="text" name="requestAdd2" id=requestAdd2-6 class="span2_m-wrap" placeholder="상세주소">
								<input type="text" name="requestAdd3" id="requestAdd3-6" class="span2_m-wrap" placeholder="상세주소2">
								
								<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
								<script>
								    function sample6_execDaumPostcode6() {
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
								                        extraAddr = ' (' + extraAddr + ')';
								                    }
								                    // 조합된 참고항목을 해당 필드에 넣는다.
								                    document.getElementById("requestAdd3-6").value = extraAddr;
								                
								                } else {
								                    document.getElementById("requestAdd3-6").value = '';
								                }
								
								                // 우편번호와 주소 정보를 해당 필드에 넣는다.
								                document.getElementById('sample6_postcode-6').value = data.zonecode;
								                document.getElementById("requestAdd1-6").value = addr;
								                // 커서를 상세주소 필드로 이동한다.
								                document.getElementById("requestAdd2-6").focus();
								            }
								        }).open();
								    }
								</script>
				
			</div> <!-- /controls -->				
		</div> <!-- /control-group -->
               	</div> 
              	</div>
              </div>
              <div class="modal-footer">
              	 <button type="button" class="btn btn btn-outline-info" style="display: none" id="rc6-back1"><span class="ion-ios-arrow-back"></span></button>
              	 <button type="button" class="btn btn btn-outline-info" style="display: none" id="rc6-back2"><span class="ion-ios-arrow-back"></span></button>
                 <button type="button" class="btn btn btn-outline-warning" style="display: none" id="rc6-next1">다음</button>
                 <button type="button" class="btn btn btn-outline-warning" style="display: none" id="rc6-next2">다음</button>
                 <button type="submit" class="btn btn btn-outline-success" style="display: none" id="rc6-success">완료</button>
              </div>
              </form>
          </div>
      </div>
  </div>
<!-- modal end -->

<!-- modal -->
<div class="modal fade" id="recommend-show7" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
          <div class="modal-content" id="find_modal-content">
              <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">fiNdhErO</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                  </button>
              </div> 
              <div class="progress">
				<div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" style="width: 0%"  aria-valuemin="0" aria-valuemax="100"></div>
  			  </div>
              <form id="requestform" action="findRegister.action" method="post"> 
              <div class="modal-body">
              <input type="hidden" name="userNo" value="${ user.userNo }">
              <input type="hidden" name="requestField1" value="비지니스">
              <input type="hidden" name="requestField2" value="회계 / 세무">
              	<div id="rc7-find1" style="display: none" >
               	<div>
               		<img src="/findhero/resources/img/recommend-7.jpg" class="img-find1"><br><br>
               		<div><h2>몇가지 질문에 답해주세요.</h2></div>
               	</div>
              	</div>
              	<div id="rc7-find2" style="display: none" >
				<div class="title-box-d">
					<h4 class="title-d">STEP1</h4>      
				</div>
               	<div>
					<h5>사업자 종류는 어떻게 되시나요?</h5>
					<h5>어떤 서비스를 받고 싶으신가요? (세무대리, 종합소득세, 과세자료, 세무조사 등등)</h5>
					<h5>직원은 몇 명인가요? (대표 제외)</h5>
               	</div><hr>
               	<div class="title-box-d">
					<h5 class="title-d">예시</h5>       
				</div>
               	<div>
					<h5>ex) 개인사업자, 세무조사, 10명</h5>
               	</div><hr>
               	<div class="title-box-d">
					<h5 class="title-d">답변</h5>       
				</div>
               	<div>
               		<h5>위의 예시처럼 작성해주세요.</h5>
					<textarea rows="1" cols="1" name="requestContent" id="requestContent" style="width: 100%; height: 70px;"></textarea>
               	</div> 
              	</div>
              	<div id="rc7-find3" style="display: none" >
				<div class="title-box-d">
					<h4 class="title-d">STEP2</h4>
				</div>
               	<div>
					<h5>만나길 원하는 요일을 적어주세요. (중복가능)</h5>
					<input type="text" name="requestDay" id="requestDay"><hr>
					<h5>원하는 기간을 적어주세요.</h5> 
					<input type="text" name="requestTerm" id="requestTerm"><hr>
					<h5>만나기 원하는 장소를 찾아주세요.</h5>
					<div class="control-group">											
			<div class="controls">
				<input type="hidden" id="sample6_postcode-7" class="span2 m-wrap" placeholder="우편번호">
								<input type="button" onclick="sample6_execDaumPostcode7()" class="btn" value="주소 찾기"><br>
								<input type="text" name="requestAdd1" id="requestAdd1-7" class="span3_m-wrap" placeholder="주소"><br>
								<input type="text" name="requestAdd2" id=requestAdd2-7 class="span2_m-wrap" placeholder="상세주소">
								<input type="text" name="requestAdd3" id="requestAdd3-7" class="span2_m-wrap" placeholder="상세주소2">
								
								<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
								<script>
								    function sample6_execDaumPostcode7() {
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
								                        extraAddr = ' (' + extraAddr + ')';
								                    }
								                    // 조합된 참고항목을 해당 필드에 넣는다.
								                    document.getElementById("requestAdd3-7").value = extraAddr;
								                
								                } else {
								                    document.getElementById("requestAdd3-7").value = '';
								                }
								
								                // 우편번호와 주소 정보를 해당 필드에 넣는다.
								                document.getElementById('sample6_postcode-7').value = data.zonecode;
								                document.getElementById("requestAdd1-7").value = addr;
								                // 커서를 상세주소 필드로 이동한다.
								                document.getElementById("requestAdd2-7").focus();
								            }
								        }).open();
								    }
								</script>
				
			</div> <!-- /controls -->				
		</div> <!-- /control-group -->
               	</div> 
              	</div>
              </div>
              <div class="modal-footer">
              	 <button type="button" class="btn btn btn-outline-info" style="display: none" id="rc7-back1"><span class="ion-ios-arrow-back"></span></button>
              	 <button type="button" class="btn btn btn-outline-info" style="display: none" id="rc7-back2"><span class="ion-ios-arrow-back"></span></button>
                 <button type="button" class="btn btn btn-outline-warning" style="display: none" id="rc7-next1">다음</button>
                 <button type="button" class="btn btn btn-outline-warning" style="display: none" id="rc7-next2">다음</button>
                 <button type="submit" class="btn btn btn-outline-success" style="display: none" id="rc7-success">완료</button>
              </div>
              </form>
          </div>
      </div>
  </div>
<!-- modal end -->

<!-- modal -->
<div class="modal fade" id="recommend-show8" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
          <div class="modal-content" id="find_modal-content">
              <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">fiNdhErO</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                  </button>
              </div> 
              <div class="progress">
				<div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" style="width: 0%"  aria-valuemin="0" aria-valuemax="100"></div>
  			  </div>
              <form id="requestform" action="findRegister.action" method="post"> 
              <div class="modal-body">
              <input type="hidden" name="userNo" value="${ user.userNo }">
              <input type="hidden" name="requestField1" value="비지니스">
              <input type="hidden" name="requestField2" value="회계 / 세무">
              	<div id="rc8-find1" style="display: none" >
               	<div>
               		<img src="/findhero/resources/img/recommend-8.jpg" class="img-find1"><br><br>
               		<div><h2>몇가지 질문에 답해주세요.</h2></div>
               	</div>
              	</div>
              	<div id="rc8-find2" style="display: none" >
				<div class="title-box-d">
					<h4 class="title-d">STEP1</h4>      
				</div>
               	<div>
					<h5>사업자 종류는 어떻게 되시나요?</h5>
					<h5>어떤 서비스를 받고 싶으신가요? (세무대리, 종합소득세, 과세자료, 세무조사 등등)</h5>
					<h5>직원은 몇 명인가요? (대표 제외)</h5>
               	</div><hr>
               	<div class="title-box-d">
					<h5 class="title-d">예시</h5>       
				</div>
               	<div>
					<h5>ex) 개인사업자, 세무조사, 10명</h5>
               	</div><hr>
               	<div class="title-box-d">
					<h5 class="title-d">답변</h5>       
				</div>
               	<div>
               		<h5>위의 예시처럼 작성해주세요.</h5>
					<textarea rows="1" cols="1" name="requestContent" id="requestContent" style="width: 100%; height: 70px;"></textarea>
               	</div> 
              	</div>
              	<div id="rc8-find3" style="display: none" >
				<div class="title-box-d">
					<h4 class="title-d">STEP2</h4>
				</div>
               	<div>
					<h5>만나길 원하는 요일을 적어주세요. (중복가능)</h5>
					<input type="text" name="requestDay" id="requestDay"><hr>
					<h5>원하는 기간을 적어주세요.</h5> 
					<input type="text" name="requestTerm" id="requestTerm"><hr>
					<h5>만나기 원하는 장소를 찾아주세요.</h5>
					<div class="control-group">											
			<div class="controls">
				<input type="hidden" id="sample6_postcode-8" class="span2 m-wrap" placeholder="우편번호">
								<input type="button" onclick="sample6_execDaumPostcode8()" class="btn" value="주소 찾기"><br>
								<input type="text" name="requestAdd1" id="requestAdd1-8" class="span3_m-wrap" placeholder="주소"><br>
								<input type="text" name="requestAdd2" id=requestAdd2-8 class="span2_m-wrap" placeholder="상세주소">
								<input type="text" name="requestAdd3" id="requestAdd3-8" class="span2_m-wrap" placeholder="상세주소2">
								
								<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
								<script>
								    function sample6_execDaumPostcode8() {
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
								                        extraAddr = extraAddr;
								                    }
								                    // 조합된 참고항목을 해당 필드에 넣는다.
								                    document.getElementById("requestAdd3-8").value = extraAddr;
								                
								                } else {
								                    document.getElementById("requestAdd3-8").value = '';
								                }
								
								                // 우편번호와 주소 정보를 해당 필드에 넣는다.
								                document.getElementById('sample6_postcode-8').value = data.zonecode;
								                document.getElementById("requestAdd1-8").value = addr;
								                // 커서를 상세주소 필드로 이동한다.
								                document.getElementById("requestAdd2-8").focus();
								            }
								        }).open();
								    }
								</script>
				
			</div> <!-- /controls -->				
		</div> <!-- /control-group -->
               	</div> 
              	</div>
              </div>
              <div class="modal-footer">
              	 <button type="button" class="btn btn btn-outline-info" style="display: none" id="rc8-back1"><span class="ion-ios-arrow-back"></span></button>
              	 <button type="button" class="btn btn btn-outline-info" style="display: none" id="rc8-back2"><span class="ion-ios-arrow-back"></span></button>
                 <button type="button" class="btn btn btn-outline-warning" style="display: none" id="rc8-next1">다음</button>
                 <button type="button" class="btn btn btn-outline-warning" style="display: none" id="rc8-next2">다음</button>
                 <button type="submit" class="btn btn btn-outline-success" style="display: none" id="rc8-success">완료</button>
              </div>
              </form>
          </div>
      </div>
  </div>
<!-- modal end -->

<!-- modal -->
<div class="modal fade" id="recommend-show9" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
          <div class="modal-content" id="find_modal-content">
              <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">fiNdhErO</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                  </button>
              </div> 
              <div class="progress">
				<div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" style="width: 0%"  aria-valuemin="0" aria-valuemax="100"></div>
  			  </div>
              <form id="requestform" action="findRegister.action" method="post"> 
              <div class="modal-body">
              <input type="hidden" name="userNo" value="${ user.userNo }">
              <input type="hidden" name="requestField1" value="비지니스">
              <input type="hidden" name="requestField2" value="회계 / 세무">
              	<div id="rc9-find1" style="display: none" >
               	<div>
               		<img src="/findhero/resources/img/recommend-9.jpg" class="img-find1"><br><br>
               		<div><h2>몇가지 질문에 답해주세요.</h2></div>
               	</div>
              	</div>
              	<div id="rc9-find2" style="display: none" >
				<div class="title-box-d">
					<h4 class="title-d">STEP1</h4>      
				</div>
               	<div>
					<h5>사업자 종류는 어떻게 되시나요?</h5>
					<h5>어떤 서비스를 받고 싶으신가요? (세무대리, 종합소득세, 과세자료, 세무조사 등등)</h5>
					<h5>직원은 몇 명인가요? (대표 제외)</h5>
               	</div><hr>
               	<div class="title-box-d">
					<h5 class="title-d">예시</h5>       
				</div>
               	<div>
					<h5>ex) 개인사업자, 세무조사, 10명</h5>
               	</div><hr>
               	<div class="title-box-d">
					<h5 class="title-d">답변</h5>       
				</div>
               	<div>
               		<h5>위의 예시처럼 작성해주세요.</h5>
					<textarea rows="1" cols="1" name="requestContent" id="requestContent" style="width: 100%; height: 70px;"></textarea>
               	</div> 
              	</div>
              	<div id="rc9-find3" style="display: none" >
				<div class="title-box-d">
					<h4 class="title-d">STEP2</h4>
				</div>
               	<div>
					<h5>만나길 원하는 요일을 적어주세요. (중복가능)</h5>
					<input type="text" name="requestDay" id="requestDay"><hr>
					<h5>원하는 기간을 적어주세요.</h5> 
					<input type="text" name="requestTerm" id="requestTerm"><hr>
					<h5>만나기 원하는 장소를 찾아주세요.</h5>
					<div class="control-group">											
			<div class="controls">
				<input type="hidden" id="sample6_postcode-9" class="span2 m-wrap" placeholder="우편번호">
								<input type="button" onclick="sample6_execDaumPostcode9()" class="btn" value="주소 찾기"><br>
								<input type="text" name="requestAdd1" id="requestAdd1-9" class="span3_m-wrap" placeholder="주소"><br>
								<input type="text" name="requestAdd2" id=requestAdd2-9 class="span2_m-wrap" placeholder="상세주소">
								<input type="text" name="requestAdd3" id="requestAdd3-9" class="span2_m-wrap" placeholder="상세주소2">
								
								<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
								<script>
								    function sample6_execDaumPostcode9() {
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
								                        extraAddr = ' (' + extraAddr + ')';
								                    }
								                    // 조합된 참고항목을 해당 필드에 넣는다.
								                    document.getElementById("requestAdd3-9").value = extraAddr;
								                
								                } else {
								                    document.getElementById("requestAdd3-9").value = '';
								                }
								
								                // 우편번호와 주소 정보를 해당 필드에 넣는다.
								                document.getElementById('sample6_postcode-9').value = data.zonecode;
								                document.getElementById("requestAdd1-9").value = addr;
								                // 커서를 상세주소 필드로 이동한다.
								                document.getElementById("requestAdd2-9").focus();
								            }
								        }).open();
								    }
								</script>
				
			</div> <!-- /controls -->				
		</div> <!-- /control-group -->
               	</div> 
              	</div>
              </div>
              <div class="modal-footer">
              	 <button type="button" class="btn btn btn-outline-info" style="display: none" id="rc9-back1"><span class="ion-ios-arrow-back"></span></button>
              	 <button type="button" class="btn btn btn-outline-info" style="display: none" id="rc9-back2"><span class="ion-ios-arrow-back"></span></button>
                 <button type="button" class="btn btn btn-outline-warning" style="display: none" id="rc9-next1">다음</button>
                 <button type="button" class="btn btn btn-outline-warning" style="display: none" id="rc9-next2">다음</button>
                 <button type="submit" class="btn btn btn-outline-success" style="display: none" id="rc9-success">완료</button>
              </div>
              </form>
          </div>
      </div>
  </div>
<!-- modal end -->








