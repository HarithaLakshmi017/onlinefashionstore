<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Category</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="cate">
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
				</div>
<div id="table root">
	       
	<table>
		<thead>
		<tr>

			<th>Category No</th>
			<th>Category Name</th>
			
		</tr>

		</thead>

		<tbody>

			<c:forEach var="listcategory" items="${getcategory}">
                    <tr>

					<td>${listcategory.categoryNo}</td>
					<td>${listcategory.categoryName}</td>

				</tr>
                </c:forEach>
		</tbody>
	</table>
	   
</div>

			</form:form>

		</div>
	</div>
</body>
</html>