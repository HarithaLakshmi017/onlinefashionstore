<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product name</title>
</head>
<body>
	<h1 align="center">Add Product</h1>
	<div id="table root"></div>
		<table border="2" align="center">
			<div id="root"></div>
		</table>
		<div id="form" align="center"></div>

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
							<label for="productImage">Product Image</label>
							<div>
								<form:input path="productImage" />
							</div>
							<div></div>
							<div>
								<form:button>Add New</form:button>
							</div>
					</form:form>
				</div>
			</div>
</body>
</html>