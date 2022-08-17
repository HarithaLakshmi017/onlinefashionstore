<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Product name</title>
<style type="text/css">
body {
	background: #456;
	background-image:
		url('https://images.unsplash.com/photo-1556905055-8f358a7a47b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDk0fHxmYXNoaW9ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
	}
h1 {
	color: #ff9999;
}

label {
	color: #ff9999;
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
	border-color: black;
	border-radius: 3px;
	padding-left: 8px;
	border-radius: 5px;
}

#rate {
	width: 250px;
	height: 30px;
	border-color: black;
	border-radius: 3px;
	padding-left: 8px;
	border-radius: 5px;
}

#categoryNo {
	width: 250px;
	height: 30px;
	border-color: black;
	border-radius: 3px;
	padding-left: 8px;
	border-radius: 5px;
	color: blue;
}

#rate {
	width: 250px;
	height: 30px;
	border-color: black;
	border-radius: 3px;
	padding-left: 8px;
	border-radius: 5px;
}

#stockInhand {
	width: 250px;
	height: 30px;
	border-color: black;
	border-radius: 3px;
	padding-left: 8px;
	border-radius: 5px;
}

#productDescription {
	width: 250px;
	height: 30px;
	border-color: black;
	border-radius: 3px;
	padding-left: 8px;
	border-radius: 5px;
}
.box {
	width: 400px;
	height: 490px;
	overflow: hidden;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
	margin: auto;
	padding: 10px;
	text-align: center;
}
</style>
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