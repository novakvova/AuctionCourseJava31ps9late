<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" session="true"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>

<body>
	<h1>Add Product</h1>
		<img id="prev" src="${image}" width="100px" />
	<form:form method="POST" enctype="multipart/form-data"
		modelAttribute="product">
		<div>
			<form:label path="name">Name</form:label>
			<form:input path="name" />
		</div>
		<div>
			<form:label path="price">Price</form:label>
			<form:input path="price" />
		</div>
		<div>
			<form:label path="description">Description</form:label>
			<form:input path="description" />
		</div>
		<div>
			<form:label path="image">Select a file to upload</form:label>
			<form:input path="image" type="file" name="image" onchange="document.getElementById('prev').src = window.URL.createObjectURL(this.files[0])" />
		</div>
		<select name="category">
			<c:forEach items="${categories}" var="category">
				<option value="${category.id}">${category.name}</option>
			</c:forEach>
		</select>

		<input type="submit" value="Submit" />
	</form:form>





</body>
</html>