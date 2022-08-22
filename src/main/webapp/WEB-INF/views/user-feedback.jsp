<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add User name</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="userdetail">
				<div>
					<label for="userId">User Id</label>
					<div>
						<form:input path="userId" />
					</div>
				</div>

				<div>
					<label for="userName">User Name</label>
					<div>
						<form:input path="userName" />
					</div>
				</div>
				<div>
					<label for="phoneNumber">Phone number</label>
					<div>
						<form:input path="phoneNumber" />
					</div>

				</div>
				<div>
					<label for="email">Email Id</label>
					<div>
						<form:input path="email" />
					</div>
				</div>
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password" />
					</div>
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" />
					</div>
				</div>
				<div>
					<label for="role">Role</label>
					<div>
						<form:input path="role" />
					</div>
				</div>
<div id="table root">
	       
	<table>
		<thead>
		<tr>

			<th>User Id</th>
			<th>Product Id</th>
			<th>Quantity</th>
			<th>Rate</th>
			<th>Bill Amount</th>
			<th>Mode Of Payment</th>
			<th>Billing Id</th>
			<th>Bill Date</th>
		</tr>

		</thead>

		<tbody>

			<c:forEach var="listfeedback" items="${getfeedback}">
                    <tr>
                     <td>${listfeedback.email}</td>
					<td>${listfeedback.feedback}</td>
					<td>${listfeedback.feedbackDate}</td>
					<td>${listfeedback.feedbackId}</td>
			
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