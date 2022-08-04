<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add FeedBack</title>
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
					<label for="emailId">Email Id</label>
				</div>
				<div>
					<form:input path="emailId" />
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
					<form:input path="feedbackDate" />
				</div>

				<form:button>Add FeedBack</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>