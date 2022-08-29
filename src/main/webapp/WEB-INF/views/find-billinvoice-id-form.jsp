<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Bill</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
<%@include file="/WEB-INF/views/css/find-billinvoice-id-form.css"%>
</style>
</head>
<body>
	<h1>Bill Receipt</h1>
	<br>    
	<a href="/user/login">
                <button class="button1"><em class="gg-arrow-left-r"></em></button>
            </a> <br />
            	<a href="/home/index">
			<button class="button3"><em class="fa fa-home"></em></button></a>
	<div class="box">
		<div id="root">  
			<div id="form">	
			<form:form action="" method="get" modelAttribute="findById">			   
				<table id="alter">
					<caption></caption>
					<thead>
						<tr>
							<th>User Email</th>
							<th>Product Id</th>
							<th>Quantity</th>
							<th>Rate</th>
							<th>Mode Of Payment</th>
							<th>Bill Date</th>
							<th>Bill Amount</th>
						</tr>
					</thead>
					<tbody>
					<tr>
								<td>${findById.userEmail}</td>
								<td>${findById.productId}</td>
								<td>${findById.quantity}</td>
								<td>${findById.rate}</td>
								<td>${findById.modeOfPayment}</td>
								<td>${findById.billDate}</td>
								<td>${findById.billAmount}</td>
							</tr>
				</table>
				</form:form>
				<br>
				<br>
				<button onclick="window.print()">Print</button>
			</div>
		</div>
	</div>
</body>
</html>