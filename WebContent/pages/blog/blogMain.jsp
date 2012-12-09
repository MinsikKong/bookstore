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
		<jsp:param value="Blog" name="current" />
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

					<!-- Right Top 2-1 -->
					<div class="well">
					<div><h3>현재 판매중인도서</h3></div>
					<c:forEach var="nowSellBook" items="${nsDto}" varStatus="status">
							<div>
							제목 :<c:out value="${nowSellBook.title}"/>
							저자 :<c:out value="${nowSellBook.author}"/>
							<%-- 구매량 :<c:out value="${buyBook.quantity}"/> --%>
							가격 :<c:out value="${nowSellBook.price}"/>
							 </div>
						</c:forEach>
						</div>

					<!-- Right Top 2-2 -->
					<div>사용자게시물에 달린 댓글 우측 상단 더 보기 아이콘 존재</div>
				</div>

				<!-- Right bottom -->
				<div>사용자 게시물에 달린 후기 우측 상단 더 보기 아이콘 존재</div>
			</div>
		</div>
	</div>

	<!-- include footer -->
	<jsp:include page="/pages/common/footer.jsp" />

</body>
</html>