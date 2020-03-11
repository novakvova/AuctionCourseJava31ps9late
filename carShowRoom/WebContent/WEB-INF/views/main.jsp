<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" session="true"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>
<jsp:include page="container/_link-css.jsp"></jsp:include>
<jsp:include page="container/_scripts.jsp"></jsp:include>
</head>
<body>
	<style>
.demo-card-wide.mdl-card {
	width: 300px;
}

.demo-card-wide>.mdl-card__title {
	color: #fff;
	height: 300px;
	background: url('${product.image}') center/cover;
}

.mdl-layout__header-row {
	margin-bottom: 10px;
}

.product-wrapper {
	padding-top: 50px;
	padding-bottom: 50px;
}

.demo-card-wide>.mdl-card__menu {
	color: #fff;
}

.mdl-card__actions button {
	width: 100%;
}

.demo-list-item {
	width: 300px;
	color: #000;
}

.category-wrapper {
	padding-top: 50px;
}

a {
	text-transform: uppercase;
	text-decoration: none;
}

.mdl-js-ripple-effect {
	width: 100%;
}

.mdl-button {
	padding: 0;
}
/* .category-wrapper{ */
/* text-align: center;} */

</style>

	<jsp:include page="container/_header.jsp"></jsp:include>
	<div class="mdl-grid">
		<div class="mdl-cell mdl-cell--2-col category-wrapper">
		<h3>Категорії</h3>
			<span class="mdl-chip"> <span class="mdl-chip__text"> <a
					href="${pageContext.request.contextPath}/admin/main">Усі</a></span>
			</span><br>
			<c:forEach items="${categories}" var="category">
				<%-- 					<input type="checkbox" name="${category.name}" value="${category.id}"> --%>
				<span class="mdl-chip"> <span class="mdl-chip__text"><a
						href="${pageContext.request.contextPath}/admin/main${category.id}">${category.name}</a></span>
				</span>
				<br>
			</c:forEach>
		</div>
		<div class="mdl-cell mdl-cell--10-col">
			<div class="product-wrapper">
				<div class="mdl-grid">
					<div class="mdl-layout-spacer"></div>
					<c:forEach items="${products}" var="product">
						<div class="mdl-cell mdl-cell---col graybox">
							<div class="demo-card-wide mdl-card mdl-shadow--2dp">
								<div class="mdl-card__title"
									style="color: #000;
											height: 300px; 
											background: url('${product.image}'), url('https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png') center;
											background-size: cover;">
									<h2 class="mdl-card__title-text">${product.name}</h2>
								</div>
								<div class="mdl-card__supporting-text">${product.description}</div>
								<div class="mdl-card__supporting-text">${product.price}</div>
								<div class="mdl-card__actions mdl-card--border">
									<div class="mdl-layout-spacer"></div>
									<a
										href="${pageContext.request.contextPath}/cart/buy/${product.id}"
										class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect ">Додати
										в корзину</a>
								</div>
							</div>
						</div>
					</c:forEach>
					<div class="mdl-layout-spacer"></div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8="
		crossorigin="anonymous"></script>
	<script>
		$(document).ready(function() {
			$(".mdl-chip").hover(function() {
				$(this).toggleClass("mdl-color--deep-purple");
			});
		});
	</script>
	
	<jsp:include page="container/_footer.jsp"></jsp:include>