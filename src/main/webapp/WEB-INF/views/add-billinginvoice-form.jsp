<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="ISO-8859-1">
<title>Add Bill Invoice</title>
<style>
<%@include file="/WEB-INF/views/css/add-billinginvoice-form.css"%>
</style>
</head>
<body style="text-align:center">
<div class="box">
	<h1>Bill Invoice</h1>
		<div id="root">
			<form:form action="addbillinvoice" method="post"
				modelAttribute="addbilldetail">
				<div>
					<label for="userId">User Id</label>
				</div>
				<div>
					<form:input path="userId"/>
				</div>
				<div>
					<label for="productId">Product Id</label>
				</div>
				<div>
					<form:input path="productId"/>
				</div>
				<div>
					<label for="quantity">Quantity</label>
				</div>
				<div>
					<form:input path="quantity" onchange="amountCalculate()"/>
				</div>
				<div>
					<label for=rate>Rate</label>
				</div>
				<div>
					<form:input path="rate" onchange="amountCalculate()"/>
				</div>
				<div>
					<label for="billAmount">Bill Amount</label>
				</div>
				<div>
					<form:input path="billAmount" onchange="amountCalculate(this.form)"/>
				</div>
				<div>
					<label for="modeOfPayment">Mode of Payment</label>
                    </div>
                        <form:select path="modeOfPayment">
                            <form:errors path="modeOfPayment" />
                            <form:option value="Credit card">CREDIT CARD</form:option>
                            <form:option value="Upi">UPI</form:option>
                            <form:option value="NetBanking">NETBANKING</form:option>
                        </form:select>
  <br>
				<div>
					<label for="billDate">Bill Date</label>
				</div>
				<div>
					<form:input path="billDate" type="date"/>
				</div>

				<form:button>Proceed to pay</form:button>
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