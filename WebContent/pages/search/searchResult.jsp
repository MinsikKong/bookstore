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
			<div class="span10 ">



				<!-- RightTop -->
				<div>
					<!-- Right Top 2-1 -->






					<div class="search-result-sort">
						<ul class="nav nav-pills">
							<li class="active"><a href="#">링크가 필요할까</a></li>

							<li class="dropdown"><a class="dropdown-toggle"
								id="sort-by-reg-date" role="button" data-toggle="dropdown"
								href="#">등록일순 <b class="caret"></b>
								<ul id="menu1" class="dropdown-menu" role="menu">
									<li><a tabindex="-1" href="#">등록일 내림차순↓</a></li>
									<li><a tabindex="-1" href="#">등록일 오름차순↑</a></li>
								</ul></li>

							<li class="dropdown"><a class="dropdown-toggle"
								id="sort-by-price" role="button" data-toggle="dropdown" href="#">가격순
									<b class="caret"></b>
									<ul id="menu2" class="dropdown-menu" role="menu">
										<li><a tabindex="-1" href="#">등록일 내림차순↓</a></li>
										<li><a tabindex="-1" href="#">등록일 오름차순↑</a></li>
									</ul></li>

							<li class="dropdown"><a class="dropdown-toggle" id="drop5"
								role="button" data-toggle="dropdown" href="#">책 상태순<b
									class="caret"></b></a>
								<ul id="menu3" class="dropdown-menu" role="menu">
									<li><a tabindex="-1" href="#">등록일 내림차순↓</a></li>
									<li><a tabindex="-1" href="#">등록일 오름차순↑</a></li>
								</ul></li>
						</ul>
						<!-- /tabs -->
					</div>












					<div>현재 판매중인 도서, 우측 상단 더 보기 아이콘 존재</div>


					<!-- Right Top 2-2 -->
					<div>사용자게시물에 달린 댓글 우측 상단 더 보11112121221기 아이콘 존재</div>
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