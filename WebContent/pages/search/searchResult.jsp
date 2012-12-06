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
<<<<<<< HEAD
			<div class="span2">
				<!--Sidebar content-->

=======

			<div class="span2">
				<!--Sidebar content-->


>>>>>>> a3b16860af49bbdeaaf8a6e2bb10a229132416a3
				<jsp:include page="/pages/blog/blogBasicInfo.jsp" />

			</div>

			<!--Body content-->
			<div class="span10 ">

<<<<<<< HEAD
				<!-- RightTop -->
				<div>
					<div id="searchResultSortDropdown" class="span4">
						<ul class="nav nav-pills">
							<li class="active"><a href="#">정렬</a></li>

							<li class="dropdown"><a class="dropdown-toggle" id="drop4"
								data-toggle="dropdown" href="#">가격순 <b class="caret"></b></a>
								<ul id="sortByPrice" class="dropdown-menu">
									<li><a tabindex="-1" href="#">가격 내림차순</a></li>
									<li><a tabindex="-1" href="#">가격 오름차순</a></li>
								</ul></li>
							<li class="dropdown"><a class="dropdown-toggle" id="drop5"
								data-toggle="sortByRegdate" href="#">등록일순 <b class="caret"></b></a>
								<ul id="menu2" class="dropdown-menu">
									<li><a tabindex="-1" href="#">등록일 내림차순</a></li>
									<li><a tabindex="-1" href="#">등록일 오름차순</a></li>

								</ul></li>
							<li class="dropdown"><a class="dropdown-toggle" id="drop5"
								data-toggle="sortByStatus" href="#">책상태순 <b class="caret"></b></a>
								<ul id="menu3" class="dropdown-menu">
									<li><a tabindex="-1" href="#">상태 내림차순</a></li>
									<li><a tabindex="-1" href="#">상태 오름차순</a></li>
=======


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
>>>>>>> a3b16860af49bbdeaaf8a6e2bb10a229132416a3
								</ul></li>
						</ul>
						<!-- /tabs -->
					</div>


<<<<<<< HEAD
					<!--main content-->
					<div class="span10">
						<div>
							<table border="1">
								<tr>
									<td rowspan="2"><a href='#'><img src="http://placehold.it/300x200"
										alt=""></a></td>
									<td>
										<ul>
											<li>해리 포터와 마법사의 돌 2</li>
											<li>조앤 K. 롤링 (지은이) | 김혜원 (옮긴이) | 문학수첩 | 1999년 11월</li>
										</ul>
									</td>
									<td>
										<p>
											<a href='#'><button class="btn" type="button">중고상품
													모두 보기</button></a> <a href='#'><button class="btn" type="button">중고로
													팔기</button></a>
										</p>
									</td>
								</tr>
								<tr>
									<td colspan="2" align="center">
										<table style="margin-bottom: 15px;">
											<tr>
												<td valign="top">
													<table>
														<tr>
															<table class="table table-striped">
																<thead>
																	<tr>
																		<th>새책가격</th>
																		<th>중고가격</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<td>10,000원</td>
																		<td>6,000원</td>
																	</tr>
																</tbody>
															</table>
														</tr>
													</table>
												</td>
										</table>
									</td>
								</tr>
							</table>
						</div>
					</div>



					<div class="span10">
						<div>
							<table border="1">
								<tr>
									<td rowspan="2"><a href='#'><img
											src="http://placehold.it/300x200" alt=""></a></td>
									<td>
										<ul>
											<li>해리 포터와 마법사의 돌 2</li>
											<li>조앤 K. 롤링 (지은이) | 김혜원 (옮긴이) | 문학수첩 | 1999년 11월</li>
										</ul>
									</td>
									<td>
										<p>
											<a href='#'><button class="btn" type="button">중고상품
													모두 보기</button></a> <a href='#'><button class="btn" type="button">중고로
													팔기</button></a>
										</p>
									</td>
								</tr>
								<tr>
									<td colspan="2" align="center">
										<table style="margin-bottom: 15px;">
											<tr>
												<td valign="top">
													<table>
														<tr>
															<table class="table table-striped">
																<thead>
																	<tr>
																		<th>새책가격</th>
																		<th>중고가격</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<td>10,000원</td>
																		<td>6,000원</td>
																	</tr>
																</tbody>
															</table>
														</tr>
													</table>
												</td>
										</table>
									</td>
								</tr>
							</table>
						</div>
					</div>


				</div>
			</div>
		</div>
		<!-- include footer -->
		<jsp:include page="/pages/common/footer.jsp" />
=======










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

>>>>>>> a3b16860af49bbdeaaf8a6e2bb10a229132416a3
</body>
</html>