<%@page import="java.util.ArrayList"%>
<%@page import="sis.com.bo.beneficiaryMonth"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body >

<form action="showMonthDetailController" method="post">
 show mothly details <input type="number" name="id">  
 <input type="submit">
</form>

<%
 if(session.getAttribute("blsit")!=null){
	 List<beneficiaryMonth> blist = (ArrayList<beneficiaryMonth>)session.getAttribute("blist");
	 %><table style="width:100%"><% 
	 for(beneficiaryMonth b :blist){
		 %>
		
  <tr>
    <th><%=b.getId() %></th>
    <th><%=b.getDateCheckup() %></th> 
    <th><%=b.getMonth() %></th> 
    <th><%= b.getCHECKUP()%></th>
     <th><%=b.getConfirmation() %></th>
      <th><%=b.getDescription() %></th>
  </tr>
 
		 <%
	 }%>
	</table><% 
 }
%>

<%if(session.getAttribute("otp")!=null){
	%><hr> <form action="checkOTPcontroller" method="post">
	Enter the OTP : <input name="OTP">
	  <input type="submit" value="submit">
	</form>
<%} %>
<%if(session.getAttribute("confirm")!=null){
	%> <h2> CHECKUP IS CONFIRMED</h2>
<%} %>

<div class="container">
  <h2>MONTHLY CHECKUP DETAILS</h2>
  <div class="panel-group" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion"> form</a>
        </h4>
      </div>
      <div id="collapse1" class="panel-collapse collapse in">
        <div class="panel-body">
       
   
    
        <form action="monthlyCheckController" method="post" enctype="MULTIPART/FORM-DATA">
         ID :   <input type="number" name="mid" >
        Select month : <select name="month">
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
  <option value="5">5</option>
  <option value="6">6</option>
  <option value="7">7</option>
  <option value="8">8</option>
  <option value="9">9</option>
  </select>
  <br>
        Is checkup of month is completed ? <br>
  <input type="radio" name="complete" value="YES" >YES <br>
  <input type="radio" name="complete" value="NO">NO<br>
 
    Upload Checkup file: <input type="file" name="monthDoc"><br>
                          <input type="file" name="monthDoc1"><br>
    comment/description:  <textarea name="comment"> </textarea><br>
    <input type="submit" value="submit">
</form> 



        </div>
      </div>
    </div>
   
    </div>
  </div> 
</div>
    
</body>
</html>