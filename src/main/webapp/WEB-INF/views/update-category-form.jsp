<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Category</title>
<style>
<%@include file="/WEB-INF/views/css/update-category-form.css"%>
</style>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="update" method="post"
				modelAttribute="updateCategory">
				<div>
					<label for="categoryNo">Category No</label>
					<div>
						<form:input path="categoryNo" />
					</div>
				</div>
				<div>
					<label for="categoryName">Category Name</label>
					<div>
						<form:input path="categoryName" />
					</div>
					<div>
						<form:button>Update</form:button>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>