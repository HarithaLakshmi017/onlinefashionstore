<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add FeedBack</title>
<style type = "text/css">
<%@include file="/WEB-INF/views/css/add-feedback-form.css"%>
</style>
</head>
<body>
	<h1>Add a FeedBack</h1>
	<div id="table root">
		<div id="form">

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
					<form:input path="feedbackDate" type="date"/>
				</div>

				<form:button>Add FeedBack</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>