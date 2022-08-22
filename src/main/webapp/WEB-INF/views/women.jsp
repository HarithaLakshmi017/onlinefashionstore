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
<%@include file="/WEB-INF/views/css/women.css"%>
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
				<a href="#">Fashionista</a>
			</div>
			<div class="logo1">
				<div class="dropdown">
					<button class="dropbtn">Category</button>
					<div class="dropdown-content">
						<a href="/admin/womenjumpsuits">jumpsuits</a>
						 <a href="/admin/womensweatshirts">SweatShirts</a> 
							<a href="/admin/womenkurtis">kurtis</a>
							 <a href="/admin/womenrippedjean">Rippedjean</a> 
							<a href="/admin/womenjackets">jackets</a>
					</div>
				</div>
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
					<div class="images__card">
						<h2></h2>
					</div>
					<div class="images__card">
						<h2></h2>
					</div>
					<div class="images__card">
						<h2></h2>
					</div>
					<div class="images__card">
						<h2></h2>
					</div>
					<div class="images__card">
						<h2></h2>
					</div>
					<div class="images__card">
						<h2></h2>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- Footer Section -->
	<div class="footer__container"></div>
</body>
</html>