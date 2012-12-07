<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
>>>>>>> a3b16860af49bbdeaaf8a6e2bb10a229132416a3
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
<<<<<<< HEAD

=======
				
>>>>>>> a3b16860af49bbdeaaf8a6e2bb10a229132416a3
			</div>

			<!--Body content-->
			<div class="span10">

				<!-- RightTop -->
<<<<<<< HEAD
				<div>사용자에게 친구 요청한 사용자의 목록 ( 수락, 거부 버튼) ( ID 클릭시 해당 사용자 블로그로
					이동)</div>

				<!-- Right bottom -->
				<div>현재 친구 목록 (오른쪽에 삭제 버튼</div>
=======
				<div>
사용자에게 친구 요청한 
    사용자의 목록
    ( 수락, 거부 버튼)
    ( ID 클릭시 해당 사용자 
      블로그로 이동)

				</div>

				<!-- Right bottom -->
				<div>현재 친구 목록
    (오른쪽에 삭제 버튼
				</div>
>>>>>>> a3b16860af49bbdeaaf8a6e2bb10a229132416a3
			</div>
		</div>
	</div>

	<!-- include footer -->
	<jsp:include page="/pages/common/footer.jsp" />

</body>
</html>