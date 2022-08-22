<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List-Product</title>
<style>
<%@include file="/WEB-INF/views/css/product-list.css"%>
</style>
</head>
<h1>Product List</h1>
<div id="table root">
        <table id="alter">
        <caption></caption>
            <thead>
                <tr>
                    <th>Product Id</th>
                    <th>Product Name</th>
                    <th>Category No</th>
                    <th>StockInhand</th>
                    <th>Price</th>
                    <th>Description</th>
                    <th>Image</th>
                    <th>update</th>
                    <th>delete</th>
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