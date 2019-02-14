<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="sis.com.daoFactory.DaoFactory"%>
<%@page import="sis.com.dao.AdminAddScheme"%>
<%@page import="java.util.ArrayList"%>


<%
	ArrayList<String> schemesByWeb = (ArrayList<String>) request
			.getAttribute("schemes");
%>
<%@include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Scheme Add Error</title>
</head>
<body>
<br><br>
	<center>
		<hr>
		<h1 style="margin-top: -7px; color: red">
			ERROR<br>Scheme already added!
		</h1>
		<hr>
		
		<a href="home.jsp">
		<button
					style='padding: 1%;width: 80%;height:50%;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
							 background-color: #4CAF50;color:white;font-size:30px'
					value="Home">
				Home	
        </button>
        </a>
        <hr>
		
	</center>
<%@include file="footer.jsp" %>
</body>
</html>