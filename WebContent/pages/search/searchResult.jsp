<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

			<!-- 1 -->
			<div class="span2">
				<!--Sidebar content-->


				<pre>여기엔 뭘 넣어야 잘 넣었다고 소문이 날까 how to live smart <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/></pre>

			</div>

			<!-- 2 -->
			<div class="span8">

				<!-- plz don't delete this div-->
				<div></div>

				<!-- Right bottom -->
				<c:forEach var="searchBook" items="${sDto}">
					<div class="marginBottom">
							<div>도서</div>
							<div>
								<div class="float_style">
									<img src="/book/img/trade/bookImg.jpg" alt="책이미지" class="img_size"/>
								</div>
								<div class="contentsLine contentsSpace">
									<a href="/book/trade?op=sellerView&isbn=${searchBook.isbn}" >제목 : ${searchBook.title}</a> <br />
									 저자 :${searchBook.author} <br /> 
									<DEL>판매가 : ${searchBook.price}</DEL> <!-- 중고 최저가: 5000원 --><br />
									 설명 : <br/>
									  ${searchBook.introduction}</div>
							</div>
						</div>
					</c:forEach>
			</div>

			<!-- 3 -->
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
<script type="text/javascript">
$(document).ready(function(){
  $(".contentsLine").ellipsis();
});
</script>
</html>