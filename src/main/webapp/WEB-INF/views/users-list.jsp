<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List-Users</title>
</head>
<div id="table root">
	       
	<table>
		<thead>
		<tr>

			<th>Phone Number</th>
			<th>Email</th>
			<th>Password</th>
			<th>Address</th>
			<th>Gender</th>
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
					<td>${users.gender}</td>
					<td>${users.role}</td>
					<td>${users.userId}</td>
					<td>${users.userName}</td>

				</tr>
                </c:forEach>
		</tbody>
	</table>
	   
</div>

</body>
</html>

