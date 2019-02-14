<%//page import="org.apache.catalina.connector.OutputBuffer"%>
<%@page import="java.io.InputStream"%>
<%@page import="sis.com.daoFactory.DaoFactory"%>
<%@page import="sis.com.bo.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.util.*"%> 
   <%@page import="sis.com.dao.*"%>
   <%@include file="header.jsp" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<title>Insert title here</title>
</head>
<style type="text/css">
* {
    box-sizing: border-box;
}
.nav-pills>li>a {
    border-radius: 0px;
  
}
.gallery {
    margin: 0;
    font-family: Arial;

}


/* Style the images inside the grid */
.columnsg img {
    opacity: 0.8; 
    cursor: pointer; 
}

.columnsg img:hover {
    opacity: 1;
}

/* Clear floats after the columns */
.rowsg:after {
    content: "";
    display: table;
    clear: both;
}

/* The expanding image container */
.containersg {
    position: relative;
    display: none;
}
.navbar-default {
    background-color:#0000ff;
    border-color: #e7e7e7;
}
/* Expanding image text */
#imgtext {
    position: absolute;
    bottom: 15px;
    left: 15px;
    color: white;
    font-size: 20px;
}

/* Closable button inside the expanded image */
.closebtn {
    position: absolute;
    top: 10px;
    right: 15px;
    color: white;
    font-size: 35px;
    cursor: pointer;
}


