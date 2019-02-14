<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="sis.com.daoFactory.DaoFactory"%>
<%@page import="sis.com.dao.AdminAddScheme"%>
<%@page import="sis.com.bo.SchemesBo"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@page import="org.jsoup.Jsoup"%>
<%@page import="org.jsoup.nodes.Document"%>
<%@page import="org.jsoup.nodes.Element"%>
<%@page import="org.jsoup.select.Elements"%>

<%
AdminAddScheme adminAddScheme = DaoFactory.getAdminAddScheme();
ArrayList<SchemesBo> schemes = adminAddScheme.check();


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Scheme Added</title>
</head>
<body>
<br><br>	
	<center>
		<hr>
		<h1 style="margin-top: -7px; color: green">Scheme added</h1>
		<hr>
		<center>
        
			
			<jsp:include page="select-form.jsp"/>
			
       
         </div>    
        
		<%-- <div
			style="padding: 30px; margin: 5%; width: 50%; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
			<table border="1" style="width:100%;border-collapse:collapse">
                <tr style="font-size:23px;font-weight:bold">
                <td>Id</td>
                <td>Scheme Name</td>
                <td>Domain</td>
                </tr>
            <%for(SchemesBo sc : schemes){
            	%>
            	<tr>
            	<td><span style="font-size:20px;font-weight:bold"><%= sc.getId() %></td>
            	<td><span style="font-size:20px;font-weight:bold"><%= sc.getName() %></td>
            	<td><span style="font-size:20px;font-weight:bold"><%= sc.getDomain() %></td>
            	</tr>
            	
          	<% 
            } %>
                </table>  
		</div> --%>
		

	</center>
</body>
</html>