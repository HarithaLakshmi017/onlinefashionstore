<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>About</title>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
<%@include file="/WEB-INF/views/css/about.css"%>
</style>
</head>
<body style="text-align: center">
	<h2>Fashionista</h2>
	<div class="popup" onclick="myFunction()">
		Click Here!! <span class="popuptext" id="myPopup">Welcome</span>
	</div>
	<div class="box">
		<p>Fashionista, our purpose is to empower every other to lead bold
			and full lives. We do this by operating and living by the following
			values: HUSTLE, CLARITY, RADIATE, OWN IT, TRIBE and CREATE. Through
			these six values we strive to bring you the latest in clothing in an
			accessible and affordable way. We strongly believe that when you look
			good, you feel good and then you can in turn, pass the good to those
			around you. Our successes and failures have made us who we are. We
			celebrate them and each other, an we do it with style.</p>
	</div>
	<script>
		function myFunction() {
			var popup = document.getElementById("myPopup");
			popup.classList.toggle("show");
		}
	</script>
	<div class="parell">
		<div>
			Contact-Us : 6382027353 <br> 
			Email: fashionista@gmail.com
		</div>
	</div>
</body>
</html>