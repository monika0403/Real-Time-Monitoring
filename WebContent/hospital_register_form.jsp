<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>	
	 <meta name="viewport" content="width=device-width, initial-scale=1">
	 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>Insert title here</title>
</head>
<style>
body {
background-image: url('image//bakcground.jpg');
font-family: "Times New Roman", Times, serif;
  color: black;   
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
<h3 style="color:blue;"><marquee>REGISTER YOUR HOSPITAL </marquee></h3>
</center>
<div class="container">

 <div class="well">
    <%if(request.getAttribute("hospitalmsg")!=null) {
	 String hMsg = (String)request.getAttribute("hospitalmsg");
  %> <div class="alert alert-success alert-dismissable">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
   <h5><%=hMsg %></h5></div>
  <%	
}%>
  <form action="hospitalRegController" method="post">
  
  	<div class="row">
  <div class="col-sm-6">
  Hospital name :<input type="text" name="hospital" placeholder="hospital" class="form-control">
	</div>
	<br><br>
	<hr>
<h3> ADDRESS</h3>
 <div>
 <table width="80%">
 <tr>
 <td> Street :   <input type="text" name="street" placeholder="street" class="form-control"></td>
  <td>City :  <input type="text" name="city" placeholder="city name" class="form-control"></td>
<td> District : <input type="text" name="district" placeholder="district name" class="form-control"> </td>
<td> Postal No : <input type="number" name="postal" placeholder="postal no" class="form-control"> </td>
 </tr></table>
 </div>
	<hr>
<h3> INCHARGE DETAIL</h3>	
<div>
Name : <input name="inchargeName" placeholder="incharge name">
Mobile No : <input type="number" name="inchargeNo" placeholder="incharge mobile no">
</div>	
	<hr>
<h3> RECEPTIONIST DETAIL</h3>	
<div>
Name : <input name="recName" placeholder="receptionist name">
Mobile No : <input type="number" name="recNo" placeholder="receptionist mobile no">
</div>
<hr>
<h3> DELIVERY DOCTOR'S NAME</h3>
<div>
 <input name="name1" placeholder=" delivery doctor 1 name">
 <input type="number" name="mobile1" placeholder=" delivery doctor 1 mobile no">
 <br>
 <input name="name2" placeholder=" delivery doctor 2 name">
 <input type="number" name="mobile2" placeholder=" delivery doctor 2 mobile no">
</div>
<input type="submit"  value="submit" style="float:right;"></div>

</form>
</div>
</body>
</html>
	