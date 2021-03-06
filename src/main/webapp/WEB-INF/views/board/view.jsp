<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">
	
	<button class="btn btn-secondary" onclick="history.back()">돌아가기</button>
	<c:if test="${boardView.user.id == principal.user.id }">
		<a href="/board/${boardView.id }/update" class="btn btn-warning">수정</a>
		<button id="btn_delete" class="btn btn-danger">삭제</button>
	</c:if>
	<br><br>
	<div>
		글 번호 : <span id="id" ><i>${boardView.id }</i></span>
		작성자 : <span><i>${boardView.user.username } </i></span>
	</div>
	<div class="form-group">
		<h3>${boardView.title }</h3>
	</div>
	<hr>
	<div class="form-group">
		<div>${boardView.content }</div>
	</div>
	<hr>
	
	<div class="card">
		<input type="hidden" id="boardId" value="${boardView.id}">
		<div class="card-body">
			<textarea rows="1" class="form-control" id="reply_content"></textarea>
		</div>
		<div class="card-footer">
			<button class="btn btn-primary" id="btn_reply_save">등록</button>
		</div>
	</div>
	<br>
	<div class="card">
		<div class="card-header">댓글리스트</div>
		<ul class="list-group" id="reply_box">
			<c:forEach var="reply" items="${boardView.replys}">
				<li class="list-group-item d-flex justify-content-between" id="reply_${ reply.id}">
					<div>${ reply.content }</div>
					<div class="d-flex">
						<div class="font-italic"> 작성자 : ${reply.user.username} &nbsp;</div>
						<c:if test="${principal.user.id eq reply.user.id}">
							<button class="badge" onClick="board.replyDelete(${boardView.id}, ${reply.id})">삭제</button>
						</c:if>
					</div>
				</li>
			</c:forEach>
		</ul>
	</div>
</div>

<script src="/js/function/board.js"></script>
<%@ include file="../layout/footer.jsp"%>