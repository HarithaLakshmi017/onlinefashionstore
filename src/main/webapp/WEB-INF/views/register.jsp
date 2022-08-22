<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Sign up</title>
<style>
<%@include file="/WEB-INF/views/css/register.css"%>
</style>
<!-- <script type="text/javascript">
	var 
	userNameCheck = function() {
		var nameRegex = new RegExp("^[a-zA-Z]+$");
		if (!document.myForm.customerName.value.match(nameRegex)) {
			if (alert("Name can't be empty or must contain only alphabets")) {
				document.myForm.customerName.focus();
			} else
				document.activeElement.blur();
		} else {
			return false;
		}

	}

	var emailNameCheck = function() {
		var rg = new RegExp(
				"^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$");
		if (!document.myForm.email.value.match(rg)) {
			if (alert("Email not valid")) {
				document.myForm.email.focus();
			} else
				document.activeElement.blur();
		} else {
			return false;
		}
	}
	var addressCheck = function() {
		if (document.myForm.address.value == "") {
			if (alert("Address cannot be blank")) {
				document.myForm.address.focus();
			} else
				document.activeElement.blur();
		} else {
			return false;
		}
	}
</script> -->
<body>
	<h1>Sign Up</h1>
	<div id="root" class="box">
		<div id="form">
			<form:form action="register" method="post" modelAttribute="users"
             name="myForm">
				<div>
					<label for="userName">User Name</label>
					<div>
						<form:input path="userName"/>

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
						<form:input path="email" id="email" name="email"
							onblur="emailNameCheck();" placeholder="e.g example@gmail.com"
							pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$"
							title="Enter valid email ex: example@gmail.com" required="true" />
					</div>
				</div>
		<div>
			<label for="address">Address</label>
			<div>
				<form:input path="address" id="address" name="address" onblur="addressCheck();" placeholder="Enter address" required="true"/>
					</div>/>
			</div>
			<div>
					<label for="role">Role</label>
			<div>
				<form:select path="role">
						<form:option value="user">User</form:option>
					</form:select>
					</div>
		</div>
		<button class="button button4">Sign Up</button>	
		</form:form>
		<br>	
		
		</div>
		</div>
</body>
</html>