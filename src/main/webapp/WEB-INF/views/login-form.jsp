<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Here</title>
<style type="text/css">
body {
	background: #456;
	background-image:
		url('https://images.unsplash.com/photo-1603400521630-9f2de124b33b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8Mzd8Mzc2MzY4MDN8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}

h1 {
	color: #BA4A00;
}

label {
	color: #BA4A00;
	font-size: 1.3em;
	display: flex;
	margin: 5px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}

#UserName {
	width: 250px;
	height: 30px;
	border-color: black;
	border-radius: 3px;
	padding-left: 8px;
	border-radius: 5px;
}

#password {
	width: 250px;
	height: 30px;
	border-color: black;
	border-radius: 3px;
	padding-left: 8px;
	border-radius: 5px;
}

#log {
	width: 250px;
	height: 30px;
	border-color: black;
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
}
</style>
</head>
<body>
	<h1 align="center">Login</h1>
	<div class="box">
		<form:form action="checkuserlogin" method="post"
			modelAttribute="users">
			<div>
				<label for="userName">User Name </label>
				<form:input id="userName" path="userName"
					title="enter the valid username" />
			</div>
			<div>
				<label for="password">Password</label>
				<form:input id="password" path="password"
					title="password must begin with letter and contain atleast one number and must have atleast 8 characters"
					required="true" />
			</div>
			<div>
					<label for="role">Role</label>
					<div>
						<td><form:select path="role">
								<form:option value="user">User</form:option>
								<form:option value="admin">Admin</form:option>
							</form:select></td>
					</div>
				</div>

			<form:button id="log">Login</form:button>
		</form:form>
	</div>
</body>
</html>