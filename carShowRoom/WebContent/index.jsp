<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description"
	content="Introducing Lollipop, a sweet new take on Android.">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
<title>Auction</title>

<!-- Page styles -->

<jsp:include page="/WEB-INF/views/container/_link-css.jsp"></jsp:include>

<link rel="stylesheet" href="resources/css/main_page.css">
<style>
.mdl-layout__content {
	display: block;
}

#view-source {
	position: fixed;
	display: block;
	right: 0;
	bottom: 0;
	margin-right: 40px;
	margin-bottom: 40px;
	z-index: 900;
}
</style>
</head>
<body>
	<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
		<div
			class="android-header mdl-layout__header mdl-layout__header--waterfall">
			<div class="mdl-layout__header-row">
				<span class="android-title mdl-layout-title"> <img
					class="android-logo-image" src="resources/images/Election.png">
				</span>
				<!-- Add spacer, to align navigation to the right in desktop -->
				<div class="android-header-spacer mdl-layout-spacer"></div>
				<div
					class="android-search-box mdl-textfield mdl-js-textfield mdl-textfield--expandable mdl-textfield--floating-label mdl-textfield--align-right mdl-textfield--full-width">
					<label class="mdl-button mdl-js-button mdl-button--icon"
						for="search-field"> <i class="material-icons">search</i>
					</label>
					<div class="mdl-textfield__expandable-holder">
						<input class="mdl-textfield__input" type="text" id="search-field">
					</div>
				</div>
				<!-- Navigation -->
				<div class="android-navigation-container">
					<nav class="android-navigation mdl-navigation">
						<a class="mdl-navigation__link mdl-typography--text-uppercase"
							href="${pageContext.request.contextPath}/admin/main">Продукти</a>
						<a class="mdl-navigation__link mdl-typography--text-uppercase"
							href="${pageContext.request.contextPath}/login">Вхід</a> <a
							class="mdl-navigation__link mdl-typography--text-uppercase"
							href="${pageContext.request.contextPath}/user/registration">Реєстрація</a>
						<a class="mdl-navigation__link mdl-typography--text-uppercase"
							href="${pageContext.request.contextPath}/cart/index">Корзина</a>
					</nav>
				</div>
				<span class="android-mobile-title mdl-layout-title"> <img
					class="android-logo-image" src="resources/images/Election.png">
				</span>
			</div>
		</div>

		<div class="android-drawer mdl-layout__drawer">
			<span class="mdl-layout-title"> <img
				class="android-logo-image" src="resources/images/whiteElection.png">
			</span>
			<nav class="mdl-navigation">
				<a class="mdl-navigation__link" href="">Smart Watch</a> <a
					class="mdl-navigation__link" href="">Phones</a> <a
					class="mdl-navigation__link" href="">Tablets</a> <a
					class="mdl-navigation__link" href="">TV</a> <a
					class="mdl-navigation__link" href="">Laptop</a> <a
					class="mdl-navigation__link" href="">Basket (0)</a>
			</nav>
		</div>
	</div>
	<div class="android-content mdl-layout__content">
		<a name="top"></a>
		<div class="android-be-together-section mdl-typography--text-center">
			<div class="logo-font android-slogan">be together. not the
				same.</div>
			<div class="logo-font android-sub-slogan">welcome to android...
				be yourself. do your thing. see what's going on.</div>
			<a href="#screens">
				<button
					class="android-fab mdl-button mdl-button--colored mdl-js-button mdl-button--fab mdl-js-ripple-effect">
					<i class="material-icons">expand_more</i>
				</button>
			</a>
		</div>
		<div class="android-screen-section mdl-typography--text-center">
			<a name="screens"></a>
			<div class="mdl-typography--display-1-color-contrast">Powering
				screens of all sizes</div>
			<div class="android-screens">
				<div class="android-wear android-screen">
					<a class="android-image-link" href=""> <img
						class="android-screen-image"
						src="resources/images/wear-silver-on.png"> <img
						class="android-screen-image"
						src="resources/images/wear-black-on.png">
					</a> <a
						class="android-link mdl-typography--font-regular mdl-typography--text-uppercase"
						href="">Smart Watch</a>
				</div>
				<div class="android-phone android-screen">
					<a class="android-image-link" href=""> <img
						class="android-screen-image" src="resources/images/nexus6-on.jpg">
					</a> <a
						class="android-link mdl-typography--font-regular mdl-typography--text-uppercase"
						href="">Phones</a>
				</div>
				<div class="android-tablet android-screen">
					<a class="android-image-link" href=""> <img
						class="android-screen-image" src="resources/images/nexus9-on.jpg">
					</a> <a
						class="android-link mdl-typography--font-regular mdl-typography--text-uppercase"
						href="">Tablets</a>
				</div>
				<div class="android-tv android-screen">
					<a class="android-image-link" href=""> <img
						class="android-screen-image" src="resources/images/tv-on.jpg">
					</a> <a
						class="android-link mdl-typography--font-regular mdl-typography--text-uppercase"
						href="">TV</a>
				</div>
				<div class="android-auto android-screen">
					<a class="android-image-link" href=""> <img
						class="android-screen-image" src="resources/images/laptop.png">
					</a> <a
						class="android-link mdl-typography--font-regular mdl-typography--text-uppercase"
						href="">Laptop</a>
				</div>
			</div>
		</div>
		<div class="android-wear-section">
			<div class="android-wear-band">
				<div class="android-wear-band-text">
					<div class="mdl-typography--display-2 mdl-typography--font-thin">The
						best of Google built in</div>
					<p class="mdl-typography--headline mdl-typography--font-thin">
						Android works perfectly with your favourite apps like Google Maps,
						Calendar and YouTube.</p>
					<p>
						<a
							class="mdl-typography--font-regular mdl-typography--text-uppercase android-alt-link"
							href=""> See what's new in the Play Store&nbsp;<i
							class="material-icons">chevron_right</i>
						</a>
					</p>
				</div>
			</div>
		</div>
		<div class="android-customized-section">
			<div class="android-customized-section-image"></div>
			<div class="android-customized-section-text">
				<div
					class="mdl-typography--font-light mdl-typography--display-1-color-contrast">Customised
					by you, for you</div>
				<p class="mdl-typography--font-light">
					Put the stuff that you care about right on your home screen: the
					latest news, the weather or a stream of your recent photos. <br>
					<a href="" class="android-link mdl-typography--font-light">Customise
						your phone</a>
				</p>
			</div>
		</div>


		<footer class="android-footer mdl-mega-footer">
			<div class="mdl-mega-footer--top-section">
				<div class="mdl-mega-footer--right-section">
					<a class="mdl-typography--font-light" href="#top"> Back to Top
						<i class="material-icons">expand_less</i>
					</a>
				</div>
			</div>

			<div class="mdl-mega-footer--middle-section"
				style="text-align: center">
				<p class="mdl-typography--font-light">Satellite imagery: © 2020
					Astrium, DigitalGlobe</p>
				<p class="mdl-typography--font-light">Some features and devices
					may not be available in all areas</p>
			</div>
			<img alt="" src="resources/images/1533415070161298164.jpg">

		</footer>
	</div>
	<jsp:include page="/WEB-INF/views/container/_scripts.jsp"></jsp:include></body>
</html>
