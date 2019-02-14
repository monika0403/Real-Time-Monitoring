<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="sis.com.bo.*" %>
     <%@page import="sis.com.dao.*" %>
     <%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
   
<div class="container">

<form action="ShowHospital" method ="post">
  <select name="hospital">
  <option value="">select</option>
    <option value="lohit">lohit</option>
    <option value="itanagar">itanagar</option>
    <option value="Aaloo">Aaloo</option>
    <option value="audi">Audi</option>
  </select>
  <br><br>
  <input type="submit">
</form>
<%if(request.getAttribute("hospital1")!=null){
	List<hospital> list=(ArrayList<hospital>)request.getAttribute("hospital1");
	for(hospital h:list){
		out.print(h.getCity());
	}
} %>
</div>
</body>
</html>
