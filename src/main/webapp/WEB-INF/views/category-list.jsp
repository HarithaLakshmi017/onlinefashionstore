<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List-Category</title>
</head>
<div id="table root">
	       
	<table align="center">

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

				</tr>
                </c:forEach>
		</tbody>
	</table>
	   
</div>

</body>
</html>

