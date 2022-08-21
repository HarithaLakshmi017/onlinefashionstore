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
<%@include file="/WEB-INF/views/css/product-home.css"%>
</style>
</head>
<body>
	<nav>
	<a href="/user/login">
                <button class="button1"><em class="gg-arrow-left-r"></em></button>
            </a> <br />
            	<a href="/home/index">
			<button class="button3"><i class="fa fa-home"></i></button></a>
		<div class="menu">
			<div class="logo">
				<a href="#">Fashionista</a>
			</div>
			<div class="logo1">
				<div class="dropdown">
					<button class="dropbtn">Category</button>
					<div class="dropdown-content">
						<a href="/admin/men">Men</a> 
						<a href="/admin/women">women</a>
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
					<a href="/admin/men"><h2>Men</h2></a>	
					</div>
					<div class="images__card">
					<a href="/admin/women"><h2>Women</h2></a>	
					</div>
				</div>
			</div>
		</section>
		<!-- Footer Section -->
		<div class="footer__container"></div>
		<a href="/user/login">
                <button class="button1"><em class="gg-arrow-left-r"></em></button>
            </a> <br />
	</div>
</body>
</html>