<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[][] menu = {
		{"./index.jsp", "Home" },
		{"./index.jsp", "Sign Up" },
		{"#", "Menu1" },
		{"#", "Menu2" },
		{"#", "Menu3" },
		{"#", "Menu4" },
		{"#", "Menu5" }
	};
  String currentMenu = request.getParameter("current");
%>    

  <div class="container">
		<h1>SNS 중고서점 TITLE</h1>
 	</div>
	<!-- Navbar
  ================================================== -->
  <div class="navbar">
    <div class="navbar-inner">
      <div class="container">
        <a class="brand" href="#">BOOK</a>
        <div class="nav-collapse collapse">
          <ul class="nav">
          <%
          	for(String[] menuItem : menu) {
          		if (currentMenu != null && currentMenu.equals(menuItem[1])) {
          			out.println("<li class='active'>");
          		} else {
          			out.println("<li class=''>");
          		}
          		
          		out.println("<a href='"+menuItem[0]+"'>"+menuItem[1]+"</a>");
          		out.println("</li>");
          	}
          %>
          </ul>
        </div>
      </div>
    </div>
  </div>
 	
 	