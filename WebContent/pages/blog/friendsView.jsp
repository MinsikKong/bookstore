<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/pages/common/scriptHeaders.jsp" />

<script type="text/javascript">
	function acceptCheck(i) {
		$("form[class='friend']").find('#friendOp').val("acceptFriend");
		$("form[class='friend']").find('#friendId').val(i);
		$(".friend").submit();
	}
	function refusalCheck(i) {
		$("form[class='friend']").find('#friendOp').val("refusalFriend");
		$("form[class='friend']").find('#friendId').val(i);
		$(".friend").submit();
	}
	function deleteCheck(i) {
		$("form[class='friend']").find('#friendOp').val("deleteFriend");
		$("form[class='friend']").find('#friendId').val(i);
		$(".friend").submit();
	}
</script>
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
				<div>
					<div>나와 친구하고 싶어하는 사용자들</div>
					<div>
							<form class="friend" name="friendForm" action="/book/friend" method="post">
					<!-- RightTop -->
					<div class="hero-unit">
						나와 친구하고 싶어하는 사용자들</div>
							
							<c:forEach var="watingFriend" items="${fwLists}">
								<div>
									<a href="main?op=blog"> 공민식</a> <a href="#"
										onclick="acceptCheck('1')" class="btn btn-primary">수락</a> <a
										href="#" onclick="refusalcheck('1')" class="btn btn-danger">거부</a>
								</div>
							</c:forEach>
							<input type="hidden" id="friendOp" name="op" value="" /> <input
								type="hidden" id="friendId" name="friendId" value="" />
						</form>
						<form class="friend" name="friendForm" action="/book/friend"
							method="post">
							<!-- RightTop -->
							<div class="hero-unit">
								<div>나와 친구하고 싶어하는 사용자들</div>
								<div>

									<c:forEach var="watingFriend" items="${fwLists}">
										<div>
											<a href="main?op=blog"> <c:out
													value="${watingFriend.name}" /></a> <a href="#"
												onclick="acceptCheck('${watingFriend.id}')"
												class="btn btn-primary">수락</a> <a href="#"
												onclick="refusalCheck('${watingFriend.id}')"
												class="btn btn-danger">거부</a>
										</div>
									</c:forEach>
									<input type="hidden" id="friendOp" name="op" value="" /> <input
										type="hidden" id="friendId" name="friendId" value="" />
								</div>
							</div>
							<!-- Right bottom -->
							<!-- 현재 친구 목록 -->
							<div class="hero-unit">
								<div>나와 친구인 사용자들</div>
								<c:forEach var="friend" items="${fLists}">
									<div>
										<a href="#"><c:out value="${friend.name}" /></a> <a href="#"
											onclick="deleteCheck('${friend.id}')" class="btn btn-danger">삭제</a>
									</div>
								</c:forEach>
							</div>
						</form>
					</div>
				</div>
			</div>

			<!-- include footer -->
			<jsp:include page="/pages/common/footer.jsp" />
</body>
</html>