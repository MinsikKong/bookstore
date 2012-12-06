<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

			<!-- 1 -->
			<div class="span2">
				<!--Sidebar content-->
				<pre>여기엔 뭘 넣어야 잘 넣었다고 소문이 날까 how to live smart <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
				</pre>
			</div>

			<!-- 2 -->
			<div class="span8">

				<!-- plz don't delete this div-->
				<div></div>

				<!-- Right bottom -->

				<div class="marginBottom">
					<div>도서 정보</div>
					<div>
						<div style="float: left;">
						<img src="/book/img/trade/bookImg.jpg" alt="책이미지"
								class="detail_img_size" />
						</div>
						<div class="contentsLine detail_contentsSpace">
							<a href="/book/trade?op=sellerView">제목 : 공민식은 왜 웹프를 하지 않는가</a> <br />
							저자 : 박현수 <br />
							<DEL>판매가 : 10000원</DEL>
							중고 최저가: 5000원<br /> 판매자수: 10명 <br /> 설명 : <br /> 
							써도 150height가 넘어가는 순간 자바스크립트를 통해 여행을 떠나고 말지요. 아무리 엄청난 내용을 써도
							150height가 넘어가는 순간 자바스크립트를 통해 여행을 떠나고 말지요. 아무리 엄청난 내용을 써도
							150height가 넘어가는 순간 자바스크립트를 통해 여행을 떠나고 말지요. 아무리 엄청난 내용을 써도
							150height가 넘어가는 순간 자바스크립트를 통해 여행을 떠나고 말지요. 아무리 엄청난 내용을 써도
							150height가 넘어가는 순간 자바스크립트를 통해 여행을 떠나고 말지요. 아무리 엄청난 내용을 써도
							150height가 넘어가는 순간 자바스크립트를 통해 여행을 떠나고 말지요. 아무리 엄청난 내용을 써도
							150height가 넘어가는 순간 자바스크립트를 통해 여행을 떠나고 말지요. 아무리 엄청난 내용을 써도
							150height가 넘어가는 순간 자바스크립트를 통해 여행을 떠나고 말지요. 아무리 엄청난 내용을 써도
							150height가 넘어가는 순간 자바스크립트를 통해 여행을 떠나고 말지요.
							150height가 넘어가는 순간 자바스크립트를 통해 여행을 떠나고 말지요. 아무리 엄청
						</div>
					</div>
				</div>
<c:forEach begin="1" end="4" step="1">
				<div>
					<div class="float_style">판매자 : 김성모 상태 : A+ 가격 : 7000원&nbsp;&nbsp;&nbsp;&nbsp;</div>
					<div class="contentsLine2 sellerView_contentsSpace">
					    할말 : 50height가 넘어가는 순간 자바스크립트를 통해 여행을 떠나고 말지요. 아무리 엄청난 내용을 써도50height가 넘어가는 순간 자바스크립트를 통해 여행을 떠나고 말지요. 아무리 엄청난 내용을 써도50height가 넘어가는 순간 자바스크립트를 통해 여행을 떠나고 말지요. 아무리 엄청난 내용을 써도50height가 넘어가는 순간 자바스크립트를 통해 여행을 떠나고 말지요. 아무리 엄청난 내용을 써도50height가 넘어가는 순간 자바스크립트를 통해 여행을 떠나고 말지요. 아무리 엄청난 내용을 써도
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
	$(document).ready(function() {
		$(".contentsLine").ellipsis();
		$(".contentsLine2").ellipsis();
	});
</script>
</html>