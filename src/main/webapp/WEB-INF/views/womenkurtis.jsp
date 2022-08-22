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
<%@include file="/WEB-INF/views/css/womenkurtis.css"%>
</style>
</head>
<body>
	<nav>
		<a href="/admin/women">
			<button class="button1"><em class="gg-arrow-left-r"></em></button>
		</a> <br />
		 <a href="/home/index">
	<button class="button3"><i class="fa fa-home"></i></button></a>
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
				<a href="/admin/updateProductform?id=232"><h2>Geometric print kurti</h2></a>
					</div>
					<div class="images__card">
				  <a href="/admin/updateProductform?id=233"><h2>Embellished straight kurti</h2></a>
					</div>
					<div class="images__card">
					<a href="/admin/updateProductform?id=234"><h2>puffed sleeves kurti</h2></a>
					</div>
					<div class="images__card">
				  <a href="/admin/updateProductform?id=235"><h2>Block print straight kurti</h2></a>
					</div>
					<div class="images__card">
			   	<a href="/admin/updateProductform?id=236"><h2>Cotton embellished kurti</h2></a>
					</div>
					<div class="images__card">
					<a href="/admin/updateProductform?id=237"><h2>plain side cut kurti</h2></a>
					</div>
		</section>
		<!-- Footer Section -->
		<div class="footer__container"></div>
	</div>

</body>
</html>