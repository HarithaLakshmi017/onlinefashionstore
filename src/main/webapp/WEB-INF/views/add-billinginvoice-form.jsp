<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Bill Invoice</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
<%@include file="/WEB-INF/views/css/add-billinginvoice-form.css"%>
</style>
</head>
<body>
	<a href="/home/index">
	<button class="button3"><em class="fa fa-home"></em></button></a>
	<h1>Payment Gateway</h1>
	<div id="errormessage">${message}</div>
	<div class="box">
		<div id="root">
			<form:form action="addbillinvoice" method="post"
				modelAttribute="addbilldetail">
				<div>
					<label for="userEmail">User Email</label>
				<div>
				
					<form:input path="userEmail"
						pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
						placeholder="Enter Email" title="Enter Valid Email"
						required="true" />
				</div>
				</div>
				<div>
					<label for="billingId"></label>
				
				<div>
					<form:input path="billingId" type="hidden" />
				</div>
				</div>
				<div>
					<label for="productId"></label>
			
				<div>
					<form:input path="productId" type="hidden" />
				</div>
					</div>
					<div>
					<label for="productName"></label>
			
				<div>
					<form:input path="productName" type="hidden" />
				</div>
					</div>
				<div>
					<label for="quantity">Quantity</label>
				
				<div>
					<form:input path="quantity" onchange="amountCalculate()"
						pattern="^0$|^[1-9][0-9]*$" title="enter valid quantity"
						required="true" />
				</div>
				</div>
				<div>
					<label for=rate>Rate</label>
				
				<div>
					<form:input path="rate" onchange="amountCalculate()"
						readonly="true" />
				</div>
				</div>
				<div>
					<label for="billAmount">Bill Amount</label>
				
				<div>
					<form:input path="billAmount" onchange="amountCalculate(this.form)"
						readonly="true" />
				</div>
				</div>
				<div>
					<label for="modeOfPayment">Mode of Payment</label>
				
				<div>
					<form:select path="modeOfPayment">
						<form:option value="Credit card">CREDIT CARD</form:option>
						<form:option value="Upi">UPI</form:option>
						<form:option value="NetBanking">NETBANKING</form:option>
					</form:select>
				</div>
				</div>
				<div>
					<label for="billDate">Bill Date</label>
				
				<div>
					<form:input path="billDate" type="date" required="true" />
				</div>
				</div>
					<button class="button button4">Buy Now</button>
			</form:form>
		</div>
	</div>
		<script type="text/javascript">
    function amountCalculate() {
        var quantity = document.getElementById("quantity").value;
			var rate = document.getElementById("rate").value;
			var billAmount = parseInt(quantity) * parseInt(rate);
			document.getElementById("billAmount").value = billAmount;
			return billAmount;
		}
	</script>
</body>
</html>