<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="ISO-8859-1">
<title>Add Bill Invoice</title>
<style type="text/css">
body {
	background-image:
		url("file:///C:/Users/hari3105/Downloads/istockphoto-1181376840-612x612.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;

h1 {
	backgroundcolor: #FFE4C4;
}
label {
	backgroundcolor: #FFE4C4;
	font-size: 1.3em;
	display: flex;
	margin: 5px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}
#userId {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}
#productId {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}
#quantity {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}
#rate {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}
#billAmount {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}
#modeOfPayment {
	width: 250px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}
#billDate {
	width: 280px;
	height: 40px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
	}

</style>
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