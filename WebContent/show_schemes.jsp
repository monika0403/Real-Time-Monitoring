<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%

List<String> schemes = (ArrayList<String>) request.getAttribute("schemes");

%>

<%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


       
        <center>
        
        <br><br><br>
        <div class="new schemes" style="padding: 30px; margin: 5%; width: 50%;
                    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);margin-top:-2%;
                    ">
                    <marquee style="font-size:30px;font-weight:bold;color:blue">**NEW SCHEMES**</marquee>
                <hr>    
            <form action="add_schemes_form.jsp">
            <%for(String sc : schemes){
            	%>
             <input type="radio" name="scheme_name" value="<%=sc %>" >
             <span style="font-size:20px;font-weight:bold"><%= sc %> 
             </span>
             <br>
            	
          	<% 
            } %>
            
            </div> 
			<input type="submit" 
					style='padding: 1%;width: 10%;height:30%;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
							 background-color: #4CAF50;color:white;font-size:20px'
					value="Add">
        
            </form>   
            
            
        </center>


<%@include file="footer.jsp" %>
</body>
</html>