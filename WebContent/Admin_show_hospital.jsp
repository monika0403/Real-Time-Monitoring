
     <%@include file="header.jsp" %>
    <%@page import="sis.com.bo.hospital" %>
     <%@page import="sis.com.dao.*" %>
     <%@page import="java.util.*" %>
     
<br><br><br>

<div class="container"> 
<div class="well">

<form action="ShowHospital" method ="post">

<center>
<h3><b>Select the district:<b></h3>
  <select name="hospital" style="width:500px; height:30px; text-align: center" >
      <option> Select District </option>
      <option value="lohit">lohit</option>
    <option value="itanagar">itanagar</option>
    <option value="Aaloo">Aaloo</option>
    <option value="audi">Audi</option>
  </select>
  </center>
  <br>
  <center><input type="submit"> </button> </center>
  <%session.setAttribute("admin" ,"admin");%>
</form>
</div> 
<%//if(session.getAttribute("hospital2")!=null)
if(session.getAttribute("hospital1")!=null)
{
	//System.out.print("hello");	
	//List<hospital> list=(ArrayList<hospital>)session.getAttribute("hospital2");
	List<hospital> list=(ArrayList<hospital>)session.getAttribute("hospital1");
	%>
	<hr> 
 <div class="well" style="text-align: center">
 <h3><b>List of Hospitals In this District <b></h3>
 <form action="acceptSchemeRequestController" method="post"> 
  <% for(hospital h:list){ %>
		<h5>
	<input type="radio" name="hosp" value="<%=h.getHos_name()%>"> 	
         <%=h.getHos_name() %>	</a>&nbsp; <%=h.getRecept_mobile() %>
		</h5> 
	<% session.setAttribute("hosp_name", h.getHos_name());
	} %><br>
	<input type="submit" value="Show the database of this hospital">
	 </form>
<%} %>
</div></div>
</body><br><br><br><br><br><br><br>
<%@include file ="footer.html" %>
</html>
