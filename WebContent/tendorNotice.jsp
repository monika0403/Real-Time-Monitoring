<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Schemes</title>
     <meta charset="utf-8"> 
	 <meta name="viewport" content="width=device-width, initial-scale=1">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>	
	 <meta name="viewport" content="width=device-width, initial-scale=1">
	 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
body {


background:#c5d2f9;
font-family: "Times New Roman", Times, serif;
  color: black;   
}

input[type=text], select, textarea, [text=integer], [text=date]{
    width: 100%;
    padding: 5px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=submit] {
    background-color: blue;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>
</head>
<body>
<center>
<h3 style="color:blue;"><marquee>Notice for Inviting Tender! </marquee></h3>
</center>
<div class="container">
  <form action="createTendorNotice.jsp" method="post">
  	<div class="row">
  <div class="col-sm-6">
   <label for="fname">N.I.T. No</label>
    <input type="text" id="dname" name="nitNo" placeholder="N.I.T Number..">
	</div>
  
	
	
  <div class="col-sm-6">

   <label for="fname">Dated</label><br>
    <input type="date" id="bname" name="date" placeholder="Date.." class="form-control">
	</div>
  </div>
   

    <label for="fname">Name of work</label> 
    <input type="text" id="name" name="nameOfWork" placeholder="Name of work.." class="form-control"><br>

    <label for="lname">Value put to tender (Rs.)</label><br>
    <input type="number" id="fhname" name="valueTendor" placeholder="Value put to tender (Rs.).." class="form-control" ><br>

    <label for="address">Completion Time (in months)</label> <br>
    <input type="number" id="time" name="completionTime" placeholder="Completion Time (in months).." class="form-control"><br>
 
 
	<label for="contact">Amount of Bank Receipt for cost of tender documents (Rs)</label> <br>
    <input type="number" id="contact" name="amountBank" placeholder="Amount of Bank Receipt for cost of tender documents (Rs).." class="form-control">
	<br>
	
	<label for="date">Amount of Earnest Money @ 2.5% for issue of tender form (Rs.)</label><br>
    <input type="number" id="date" name="amountEarnest" placeholder="Amount of Earnest Money @ 2.5% for issue of tender form (Rs.).." class="form-control">
	
	<br><br>




	<label><h3>TIME SCHEDULE</h3></label><br>
	
	
	<label for="contact">Last date for submission of application</label> <br>
    <input type="date" id="contact" name="lastDate" class="form-control"><br>
	
	<label for="contact">Display of the list of short listed contractors in the Notice Board</label><br>
    <input type="date" id="contact" name="dateShortlist" class="form-control"><br>
	<label for="contact">Date of issue of tender documents (excluding tender forms)</label><br>
    <input type="date" id="contact" name="dateDocument" class="form-control"><br>
	<label for="contact">Date of issue of tender forms (on production of T.D.R)</label><br>
    <input type="date" id="contact" name="dateForm" class="form-control"><br>
	<label for="contact">Date of pre-bid meeting</label><br>
    <input type="date" id="contact" name="dateMeeting" class="form-control"><br>
	<label for="contact">Submission of tender</label><br>
    <input type="date" id="contact" name="submisionTendor" class="form-control"><br>
	<label for="contact">Opening of tender</label><br>
    <input type="date" id="contact" name="openingTendor" class="form-control"><br>
	
	
	
	<label><h3>CONDITIONS OF CONTRACT</h3></label><br>
	<textarea id="cond" name="condition" placeholder="Type here" style="height:100px"></textarea>
    
	
   
	
	
	
	
	
	<br>
	
    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>
