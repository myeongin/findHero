<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


<div class="modal fade" id="expertregister" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content" id="find_modal-content">

			<div class="modal-header">
				<div class="title-box-d">
					<h4 class="title-d">Service Register</h4>
				</div>
			</div>
			<div class="progress">
				<div
					class="progress-bar bg-warning progress-bar-striped progress-bar-animated"
					style="width: 0%" aria-valuemin="0" aria-valuemax="100"></div>
			</div>

			<form action="/findhero/contents/lessonregister.action" method="post"
				id="expertregisters" enctype="multipart/form-data">

				<input type="hidden" name="heroNo" value="${ hero.heroNo }">

				<div class="modal-body">
					<div id="first" style="display: none">
						<label for="image" class="col-form-label lableweight">Image</label>
						<input type="file" multiple="multiple" id="attach"
							class="btn btn-outline-warning btn-sm" accept="image/*"
							name="attach" /> <br> <label for="title"
							class="col-form-label lableweight">*Title</label> <input
							type="text" class="form-control" id="lesson-title" name="RsTitle" />

						<br> <label for="field1" class="col-form-label">*Field&nbsp;&nbsp;&nbsp;
							<input type="radio" name="RsField1" id="field" value="레슨" />레슨
							&nbsp;&nbsp; <input type="radio" name="RsField1" id="field"
							value="비즈니스" />비즈니스&nbsp;&nbsp; <input type="radio"
							name="RsField1" id="field" value="디자인/개발" />디자인/개발


						</label> <br> <br> <label for="field2"
							class="col-form-label lableweight">*Detail Field</label>&nbsp;
						<%-- rsfield1에서 선택한것에 따라 select 옵션 choose문으로 변경 --%>
						<%-- <c:choose>
						<c:when test="${ }" --%>
						<select size=1 name="RsField2" id="selectBox">
							<option value="">분야선택</option>
						</select> <select size=1 class="buis" name="RsField2">
							<option value="">분야선택</option>
						</select> <select size=1 class="design" name="RsField2">
							<option value="">분야선택</option>
						</select>

					</div>
					<div id="second" style="display: none">
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
						<span class="term"> (예: 예상기간입력 / 10일) </span> <input type="text"
							class="form-control" id="testDatepicker" name="RsTerm" />


					</div>

					<div id="third" style="display: none">
						<label for="meetingday" class="col-form-label lableweight">만나고
							싶은 희망 요일</label><br>
						<div class="weekDays-selector">
							<input type="checkbox" id="weekday-mon" class="weekday" name="RsDay" value="월요일"/> 
							<label
								for="weekday-mon">월</label> <input type="checkbox" name="RsDay" value="화요일"
								id="weekday-tue" class="weekday" /> <label for="weekday-tue">화</label>
							<input type="checkbox" name="RsDay" id="weekday-wed" class="weekday"  value="수요일"/> <label
								for="weekday-wed">수</label> <input type="checkbox" name="RsDay" value="목요일"
 								id="weekday-thu" class="weekday" /> <label for="weekday-thu">목</label>
							<input type="checkbox" id="weekday-fri" name="RsDay" class="weekday"  value="금요일"/> <label
								for="weekday-fri">금</label> <input type="checkbox" name="RsDay"
								id="weekday-sat" class="weekday" value="토요일" /> <label for="weekday-sat">토</label>
							<input type="checkbox" id="weekday-sun" name="RsDay" class="weekday" value="일요일"/> <label
								for="weekday-sun">일</label>
						</div>
						<!-- <span class="expl">(신청받은 분과 협의해서
							변경가능합니다.)</span><br> <input type="text" class="form-control"
							name="RsDay" /> -->
							
						<label for="address1" class="col-form-label lableweight">*만나고
							싶은 희망 장소</label> <input type="hidden" id="sample6_postcode-1"
							class="span2 m-wrap" placeholder="우편번호"> <input
							type="button" onclick="sample6_execDaumPostcode1()"
							class="btn btn-outline-warning btn-sm" value="주소 찾기"><br>
						<input type="text" name="rsAdd1" id="requestAdd1-1"
							class="span3_m-wrap" placeholder="주소"><br> <input
							type="text" name="rsAdd2" id="requestAdd2-1" class="span2_m-wrap"
							placeholder="상세주소"><br> <input type="text"
							name="rsAdd3" id="requestAdd3-1" class="span2_m-wrap"
							placeholder="상세주소2">
					</div>

					<div id="forth" style="display: none">
						<label for="price" class="col-form-label lableweight">*가격</label>
						<input type="text" class="form-control" name="RsPrice" id="price" />
						<!-- <label
							for="startday" class="col-form-label lableweight">*시작일
							(정식기간)</label> -->
						<input type="hidden" class="form-control" id="start" value=""
							name="RsStart" />
						<!-- <label for="endday" class="col-form-label lableweight">*종료일</label> -->
						<input type="hidden" class="form-control" name="RsEnd" value=""
							readonly="readonly" /> <br>
						<label for="content" class="col-form-label lableweight">사용자분들에게
							등록하신 서비스에 대해서 알려주세요! </label> <br> <span
							style="color: red; margin-left: 240px;" id="counter">(0 /
							최대 1000자)</span> <br>
						<textarea name="RsContent" id="content" cols="43" rows="5"></textarea>


					</div>
					<br>
				</div>



				<div class="modal-footer">

					<button type="button" class="btn btn btn-outline-info"
						style="display: none" id="back1">
						<span class="ion-ios-arrow-back"></span>
					</button>
					<button type="button" class="btn btn btn-outline-info"
						style="display: none" id="back2">
						<span class="ion-ios-arrow-back"></span>
					</button>
					<button type="button" class="btn btn btn-outline-info"
						style="display: none" id="back3">
						<span class="ion-ios-arrow-back"></span>
					</button>
					<button type="button" class="btn btn btn-outline-info"
						style="display: none" id="back4">
						<span class="ion-ios-arrow-back"></span>
					</button>
					<button type="button" class="btn btn-outline-warning"
						style="display: none" id="next1">다음</button>
					<button type="button" class="btn btn-outline-warning"
						style="display: none" id="next2">다음</button>
					<button type="button" class="btn btn-outline-warning"
						style="display: none" id="next3">다음</button>
					&nbsp;

					<button type="button" id="reg" class="btn btn-outline-success"
						style="display: none">등록</button>
					&nbsp;
					<button type="button" id="close" class="btn btn-outline-danger"
						style="display: none" data-dismiss="modal">cancel</button>

				</div>
			</form>
		</div>
	</div>
