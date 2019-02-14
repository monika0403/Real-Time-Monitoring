
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	String scheme_name = (String) request.getParameter("scheme_name");
%>
<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body >
	<!DOCTYPE HTML5>
<html>
<head>
<title>Sis</title>
</head>
<body>


	<center>
		<div
			style="padding: 30px; margin: 5%; width: 50%; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
			<form action="add_schemes">
				<h1 style="margin-top: -7px">Add Scheme</h1>
				<input type='text' name='scheme_name'
					style='padding: 10px; width: 70%' value="<%=scheme_name%>"
					readonly>
				<!--             <input type='text' name='scheme_name' style='padding: 10px;width: 70%' tabindex=1 autofocus="autofocus"> -->
				<br>
				<br> <input type='text' name='scheme_id'
					style='padding: 10px; width: 70%' placeholder='id' tabindex=2><br>
				<br> <select name="domain" style='padding: 10px; width: 75%'
					tabindex=3>
					<option value="Education">Education</option>
					<option value="Health">Health</option>
					<option value="Women empowerment">Women empowerment</option>
					<option value="Housing">Housing</option>
					<option value="Agriculture">Agriculture</option>
					<option value="Skill development">Skill development</option>
				</select> <br>
				<br> <input type='submit' style='padding: 10px; width: 20%'
					value="Next">
			</form>


		</div>
	</center>




	<%@include file="footer.jsp"%>
</body>
</html>
</body>
</html>