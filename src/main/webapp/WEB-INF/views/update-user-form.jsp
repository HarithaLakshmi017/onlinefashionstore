<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Person</title>
<style type="text/css">
body {h1 { backgroundcolor:#FFE4C4;
	
}

label {
	backgroundcolor: #FFE4C4;
	font-size: 1.3em;
	display: flex;
	margin: 5px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
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
#password {
	width: 250px;
	height: 30px;
	border-radius: 3px;
	padding-left: 8px;
}

#role {
	width: 280px;
	height: 40px;
	border-radius: 3px;
	padding-left: 8px;
}

#userName {
	width: 280px;
	height: 40px;
	border-radius: 3px;
	padding-left: 8px;
}
</style>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="update" method="post" modelAttribute="updateuser">
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
					<label for="role">Role</label>
					<div>
						<form:input path="role" />
					</div>
					<div>
						<label for="userName">User Name</label>
						<div>
							<form:input path="userName" />
						</div>
					</div>
					<form:button>Update</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>