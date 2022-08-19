<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fashionista</title>
<style>
<%@include file="/WEB-INF/views/css/mensjean.css"%>
</style>
</head>
<body>
	<nav>
		<a href="/admin/product">
			<button class="button1">Back</button>
		</a> <br />
		<div class="menu">
			<div class="logo">
				<a href="#">Mens fashion</a>
			</div>
			<div class="logo1">

				<ul>
				</ul>
			</div>
	</nav>
	<div class="img"></div>
	<div class="center">
		<div class="btns"></div>

		<section>
			<div class="images" id="coll">
				<h1>Gallery</h1>
				<div class="images__container">
					<div class="images__card" onclick=>
				<a href="/admin/updateProductform?id=153"><h2>Heavily washed skinny fit jeans</h2></a>
					</div>
					<div class="images__card">
				  <a href="/admin/updateProductform?id=154"><h2>low-rise slim fit</h2></a>
					</div>
					<div class="images__card">
					<a href="/admin/updateProductform?id=155"><h2>lightly washed straight jeans</h2></a>
					</div>
					<div class="images__card">
				  <a href="/admin/updateProductform?id=156"><h2>Distressed slim fit jeans</h2></a>
					</div>
					<div class="images__card">
			   	<a href="/admin/updateProductform?id=157"><h2>Straight fit jeans</h2></a>
					</div>
					<div class="images__card">
					<a href="/admin/updateProductform?id=179"><h2>mid rise straight jeans</h2></a>
					</div>
		</section>
		<!-- Footer Section -->
		<div class="footer__container"></div>
	</div>

</body>
</html>