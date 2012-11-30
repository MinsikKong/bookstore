<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String[][] menu = { { "#", "Home" },
			{ "/book/pages/blog/blogMain.jsp", "Blog" },
			{ "#", "Menu1" }, { "#", "Menu2" }, { "#", "Menu3" },
			{ "#", "Menu4" }, { "#", "Menu5" } };
	String currentMenu = request.getParameter("current");
%>
<div class="header_top">로그인ㅣ회원가입</div>
<div class="container">
	<h1>SNS 중고서점 TITLE</h1>
</div>
<!-- Navbar
  ================================================== -->
<div class="navbar">
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
				<form class="navbar-search pull-left"
					action="/book/pages/search/searchResult.jsp">
					<input type="text" class="search-query" placeholder="Search"
						name="searchValue"> <input type="submit"
						class="btn btn-info" value="검색" />
				</form>
			</div>
		</div>
	</div>
</div>

