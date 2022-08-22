<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Fashionista</title>
<link href='https://css.gg/arrow-left-r.css' rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
<%@include file="/WEB-INF/views/css/mensweatshirts.css"%>
</style>
</head>
<body>
	<nav>
		<a href="/admin/product">
                <button class="button1"><em class="gg-arrow-left-r"></em></button>
            </a> <br />
              <a href="/home/index">
	<button class="button3"><em class="fa fa-home"></em></button></a>
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
					<a href="/admin/updateProductform?id=120"><h2>crew-neck sweat shirt</h2></a>
					</div>
					<div class="images__card">
					<a href="/admin/updateProductform?id=121"><h2>slim fit sweat shirt</h2></a>
					</div>
					<div class="images__card">
					<a href="/admin/updateProductform?id=122"><h2>Textured sweat shirt</h2></a>
					</div>
					<div class="images__card">
					<a href="/admin/updateProductform?id=125"><h2>solid crew neck sweat shirt</h2></a>
					</div>
					<div class="images__card">
					<a href="/admin/updateProductform?id=127"><h2>printed sweat shirt</h2></a>
					</div>
					<div class="images__card">
					<a href="/admin/updateProductform?id=126"><h2>signature brand sweat shirt</h2></a>
					</div>
					<div class="images__card">
					<a href="/admin/updateProductform?id=128"><h2>Sweat shirt hoodie</h2></a>
					</div>
					<div class="images__card">
					<a href="/admin/updateProductform?id=129"><h2>Black sweat shirt</h2></a>
					</div>
					<div class="images__card">
					<a href="/admin/updateProductform?id=130"><h2>logo printed sweat shirt</h2></a>
					</div>
					<div class="images__card">
					<a href="/admin/updateProductform?id=131"><h2>premium red sweat shirt</h2></a>
					</div>
					<div class="images__card">
					<a href="/admin/updateProductform?id=132"><h2>Double coloured sweat shirt</h2></a>
					</div>
		</section>
		<!-- Footer Section -->
		<div class="footer__container"></div>
	</div>

</body>
</html>