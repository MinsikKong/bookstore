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

				<!-- RightTop -->
				<div>현재 장바구니에 담아둔 품목과 금액 을 표시. 맨 오른편에 삭제버튼표시 맨 왼편에 체크박스를 달아
					체크한 것만 별도로 구매 가능하게 함. 도서를 클릭하면 도서 정보페이지로 이동</div>

				<!-- Right bottom -->
				<div>⑥총 장바구니 품목의 합계를 표시</div>
			</div>
		</div>
	</div>

	<!-- include footer -->
	<jsp:include page="/pages/common/footer.jsp" />

</body>
</html>