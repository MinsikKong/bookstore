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
							<img src="/book/img/trade/bookImg.jpg" alt="책이미지"
								class="img_size" />
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
				<form class="form-horizontal" name="purchaseForm" method="post" action = "/book/trade?op=purchase">
					<div class="shipping_info">
						<h2>배송정보</h2>

						<div class="control-group">
							<label class="control-label" for="name">이름</label>
							<div class="controls">
								<input type="text" name="name" placeholder="이름">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="postalcode">우편번호</label>
							<div class="controls">
								<input type="text" name="postalcode" placeholder="Postalcode">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="addressline1">주소</label>
							<div class="controls">
								<input type="text" name="addressline1"
									placeholder="주소">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="addressline2">상세주소</label>
							<div class="controls">
								<input type="text" name="addressline2"
									placeholder="상세주소">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="phoneNumber">연락처</label>
							<div class="controls">
								<input type="text" name="phoneNumber"
									placeholder="연락처">
							</div>
						</div>
					</div>

					<div class="payment_info float_style">
						<h2>결제정보</h2>

						<div class="control-group">
							<label class="control-label" for="cardNumber">카드번호</label>
							<div class="controls">
								<input type="text" name="cardNumber" placeholder="Name">
							</div>
						</div>
					</div>

					<div class="price_info right_align">
						<div>
							<h2>총 가격 : 10000원</h2>
						</div>
						<div>
							<a href="#" data-action="input-data" class="btn btn-large btn-primary ">구매하기</a>
						</div>
					</div>
					<input type="hidden" name="articeIdx" value="" />
					<input type="hidden" name="buyerId" value="" />
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
		
		$("a[data-action='input-data']").click(function() {
			
			form = document.purchaseForm;
			if (form.name.value == '') {
				alert("이름을 입력하세요");
				form.name.focus();
				return;
			}
			if (form.postalcode.value == '') {
				alert("우편번호를 입력하세요");
				form.postalcode.focus();
				return;
			}
			if (form.addressline1.value == '') {
				alert("주소를 입력하세요");
				form.addressline1.focus();
				return;
			}
			if (form.addressline2.value == '') {
				alert("상세주소를 입력하세요");
				form.addressline2.focus();
				return;
			}
			if (form.phoneNumber.value == '') {
				alert("연락처를 입력하세요");
				form.phoneNumber.focus();
				return;
			}
			if (form.cardNumber.value == '') {
				alert("카드번호를 입력하세요");
				form.cardNumber.focus();
				return;
			}
			if (confirm("내용을 전송하시겠습니까?")) {
				form.submit();
			}
		});
	});
	
</script>
</html>