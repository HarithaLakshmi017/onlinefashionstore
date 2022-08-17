<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List-BillInvoice</title>
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
                 <td><a href="updatebillinvoiceform?Id=${listbillinvoice.userId}"><input
                            onclick="change()" type="button" value="Update" id="myButton1"></input></a></td>
                    <td><a href="deletebillinvoice?Id=${listbillinvoice.userId}"><input
                            onclick="change()" type="button" value="Delete" id="myButton2"></input></a></td>
				</tr>
                </c:forEach>
		</tbody>
	</table>
	   
</div>

</body>
</html>

