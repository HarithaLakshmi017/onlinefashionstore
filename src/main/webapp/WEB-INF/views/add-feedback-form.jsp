<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add FeedBack</title>
<style>
h1 {
	color: #ff9999;
}

label {
	color: #ff9999;
	font-size: 1.3em;
	display: flex;
	margin: 5px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}

#userId {
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
	<h1 align="center">Add FeedBack</h1>
	<div id="table root">
		<table border="2" align="center">
			<div id="root"></div>
		</table>
		<div id="form" align="center">

			<form:form action="addfb" method="post"
				modelAttribute="addfeedback">
				<div>
					<label for="userId">User Id</label>
				</div>
				<div>
					<form:input path="userId" />
				</div>
				<div>
					<label for="feedback">FeedBack</label>
				</div>
				<div>
					<form:input path="feedback" />
				</div>
				<div>
					<label for="feedbackDate">FeedBack Date</label>
				</div>
				<div>
					<form:input path="feedbackDate" type ="date"/>
				</div>

				<form:button>Add FeedBack</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>