<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="/book/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="/book/css/blog.css" rel="stylesheet">
<script type="text/javascript" src="/book/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/book/js/bootstrap.min.js"></script>

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
			<div class="span10 ">

				<!-- RightTop -->
				<div>
					<div>총 구매 내역 표시. 옆에 환불 버튼 표시</div>
					<div>총 구매내역의 가격 표시</div>
				</div>

				<!-- Right bottom -->
				<div>
					<div>총 판매 내역 표시</div>
					<div>총 판매 내역의 가격 표시</div>
				</div>
			</div>
		</div>
	</div>


	<!-- include footer -->
	<jsp:include page="/pages/common/footer.jsp" />

</body>
</html>