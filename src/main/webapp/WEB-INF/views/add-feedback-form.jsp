<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add FeedBack</title>
<style type = "text/css">
<%@include file="/WEB-INF/views/css/add-feedback-form.css"%>
</style>
</head>
<body style="text-align:center">
<div class="box">
	<h1>Add a FeedBack</h1>
	<div id="table root">
		<div id="form">

			<form:form action="addfb" method="post"
				modelAttribute="addfeedback">
				<div>
					<label for="email">Email</label>
				</div>
				<div>
					<form:input path="email" />
				</div>
				<div>
					<label for="feedback">FeedBack</label>
				</div>
				<div>
					<form:input path="feedback" />
				</div>
					<div>
					<label for="feedbackId"></label>
				</div>
				<div>
					<form:input path="feedbackId" type="hidden"/>
				</div>
				<div>
					<label for="feedbackDate">FeedBack Date</label>
				</div>
				<div>
					<form:input path="feedbackDate" type="date"/>
				</div>

				<button class="button button4">Add Feedback</button>
			</form:form>
		</div>
	</div>
	</div>
</body>
</html>