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
				<form class="form-horizontal">
					<!-- 도서정보 -->
					<div class="control-group">
						<label class="control-label" for="ISBN">ISBN</label>
						<div class="controls">
							<input type="text" name="ISBN" placeholder="ISBN">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="subject">제목</label>
						<div class="controls">
							<input type="text" name="subject" placeholder="제목">
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
						<label class="control-label" for="uesdPrice">중고가</label>
						<div class="controls">
							<input type="text" name="uesdPrice" placeholder="중고가">
						</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="seller">판매자</label>
						<div class="controls">
							<input type="text" name="seller" placeholder="판매자">
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
						<label class="control-label" for="inputPassword">Password</label>
						<div class="controls">
							<input type="password" name="inputPassword"
								placeholder="Password">
						</div>
					</div>

					<div class="control-group">
						<div class="controls">
							<label class="checkbox"> <input type="checkbox">
								Remember me
							</label>
							<button type="submit" class="btn">등록</button>
						</div>
					</div>

				</form>
			</div>
		</div>
	</div>
	<!-- include footer -->
	<jsp:include page="/pages/common/footer.jsp" />

</body>
</html>