
<%@include file="header_main.jsp"%>
<%@page import="sis.com.bo.*"%>
<%@page import="sis.com.dao.*"%>
<%@page import="java.util.*"%>

<br>
<br>
<br>

<div class="container">
	<div class="well">
		<h1>Select the District to search Schemes</h1>
		
		<center>
			<form action="ShowHospital1" method="post">
				<center>
				<select name="hospital" style="width: 500px; height: 30px;">
					<option>select district</option>
					<option value="lohit">lohit</option>
					<option value="itanagar">itanagar</option>
					<option value="Aaloo">Aaloo</option>
					<option value="audi">Audi</option>
				</select> <input 
					type="submit" value="Search"> <span class="glyphicon glyphicon-search"></span>
				</button>
				<%
					session.setAttribute("user", "user");
				%>
				</center>
			</form>
		</center>

	</div>

	<%
		if (session.getAttribute("hospital2") != null) {
			//System.out.print("hello");
			List<hospital> list = (ArrayList<hospital>) session
					.getAttribute("hospital2");
	%>
	



	<div class="well" style="text-align: center">
	<h1>Select the hospital name</h1>
	
	
		<form action="apply_Scheme_Form.jsp" method="post">
			<%
				for (hospital h : list) {
			%>
			<h4>
				<input type="radio" name="hospital" value="<%=h.getHos_name()%>">
				<%=h.getHos_name()%>
				</a>&nbsp;
				<%=h.getRecept_mobile()%>
			</h4>
			<%
				}
			%>
			<input type="submit" value="APPLY FOR SCHEME">
		</form>
	</div>
	<%
		}
	%>
	

<br><br><br><br><br>
</div>
</body>
<%@include file="footer.html"%>
</html>
