<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="dto.UserDTO"%>
<%@ page import="dao.UserDAO"%>
<%@ page import="dto.BookDTO"%>
<%@ page import="dao.BookDAO"%>
<%
	UserDTO user = UserDAO.getUsers("1");
	BookDTO recentBook = BookDAO.getRecentBook();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="/pages/common/scriptHeaders.jsp" />
<!-- 페북연동 -->
</head>
<body>

	<!-- include header -->
	<jsp:include page="/pages/common/header.jsp">
		<jsp:param value="Home" name="current" />
	</jsp:include>

	<!-- contents -->
	<div class="container-fluid">
		<div id="myCarousel" class="carousel slide">
			<!-- Carousel items -->
			<div class="carousel-inner">
				<div class="active item">
					<img src="/book/img/main/ajax.jpg" alt="오늘의 도서" />
				</div>
				<div class="item">
					<img src="/book/img/main/dp.jpg" alt="오늘의 도서" />
				</div>
				<div class="item">
					<img src="/book/img/main/js.jpg" alt="오늘의 도서" />
				</div>
			</div>
			<!-- Carousel nav -->
			<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
			<a class="carousel-control right" href="#myCarousel"
				data-slide="next">&rsaquo;</a>
		</div>


		<div class="row-fluid">

			<!--left content-->
			<div class="span2">
				<div>
					<h4>최근 등록된 도서</h4>


					<div class="thumbnail">
						<img src="http://placehold.it/300x200" alt="">
						<h3>
							<%
								out.println(recentBook.getTitle());
							%>
						</h3>
						<p>
							<%
								out.println(recentBook.getIntroduction());
							%>
						</p>
					</div>

				</div>
			</div>

			<!--main content-->
			<!-- 3개씩 ul에 넣기. 4개부터는 깨짐. 이유는 아직 미파악 -->
			<div class="span8">
				<ul class="thumbnails">
					<li class="span4">
						<div class="thumbnail">
							<img src="http://placehold.it/300x200" alt="">
							<h3>인기책1</h3>
							<p>Thumbnail caption...</p>
						</div>
					</li>
					<li class="span4">
						<div class="thumbnail">
							<img src="http://placehold.it/300x200" alt="">
							<h3>인기책1</h3>
							<p>Thumbnail caption...</p>
						</div>
					</li>
					<li class="span4">
						<div class="thumbnail">
							<img src="http://placehold.it/300x200" alt="">
							<h3>인기책1</h3>
							<p>Thumbnail caption...</p>
						</div>
					</li>
				</ul>

				<ul class="thumbnails">
					<li class="span4">
						<div class="thumbnail">
							<img src="http://placehold.it/300x200" alt="">
							<h3>인기책1</h3>
							<p>Thumbnail caption...</p>
						</div>
					</li>
					<li class="span4">
						<div class="thumbnail">
							<img src="http://placehold.it/300x200" alt="">
							<h3>인기책1</h3>
							<p>Thumbnail caption...</p>
						</div>
					</li>
					<li class="span4">
						<div class="thumbnail">
							<img src="http://placehold.it/300x200" alt="">
							<h3>인기책1</h3>
							<p>Thumbnail caption...</p>
						</div>
					</li>
				</ul>
			</div>

			<!--right content-->
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
</html>