</div>
<!-- modal end -->


<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  
<script type="text/javascript">
	$(function() {

		$("#registermodal").click(function() {
			$("#expertregister").modal("show");
			$('#next1').css("display", "block");
			$('#first').css("display", "block");
			$('#second').css("display", "none");
			$('#third').css("display", "none");
			$('#forth').css("display", "none");
			$('#reg').css("display", "none");
			$('#close').css("display", "block");

		});

		$('#next1').on('click', function(event) {

			if ($('#attach').val().length == 0) {
				alert('이미지는 필수첨부 사항입니다.');
				$('#attach').focus();
				return;
			}

			if ($('#lesson-title').val().length == 0) {
				alert('서비스명은 필수입력 사항입니다.');
				$('#lesson-title').focus();
				return;
			}
		});

		$('#next1').on(
				'click',
				function(event) {

					if (($('#lesson-title').val().length != 0)
							&& $('#attach').val().length != 0) {

						$('.progress-bar').width(40 + '%');
						$('#back1').css("display", "block");
						$('#back2').css("display", "none");
						$('#back3').css("display", "none");
						$('#back4').css("display", "none");

						$('#next1').css("display", "none");
						$('#next2').css("display", "block");
						$('#next3').css("display", "none");
						$('#next4').css("display", "none");

						$('#first').css("display", "none");
						$('#second').css("display", "block");
						$('#third').css("display", "none");
						$('#forth').css("display", "none");
						$('#reg').css("display", "none");
						$('#close').css("display", "none");
					}

				});

		$('#back1').on('click', function(event) {
			$('.progress-bar').width(0 + '%');
			$('#back1').css("display", "none");
			$('#back2').css("display", "none");
			$('#back3').css("display", "none");
			$('#back4').css("display", "none");

			$('#next1').css("display", "block");
			$('#next2').css("display", "none");
			$('#next3').css("display", "none");
			$('#next4').css("display", "none");

			$('#first').css("display", "block");
			$('#second').css("display", "none");
			$('#third').css("display", "none");
			$('#reg').css("display", "none");
			$('#close').css("display", "none");
		});

		$('#next2').on('click', function(event) {
			$('.progress-bar').width(70 + '%')
			$('#back1').css("display", "none");
			$('#back2').css("display", "block");
			$('#back3').css("display", "none");
			$('#back4').css("display", "none");

			$('#next1').css("display", "none");
			$('#next2').css("display", "none");
			$('#next3').css("display", "block");
			$('#next4').css("display", "none");

			$('#first').css("display", "none");
			$('#second').css("display", "none");
			$('#third').css("display", "block");
			$('#forth').css("display", "none");

			$('#reg').css("display", "none");
			$('#close').css("display", "none");
		});

		$('#back2').on('click', function(event) {
			$('.progress-bar').width(40 + '%');
			$('#back1').css("display", "block");
			$('#back2').css("display", "none");
			$('#back3').css("display", "none");
			$('#back4').css("display", "none");

			$('#next1').css("display", "none");
			$('#next2').css("display", "block");
			$('#next3').css("display", "none");
			$('#next4').css("display", "none");

			$('#first').css("display", "none");
			$('#second').css("display", "block");
			$('#third').css("display", "none");
			$('#reg').css("display", "none");
			$('#close').css("display", "none");
		});

		$('#next3').on('click', function(event) {
			$('.progress-bar').width(100 + '%');
			$('#back1').css("display", "none");
			$('#back2').css("display", "none");
			$('#back3').css("display", "block");
			$('#back4').css("display", "none");

			$('#next1').css("display", "none");
			$('#next2').css("display", "none");
			$('#next3').css("display", "none");
			$('#next4').css("display", "block");

			$('#first').css("display", "none");
			$('#second').css("display", "none");
			$('#third').css("display", "none");
			$('#forth').css("display", "block");

			$('#reg').css("display", "block");
			$('#close').css("display", "block");
		});

		$('#back3').on('click', function(event) {
			$('.progress-bar').width(70 + '%');
			$('#back1').css("display", "none");
			$('#back2').css("display", "block");
			$('#back3').css("display", "none");
			$('#back4').css("display", "none");

			$('#next1').css("display", "none");
			$('#next2').css("display", "none");
			$('#next3').css("display", "block");
			$('#next4').css("display", "none");

			$('#first').css("display", "none");
			$('#second').css("display", "none");
			$('#third').css("display", "block");
			$('#forth').css("display", "none");
			$('#reg').css("display", "none");
			$('#close').css("display", "none");

		});

		$("#close").click(function() {
			$("#register").modal("hide");
			$("#first").modal("hide");
			$("#second").modal("hide");
			$("#third").modal("hide");
			$("#forth").modal("hide");
		});

		$('#reg').on('click', function() {
			var price = $('#price').val();
			var start = $('#start').val();
			var content = $('#content').val();

			if (price.length == 0) {
				alert('가격은 필수입력 사항입니다.');
				price.focus();
				return;
			}

			/* if (start.length == 0) {
				alert('시작일은 필수입력 사항입니다.');
				start.focus();
				return;
			} */

			if (content.length == 0) {
				alert('소개글은 필수입력 사항입니다.');
				content.focus();
				return;
			}

			$('#expertregisters').submit();
		});

		$('#content').keyup(function(e) {
			var content = $(this).val();
			$('#counter').html("(" + content.length + " / 최대 1000자)");

			if (content.length > 1000) {
				alert("최대 1000자까지 입력 가능합니다.");
				$(this).val(content.substring(0, 1000));
				$('#counter').html("(1000 / 최대 1000자)");
			}
		});

		$('#lesson-title').keyup(function(e) {
			var content = $(this).val();
			/*  $('#counter').html("("+content.length+" / 최대 1000자)");  */

			if (content.length > 10) {
				alert("최대 10자까지 입력 가능합니다.");
				$(this).val(content.substring(0, 10));
				/*  $('#counter').html("(1000 / 최대 1000자)"); */
			}
		});
		
		
		 $( "#testDatepicker" ).datepicker({
			 numberOfMonths: [2,2]
		    });

	});
<%-- end function--%>



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
							/* if (extraAddr !== '') {
								extraAddr = ' (' + extraAddr + ')';
							} */
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





