<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getproduct">
				<div>
					<label for="productName">Product Name</label>
					<div>
						<form:input path="productName" />
					</div>
				</div>

				<div>
					<label for="productId">Product Id</label>
					<div>
						<form:input path="productId" />
					</div>
				</div>
				<div>
					<label for="rate">Rate</label>
					<div>
						<form:input path="rate" />
					</div>
				</div>
				<div>
					<label for="categoryNo">Category No</label>
					<div>
						<form:input path="categoryNo" />
					</div>
				</div>
				<div>
					<label for="stockInhand">Stock In Hand</label>
					<div>
						<form:input path="stockInhand" />
					</div>
				</div>
				<div>
					<label for="productDescription">Product Description</label>
					<div>
						<form:input path="productDescription" />
					</div>
				</div>
				<div>
					<label for="productImage">Product Image</label>
					<div>
						<form:input path="productImage" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<br>
	<div id="table root">
		<table border="2" align="center">
			<thead>
				<tr>
					<th>User Email</th>
					<th>Billing Id</th>
					<th>Product Id</th>
					<th>Quantity</th>
					<th>Rate</th>
					<th>Bill Amount</th>
					<th>Bill Date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="billingdetail" items="${getbilling}">
					<tr>
						<td>${billingdetail.userEmail}</td>
						<td>${billingdetail.billingId}</td>
						<td>${billingdetail.productId}</td>
						<td>${billingdetail.quantity}</td>
						<td>${billingdetail.rate}</td>
						<td>${billingdetail.billAmount}</td>
						<td>${billingdetail.modeOfPayment}</td>
						<td>${billingdetail.billDate}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>