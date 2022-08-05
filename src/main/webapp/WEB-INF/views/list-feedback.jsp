<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List-FeedBack</title>
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
					

				</tr>
                </c:forEach>
		</tbody>
	</table>
	   
</div>

</body>
</html>

