<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<div class="container">
	<form action="/auth/login" method="post">
		<div class="form-group">
			<label for="title">제목</label>
			<input type="text" class="form-control" placeholder="Enter Title" id="title">
		</div>

		<div class="form-group">
		  <label for="content">내용</label>
		  <textarea class="form-control summernote" rows="5" id="content"></textarea>
		</div>
	</form>

	<button id="btn_save" class="btn btn-primary">저장</button>
</div>

<script>
	$('.summernote').summernote({
	  placeholder: 'Hello Bootstrap 4',
	  tabsize: 2,
	  height: 300
	});
</script>

<script src="/js/function/board.js"></script>
<%@ include file="../layout/footer.jsp"%>