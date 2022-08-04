<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="updatefb" method="post" modelAttribute="updatefeedback">
				<div>
					<label for="emailId">Email Id</label>
					<div>
						<form:input path="emailId" />
					</div>
				</div>
				<div>
					<label for="feedback">FeedBack</label>
					<div>
						<form:input path="feedback" />
					</div>
				</div>
				<div>
					<label for="feedbackDate">FeedBack Date</label>
					<div>
						<form:input path="feedbackDate" />
					</div>
				</div>
				<div>
					<label for="userId">User Id</label>
					<div>
						<form:input path="userId" />
					</div>
				</div>
				
				<div>
					<form:button>Update FeedBack</form:button>
				</div>
			</form:form>

</body>
</html>