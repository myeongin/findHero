<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>



<div class="modal fade" id="expertupdate" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content" id="find_modal-content">

			<div class="modal-header">
				<div class="title-box-d">
					<h4 class="title-d">Service Modify</h4>
				</div>
			</div>
			<div class="progress">
				<div
					class="progress-bar bg-warning progress-bar-striped progress-bar-animated"
					style="width: 0%" aria-valuemin="0" aria-valuemax="100"></div>
			</div>

			<form action="/findhero/contents/contentupdate.action" method="post"
				id="expert-update-form">

				<input id='hidden-herono' type="hidden" name="heroNo"
					value="${ hero.heroNo }"> <input id='hidden-rsno'
					type="hidden" name="rsNo" value="${ rsupd.rsNo }">
				<div class="modal-body">
					<div id="firsts" style="display: none">
						<label for="title" class="col-form-label lableweight">*Title</label>
						<input type="text" class="form-control" id="rstitle"
							name="RsTitle" value=${ rsupd.rsTitle } /> <br> <label
							for="field1" class="col-form-label">*Field&nbsp;&nbsp;&nbsp;
							<input type="radio" class="rsfield1" id="rsfield1" name="RsField1" value="레슨" />레슨	&nbsp;&nbsp; 
							<input type="radio" class="rsfield1"  id="rsfield1" name="RsField1" value="비즈니스" />비즈니스&nbsp;&nbsp; 
							<input type="radio" id="rsfield1" class="rsfield1"  name="RsField1" value="디자인/개발" />디자인/개발

						</label> <br> <br> <label for="field2"
							class="col-form-label lableweight">*Detail Field</label>&nbsp;
						<%-- rsfield1에서 선택한것에 따라 select 옵션 choose문으로 변경 --%>
						<select size=1 name="RsField2" id="selectBox2">
							<option value="">분야선택</option>
						</select>
						
						<select size=1 class="buis2" name="RsField2" >
							<option value="">분야선택</option>
						</select>
						
						<select size=1 class="design2" name="RsField2" >
							<option value="">분야선택</option>
						</select>
						
					</div>
					<div id="seconds" style="display: none">
						<label for="count" class="col-form-label lableweight">*인원
							수 </label> &nbsp;
						<select size=1 name="RsCount">
							<option value="">인원 수 선택</option>
							<% for(int i=0; i<=100; i += 5) {%> 
							<option value="<%= i %>"><%= i %></option>
							<% } %>
						</select><br>
						<!-- <div class="radcount">
							<input type="text" class="form-control" id="rscount"
								name="RsCount" />
						</div> -->


						<label for="term" class="col-form-label lableweight">*기간</label><br>
						<span class="term"> (예: 예상기간입력 / 2019. xx. xx ~ 2019. xx.
							xx)</span> <input type="text" class="form-control" name="RsTerm"
							id="rsterm" value=${ rsupd.rsTerm } />

					</div>

					<div id="thirds" style="display: none">
						<label for="meetingday" class="col-form-label lableweight">만나고
							싶은 희망 요일</label><br> <span class="expl">(신청받은 분과 협의해서
							변경가능합니다.)</span><br>
										<div class="weekDays-selector2">
							<input type="checkbox" id="weekday-mon2" class="weekday" name="RsDay" value="월요일"/> 
							<label
								for="weekday-mon2">월</label> <input type="checkbox" name="RsDay" value="화요일"
								id="weekday-tue2" class="weekday" /> <label for="weekday-tue2">화</label>
							<input type="checkbox" name="RsDay" id="weekday-wed2" class="weekday"  value="수요일"/> <label
								for="weekday-wed2">수</label> <input type="checkbox" name="RsDay" value="목요일"
 								id="weekday-thu2" class="weekday" /> <label for="weekday-thu2">목</label>
							<input type="checkbox" id="weekday-fri2" name="RsDay" class="weekday"  value="금요일"/> <label
								for="weekday-fri2">금</label> <input type="checkbox" name="RsDay"
								id="weekday-sat2" class="weekday" value="토요일" /> <label for="weekday-sat2">토</label>
							<input type="checkbox" id="weekday-sun2" name="RsDay" class="weekday" value="일요일"/> <label
								for="weekday-sun2">일</label>
						</div>
							
							 <%-- <input type="text" class="form-control"
							name="RsDay" id="rsday" value=${ rsupd.rsDay } />  --%>
							
							<label
							for="address1" class="col-form-label lableweight">*만나고 싶은
							희망 장소</label> <input type="hidden" id="sample6_postcode-1"
							class="span2 m-wrap" placeholder="우편번호"> <input
							type="button" onclick="sample6_execDaumPostcode1()" class="btn btn-outline-warning btn-sm"
							value="주소 찾기"><br> <input type="text" name="rsAdd1"
							id="rsadd1" class="span3_m-wrap" placeholder="주소"><br>
						<input type="text" name="rsAdd2" id="rsadd2"
							class="span2_m-wrap" placeholder="상세주소"> <br><input
							type="text" name="rsAdd3" id="rsadd3" class="span2_m-wrap"
							placeholder="상세주소2"> 
					</div>

					<div id="forths" style="display: none">
						<label for="price" class="col-form-label lableweight">*가격</label>
						<input type="text" class="form-control" name="RsPrice"
							id="rsprice" value=${ rsupd.rsPrice } /> <!-- <label for="startday"
							class="col-form-label lableweight">*시작일 (정식기간)</label> --> <input
							type="hidden" class="form-control" id="rsstart" name="RsStart"
							value=${ rsupd.rsStart } /> <!-- <label for="endday"
							class="col-form-label lableweight">*종료일</label> --> <input
							type="hidden" class="form-control" id="rsend" name="RsEnd"
							value=${ rsupd.rsEnd } /> <label for="content"
							class="col-form-label lableweight">사용자분들에게 등록하신 서비스에 대해서 알려주세요! (1000자 이내)</label> <br>
						<span
							style="color: red; margin-left: 240px;" id="counter2">(0 /
							최대 1000자)</span>
						<textarea name="RsContent" id="rscontent" cols="43" rows="5">${ rsupd.rsContent }</textarea>
					</div>
					<br>
				</div>



				<div class="modal-footer">

					<button type="button" class="btn btn btn-outline-info"
						style="display: none" id="back1s">
						<span class="ion-ios-arrow-back"></span>
					</button>
					<button type="button" class="btn btn btn-outline-info"
						style="display: none" id="back2s">
						<span class="ion-ios-arrow-back"></span>
					</button>
					<button type="button" class="btn btn btn-outline-info"
						style="display: none" id="back3s">
						<span class="ion-ios-arrow-back"></span>
					</button>
					<button type="button" class="btn btn btn-outline-info"
						style="display: none" id="back4s">
						<span class="ion-ios-arrow-back"></span>
					</button>
					<button type="button" class="btn btn-outline-warning"
						style="display: none" id="next1s">다음</button>
					<button type="button" class="btn btn-outline-warning"
						style="display: none" id="next2s">다음</button>
					<button type="button" class="btn btn-outline-warning"
						style="display: none" id="next3s">다음</button>
					&nbsp;

					<button type="button" id="upd" class="btn btn-outline-success"
						style="display: none">수정</button>
					&nbsp;
					<button type="button" id="closes" class="btn btn-outline-danger"
						style="display: none" data-dismiss="modal">cancel</button>

				</div>
			</form>
		</div>
	</div>
</div>
<!-- modal end -->

