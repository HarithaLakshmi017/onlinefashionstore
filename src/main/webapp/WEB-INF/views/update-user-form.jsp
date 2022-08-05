<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Person</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="update" method="post" modelAttribute="updateuser">
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
					<label for="phoneNumber">Phone Number</label>
					<div>
						<form:input path="phoneNumber" />
					</div>
				</div>
				<div>
					<label for="email">Email</label>
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
					<label for="gender">Mobile No</label>
					<div>
						<form:input path="gender" />
					</div>
				</div>
				<div>
					<label for="role">Role</label>
					<div>
						<form:input path="role" />
					</div>					
				</div>
				<form:button>Update</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>