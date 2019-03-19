<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


<div class="modal" id="aboutupdate">
	<div class="modal-dialog">
		<div class="modal-content">

			<!-- Modal Header -->
			<div class="modal-header">
				<div class="title-box-d">
					<h4 class="title-d">Modify About</h4>
				</div>
			</div>

			<form action="/findhero/contents/aboutupdate.action" method="post">
				<!-- Modal body -->
				<div class="modal-body">
					<input type="hidden" name="heroNo" value="${hero.heroNo }" /> 
					<input type="hidden" name="rsNo" value="${ rsdetail.rsNo }"/>
					<label
						for="about" class="col-form-label lableweight">About</label> <br>
					<textarea cols="43" rows="2" name="heroAbout" id="heroabout"></textarea>
					<br>
					<span style="color: red; margin-left:260px;" id="counter">(0 / 최대 45자)</span>

				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="submit" class="btn btn-outline-warning">수정</button>
					<button type="button" class="btn btn-outline-danger"
						data-dismiss="modal">Close</button>
				</div>
			</form>

		</div>
	</div>
</div>