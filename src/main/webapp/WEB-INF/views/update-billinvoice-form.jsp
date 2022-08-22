<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update BillInvoice</title>
<style>
<%@include file="/WEB-INF/views/css/update-billinvoice-form.css"%>
</style>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="updatebill" method="post" modelAttribute="updatebilling">
				<div>
					<label for="userEmail">User Email</label>
					<div>
						<form:input path="userEmail" />
					</div>
				</div>
				<div>
					<label for="productId">Product Id</label>
					<div>
						<form:input path="productId" />
					</div>
				</div>
				<div>
					<label for="quantity">Quantity</label>
					<div>
						<form:input path="quantity" />
					</div>
				</div>
				
               <div>
					<label for="rate">Rate</label>
					<div>
						<form:input path="rate" />
					</div>
				</div>
				<div>
					<label for="billAmount">Bill Amount</label>
					<div>
						<form:input path="billAmount" />
					</div>
				</div>
				<div>
					<label for="modeOfPayment">Mode Of Payment</label>
					<div>
						<form:input path="modeOfPayment" />
					</div>
				</div>
				<div>
					<label for="billDate">Bill Date</label>
					<div>
						<form:input path="billDate" type="date"/>
					</div>
				</div>
				<div>
					<form:button>Update Bill</form:button>
				</div>
			</form:form>
			</div>
			</div>
</body>
</html>