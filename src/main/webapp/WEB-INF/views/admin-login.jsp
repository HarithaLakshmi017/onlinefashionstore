<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', Fantasy;
}

::selection {
	color: #000;
	background: #DDA0DD;
}

nav {
	position: fixed;
	background: #1b1b1b;
	width: 100%;
	padding: 10px 0;
	z-index: 12;
}

nav .menu {
	max-width: 1250px;
	margin: auto;
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 0 20px;
}

.menu .logo a {
	text-decoration: none;
	color: #DEB887;
	font-size: 35px;
	font-weight: 600;
}

.menu ul {
	display: inline-flex;
}

.menu ul li {
	list-style: none;
	margin-left: 7px;
}

.menu ul li:first-child {
	margin-left: 0px;
}

.menu ul li a {
	text-decoration: none;
	color: #DEB887;
	font-size: 18px;
	font-weight: 500;
	padding: 8px 15px;
	border-radius: 5px;
	transition: all 0.3s ease;
}

.menu ul li a:hover {
	background: #DEB887;
	color: black;
}


body {
	background-image: url('file:///C:/Users/hari3105/Downloads/6097783.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
}
</style>
</head>
<body>
	<nav>
		<div class="menu">
			<div class="logo">
				<a href="#">Admin view</a>
			</div>
			<ul>
				<li><a href="/admin/productlist">List product</a></li>
				<li><a href="/admin/addproductform">Add product</a></li>
				<li><a href="/billinginvoice">List bill</a></li>
				<li><a href="/feedback/feedbacklist">Feedback</a></li>
		</div>
	</nav>
	</body>
	</html>