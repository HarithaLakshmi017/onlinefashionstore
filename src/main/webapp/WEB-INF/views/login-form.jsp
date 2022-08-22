<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Login Here</title>
<style>
<%@include file="/WEB-INF/views/css/login-form.css"%>
</style>
<script type="text/javascript">
var userNameCheck = function() {
	 var nameRegex = new RegExp("^[a-zA-Z]+$");
	 if(!document.myForm.customerName.value.match(nameRegex)){
			if(alert("Name can't be empty or must contain only alphabets")){ 
				 document.myForm.customerName.focus();
		    }
			else
				document.activeElement.blur();
		}
   else{
       return false;
	}
</script>
</head>
<body>
	<h1>Login</h1>
	<div class="box">
		<form:form action="checkuserlogin" method="post"
			modelAttribute="users" name="myForm">
			<div>
				<label for="userName">User Name </label>
				<form:input  path="userName"
					title="enter the valid username" name="userName" placeholder="enter username" id="userName"
					onblur="userNameCheck();" />
			</div>
			<div>
				<label for="password">Password</label>
				<form:input id="password" path="password" type="password" placeholder="enter password"
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
			<br>
			<form:button id="log">Login</form:button>
		</form:form>
	</div>
</body>
</html>