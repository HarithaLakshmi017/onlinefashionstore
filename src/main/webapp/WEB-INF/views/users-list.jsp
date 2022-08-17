<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List-Users</title>
<style type="text/css">
table, tb {
	width: 50%;
	padding: 15px;
	text-align: left;
}

th, td {
	border: solid 1px #FFFF00;
	padding: 10px;
	border-color: #FFA07A;
}

th, td {
	color: white;
}

body {
	background-image:
		url('https://media.istockphoto.com/photos/wood-table-top-on-blurred-of-counter-cafe-shop-with-light-for-or-picture-id924418708?k=20&m=924418708&s=612x612&w=0&h=dtmYnoc2NN3uBisSHP4m35cY4KVFtNJJvQfqrU1n4-s=');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
	background-repeat: no-repeat;
}
</style>
</head>
<div id="table root">
	       
	<table>
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

