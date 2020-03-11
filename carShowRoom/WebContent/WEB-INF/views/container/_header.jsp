<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header>
	<div class="mdl-layout--fixed-header">

		<div
			class="android-header mdl-layout__header mdl-layout__header--waterfall">
			<div class="mdl-layout__header-row">
				<span class="android-title mdl-layout-title"> <a
					class="mdl-navigation__link mdl-typography--text-uppercase"
					href="${pageContext.request.contextPath}/"> <img
						class="android-logo-image" src="../resources/images/Election.png"></a>
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
					class="android-logo-image" src="../resources/images/Election.png">
				</span>
			</div>
		</div>
	</div>
</header>