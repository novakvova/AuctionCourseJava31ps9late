<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" session="true" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<body>
	<h1>Add Product</h1>
	<form:form method="POST" enctype="utf8" modelAttribute="product">
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
			<form:label path="image">Image</form:label>
			<form:input path="image" />
		</div>
		<div>
			<form:label path="category">Category</form:label>
			<form:input path="category" />
		</div>
		
		<input type="submit" value="Submit" />
	</form:form>


</body>
</html>