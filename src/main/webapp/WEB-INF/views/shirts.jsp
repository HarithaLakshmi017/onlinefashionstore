<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fashionista</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
<%@include file="/WEB-INF/views/css/shirts.css"%>
</style>
</head>
<body>
	<nav>
		<a href="/admin/product">
			<button class="button1"><em class="gg-arrow-left-r"></em></button></a> <br />
			<a href="/home/index">
			<button class="button3"><i class="fa fa-home"></i></button></a>
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
				<a href="/admin/updateProductform?id=133"><h2>shirt with patch pocket</h2></a>
					</div>
					<div class="images__card">
				<a href="/admin/updateProductform?id=134"><h2>Slim fit with patch pocket</h2></a>
					</div>
					<div class="images__card">
				<a href="/admin/updateProductform?id=135"><h2>checked shirt with patch pocket</h2></a>
					</div>
					<div class="images__card">
				<a href="/admin/updateProductform?id=136"><h2>olive green shirt</h2></a>
					</div>
					<div class="images__card">
				<a href="/admin/updateProductform?id=137"><h2>blue slim fit shirt</h2></a>
					</div>
					<div class="images__card">
				<a href="/admin/updateProductform?id=138"><h2>checked regular fit shirt</h2></a>
					</div>
		</section>
		<!-- Footer Section -->
		<div class="footer__container"></div>
	</div>
</body>
</html>