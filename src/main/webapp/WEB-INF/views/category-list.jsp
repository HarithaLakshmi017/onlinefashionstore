<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List-Category</title>
<style>
<%@include file="/WEB-INF/views/css/category-list.css"%>
</style>
</head>
<div id="table root">
<table>
<caption></caption>
		<thead>
			<tr>

				<th>category No</th>
				<th>category Name</th>
			</tr>

		</thead>

		<tbody>

			<c:forEach var="category" items="${allcategory}">
                    <tr>

					<td>${category.categoryNo}</td>
					<td>${category.categoryName}</td>
					<td><a href="updateCategoryform?categoryNo=${category.categoryNo}"><input
							onclick="change()" type="button" value="Update" id="myButton1"></input></a></td>
					<td><a
						href="deleteCategory?categoryNo=${category.categoryNo}"><input
							onclick="change()" type="button" value="Delete" id="myButton2"></input></a></td>
				</tr>
                </c:forEach>
		</tbody>
	</table>
	   
</div>

</body>
</html>

