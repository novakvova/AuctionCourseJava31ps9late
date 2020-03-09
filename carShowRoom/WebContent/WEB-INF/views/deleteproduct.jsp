<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit post</title>

</head>
<body>


	<main class="main">
		<div class="container">
			<h1 class="d-flex justify-content-center">Delete product</h1>
			<form:form name="form" 
				action="${pageContext.request.contextPath}/admin/products/delete/${productDelete.id}"
				method="post" modelAttribute="productDelete">
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" name="image" src="../../${productDelete.image}" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title" name="name">${productDelete.name}</h5>
						<p class="card-text" name="description">${productDelete.description}</p>
						<p class="card-text" name="price">${productDelete.price}</p>
					</div>
				</div>
				<button type="submit" class="btn btn-primary">Delete</button>
			</form:form>
		</div>
	</main>


</body>
</html>