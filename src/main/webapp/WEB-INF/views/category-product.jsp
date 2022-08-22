<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Category</title>
<style>
<%@include file="/WEB-INF/views/css/category-product.css"%>
</style>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getcatgory">
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
				</form:form>
				</div>
				</div>
				<br>
<div id="table root">
        <table id="root">
            <thead>
                <tr>
                    <th>Product Id</th>
                    <th>Product Name</th>
                    <th>Category No</th>
                    <th>StockInhand</th>
                    <th>Price</th>
                    <th>Description</th>
                    <th>Image</th>
              </tr>
            </thead>
            <tbody>
                <c:forEach var="product" items="${allproduct}">
                    <tr>
                        <td>${product.productId}</td>
                        <td>${product.productName}</td>
                        <td>${product.rate}</td>
                        <td>${product.categoryNo}</td>
                        <td>${product.stockInhand}</td>
                        <td>${product.productDescription}</td>
                        <td>${product.productImage}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>