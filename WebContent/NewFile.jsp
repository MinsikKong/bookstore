<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="servlet.BlogServlet"%>
<%@ page import="dto.UserDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		BlogServlet test1 = new BlogServlet();
			UserDTO dto = test1.getUser();
			System.out.println(test1);
			System.out.println(dto);
			System.out.println(dto.getId());
	%>
</body>
</html>
<!-- problem 
xml파일들이 web-inf 아래 있어야 되는데, MyBatisManager.java에서 저 위치를 찾을수가 없음
 -->