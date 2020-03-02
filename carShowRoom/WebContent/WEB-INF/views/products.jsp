<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Products</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<div class="container">

		<%
			if (request.getAttribute("product") != null) {
				out.println("<p>" + request.getAttribute("product").toString() + "</p>");
			}
		%>
		<a href="${pageContext.request.contextPath}/admin/products/add"
			class="btn btn-success">Додати</a>
		<table>
			<tr>
				<td>id</td>
				<td>name</td>
				<td>price</td>
				<td>size</td>
				<td>rating</td>
			</tr>
			<c:forEach items="${products}" var="product">


				<tr>


					<td>${product.id}</td>
					<td>${product.name}</td>
					<td>${product.description}</td>
					<td>${product.price}</td>

					<td><a
						href="${pageContext.request.contextPath}/admin/products/edit/${product.id}"
						class="btn btn-primary">Редагувати</a>
						<button class="btn btn-danger">Видалити</button></td>
				</tr>
			</c:forEach>
		</table>



	</div>
</body>
</html>