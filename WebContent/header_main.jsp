<!DOCTYPE html>
<html lang="en">
<head>
<title>Schemes</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script>
	$(document).ready(function() {
		$('[data-toggle="popover"]').popover();
	});
</script>





<style>
body {
	background: url("image//bakcground.jpg") no-repeat center fixed;
	background-size: cover;
	text-align: center;
	font-family: "Times New Roman", Times, serif;
	color: black;
}

input[type=text], [type=textarea] {
	width: 80%;
	padding: 5px 5px;
	margin: 8px 0;
	box-sizing: border-box;
	background-color: white;
	color: black;
}

h1, h3 {
	text-align: center;
	font-family: "Times New Roman", Times, serif;
	color: black;
}

h2, h4, h5, h6, p, a, label, form {
	text-align: left;
	font-family: "Times New Roman", Times, serif;
	color: black;
	font-weight: 600;
}

.jumbotron {
	background-color: rgb(50, 68, 186);
	padding: 5px 10px;
	font-family: "Times New Roman", Times, serif;
	color: white;
	font-weight: 600;
	font-size: 20px;
}

.jumbotron2 {
	background-color: rgb(51, 128, 196);
	color: white;
	padding: 5px 20px;
	font-family: "Times New Roman", sans-serif;
}

.container-fluid {
	color: #80bfff;
	padding: 20px 20px;
}

.navbar {
	margin-bottom: 0;
	background-color: #3244ba;
	z-index: 9999;
	border: 0;
	font-size: 15px !important;
	line-height: 1.42857143 !important;
	letter-spacing: 4px;
	border-radius: 0;
	font-family: "Times New Roman", Times, serif;
	font-weight: 500;
}

.navbar li a, .navbar .navbar-brand {
	color: #fff !important;
}

.navbar-nav li a:hover, .navbar-nav li.active a {
	color: #0099cc !important;
	background-color: #fff !important;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
	color: #fff !important;
}

.slideanim {
	visibility: hidden;
}

.slide {
	animation-name: slide;
	-webkit-animation-name: slide;
	animation-duration: 1s;
	-webkit-animation-duration: 1s;
	visibility: visible;
}

@
keyframes slide { 0% {
	opacity: 0;
	transform: translateY(70%);
}

100%
{
opacity
:
 
1;
transform
:
 
translateY
(0%);

       
}
}
@
-webkit-keyframes slide { 0% {
	opacity: 0;
	-webkit-transform: translateY(70%);
}

100%
{
opacity
:
 
1;
-webkit-transform
:
 
translateY
(0%);

    
}
}
@media screen and (max-width: 768px) {
	.col-sm-4 {
		text-align: center;
		margin: 25px 0;
	}
	.btn-lg {
		width: 100%;
		margin-bottom: 35px;
	}
}

@media screen and (max-width: 480px) {
	.logo {
		font-size: 150px;
	}
}

video {
	width: 50%;
	height: auto;
}
</style>

</head>


<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="60">


	<nav class="navbar navbar-default navbar-fixed-top"
		style="height: 10px;">
		<div class="container">
			<div class="collapse navbar-collapse" id="myNavbar">


				<ul class="nav navbar-nav navbar-left">
					<li>
					<a href="front.html">
					<img src="image//logo.png" style="height: 20%"><br>
					<br>
					</a>
					</li>


				</ul>



				<ul class="nav navbar-nav navbar-right">
					<li><a href="#about">About</a></li>
					<li><a href="#contact">Contact Us</a></li>
					<li><a href="#feedback">Help</a></li>
					<li><a href="#faq">FAQ</a></li>

					<li><a href="#login">Signup/Login</a></li>

				</ul>
			</div>
		</div>
	</nav>
	<br>
	<br>



	<div id="about" color="black" style="text-align: center"></div>

	<div class="container"></div>