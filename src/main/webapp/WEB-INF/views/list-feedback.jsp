<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List-FeedBack</title>
<style>
<%@include file="/WEB-INF/views/css/list-feedback.css"%>
</style>
</head>
<div id="table root">
	       
	<table>
	<caption></caption>
		<thead>
			<tr>
                <th>feedbackId</th>
				<th>Email</th>
				<th>FeedBack</th>
				<th>FeedBack Date</th>
				<th>update</th>

			</tr>

		</thead>

		<tbody>

			<c:forEach var="feedbacklist" items="${allfeedbacklist}">
                    <tr>

					<td>${feedbacklist.feedbackId}</td>
					<td>${feedbacklist.email}</td>
					<td>${feedbacklist.feedback}</td>
					<td>${feedbacklist.feedbackDate}</td>
					<td><a
						href="updatefeedback?Id=${feedbacklist.feedbackId}"><input
							onclick="change()" type="button" value="Update" id="Button5"></input></a></td>

				</tr>
                </c:forEach>
		</tbody>
	</table>
	   
</div>

</body>
</html>

