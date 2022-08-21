<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Bill</title>
</head>
<body>
    <div id="root">
        <div id="form">
            <form:form action="" method="post" modelAttribute="findById">
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
					<label for="modeOfPayment">Mode of Payment</label>
					<div>
						<form:input path="modeOfPayment" />
					</div>
					<div>
					<label for="billingId">Billing Id</label>
					<div>
						<form:input path="billingId" />
					</div>
				</div>
				<div>
					<label for="billDate">Bill Date</label>
					<div>
						<form:input path="billDate" type="date"/>
					</div>
				</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>