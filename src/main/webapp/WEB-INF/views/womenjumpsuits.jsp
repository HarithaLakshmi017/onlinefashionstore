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
<%@include file="/WEB-INF/views/css/womenjumpsuits.css"%>
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
				<a href="/admin/updateProductform?id=220"><h2>cotton jumpsuit with insert pockets</h2></a>
					</div>
					<div class="images__card">
				  <a href="/admin/updateProductform?id=221"><h2>striped print jumpsuit</a>
					</div>
					<div class="images__card">
					<a href="/admin/updateProductform?id=222"><h2>Block print jumpsuit with back tie-up</h2></a>
					</div>
					<div class="images__card">
				  <a href="/admin/updateProductform?id=223"><h2>jumpsuit with flap pockets</h2></a>
					</div>
					<div class="images__card">
			   	<a href="/admin/updateProductform?id=224"><h2>jumpsuit with notched lapel collar</h2></a>
					</div>
					<div class="images__card">
					<a href="/admin/updateProductform?id=225"><h2>	Square neck jumpsuit</h2></a>
					</div>
		</section>
		<!-- Footer Section -->
		<div class="footer__container"></div>
	</div>

</body>
</html>