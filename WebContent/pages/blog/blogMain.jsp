<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="/book/css/bootstrap.min.css" rel="stylesheet" media="screen">
<script type="text/javascript" src="/book/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/book/js/bootstrap.min.js"></script>

</head>
<body>

<!-- include header -->
<jsp:include page="/pages/common/header.jsp" >
<jsp:param value="Home" name="current"/>
</jsp:include>

<div class="container-fluid">
<!-- contents div -->
  <div class="row-fluid">
    <div class="span2">
      <!--Sidebar content-->
      
      <div style="background-color: blue;">
      사진, 자기소개, 팔로어 수
      </div>
      
      <div style="background-color: red;">
      판매/구매 내역조회, 장바구니,
    친구관리, 개인정보 수정, 판매 등록
      
      </div>
    </div>
    
    <div class="span10">
      <!--Body content-->
      
      <div>
      <!-- RightTop -->
      	<div style="background-color: grey;">
      	<!-- Right Top 2-1 -->
      	
      	현재 판매중인 도서,
    우측 상단 더 보기 아이콘 존재

      	
      	</div>
      	<div style="background-color: grey;">
      	<!-- Right Top 2-2 -->
      	사용자게시물에 달린 댓글
    우측 상단 더 보기 아이콘 존재

      	
      	</div>
      </div>
      
      <div style="background-color: yellow;">
      <!-- Right bottom -->
      사용자 게시물에 달린 후기  
    우측 상단 더 보기 아이콘 존재
      </div>
    </div>
  </div>
</div>

<!-- include footer -->
<jsp:include page = "/pages/common/footer.jsp" />

</body>
</html>