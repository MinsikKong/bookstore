<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String[][] menu = { { "#", "Home" },
			{ "/book/pages/blog/blogMain.jsp", "Blog" },
			{ "#", "Menu1" },
			{ "#", "Menu2" },
			{ "#", "Menu3" },
			{ "#", "Menu4" },
			{ "#", "Menu5" } };
	String currentMenu = request.getParameter("current");
%>
<div class="header_top">
	<a href="#myModal" role="button" class="btn" data-toggle="modal">로그인</a>
	<a href="#myModal" role="button" class="btn" data-toggle="modal">회원가입</a>
</div>
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
				<form class="navbar-search pull-left">
					<input type="text" class="search-query" placeholder="Search"
						name="searchValue"> <input type="submit"
						class="btn btn-info" value="검색" />
				</form>
			</div>
		</div>
	</div>
</div>

<!-- 회원가입 -->
<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<form class="form-horizontal">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal"
			aria-hidden="true">×</button>
		<h3 id="myModalLabel">회원가입</h3>
	</div>
	
	<div class="modal-body">
		<div class="control-group">
			<label class="control-label" for="id">아이디</label>
			<div class="controls" >
				<input type="text" name="id" placeholder="아이디">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="password">비밀번호</label>
			<div class="controls">
				<input type="text" name="password" placeholder="비밀번호">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="password">비밀번호</label>
			<div class="controls">
				<input type="text" name="password" placeholder="비밀번호">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="password">비밀번호</label>
			<div class="controls">
				<input type="text" name="password" placeholder="비밀번호">
			</div>
		</div>
	</div>
	<div class="modal-footer">
		<button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
		<button class="btn btn-primary">Save changes</button>
	</div>
	</form>
</div>