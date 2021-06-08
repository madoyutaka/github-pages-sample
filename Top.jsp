<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>
<%@ page import="top.TopServlet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>トップページ</title>
<link rel="stylesheet"href="${pageContext.request.contextPath}/css/reset.css">
<link rel="stylesheet"href="${pageContext.request.contextPath}/css/ECSiteLayout.css">
</head>
<body>
<!-- ブラウザ上にトップの画面を表示 -->
	<header>
	       <div class="header_wrap">
		       <form action="http://localhost:8080/ECSite/TopServlet" method="POST">
									<input class ="header_top_btn" type="image"  src="${pageContext.request.contextPath}/img/icon/logo.png"  name="btnItemSearch"/>
									<input type ="hidden" name="btnTopTransition" value="topTransition">
				</form>

				<form action="http://localhost:8080/ECSite/ItemSearchServlet" method="POST">
								<input class ="header_word" type="text" name="itemSearchWord"/>
								<input class ="header_search_btn" type="image"  src="${pageContext.request.contextPath}/img/icon/search.png"  name="btnItemSearch"/>
								<input type ="hidden" name="btnItemSearchTransition" value="itemSearchTransition">
				</form>

				<nav>
					<ul>
						<li>
							<form action = "http://localhost:8080/ECSite/CartServlet" method = "POST">
								<input class ="header_cart_btn" type = "image" src="${pageContext.request.contextPath}/img/icon/cart.png" name="btnCartTransition">
								<input type ="hidden" name="btnHeaderCartTransition" value="headerCartTransition">
							</form>
						</li>

						<li>
		        			<form action = "http://localhost:8080/ECSite/MyPageServlet" method = "POST">
								<input class ="header_mypage_btn" type = "image" src="${pageContext.request.contextPath}/img/icon/home.png"  name="btnMyPageTransition">
								<input type ="hidden" name="btnMyPageTransition" value="myPageTransition">
							</form>
						</li>
					</ul>
				</nav>
			</div>
	</header>

	<!-- トップ画像 -->
	<div class="top_image">
		<div class="top_text">
			<h1>何かタイトル的なの</h1>
			<p>何かキャッチコピー</p>

			<form action = "http://localhost:8080/ECSite/TopServlet" method = "POST">
				<input  class="top_login_btn" type = "submit" name="btnLoginTransition" value = "ログイン">
				<input type ="hidden" name="btnLoginTransition" value="loginTransition">
			</form>
		</div>
	</div>

	<div class="section_wrap">
		<section class="about">
			<h2 class="section_ttl">About</h2>
			<p class="about_text">このECサイトは、ECサイト開発の研修中に作成されました。</p>
			<p class="about_text">このサイトでは家具を閲覧可能です。好きな家具をご覧ください。</p>
			<p class="about_text">商品の詳細を閲覧したい場合や購入、お気に入り、レビューするためにはログインが必要です。</p>
			<p  class="about_text">このECサイトは少数メンバーで作成されております。どうぞ、ご覧ください。</p>
		</section>

		<section class="random_item">
		     <h2 class="section_ttl">オススメ家具</h2>

		     	<form name="btnItemDetail" action="http://localhost:8080/ECSite/ItemDetailServlet" method="POST">
					<h3 class="item_select_btn">
						<button class="item" type="submit" name="btnItemDetailTransition" value="${randomItem.itemNo}">
							<img class="item_image" src="./img/${randomItem.itemImage}" >
							<p class="item_name"><c:out value="${randomItem.itemName}" default="取得失敗"/></p>
						<p class="item_price">お値段：<c:out value="${randomItem.itemPrice}" default="取得失敗"/>円</p>
						</button>
					</h3>
				</form>

		</section>
	</div>

　　<div id="page_top"><a href="#"></a></div>

	<footer>
		<p class="footer_text">2021/05/14/ECSite</p>
	</footer>

</body>
</html>
