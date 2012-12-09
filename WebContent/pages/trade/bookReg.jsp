<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/pages/common/scriptHeaders.jsp" />
</head>
<body>

	<!-- include header -->
	<jsp:include page="/pages/common/header.jsp">
		<jsp:param value="Home" name="current" />
	</jsp:include>

	<!-- contents div -->
	<div class="container-fluid">

		<div class="row-fluid">
			<div class="span2">
				<!--Sidebar content-->

				<jsp:include page="/pages/blog/blogBasicInfo.jsp" />

			</div>

			<!--Body content-->
			<div class="span10">
				<form class="form-horizontal" name="regForm" action="/book/trade?op=regBook" method="post">
					<!-- 도서정보 -->
					<div class="control-group">
						<label class="control-label" for="ISBN">ISBN</label>
						<div class="controls">
							<input type="text" name="ISBN" placeholder="ISBN">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="title">제목</label>
						<div class="controls">
							<input type="text" name="title" placeholder="제목">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="author">저자</label>
						<div class="controls">
							<input type="text" name="author" placeholder="저자">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="translateor">옮긴이</label>
						<div class="controls">
							<input type="text" name="translator" placeholder="옮긴이">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="publisher">출판사</label>
						<div class="controls">
							<input type="text" name="publisher" placeholder="출판사">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="publishDate">발행일</label>
						<div class="controls">
							<input type="text" name="publishDate" placeholder="발행일">
						</div>
					</div>

					<!-- 가격정보 -->

					<div class="control-group">
						<label class="control-label" for="price">정가</label>
						<div class="controls">
							<input type="text" name="price" placeholder="정가">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="quality">품질(상태)</label>
						<div class="controls">
							<input type="text" name="quality" placeholder="품질(상태)">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="usedPrice">희망가격</label>
						<div class="controls">
							<input type="text" name="usedPrice" placeholder="희망가격">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="stock">재고수량</label>
						<div class="controls">
							<input type="text" name="stock" placeholder="재고수량">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="explanation">판매자 설명</label>
						<div class="controls">
							<textarea rows="5" cols="30" name="contents"></textarea>
						</div>
					</div>
					
					<div class="control-group">
							<label class="control-label" for="password">Password</label>
							<div class="controls">
								<input type="password" name="password" placeholder="Password">
							</div>
						</div>
						
					<div class="control-group">
						<div class="controls">
							<label class="checkbox">
							</label>
							<a href="#" data-action="reg-book" class="btn btn-large btn-primary">도서 등록</a>
						</div>
					</div>

				</form>
			</div>
		</div>
	</div>
	<!-- include footer -->
	<jsp:include page="/pages/common/footer.jsp" />
</body>

<script type="text/javascript">
	$(function() {
		$("a[data-action='reg-book']").click(function() {
			form = document.regForm;
			if (form.ISBN.value == '') {
				alert("ISBN을 입력하세요");
				form.ISBN.focus();
				return;
			}
			if (form.title.value == '') {
				alert("제목을 입력하세요");
				form.title.focus();
				return;
			}
			if (form.author.value == '') {
				alert("저자를 입력하세요");
				form.author.focus();
				return;
			}
			
			if (form.translator.value == '') {
				alert("저자를 입력하세요");
				form.translator.focus();
				return;
			}
			if (form.publisher.value == '') {
				alert("출판사를 입력하세요");
				form.publisher.focus();
				return;
			}
			if (form.publishDate.value == '') {
				alert("출판일을 입력하세요");
				form.publishDate.focus();
				return;
			}
			if (form.price.value == '') {
				alert("가격을 입력하세요");
				form.price.focus();
				return;
			}
			if (form.quality.value == '') {
				alert("품질을 입력하세요");
				form.quality.focus();
				return;
			}
			if (form.usedPrice.value == '') {
				alert("희망가격을 입력하세요");
				form.usedPrice.focus();
				return;
			}
			if (form.stock.value == '') {
				alert("판매수량을 입력하세요");
				form.stock.focus();
				return;
			}
			if (form.contents.value == '') {
				alert("내용을 입력하세요");
				form.contents.focus();
				return;
			}
			if (form.password.value == '') {
				alert("게시물 비밀번호를 입력하세요");
				form.password.focus();
				return;
			}
			if (confirm("내용을 전송하시겠습니까?")) {
				form.submit();
			}
			
		});
	});
</script>
</html>