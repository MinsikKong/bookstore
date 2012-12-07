<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import ="dto.UserDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
UserDTO dto = (UserDTO) request.getAttribute("uDTO");

System.out.println(dto.getId()+"<-id입니다");
%>
</body>
</html>