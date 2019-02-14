<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Scheme delete error</title>
</head>
<body>
<br><br>
<center>
		<hr>
		<h1 style="margin-top: -7px; color: red">ERROR!<br>NO such scheme exist.</h1>
		<hr>
   
			

<jsp:include page="delete_schemes.jsp"/>			
		<a href="index.jsp">
			<button
					style='padding: 1%;width: 50%;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
							 background-color: green;color:white'
					value="Home">Home
			</button>
			</a>
        
         </div>    
         
</center>
    <%@ include file="footer.jsp" %>
</body>
</html>