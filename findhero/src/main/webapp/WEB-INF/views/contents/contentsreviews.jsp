<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach var="review" items="${ review }">
	<div class="box-comments" id="reviewlist">

		<ul class="list-comments">


			<li class="comment-children">
				<div class="comment-avatar">
					<img src="/findhero/resources/user-img/${ user.userImage }" alt=""
						onerror="this.src = '/findhero/resources/rsimg/noimg.png'">
					<%-- 이미지클릭하면 유저정보보기 --%>
				</div> <%-- 리뷰반복문 --%>

				<div class="comment-details">
					<h4 class="comment-author">${ user.userName }</h4>
					<span>${ review.regDate }</span>
					<p class="comment-description">${ review.reviewContent }</p>
				</div>

			</li>


		</ul>

	</div>
</c:forEach>
