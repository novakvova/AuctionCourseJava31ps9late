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
	<jsp:include page="container/_header.jsp"></jsp:include>
	<style>
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
						<img
							src="${pageContext.request.contextPath}/resources/images/${product.image}"
							width="720px" height="470px"
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
				<img
					src="${pageContext.request.contextPath}/resources/images/${product.image}"
					width="300px"
					onerror="this.onerror=null;this.src='https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png';" />
			</div>
		</div>

		<div class="mdl-layout-spacer"></div>
	</div>

</body>
</html>