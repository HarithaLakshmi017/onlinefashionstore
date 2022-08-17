<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Category Name</title>
<style type = "text/css">
body {
	background: #456;
	background-image:
		url('https://images.unsplash.com/photo-1558769132-92e717d613cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDk3fHxmYXNoaW9ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
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

#categoryNo {
	width: 250px;
	height: 30px;
	border-color: black;
	border-radius: 3px;
	padding-left: 8px;
	border-radius: 5px;
}

#categoryName {
	width: 250px;
	height: 30px;
	border-color: black;
	border-radius: 3px;
	padding-left: 8px;
	border-radius: 5px;
}
</style>
</head>
<body>
	<h1 align="center">Add Category Name</h1>
	<div id="table root">
		<table border="2" align="center">
			<div id="root"></div>
		</table>
		<div id="form" align="center">

			<form:form action="addcat" method="post"
				modelAttribute="addcategories">
				<div>
					<label for="categoryNo">Category No</label>
				</div>
				<div>
					<form:input path="categoryNo" />
				</div>
				<div>
					<label for="categoryName">Category Name</label>
				</div>
				<div>
					<form:input path="categoryName" />
				</div>

				<form:button>Add New</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>