<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fashionista</title>
<style>
<%@include file="/WEB-INF/views/css/product-home.css"%>
</style>
</head>
<body>
	<nav>
		<div class="menu">
			<div class="logo">
				<a href="#">Fashionista</a>
			</div>
			<div class="logo1">
				<div class="dropdown">
					<button class="dropbtn">Category</button>
					<div class="dropdown-content">
						<a href="/admin/men">Men</a> <a href="/admin/women">women</a>
					</div>
				</div>
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
						<h2>Men	</h2>
					</div>
					<div class="images__card">
						<h2>Women</h2>
					</div>
				</div>
			</div>
		</section>
		<!-- Footer Section -->
		<div class="footer__container"></div>
	</div>
</body>
</html>