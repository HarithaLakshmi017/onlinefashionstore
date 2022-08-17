<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign up</title>
<style type="text/css">
body {
	background-image:
		url("https://images.unsplash.com/photo-1558769132-cb1aea458c5e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA0fHxmYXNoaW9uJTIwYWVzdGhldGljfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

h1 {
	color: #8B4513;;
}

label {
	color: #2F4F4F;
	font-size: 1.3em;
	display: flex;
	margin: 5px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}

#userName {
	width: 250px;
	height: 30px;
	border-radius: 3px;
	padding-left: 8px;
}

#password {
	width: 250px;
	height: 30px;
	border-radius: 3px;
	padding-left: 8px;
}

#phoneNumber {
	width: 250px;
	height: 30px;
	border-radius: 3px;
	padding-left: 8px;
}

#email {
	width: 250px;
	height: 30px;
	border-radius: 3px;
	padding-left: 8px;
}

#userId {
	width: 250px;
	height: 30px;
	border-radius: 3px;
	padding-left: 8px;
}

#email {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 14px;
	padding-left: 10px;
	color: blue;
}

.box {
	width: 400px;
	height: 490px;
	overflow: hidden;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
	margin: auto;
	padding: 10px;
	text-align: center;
	background-color: #00000;
}
</style>
<body>
	<h1 align="center">Sign Up</h1>
	<div id="root" class="box">
		<div id="form">
			<form:form action="register" method="post" modelAttribute="users">
				<div>
					<label for="userName">User Name</label>
					<div>
						<form:input path="userName"
							title="should contain Only alphanumeric characters, underscore and dot.^[a-zA-Z0-9]+([._]?[a-zA-Z0-9]+)*$" />
					</div>
				</div>
				<div>
					<label for="password">Password</label>
					<form:input type="password" path="password" />
				</div>
				<div>
					<label for="phoneNumber">Phone Number</label>
					<div>
						<form:input path="phoneNumber" title="Enter a valid phone number"
							pattern="^(\+\d{1,2}\s?)?1?\-?\.?\s?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$"
							required="true" />
					</div>
				</div>
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" title="Email can't be empty"
							pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" required="true" />
					</div>
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" title="address can't be empty"/>
					</div>
				</div>
				<div>
					<label for="role">Role</label>
					<div>
						<td><form:select path="role">
								<form:option value="user">User</form:option>
							</form:select></td>
					</div>
				</div>
				<br>
				<form:button id="log">Sign Up</form:button>
			</form:form>
		</div>
	</div>



</body>
</html>