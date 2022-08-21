<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product</title>
<style>
<%@include file="/WEB-INF/views/css/update-product-form.css"%>
</style>
</head>
<body>
<div class="box">
		<div id="form">
			<form:form action="" method="post" modelAttribute="updateproduct">
				<div>
					<label for="productName">Product Name</label>
					<div>
						<form:input path="productName" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="rate">Rate</label>
					<div>
						<form:input path="rate" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="categoryNo">Category No</label>
					<div>
						<form:input path="categoryNo" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="stockInhand">Stock in hand</label>
					<div>
						<form:input path="stockInhand" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="productDescription">Product Description</label>
					<div>
						<form:input path="productDescription" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="productImage"></label>
					<div>
						<form:input path="productImage" type="hidden"/>
					</div>
				</div>
			</form:form>
			<a href="/addbillinvoiceform?id=${updateproduct.productId}"><button class="button button4">Buy Now</button></a>
</div>
</div>
</body>
</html>