<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action = "delete_schemes">
        <center>
        <div style="padding: 30px; margin: 5%; width: 50%;
                    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                    ">
            <h1 style="margin-top: -7px">Delete</h1>
            <input type='text' name='scheme_id' style='padding: 10px;width: 70%' placeholder='Scheme id..' autofocus="true"><br><br>
			<input type='submit' style='padding: 10px;width: 40%' value="Delete">
			
			
            </div>
        </center>
</form>
<%@ include file="footer.jsp" %>
</body>
</html>