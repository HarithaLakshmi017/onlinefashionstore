<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<style>
<%@include file="/WEB-INF/views/css/index.css"%>
</style>
</head>
<body>
	<nav>
		<div class="menu">
			<div class="logo">
				<a href="#">Fashionista</a>
			</div>
			<ul>
				<li><a href="/user/login">Login</a></li>
				<li><a href="/user/userregisterform">Sign Up</a></li>
				<li><a href="/feedback/addfeedback">Feedback</a></li>
				<li><a href="/admin/about">About</a></li>
				</ul>	
		</div>
	</nav>
	<div class="img"></div>
	<div class="center">
		<div class="title"><mark>Go</mark> forth & look <mark>fabulous!</mark></div>
		<div class="btns"></div>
	</div>
</body>
</html>