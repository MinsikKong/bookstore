<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String[][] menu = { { "/book/main", "Home" },
	{ "/book/blog", "Blog" },
	{ "#", "Menu1" }, { "#", "Menu2" }, { "#", "Menu3" },
	{ "#", "Menu4" }, { "#", "Menu5" } };
	String currentMenu = request.getParameter("current");
%>
<div class="header_top"></div>
<!-- Navbar
  ================================================== -->
<div class="navbar ">
	<div class="navbar-inner">
		<div class="container">
			<a class="brand" href="/book/pages/main.jsp">BOOK</a>
			<div class="nav-collapse collapse">
				<ul class="nav">
					<%
						for (String[] menuItem : menu) {
																						if (currentMenu != null && currentMenu.equals(menuItem[1])) {
																							out.println("<li class='active'>");
																						} else {
																							out.println("<li class=''>");
																						}

																						out.println("<a href='" + menuItem[0] + "'>" + menuItem[1]
																								+ "</a>");
																						out.println("</li>");
																					}
					%>
				</ul>
			</div>
			<div>
				<form class="navbar-form pull-left"
					action="/book/user?op=searchView" name="searchForm" method="post">
					<input type="text" class="span2 search-query" name="searchValue"
						placeholder="검색어" />
					<!-- <button type="submit" class="btn btn-info">검색</button> -->
					<a href="#" data-action="search-data" class="btn btn-info">검색</a>
				</form>
			</div>
			<div>
				<c:choose>
					<c:when test="${sessionScope.userid == null}">
						<form class="navbar-form pull-right">
							<!-- Facebook 접속 버튼 -->
							<a class="fb_button fb_button_large marginTOP	" id="btnLogin"
								href="FBAuthServlet.do" data-size="xlarge"> <span
								class="fb_button_text"> Log In</span>
							</a>
						</form>
					</c:when>
					<c:otherwise>
					<!-- session.getAttribute("userid") 으로 가져다 쓰면됨. 세션-->
						<form class="navbar-form pull-right">
							<img
								src="https://graph.facebook.com/${me.id}/picture?type=square"
								class="img-polaroid" />
								${me.name}
								<a href = "user?op=sessionInvalidation" class="btn btn-primary"> 로그아웃</a>
						</form>
					</c:otherwise>
				</c:choose>
				
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(function() {
		$("a[data-action='search-data']").click(function() {
			var form = document.searchForm;
			if (form.searchValue.value == '') {
				alert("검색어를 입력해주세요.");
				return;
			}

			form.submit();
		});
	});
</script>