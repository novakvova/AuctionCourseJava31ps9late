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
		<div class="card-deck">
			<c:forEach items="${products}" var="product">
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="${product.image}"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title">${product.name}</h5>
						<p class="card-text">${product.description}</p>
						<p class="card-text">${product.price}</p>
						<a href="#" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
			</c:forEach>
		</div>




	</div>
</body>
</html>