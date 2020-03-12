<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${product.name}</title>
<jsp:include page="container/_link-css.jsp"></jsp:include>
<jsp:include page="container/_scripts.jsp"></jsp:include>
</head>
<body>
<header>
	<div class="mdl-layout--fixed-header">

		<div
			class="android-header mdl-layout__header mdl-layout__header--waterfall">
			<div class="mdl-layout__header-row">
				<span class="android-title mdl-layout-title"> <a
					class="mdl-navigation__link mdl-typography--text-uppercase"
					href="${pageContext.request.contextPath}/"> <img
						class="android-logo-image" src="../../../resources/images/Election.png"></a>
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
	<style>
	
.demo-card-wide.mdl-card {
	width: 512px;
}

.demo-card-wide>.mdl-card__title {
	color: #fff;
	height: 300px;
	background: url('../../${productDelete.image}') center/cover;
}

.demo-card-wide>.mdl-card__menu {
	color: #fff;
}

.mdl-js-ripple-effect {
	width: 100%;
}

.btn {
	text-align: center;
	width: auto;
}

.fix-price {
	color: rgb(244, 67, 54);
	font-size: 24px;
	font-weight: 500;
}
</style>



	<div class="mdl-grid">
		<div class="mdl-layout-spacer"></div>
		<h1>${product.name}</h1>
		<div class="mdl-layout-spacer"></div>
	</div>

	<div class="mdl-grid">
		<div class="mdl-layout-spacer"></div>

		<div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
			<div class="mdl-tabs__tab-bar">
				<a href="#all-panel" class="mdl-tabs__tab is-active">Все про
					товар</a> <a href="#desc-panel" class="mdl-tabs__tab">Характеристики</a>
				<a href="#photo-panel" class="mdl-tabs__tab">Фото</a>
			</div>

			<div class="mdl-tabs__panel is-active" id="all-panel">
				<div class="mdl-grid">
					<div class="mdl-cell mdl-cell--8-col">
						<img src="../../${product.image}" width="720px" height="470px"
							onerror="this.onerror=null;this.src='https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png';" />
					</div>
					<div class="mdl-cell mdl-cell---col">
						<div class="mdl-card__supporting-text">${product.description}</div>
						<div class="mdl-card__supporting-text fix-price">Ціна:
							${product.price}₴</div>
						<a
							href="${pageContext.request.contextPath}/cart/buy/${product.id}"
							class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect mdl-color--deep-purple btn"
							style="color: #ff4081;">Додати в корзину</a> <a
							href="${pageContext.request.contextPath}/admin/main"
							class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect mdl-color--deep-purple btn"
							style="color: #ff4081;">Назад</a>
					</div>
				</div>
			</div>

			<div class="mdl-tabs__panel" id="desc-panel">
				<div class="mdl-card__supporting-text">${product.description}</div>
			</div>
			<div class="mdl-tabs__panel" id="photo-panel">
				<img src="../../${product.image}" width="300px"
					onerror="this.onerror=null;this.src='https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png';" />
			</div>
		</div>

		<div class="mdl-layout-spacer"></div>
	</div>

</body>
</html>