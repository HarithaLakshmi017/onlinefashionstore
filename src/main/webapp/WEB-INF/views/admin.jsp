<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<link href='style.css' rel='stylesheet'>
<title>Login form</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='app.js' async></script>
</head>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap');

* {
	margin: 0;
	padding: 0;
	font-family: Poppins;
}

h3 {
	font-size: 13px;
	margin: 7px 0px;
}

.wrapper {
	background-image:
		url('https://uicookies.com/wp-content/uploads/2019/10/free-fashion-website-templates-1000x750.jpg.webp');
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

.pcon {
	width: 370px;
	height: 450px;
	border: 1px solid #C67C66;
	box-shadow: 2px 1px 5px black;
	border-radius: 15px;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	backdrop-filter: blur(5px);
	background-color: rgba(39, 36, 36, 0.9);
	color: #C67C66;
	transition: all 1s ease;
}

.pcon:hover {
	background-color: rgba(39, 36, 36, 0.7);
	transition: all 1s ease;
	text-shadow: 2px 1px 5px black;
}

.textfield {
	height: 40px;
	width: 270px;
	text-indent: 10px;
	border-radius: 10px;
	border: none;
}

.textfield:focus {
	outline: 2px solid #C67C66;
}

.btn {
	height: 50px;
	width: 274px;
	margin-bottom: 10px;
	border: 2px solid #C67C66;
	border-radius: 10px;
	background-color: #9D3322;
	color: white;
	transition: all 600ms ease-out;
}

.btn:hover {
	background-color: rgba(157, 51, 34, .7);
	cursor: pointer;
}

.btn:active {
	color: black;
	background-color: white;
}

.inputs {
	margin: 35px 0px;
}

.forgot {
	position: relative;
	transform: translate(175px, 0px);
	font-size: 10px;
	text-decoration: underline;
}

.forgot:hover {
	color: white;
	cursor: pointer;
}

.checkbox {
	margin-top: 20px;
	font-size: 13px;
	margin-left: 5px;
	font-weight: bold;
}
</style>



<body>
	<div class='wrapper'>
		<div class='pcon'>
			<h2>Welcome! Please login.</h2>
			<form>
				<div class='inputs'>
					<h3>Username</h3>
					<input type='text' class='textfield' id='un' required></input>
					<h3 class='forgot' id='fun'>Forgot username</h3>
				</div>
				<div class='inputs'>
					<h3>Password</h3>
					<input type='text' class='textfield' id='pw' required></input>
					<h3 class='forgot' id='fpw'>Forgot password</h3>
					<input type='checkbox'><label for='check' class='checkbox'>Remember
						me</label></input>
				</div>

				<button class='btn'>Sign in</button>
			</form>
		</div>
	</div>


</body>
</html>