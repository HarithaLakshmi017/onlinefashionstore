<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Product name</title>
<style>
<%@include file="/WEB-INF/views/css/add-product-form.css"%>
</style>
</head>
<body>
	<h1>Add Product</h1>
 <div id="errormessage">${message}</div>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addproduct">
				<div>
					<label for="productName">Product Name</label>
					<div>
						<form:input path="productName" />
					</div>
				</div>
				<div>
					<label for="rate">Rate</label>
					<div>
						<form:input path="rate" />
					</div>
				</div>
				<div>
					<label for="categoryNo">Category No</label>
					<div>
						<form:input path="categoryNo" />
					</div>
				</div>
				<div>
					<label for="stockInhand">Stock in Hand</label>
					<div>
						<form:input path="stockInhand" />
					</div>
				</div>
				<div>
					<label for="productDescription">Product Description</label>
					<div>
						<form:input path="productDescription" />
					</div>
				</div>
				<div>
					<label for="productImage"></label>
					<div>
						<form:input path="productImage" type="hidden"/>
					</div>
					</div>
					<div>
						<form:button>Add New</form:button>
					</div>
			</form:form>
		</div>
		</div>
</body>
</html>