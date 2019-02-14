<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@page import="sis.com.bo.SchemesBo"%>
<%

List<SchemesBo> schemes = (ArrayList<SchemesBo>) request.getAttribute("schemesDb");
//SchemesBo schemesBo = (SchemesBo) request.getAttribute("schemesDb");
System.out.println(schemes);
%>
<%@ include file="header_main.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Schemes</title>

<style>
body {
    font-family: Arial;
}

* {
    box-sizing: border-box;
}

form.example select {
    padding: 10px;
    font-size: 17px;
    border: 1px solid grey;
    float: left;
    width: 80%;
    background: #f1f1f1;
}

form.example button {
    float: left;
    width: 20%;
    padding: 10px;
    background: #2196F3;
    color: white;
    font-size: 17px;
    border: 1px solid grey;
    border-left: none;
    cursor: pointer;
}

form.example button:hover {
    background: #0b7dda;
}

form.example::after {
    content: "";
    clear: both;
    display: table;
}
button
{
height:45px;
}
</style>

</head>
<body>
<br><br><br><br>

       
        <center>
			
			<!-- Search -->
			<form class="example" action="search_schemes" style="margin:auto;max-width:300px">
			 Select Domain of Scheme: <select name="domain">
				  <option value ="all">All</option>
				 
				  <option value ="education">Education</option>
				  <option value ="health">Health</option>
				  <option value ="women_empowerment">Women Empowerment</option>
			  </select>
			  <button type="submit"><span class="glyphicon glyphicon-search"></span></button>
			</form>
        	<!-- Search end -->
        
          
        <br><br><br><br>
        <div class="new schemes" style="padding: 30px; margin: 5%; width: 50%;background-color:white;
                    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);margin-top:-2%;
                    ">
                <h2 style="color:red">Ongoing Schemes </h2>
                
                
                  
                <table class="table">
                <tr class="success"  >
                <td>Id</td>
                <td>Scheme Name</td>
                <td>Domain</td>
                <td>Apply</td>
                </tr>
            <%for(SchemesBo sc : schemes){
            	%>
            	<tr  >
            	<td><span ><%= sc.getId() %></td>
            <td> <a href="user_show_hospital.jsp"><span ><%= sc.getName() %></span></a></td>
            	<td><span ><%= sc.getDomain() %></td>
            	<td><form action="createSchemeDbController" method="get">
<input type="hidden" name="schemecode" value="<%= sc.getId() %>">
 <input type="submit" value="Apply"> 

</form></td>
            	</tr>
            	
          	<% 
            } %>
                </table>  
            
            </div>
            
            
        </center>

<%@ include file="footer.jsp" %>

</body>
</html>