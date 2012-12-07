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
			<div class="span2">
				<!--Sidebar content-->

				<jsp:include page="/pages/blog/blogBasicInfo.jsp" />
			</div>

			<!--Body content-->
			<div class="span10">

				<!-- RightTop -->
				<div>사용자에게 친구 요청한 사용자의 목록 ( 수락, 거부 버튼) ( ID 클릭시 해당 사용자 블로그로
					이동)</div>

				<!-- Right bottom -->
				<!-- 현재 친구 목록 -->
				<c:forEach begin="1" end="2" step="1">
					<div>

						<a href="#" 공민식
						<button class="btn btn-danger" type="button">삭제</button>

					</div>
				</c:forEach>
			</div>
		</div>
	</div>

	<!-- include footer -->
	<jsp:include page="/pages/common/footer.jsp" />

</body>
</html>