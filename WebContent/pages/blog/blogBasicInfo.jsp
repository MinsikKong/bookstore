<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="well" style="max-width: 340px; padding: 8px 0;">
	<ul class="nav nav-list" role="menu" aria-labelledby="dropdownMenu">

		<li><img src="/book/img/blog_img/pic.png" alt="mainImg" /></li>

		<li class="divider"></li>

		<!--  view friends -->
		<li>친구 수 : 80</li>


		<!-- 상대경로 쓰면 안됨 -->
		<li class="divider"></li>
		<li><a tabindex="-1" href="/book/trade?op=tradeView">판매/구매
				내역조회 </a></li>
		<li><a tabindex="-1" href="/book/trade?op=cartView">장바구니</a></li>
		<li><a tabindex="-1" href="/book/friend?op=friendView">친구관리</a></li>
		<li><a tabindex="-1" href="#">개인정보 수정</a></li>
		<li><a tabindex="-1" href="/book/trade?op=bookReg">판매 등록</a></li>
	</ul>
</div>
