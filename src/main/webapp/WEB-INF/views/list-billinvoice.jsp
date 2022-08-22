<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List-BillInvoice</title>
<style>
<%@include file="/WEB-INF/views/css/list-billinvoice.css"%>
</style>
</head>
<div id="table root">
	       
	<table class="center">
	<caption></caption>
		<thead>
			<tr>

				<th>User Email</th>
				<th>Product Id</th>
				<th>Quantity</th>
				<th>Rate</th>
				<th>Bill Amount</th>
				<th>Mode Of Payment</th>
				<th>Billing Id</th>
				<th>Bill Date</th>
			</tr>
		</thead>

		<tbody>

			<c:forEach var="listbillinvoice" items="${allbillinvoice}">
                    <tr>

					<td>${listbillinvoice.userEmail}</td>
					<td>${listbillinvoice.billingId}</td>
					<td>${listbillinvoice.productId}</td>
					<td>${listbillinvoice.quantity}</td>
					<td>${listbillinvoice.rate}</td>
					<td>${listbillinvoice.billAmount}</td>
					<td>${listbillinvoice.modeOfPayment}</td>
					<td>${listbillinvoice.billDate}</td>
                 <td><a href="updatebillinvoiceform?Id=${listbillinvoice.userEmail}"><input
                            onclick="change()" type="button" value="Update" id="myButton1"></input></a></td>
                    <td><a href="deletebillinvoice?Id=${listbillinvoice.userEmail}"><input
                            onclick="change()" type="button" value="Delete" id="myButton2"></input></a></td>
				</tr>
                </c:forEach>
		</tbody>
	</table>
	   
</div>

</body>
</html>

