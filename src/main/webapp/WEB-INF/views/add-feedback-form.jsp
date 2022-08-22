<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add FeedBack</title>
<style type="text/css">
<%@include file="/WEB-INF/views/css/add-feedback-form.css"%>
</style>
</head>
<body>
	<div class="box">
		<h1>Add a FeedBack</h1>
		<div id="table root">
			<div id="form">

				<form:form action="addfb" method="post" modelAttribute="addfeedback"
					name="myForm">
					<div>
						<label for="email">Email</label>
					</div>
					<div>
						<form:input path="email" name="email"
							placeholder="e.g example@gmail.com"
							pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$"
							title="Enter valid email ex: example@gmail.com" required="true" />
					</div>
					<div>
						<label for="feedback">FeedBack</label>
					</div>
					<div>
						<form:input path="feedback" placeholder="enter feedback"
							pattern="[a-zA-Z]{5,40}{  }"
							title="Enter feedback" required="true"/>
					</div>
					<div>
						<label for="feedbackId"></label>
					</div>
					<div>
						<form:input path="feedbackId" type="hidden" />
					</div>
					<div>
						<label for="feedbackDate">FeedBack Date</label>
					</div>
					<div>
						<form:input path="feedbackDate" type="date" title="Fill Date"
							pattern="^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$"
						 required="true"/>
					</div>

					<button class="button button4">Add Feedback</button>
				</form:form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var emailCheck = function() {
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
		var feedDate = function() {
			var dateReg = new RegExp(
					"^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$");
			if (!document.myForm.feedbackDate.value.match(dateReg)) {
				if (alert("Date not valid")) {
					document.myForm.feedbackDate.focus();
				} else
					document.activeElement.blur();
			} else {
				return false;
			}
		}
		var feedBack = function() {
			var nameRegex = new RegExp("[a-zA-Z0-9]{5,40}{  }");
			if (!document.myForm.feedback.value.match(nameRegex)) {
				if (alert("Enter feedback")) {
					document.myForm.feedback.focus();
				} else
					document.activeElement.blur();
			} else {
				return false;
			}

		}
	</script>
</body>
</html>