<%@include file="header.jsp" %>
    <%@page import="sis.com.bo.*" %>
     <%@page import="sis.com.dao.*" %>
     <%@page import="java.util.*" %>
     
<body style="background-image: url('image//bakcground.jpg')">

<%if(session.getAttribute("hospital")!=null){
	 %>  <h1> <%=session.getAttribute("hospital") %></h1><% 
} %>
<%if(request.getParameter("updateMSG")!=null){
	%> <h2>women is selected </h2><%
} %><center>
<br><br><h1>Hospital Name: <%=session.getAttribute("hosp_name") %></h1></center>
<% 
//ystem.out.println(">>====="+session.getAttribute("beneficiary"));
if(session.getAttribute("beneficiary")!=null){
	List<Benificary> ben = (ArrayList<Benificary>)session.getAttribute("beneficiary");
	%>
	
<div class="container">
	
	<div class="well">
	
	<table class="table"  class="table table-striped" >
	 <thead>
      <tr class="success">
        <th>NAME</th>
        <th>MOBILE</th>
        <th>SELECT</th>
      </tr></thead>
  <%
	for(Benificary b:ben){
	//System.out.println("inside if");
		%><tr>
	   <td><a href="womenDashboardController?wid=<%=b.getApplicationId()%>"> <%= b.getName()%> </a></td>
	    <td><%=b.getMobile() %></td> <td>
	    <% String select = b.getSelected();
	     if(select.equalsIgnoreCase("accept")||select.equalsIgnoreCase("decline")){ 
	            out.print(b.getSelected()); %>   
	          <%}else { %> <a href="acceptSchemeRequestController?id=<%=b.getApplicationId()%>&name='accept'"> <b>ACCEPT<b></b></b></a>
	         <a href="acceptSchemeRequestController?id=<%=b.getApplicationId()%>&name='decline'"><b>DECLINE<b></a>
	        <% } %>
	    </td>
	  </tr> 
<%	}
} %></table></div></div></div>
</body>
</html>