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
<%@include file="/WEB-INF/views/css/womensweatshirts.css"%>
</style>
</head>
<body>
	<nav>
		<a href="/admin/women">
			<button class="button1"><em class="gg-arrow-left-r"></em></button>
		</a> <br />
		 <a href="/home/index">
	<button class="button3"><em class="fa fa-home"></em></button></a>
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
				<a href="/admin/updateProductform?id=226"><h2>black and white striped sweat shirt</h2></a>
					</div>
					<div class="images__card">
				  <a href="/admin/updateProductform?id=227"><h2>Drop shoulder sleeves sweat shirt</h2></a>
					</div>
					<div class="images__card">
					<a href="/admin/updateProductform?id=228"><h2>crew neck women sweat shirt</h2></a>
					</div>
					<div class="images__card">
				  <a href="/admin/updateProductform?id=229"><h2>knit sweat shirt with ribbed hems</h2></a>
					</div>
					<div class="images__card">
			   	<a href="/admin/updateProductform?id=230"><h2>Black sweat shirt</h2></a>
					</div>
					<div class="images__card">
					<a href="/admin/updateProductform?id=231"><h2>knit brown sweat shirt</h2></a>
					</div>
		</section>
		<!-- Footer Section -->
		<div class="footer__container"></div>
	</div>

</body>
</html>