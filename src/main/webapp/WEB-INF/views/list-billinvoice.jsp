<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List-BillInvoice</title>
</head>
<div id="table root">
	       
	<table>
		<thead>
		<tr>

			<th>User Id</th>
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

					<td>${listbillinvoice.userId}</td>
					<td>${listbillinvoice.productId}</td>
					<td>${listbillinvoice.quantity}</td>
					<td>${listbillinvoice.rate}</td>
					<td>${listbillinvoice.billAmount}</td>
					<td>${listbillinvoice.modeOfPayment}</td>
					<td>${listbillinvoice.billingId}</td>
					<td>${listbillinvoice.billDate}</td>

				</tr>
                </c:forEach>
		</tbody>
	</table>
	   
</div>

</body>
</html>

