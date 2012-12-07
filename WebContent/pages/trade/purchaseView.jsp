<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

			<!-- 1 -->
			<div class="span2">
				<!--Sidebar content-->
				<pre>여기엔 뭘 넣어야 잘 넣었다고 소문이 날까 how to live smart <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
				</pre>
			</div>

			<!-- 2 -->
			<div class="span8">

				<!-- plz don't delete this div-->
				<div></div>

				<!-- Right bottom -->

				<div class="marginBottom">
					<div>도서</div>
					<div>
						<div class="float_style">
							<img src="/book/img/trade/bookImg.jpg" alt="책이미지" class="img_size" />
						</div>
						<div class="only_child_float contentsSpace">
							<div>
								<a href="/book/trade?op=sellerView">제목 : 공민식은 왜 웹프를 하지 않는가</a>
							</div>
							<div>저자 : 박현수</div>
							
							<!-- 정가는 디비에서 -->
							<div>정가 : 10000원</div>
							
							<!-- 판매자가 올린 가격도 디비에서 -->
							<div>판매가: 5000원</div>
							
						</div>
					</div>
				</div>
				<form class="form-horizontal">
					<div class="shipping_info">
						<h2>배송정보</h2>

						<div class="control-group">
							<label class="control-label" for="inputName">이름</label>
							<div class="controls">
								<input type="text" id="inputName" placeholder="Name">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputPostalcode">우편번호</label>
							<div class="controls">
								<input type="text" id="inputPostalcode" placeholder="Postalcode">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputAddressline1">주소</label>
							<div class="controls">
								<input type="text" id="inputAddressline1"
									placeholder="Addlessline1">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputAddressline2">상세주소</label>
							<div class="controls">
								<input type="text" id="inputAddressline1"
									placeholder="Addlessline2">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputPhonenumber">연락처</label>
							<div class="controls">
								<input type="text" id="inputPhonenumber"
									placeholder="Phonenumber">
							</div>
						</div>
					</div>

					<div class="payment_info">
						<h2>결제정보</h2>

						<div class="control-group">
							<label class="control-label" for="inputCardnunber">카드번호</label>
							<div class="controls">
								<input type="text" id="inputCardnunber" placeholder="Name">
							</div>
						</div>
					</div>

					<div class="price_info">
						<h2>가격정보</h2>
						총 얼마 나옴
						<button type="submit" class="btn btn-primary">구매하기</button>
						<button type="submit" class="btn">안사</button>
					</div>
				</form>
			</div>

			<!-- 3 -->
			<div class="span2">
				<div class="well">
					<div>dkfdnd님 환영합니다.</div>
					<div>
						<ul class="nav nav-list">
							<li><a href="/book/blog">내 블로그 가기</a></li>
							<li>개인정보 수정</li>
							<li>로그 아웃</li>
						</ul>
					</div>
				</div>

				<div class="well">최신 댓글이 표시됩니다.</div>
			</div>
		</div>
	</div>

	<!-- include footer -->
	<jsp:include page="/pages/common/footer.jsp" />

</body>
<script type="text/javascript">
	$(document).ready(function() {
		$(".contentsLine").ellipsis();
		$(".contentsLine2").ellipsis();
	});
</script>
</html>