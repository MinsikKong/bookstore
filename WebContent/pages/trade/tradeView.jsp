<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import = "dto.BookDTO" %>
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
			<div class="span10 ">

				<!-- RightTop -->
				<div class="well">
					<div>
					<div>총 구매 기록</div>
						<c:forEach var="buyBook" items="${bDto}" varStatus="status">
							<div>
							제목 :<c:out value="${buyBook.title}"/>
							저자 :<c:out value="${buyBook.author}"/>
							<%-- 구매량 :<c:out value="${buyBook.quantity}"/> --%>
							가격 :<c:out value="${buyBook.price}"/>
							 </div>
						</c:forEach>
					</div>
					<div>총 구매 누계 : <c:out value="${totalBuyPrice}"/></div>
				</div>

				<!-- Right bottom -->
				<div class="well">
					<div>
						<div>총 판매 기록</div>
						<c:forEach var="sellBook" items="${sDto}" varStatus="status">
							<div>제목 :<c:out value="${sellBook.title}"/>
							저자 :<c:out value="${sellBook.author}"/>
							<%-- <c:out value="${sellBook.quantity}"/> --%>
							가격 :<c:out value="${sellBook.price}"/></div>
						</c:forEach></div>
					<div>총 판매 누계 : <c:out value="${totalSellPrice}"/></div>
				</div>
			</div>
		</div>
	</div>


	<!-- include footer -->
	<jsp:include page="/pages/common/footer.jsp" />

</body>
</html>