.inset img {
 
  z-index: 998;
  float:left;
  float:top;
  height:140px;
}


 .nav  {
   
    background-color: blue;
} 
.row {
    margin-right: -15px;
    margin-left: -15px;
    padding-bottom: 1px;
}
</style>
<body >
<%int appID = 0; %>
<%if(session.getAttribute("beneficiary")!=null){
	Benificary ben = (Benificary)session.getAttribute("beneficiary");
%>
<div class="container container-sm border" style="">
	 <br><br>
	 
	  <div class="container" >
	  <header class="container announcement-sm" style="text-align: center;">
	  <h1>"Beneficiary Name" Profile</h1>
	  </header>
 <hr>
 
<div class="panel-group" id="accordian">
<div class="well">

<ul class="nav nav-pills" style="background-color:lightblue;">
  <li class="active" ><a data-toggle="pill" href="#home">Personal Details</a></li>
  <li> <a data-toggle="pill" href="#menu2">Monthly Chart </a></li>
  <li> <a data-toggle="pill" href="#menu3">Documents</a></li>
  <li> <a data-toggle="pill" href="#menu4">Form</a></li>
  <li> <a data-toggle="pill" href="#menu5">Status</a></li>
  </ul>
  
<div class="tab-content">
  <div id="home"  class="tab-pane fade in active">
 
 <div class="row">
    <div class="col-sm-12">
     <p style="text-align:center;color:red;font-family:Lucida Calligraphy;font-size:25px;padding-top: 25px;">
   <b>PERSONAL DETAILS</b></p>
    </div>
  </div>     

        

<hr>

    <div class="row">
       <div class="col-sm-9">
       
          <div class="row">
          <div class="col-sm-6">
          <div class="row mgbt-xs-0">
          <div class="col-xs-5"><b>Name</b></div>
          <div class="col-xs-7"><%=ben.getName()%></div> 
          </div>
          </div>
           <div class="col-sm-6">
                  <div class="row mgbt-xs-0">
           <div class="col-xs-5"><b>Applicant ID</b></div>
          <div class="col-xs-7">
          <%=ben.getApplicationId()%></div> 
          </div>
          </div> 
          </div>
          
                    <div class="row">
          <div class="col-sm-6">
          <div class="row mgbt-xs-0">
          <div class="col-xs-5"><b>District</b></div>
           <div class="col-xs-7"><%=ben.getDistrict()%></div> 
          </div>
          </div>
           <div class="col-sm-6">
                  <div class="row mgbt-xs-0">
          <div class="col-xs-5"><b>Block</b></div>
           <div class="col-xs-7"><%=ben.getBlock()%></div> 
          </div>
          </div> 
          </div>
                    <div class="row">
          <div class="col-sm-6">
          <div class="row mgbt-xs-0">
          <div class="col-xs-5"><b>Address</b></div>
          <div class="col-xs-7"><%=ben.getAddress()%></div> 
          </div>
          </div>
           <div class="col-sm-6">
                  <div class="row mgbt-xs-0">
          <div class="col-xs-5"><b>Hospital</b></div>
           <div class="col-xs-7"><%=ben.getHospital()%></div> 
          </div>
          </div> 
          </div>
                    <div class="row">
          <div class="col-sm-6">
          <div class="row mgbt-xs-0">
          <div class="col-xs-5"><b>MobileNo</b></div>
         <div class="col-xs-7"><%=ben.getMobile()%></div> 
          </div>
          </div>
           <div class="col-sm-6">
                  <div class="row mgbt-xs-0">
          <div class="col-xs-5"><b>Husband/Father's Name</b></div>
         <div class="col-xs-7"><%=ben.getHusband()%></div> 
          </div>
          </div> 
          </div>
                    <div class="row">
          <div class="col-sm-6">
          <div class="row mgbt-xs-0">
          <div class="col-xs-5"><b>Aadhar No.</b></div>
           <div class="col-xs-7"><%=ben.getAdhharNo()%></div> 
          </div>
          </div>
           <div class="col-sm-6">
                  <div class="row mgbt-xs-0">
          <div class="col-xs-5"><b>Status</b></div>
         <div class="col-xs-7"></div>
          </div>
          </div> 
          </div>                    
       </div></div></div>
    
    <div id="menu2" class="tab-pane fade">
       <div class="row">
    <div class="col-sm-12">
    <p style="text-align:center;color:red;font-family:Lucida Calligraphy;font-size:25px;padding-top: 25px;">
   <b>MONTHLY DETAILS</b></p>
    </div>
    <%if(session.getAttribute("monthData")!=null){
    	List<beneficiaryMonth> b1= (ArrayList<beneficiaryMonth>)session.getAttribute("monthData");
     %> <table class="table">
     <tr class="danger">
     	<td>Date of Checkup </td>
     	<td>Month of Pregnancy </td>
     	<td>Checkup Status </td>
     	<td>Checkup Description </td>
     	<td>Confirmation </td>
     	<td>File Upload </td>
     	<td>Other Upload </td>
     
     </tr>
     
     
     <%for(beneficiaryMonth b:b1){ %>
     <tr> <td> <%=b.getDateCheckup() %></td>
          <td> <%=b.getMonth() %></td>
          <td> <%=b.getCHECKUP() %></td>
           <td> <%=b.getDescription() %></td>
            <td> <%=b.getConfirmation() %></td>
             <td> <%=b.getFileUploads1() %></td>
            <td> <%=b.getFileUploads2() %></td> 
          </tr>       
  <%  } %>
     </table>
    <% } %>
    </div></div>
   <!-- ------------------------------------------------------------------------------- --> 
    <div id="menu3" class="tab-pane fade">
       <div class="row">
    <div class="col-sm-12">
    <p style="text-align:center;color:red;font-family:Lucida Calligraphy;font-size:25px;padding-top: 25px;">
   <b>DOCUMENTS</b></p>
    </div><div class="container">
      <%--  <%beneficiaryMonthDao dao = DaoFactory.getbeneficiaryMonthDao();
         int id = Integer.parseInt(ben.getApplicationId());
          List<beneficiaryMonth> pics = dao.showAllDocuments(id); 
          InputStream in1 = null;
          InputStream in2 = null;
          byte[] byteArrayData = new byte[1024];
          
          for(beneficiaryMonth bm : pics){
        	 in1 = bm.getFileUploads1();
        	 in2 = bm.getFileUploads2();        	  
        	  int size=0;
        	  if(in1!=null){
        	 while((size=in1.read(byteArrayData))!=-1){
        		 response.getOutputStream().write(byteArrayData,0, size);
        	 }}
        	 if(in2!=null){ 
        	  size=0;
        	 while((size=in2.read(byteArrayData))!=-1){
        		 response.getOutputStream().write(byteArrayData,0, size);
        	 }}
          }
       %>
     --%>
    </div></div></div>
    
    <!-- ------------------------------------------------------------------------------ -->
    <div id="menu4" class="tab-pane fade">
       <div class="row">
    <div class="col-sm-12">
   <center><h4>MONTHLY CHECKUP DETAILS:</h4></center><br>
    <p style="text-align:center;color:red;font-family:Lucida Calligraphy;font-size:15px;padding-top: 25px;">
   <marquee>Form to be filled by Doctor</marquee></p>
    </div><div class="container">
    
    <%if(session.getAttribute("otp")!=null){
	%><hr> <form action="checkOTPcontroller" method="post">
	Enter the OTP : <input name="OTP">
	  <input type="submit" value="submit">
	</form>
<%} %>
<%if(session.getAttribute("confirm")!=null){
	%> <h2> CHECKUP IS CONFIRMED</h2>
<%} %>
   <br><br> 
  
  
        <form action="monthlyCheckController" method="post" enctype="MULTIPART/FORM-DATA">
         <br>Patient ID: <input  name="mid" value="<%=ben.getApplicationId()%>">
        <br>Select month : <select name="month">
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
  <br><br>
        Monthly Checkup completed ? <br>
  &nbsp; <input type="radio" name="complete" value="YES" >YES <br>
  &nbsp; <input type="radio" name="complete" value="NO">NO<br>
 <br>
    Upload Checkup file: <input type="file" name="monthDoc"><br>
                          <input type="file" name="monthDoc1"><br> <br>
    Comment/Description:  <textarea name="comment"> </textarea><br> <br>
    <input type="submit" value="submit">
</form> 
  
  
  
 
  </div>
    </div></div>
    
  <div id="menu5" class="tab-pane fade">
       <div class="row">
    <div class="col-sm-12">
    <p style="text-align:center;color:red;font-family:Lucida Calligraphy;font-size:25px;padding-top: 25px;">
   <b>FORM</b></p>
    </div><div class="container">  
      
    Analysis of Female
    <form action="">
  <input type="radio" name="active" value="male"> active<br>
  <input type="radio" name="completed" value="female"> completed<br>
  <input type="radio" name="aborted" value="other"> aborted<br><br>
  <input type="submit">
</form>
    </div></div></div>
      
    
   
   </div>
    <div > <br>
    <div class="alert alert-success" >
    <center>
 <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" id="appeal" disabled="disabled" >  
  APPEAL FOR AMOUNT 
   </button></center>
    
</div> 
    <script type="text/javascript">
  setTimeout(function(){
	  document.getElementById('appeal').disabled = false;
  },15000);
   </script>
 
   <!-- Trigger the modal with a button -->

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">FILL THE FOLLOWING DETAILS TO APPEAL FOR AMOUNT</h4>
      </div>
      <div class="modal-body">
      <form action="appealController" method="post">     
        Account No : <input name="acc_no"><br>
        Date of birth : <input type="date" name="bdate"><br>
        Birth certificate : <input type="file" name="b_certi"><br><br>
        <input type="submit" value="appeal">
      </form>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div><%
   session.setAttribute("apId", ben.getApplicationId());
} %>
    </div>
    </div> 
</body>
</html>