<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product</title>
<style type="text/css">
body {

h1 {
	backgroundcolor: #FFE4C4;
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
#userId {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}
#email {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}
#feedbackDate {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}
#feedback {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;

}

</style>
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
						<form:input path="feedbackDate" type="date"/>
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