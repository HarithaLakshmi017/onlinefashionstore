<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Bill Invoice</title>
</head>
<body>
	<h1 align="center">Add Bill Invoice</h1>
		<div id="root">
		<div id="form" align="center">
		
			<form:form action="addbillinvoice" method="post"
				modelAttribute="addbilldetail">
				<div>
					<label for="userId">User Id</label>
				</div>
				<div>
					<form:input path="userId" title="enter a valid userId" pattern="^[a-zA-Z\\d*]{8,20}$"/>
				</div>
				<div>
					<label for="productId">Product Id</label>
				</div>
				<div>
					<form:input path="productId" title="enter a valid productId" pattern="^[a-zA-Z\\d*]{8,20}$"/>
				</div>
				<div>
					<label for="quantity">Quantity</label>
				</div>
				<div>
					<form:input path="quantity" />
				</div>
				<div>
					<label for=rate>Rate</label>
				</div>
				<div>
					<form:input path="rate" />
				</div>
				<div>
					<label for="billAmount">Bill Amount</label>
				</div>
				<div>
					<form:input path="billAmount" />
				</div>
				<div>
					<label for="modeOfPayment">Mode of Payment</label>
				</div>
				<div>
					<form:input path="modeOfPayment" />
				</div>
				<div>
					<label for="billDate">Bill Date</label>
				</div>
				<div>
					<form:input path="billDate" type="date"/>
				</div>

				<form:button>Add New</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>