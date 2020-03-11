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

/* .demo-card-wide>.mdl-card__title { */
/* 	color: #fff; */
/* 	height: 300px; */
/* 	background: url('${product.image}') center/cover; */
/* } */
/*  .mdl-layout__header-row { */
/* margin-bottom: 10px; */
/* } */
.product-wrapper {
	padding-top: 100px;
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
	padding-top: 100px;
}

.item_single {
	background-color: #fff;
	float: left;
	margin: 50px 20px 20px 80px;
	padding: 10px;
}

.item_single img {
	display: block;
	width: 300px;
	margin: auto;
}

.name_cart {
	font-size: 16px;
	display: block;
	border-bottom: 1px solid #ccc;
	margin: 0 0 10px 0;
	padding: 0 0 5px 0;
}

.add-to-cart {
	border: 1px solid #722A1B;
	padding: 4px 14px;
	background-color: #fff;
	color: #722A1B;
	text-transform: uppercase;
	float: right;
	font-weight: bold;
	cursor: pointer;
	outline: none;
	text-decoration: none;
}
</style>

	<jsp:include page="container/_header.jsp"></jsp:include>
	<div class="mdl-grid">
		<div class="mdl-cell mdl-cell--2-col category-wrapper">
			<ul class="demo-list-item mdl-list">
				<c:forEach items="${categories}" var="category">
					<li class="mdl-list__item"><span
						class="mdl-list__item-primary-content"> ${category.name} </span></li>
				</c:forEach>
			</ul>
		</div>
		<div class="mdl-cell mdl-cell--10-col">
			<div class="product-wrapper">
				<div class="mdl-grid">
					<div class="mdl-layout-spacer"></div>

					<c:forEach items="${products}" var="product">

						<!-- 						<div class="mdl-cell mdl-cell---col graybox"> -->
						<!-- 							<div class="demo-card-wide mdl-card mdl-shadow--2dp item_single""> -->
						<!-- 								<div class="mdl-card__title" -->
						<%-- 									style="color: #fff; --%>
						<!-- 													height: 300px; -->
						<%-- 													background: url('${product.image}') center/cover;"> --%>
						<!-- <!-- 													mdl-card__title-text -->
						<%-- 									<h2 class="name_cart">${product.name}</h2> --%>
						<!-- 								</div> -->
						<%-- 								<div class="mdl-card__supporting-text">${product.description}</div> --%>
						<%-- 								<div class="mdl-card__supporting-text">${product.price}</div> --%>
						<!-- 								<div class="mdl-card__actions mdl-card--border"> -->
						<!-- <!-- 									mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect  -->
						<!-- 									<button type="submit" -->
						<!-- 										class="add-to-cart">Додати -->
						<!-- 										в корзину</button> -->
						<!-- 								</div> -->
						<!-- 													<div class="mdl-card__menu"> -->
						<!-- 														<button -->
						<!-- 															class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect "> -->
						<!-- 															<i class="material-icons">share</i> -->
						<!-- 														</button> -->
						<!-- 													</div> -->
						<!-- 							</div> -->
						<!-- 						</div> -->

						<!-- single item -->
						<div class="mdl-cell mdl-cell---col graybox">
							<div class="item_single">
								<img src="${product.image}" alt="item" />
								<h2 class="name_cart">${product.name}</h2>
								<p>
									Price: <em>${product.price}</em>
								</p>
								<p>Description: ${product.description}</p>
								<button class="add-to-cart" type="button">Додати в
									корзину</button>
							</div>
							<!--/ single item -->
						</div>
					</c:forEach>
					<div class="mdl-layout-spacer"></div>
				</div>
			</div>
		</div>
	</div>


	<jsp:include page="container/_footer.jsp"></jsp:include>

</body>
</html>



