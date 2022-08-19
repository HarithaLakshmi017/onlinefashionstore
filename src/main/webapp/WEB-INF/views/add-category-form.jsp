<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Category Name</title>
<style type = "text/css">
<%@include file="/WEB-INF/views/css/add-category-form.css"%>
</style>
</head>
<body>
	<h1>Add Category Name</h1>
	<div id="table root">
		<div id="form">
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