<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List-Product</title>
</head>
<h1 align="center">Product List</h1>
<div id="table root">
        <table border="2" align="center">
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
                        <td><a href="updateProductform?id=${product.productId}"><input
                            onclick="change()" type="button" value="Update" id="myButton1"></input></a></td>
                    <td><a href="deleteproduct?id=${product.productId}"><input
                            onclick="change()" type="button" value="Delete" id="myButton2"></input></a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</body>
</html>