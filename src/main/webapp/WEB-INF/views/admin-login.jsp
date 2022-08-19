<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<style type="text/css">
<%@include file="/WEB-INF/views/css/admin-login.css"%>
</style>
</head>
<body>
	<nav>
		<div class="menu">
			<div class="logo">
				<a href="#">Admin view</a>
			</div>
			<ul>
				<li><a href="/admin/productlist">List product</a></li>
				<li><a href="/admin/addproductform">Add product</a></li>
				<li><a href="/billinginvoice">List bill</a></li>
				<li><a href="/feedback/feedbacklist">Feedback</a></li>
				</ul>
		</div>
	</nav>
	</body>
	</html>