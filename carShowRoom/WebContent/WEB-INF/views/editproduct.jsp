<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit post</title>

</head>
<body>


	<main class="main">
		<div class="container">
			<h1 class="d-flex justify-content-center">Edit product</h1>
				<img id="prev" src="../../${productEdit.image}" width="100px"   onerror="this.onerror=null;this.src='https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png';" />
			<form:form name="form" enctype="multipart/form-data"
				action="${pageContext.request.contextPath}/admin/products/edit/${productEdit.id}"
				method="post" modelAttribute="productEdit">
				<div class="form-group">
					<label for="name">Name</label>
					<form:input path="name" type="text" class="form-control" id="name" />
				</div>
				<div class="form-group">
					<label for="price">Price</label>
					<form:input path="price" type="text" class="form-control"
						id="price" />
				</div>
				<div class="form-group">
					<label for="description">Description</label>
					<form:input path="description" type="text" class="form-control"
						id="description" />
				</div>
				<div class="form-group">
					<form:label path="image">Select a file to upload</form:label>
			<form:input path="image" type="file" name="image"  onchange="document.getElementById('prev').src = window.URL.createObjectURL(this.files[0])"  />
				</div>

				<div class="form-group">
					<label for="category">Виберіть категорію</label>
					<form:select path="category_id" class="form-control"
						id="category_id">
						<c:forEach var="category" items="${productEdit.categories}">
							<option value="${category.id}">${category.name}</option>
						</c:forEach>
					</form:select>
				</div>

				<button type="submit" class="btn btn-primary">Edit</button>
			</form:form>
		</div>
	</main>


</body>
</html>