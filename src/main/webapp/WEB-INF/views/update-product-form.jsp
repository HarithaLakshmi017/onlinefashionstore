<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product</title>
<style type="text/css">
body {

h1 {
	backgroundcolor: #FFE4C4;
}
label {
	backgroundcolor: #FFE4C4;
	font-size: 1.3em;
	display: flex;
	margin: 5px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}
#productName {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}
#rate {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}
#categoryNo {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}
#stockInhand {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}
#productDescription {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}
#log {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 14px;
	padding-left: 10px;
	color: blue;
}

</style>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="update" method="post" modelAttribute="updateproduct">
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
					<label for="stockInhand">Stock in hand</label>
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
				</div>
				<div>
					<form:button>Update Product</form:button>
				</div>
			</form:form>

</body>
</html>