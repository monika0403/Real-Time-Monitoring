<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page 
	import="java.util.*"%>
	
<!DOCTYPE html>
<html lang="en">
<head>  
     <title>Schemes</title>
     <meta charset="utf-8"> 
	 <meta name="viewport" content="width=device-width, initial-scale=1">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>	
	 <meta name="viewport" content="width=device-width, initial-scale=1">
	 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	 <script>
		$(document).ready(function(){$('[data-toggle="popover"]').popover();});
	 </script>

	 
  <style>
  body 
  {
	background-image: url("image//bakcground.jpg");
  background-size: cover;
  text-align: center;
  font-family: "Times New Roman", Times, serif;
  color: black;   
  }
  	
	  	input[type=text] , [type=textarea]
		{
			width: 80%;
			padding: 5px 5px;
			margin: 8px 0;
			box-sizing: border-box;
			background-color: white;
			color: black;	
		}
		
		input[type=email] 
		{
			width: 60%;
			padding: 5px 5px;
			margin: 8px 0;
			box-sizing: border-box;
			background-color: white;
				
		}
		
		
  h1,h3
		{
			text-align: center;
			font-family: "Times New Roman", Times, serif;
			color: black;
			
		}

	 
  h2,h4,h5,h6,p,a,label,form
		{		
			text-align:left;
			font-family: "Times New Roman", Times, serif;
			color: black;
			font-weight: 600;
		
		}


		
  
 
  .jumbotron 
  {
      background-color:rgb(50, 68, 186);
      padding: 5px 10px;
	  font-family: "Times New Roman", Times, serif;
      color: white;
	  font-weight: 600;
      font-size: 20px;  }
  
  .jumbotron2
  {
      background-color:rgb(51, 128, 196);
      color: white;
      padding: 5px 20px;
      font-family: "Times New Roman", sans-serif;
  }
  
  
  .container-fluid 
  { 
	  color:#80bfff;
      padding: 20px 20px;
  }
  
 
 .navbar
  {
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
  .navbar li a, .navbar .navbar-brand 
  {
      color: #fff !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a 
  {
      color: #0099cc !important;
      background-color: #fff !important;
  }
  .navbar-default .navbar-toggle
  {
      border-color: transparent;
      color: #fff !important;
  }
  .slideanim
  {
	  visibility:hidden;
  }
  .slide 
  {
      animation-name: slide;
      -webkit-animation-name: slide;
      animation-duration: 1s;
      -webkit-animation-duration: 1s;
      visibility: visible;
  }
  @keyframes slide 
  {
    0% {
      opacity: 0;
      transform: translateY(70%);
       } 
    100% {
      opacity: 1;
      transform: translateY(0%);
       }
  }
 
 @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
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


#sel1{
width: 50%;
}
  
     footer {
       background-color: #3244ba;
      color: white;
       padding: 5px 10px;
      font-family: "Times New Roman", sans-serif;
	width: 100%;
    }
	
	
	
  </style>
  
  
  



</head>


<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">


<nav class="navbar navbar-default navbar-fixed-top" style="height:10px;">
  <div class="container">
    <div class="collapse navbar-collapse" id="myNavbar" >
     

	 	 <ul class="nav navbar-nav navbar-left">
        <li>
 <img src="image//logo.png" style="height:20%"><br><br>
		
		</li>
     
    	
      </ul>

	 
	 
	 <ul class="nav navbar-nav navbar-right">
        <li><a href="#about">About</a></li>
        
        <li><a href="#feedback">Help</a></li>
     <li><a href="#faq">FAQ</a></li>
    
	 <li><a href="view_scheme_user">Schemes</a></li>
    <li><a href="AdminLogin.jsp">Login</a></li>
    	
      </ul>
    </div>
  </div>
</nav>
<br><br>



<div id="about" color="black" style="text-align:center"></div>

<div class="container">
<div class="w3-panel">
  <h1><u>e-Vision on Schemes of Arunachal Pradesh </u> </h1>
  </div>
  </div>
  
  
  
  
  
  
  
<div class="container">
  <center>
  <div id="myCarousel" style="width:80%; height:50%;" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" >
      <div class="item active">
        <img src="image/01.jpg" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item"> 
        <img src="image/arunachal-pradesh.jpg" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="image/highway.jpg" alt="New york" style="width:100%;">
      </div>
      
      <div class="item">
        <img src="image/temple.jpg" alt="New york" style="width:100%;">
      </div>
      
      
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
  
  </center>
  
  
  
  
  
  
 <div id="about" color="white" style="text-align:center"></div>
<div class="container">
<h3 style="text-align:center"><u>Arunachal Pradesh</h3></u>
<div class="col-sm-9">

<img src="image//map.JPG" ><br><br>
</div>

<div class="col-sm-3">
<br>

<div class="jumbotron2">
<h4>What's New</h4>

</div>

</div>
</div>
	

<br><br><br>

	<div id="feedback" color="white" style="text-align:center"><h1>HELP</h1></div>
	
	<div class="container">
	
	<br>
<p><i>	
<center>
Could not find what you were looking for? Share your queries, ideas and suggestions below, and to make it easier for readers to find what they are looking for!
</center>
</p><br></i>
	<div class="jumbotron2">
	<form name="contactform" method="post" action="send_form_email.php">
	<div class="row">
    <div class="col-sm-4">
    <label for="first_name">First Name:</label>
    <input  type="text" name="first_name" maxlength="50" size="30">
    <label for="last_name">Last Name:</label>
    <input  type="text" name="last_name" maxlength="50" size="30">
    <label for="email">Email Address:</label>
    <input  type="text" name="email" maxlength="80" size="30">
    <label for="telephone">Contact Number:</label>
    <input  type="text" name="telephone" maxlength="30" size="30">
    </div>
    <div class="col-sm-8">
    <label for="title">Subject:</label><br>
	<input  type="text" name="comments" maxlength="20" size="20"><br>
    <label for="comments">	Share your query/idea/suggestion here!</label><br>
    <textarea  name="comments" maxlength="1000" cols="75" rows="4"></textarea><br>
	
    <input type="submit" value="Submit your contribution!">  
	</div>
	</div>
	</form>
	</div>
	</div>	
	
	
	<br><br><br>
	
<video width="400" controls>
  <source src="image//video.mp4" type="video/mp4">
  </video>
  
	
	
	<div id="faq" color="white" style="text-align:center"><h1>Frequently Asked Questions</h1></div>
	
	<div class="container">
	
	
	
	
	
	
	<div class="panel-group">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" href="#pc1">Already asked Question 1 goes here.....</a>
      </h4>
    </div>
    <div id="pc1" class="panel-collapse collapse">
Answer to Question 1 goes here! </div>
</div>






	
	
	
	
	</div>
	</div>	
	
	
	<br><br><br>
	
<footer class="footer">
	<div class="container">
		<div class="col-sm-4">

			 <ul>
			 <u>Home</u><br><br>
			 Website policies<br>
			 Sitemap<br>
			 Feedback<br>
			 </ul>
		</div>
	
	<div class="col-sm-4">

		<ul>
		 <u>Government</u><br><br>
				 Arunachal Pradesh<br>
				Address: <br>
				Phone Number: 9999999999<br>
				Email: govt.email@gmail.com
				
		 </ul>
	</div>
	
	<div class="col-sm-4">

 <ul> <u>Helpline Numbers</u><br>
	<br>
	CM Helpline- 155250<br>
Citizen’s Call center: 155300<br>
Child Helpline: 1098<br>
Crime Stopper: 1090<br>
Nirbhaya: 1800 425 1400<br>
Mitra: 181<br>
</ul>
		</div>




</div>

	<br>
 
 




  <center><form name="contactform" method="post" action="Subscribe" >
  
  <label for="email" style="color:white;" >Enter your Email Address here for subscription:</label>
   <input  type="email" name="email" >
     <!-- Location:  <select class="form-control" id="sel1" name="location">
        <option value="lohit">lohit</option>
        <option value="aalo">aalo</option>
        <option value="Tawang">Tawang</option>
        <option value="Papum Pare">Papum Pare</option>
      </select> -->
	 <input type="submit" value="Subscribe!">  
	
	
	</form>
  </center>
  
  
  
</footer>
	
	
</body>
</html>