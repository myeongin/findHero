<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
  <!-- modal -->
<div class="modal fade" id="notice-show" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
          <div class="modal-content" id="find_modal-content">
              <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">fiNdhErO</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                  </button>
              </div> 
              <form id="requestform" action="findRegister.action" method="post"> 
              <div class="modal-body">
              	<div id="ns" style="display: none" >
              		<h4>일반회원만 이용가능합니다. 로그인 해주세요.</h4>
              	</div>
              </div>
              <div class="modal-footer">
              	 <button type="button" class="btn btn btn-outline-info" style="display: none" id="rc1-back1"><span class="ion-ios-arrow-back"></span></button>
              </div>
              </form>
          </div>
      </div>
  </div>
<!-- modal end -->
