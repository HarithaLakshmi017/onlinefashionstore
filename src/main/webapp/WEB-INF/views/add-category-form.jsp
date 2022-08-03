<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Category name</title>
</head>
<body>
	<h1 align="center">Add Category</h1>
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