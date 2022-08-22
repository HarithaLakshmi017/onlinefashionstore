<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List-Users</title>
<style>
<%@include file="/WEB-INF/views/css/users-list.css"%>
</style>
</head>
<div id="table root">
	       
	<table>
	<caption>
	</caption>
		<thead>
		<tr>

			<th>Phone Number</th>
			<th>Email</th>
			<th>Password</th>
			<th>Address</th>
			<th>Role</th>
			<th>User Id</th>
			<th>User Name</th>
			
		</tr>

		</thead>

		<tbody>

			<c:forEach var="users" items="${alluser}">
                    <tr>

					<td>${users.phoneNumber}</td>
					<td>${users.email}</td>
					<td>${users.password}</td>
					<td>${users.address}</td>
					<td>${users.role}</td>
					<td>${users.userId}</td>
					<td>${users.userName}</td>
                <td><a href="updateproductlist?updateproductId=${product.productId}"><input
                            onclick="change()" type="button" value="Update" id="myButton1"></input></a></td>
                    <td><a href="deletebill?billId=${bill.billId}"><input
                            onclick="change()" type="button" value="Delete" id="myButton2"></input></a></td>
				</tr>
                </c:forEach>
		</tbody>
	</table>
	   
</div>

</body>
</html>

