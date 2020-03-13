<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete product</title>
<jsp:include page="container/_link-css.jsp"></jsp:include>
<jsp:include page="container/_scripts.jsp"></jsp:include>
</head>
<body>

	<style>
.demo-card-wide.mdl-card {
	width: 512px;
}

.demo-card-wide>.mdl-card__title {
	color: #fff;
	height: 300px;
	background: url('${pageContext.request.contextPath}/resources/images/${productDelete.image}') center/cover;
}

.demo-card-wide>.mdl-card__menu {
	color: #fff;
}
.fix-title {
	font-weight: 700;
	font-size: 20px;
	color: #000;
}
</style>

	<div class="mdl-grid">
	<a href="${pageContext.request.contextPath}/admin/products"
				class="mdl-button mdl-js-button mdl-button--raised mdl-color--primary">
				Назад </a>
		<div class="mdl-layout-spacer"></div>
		<h1>Видалити товар</h1>
		<div class="mdl-layout-spacer"></div>
	</div>

	<div class="mdl-grid">
		<div class="mdl-layout-spacer"></div>
		<form:form name="form"
			action="${pageContext.request.contextPath}/admin/products/delete/${productDelete.id}"
			method="post" modelAttribute="productDelete">
			<div class="demo-card-wide mdl-card mdl-shadow--2dp">
				<div class="mdl-card__title">				
				</div>
				<div class="mdl-card__supporting-text fix-title">${productDelete.name}</div>
				<div class="mdl-card__supporting-text">${productDelete.description}</div>
				<div class="mdl-card__supporting-text">${productDelete.price}</div>
				<div class="mdl-card__actions mdl-card--border">
					<button type="submit"
						class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect ">Delete</button>
				</div>
				<div class="mdl-card__menu">
					<button
						class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect ">
						<i class="material-icons">share</i>
					</button>
				</div>
			</div>
			</form:form>
			<div class="mdl-layout-spacer"></div>
	</div>
	
</body>
</html>