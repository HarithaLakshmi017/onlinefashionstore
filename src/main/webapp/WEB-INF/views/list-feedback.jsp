<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List-FeedBack</title>
<style type="text/css">
table, tb {
	width: 50%;
	padding: 15px;
	text-align: left;
}

th, td {
	border: solid 1px #FFFF00;
	padding: 10px;
	border-color: #FFA07A;
}

th, td {
	color: white;
}

body {
	background-image:
		url('');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
	background-repeat: no-repeat;
}
</style>
</head>
<div id="table root">
	       
	<table>
		<thead>
			<tr>

				<th>FeedBack Id</th>
				<th>User Id</th>
				<th>FeedBack</th>
				<th>FeedBack Date</th>

			</tr>

		</thead>

		<tbody>

			<c:forEach var="feedbacklist" items="${allfeedbacklist}">
                    <tr>

					<td>${feedbacklist.feedbackId}</td>
					<td>${feedbacklist.userId}</td>
					<td>${feedbacklist.feedback}</td>
					<td>${feedbacklist.feedbackDate}</td>
					<td><a
						href="updatefeedback?Id=${feedbacklist.feedbackId}"><input
							onclick="change()" type="button" value="Update" id="myButton1"></input></a></td>

				</tr>
                </c:forEach>
		</tbody>
	</table>
	   
</div>

</body>
</html>

