<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Fashionista</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
<%@include file="/WEB-INF/views/css/womenjackets.css"%>
</style>
</head>
<body>
	<nav>
		<a href="/admin/product">
			<button class="button1"><em class="gg-arrow-left-r"></em></button>
		</a> <br />
		 <a href="/home/index">
	<button class="button3"><sm class="fa fa-home"></em></button></a>
		<div class="menu">
			<div class="logo">
				<a href="#">Womens fashion</a>
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
				<a href="/admin/updateProductform?id=246"><h2>womens denim jacket with flap pockets</h2></a>
					</div>
					<div class="images__card">
				  <a href="/admin/updateProductform?id=247"><h2>denim button down jacket</h2></a>
					</div>
					<div class="images__card">
					<a href="/admin/updateProductform?id=248"><h2>denim jacket</h2></a>
					</div>
					<div class="images__card">
				  <a href="/admin/updateProductform?id=249"><h2>leather jacket with front zip</h2></a>
					</div>
					<div class="images__card">
			   	<a href="/admin/updateProductform?id=250"><h2>block print jacket</h2></a>
					</div>
					<div class="images__card">
					<a href="/admin/updateProductform?id=251"><h2>zip front bomber jacket</h2></a>
					</div>
		</section>
		<!-- Footer Section -->
		<div class="footer__container"></div>
	</div>

</body>
</html>