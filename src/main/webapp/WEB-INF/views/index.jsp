<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
<%@include file="/WEB-INF/views/css/index.css"%>
</style>
	<title>Portfolio website</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">

	<link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>
	<!----hero Section start---->

	<div class="hero">
		<nav>
			<h2 class="logo">Fashion<span>ista</span></h2>
			<ul>
				<li><a href="/user/login">Login</a></li>
				<li><a href="/feedback/addfeedback">Feedback</a></li>
				<li><a href="#about">About Us</a></li>
				<li><a href="#service">Our services</a></li>
				<li><a href="#social">Contact Us</a></li>
			</ul>
			<a href="/user/userregisterform" class="btn">Sign Up</a>
		</nav>

		<div class="content">
			<h3>Go forth and</h3>
			<h1>Look<span>Fabulous</span></h1>
			<h4>The style you love!</h4>
		</div>
	</div>

	<!----About section start---->
	<section class="about" id="about">
		<div class="main">
			<img src="https://images.unsplash.com/photo-1618481212093-a0286ef0cc95?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cHVycGxlJTIwd29tYW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60">
			<div class="about-text">
				<h2>About Us</h2>
				<h5>Fashion<span>ista</span></h5>
				<p>Fashionista, our purpose is to empower every other to lead bold
			and full lives. We do this by operating and living by the following
			values: HUSTLE, CLARITY, RADIATE, OWN IT, TRIBE and CREATE. Through
			these six values we strive to bring you the latest in clothing in an
			accessible and affordable way. We strongly believe that when you look
			good, you feel good and then you can in turn, pass the good to those
			around you. Our successes and failures have made us who we are. We
			celebrate them and each other, an we do it with style.</p>
			<a href="#social"><button type="button">Let's Talk</button></a>
			</div>
		</div>
	</section>

	<!-----service section start----------->
	<div class="service" id="service">
		<div class="title">
			<h2>Our Services</h2>
		</div>

		<div class="box">
			<div class="card">
				<i class="fas fa-bars"></i>
				<h5>Return Policy</h5>
				<div class="pra">
					<p>
					For the product where the applicable refund or return window has been exhausted, the product will be repaired as per brand warranty terms.</p>
					<p style="text-align: center;">
						<a class="button" href="#service">Read More</a>
					</p>
				</div>
			</div>

			<div class="card">
				<i class="far fa-user"></i>
				<h5>Online Payment</h5>
				<div class="pra">
					<p>E-payments eliminate the need for cash payments, and funds are transferred directly into mobile wallets or bank accounts linked to the mobile number.</p>
					<p style="text-align: center;">
						<a class="button" href="#service">Read More</a>
					</p>
				</div>
			</div>

			<div class="card">
				<i class="far fa-bell"></i>
				<h5>Web Development</h5>
				<div class="pra">
					<p>Every website should be built with two primary goals: Firstly, it needs to work across all devices. Secondly, it needs to be fast as possible.</p>

					<p style="text-align: center;">
						<a class="button" href="#service">Read More</a>
					</p>
				</div>
			</div>
		</div>
	</div>

	<!------Contact Me------>
	<div class="contact-me">
		<p>We'd love to hear from you!</p>
		<a class="button-two" href="/feedback/addfeedback">Rate Us</a>
	</div>

	<!------footer start--------->
	<footer>
		<p>Fashionista</p>
		<p>For More details contact us on:</p>
		<div class="social" id="social">
			<a href="https://www.facebook.com"><i class="fab fa-facebook-f"></i></a>
			<a href="https://www.instagram.com"><i class="fab fa-instagram"></i></a>
			<a href="https://www.google.com"><i class="fab fa-google"></i></a>
		</div>
		<p class="end">CopyRight By Fashionista</p>
	</footer>
</body>
</html>