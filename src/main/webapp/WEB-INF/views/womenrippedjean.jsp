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
<%@include file="/WEB-INF/views/css/womenrippedjean.css"%>
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
				<a href="/admin/updateProductform?id=238"><h2>heavy distress skinny jeans</h2></a>
					</div>
					<div class="images__card">
				  <a href="/admin/updateProductform?id=239"><h2>mid-rise distressed skinny fit</h2></a>
					</div>
					<div class="images__card">
					<a href="/admin/updateProductform?id=241"><h2>mid distress skinny jeans</h2></a>
					</div>
					<div class="images__card">
				  <a href="/admin/updateProductform?id=242"><h2>slim fit mid-rise distressed jeans</h2></a>
					</div>
					<div class="images__card">
			   	<a href="/admin/updateProductform?id=243"><h2>lightly washed bootcut jeans</h2></a>
					</div>
					<div class="images__card">
					<a href="/admin/updateProductform?id=245"><h2>tapered fit jeans</h2></a>
					</div>
		</section>
		<!-- Footer Section -->
		<div class="footer__container"></div>
	</div>

</body>
</html>