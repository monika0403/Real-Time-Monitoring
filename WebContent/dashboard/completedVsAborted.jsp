<%//page import="java.util.function.ToDoubleFunction"%>
<%@ page import="java.util.*,java.sql.*"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.google.gson.JsonObject"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <% int countCompleted = 0; %>
<% int countAborted = 0; %>
<% int countActive = 0; %>
 --%>

<jsp:scriptlet><![CDATA[
	Gson gsonObj = new Gson();
	String dataPoints = "";
	Map<Object,Object> map = new HashMap<Object,Object>();
	List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
	
	try{
		Class.forName("com.mysql.jdbc.Driver"); 
		System.out.println("Driver loaded");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/sih", "system", "root");
		System.out.println("Connection created");
		Statement statement = connection.createStatement();
		String xVal, yVal;
		int countCompleted = 0;
		int countAborted =0;
		int countActive = 0;
		 float countCompletedPer = 0;
		float countAbortedPer =0;
		float countActivePer =0;
		
		//completed
		ResultSet resultSet1 = statement.executeQuery("select count(applicantid) as completed from scheme_101 where completed = 'Yes'");
		if(resultSet1.next()){
		countCompleted = resultSet1.getInt("completed");
		System.out.println("Completed done!");
		}		
		
		//aborted
		ResultSet resultSet2 = statement.executeQuery("select count(applicantid) as aborted from scheme_101 where completed = 'No'");
		if(resultSet2.next()){
		countAborted = resultSet2.getInt("aborted");
		System.out.println("Aborted done!");
		}		
		
		//active
		ResultSet resultSet3 = statement.executeQuery("select count(applicantid) as active from scheme_101 where selected='yes' and completed = 'No'");
		if(resultSet3.next()){
		countActive = resultSet3.getInt("active");
		request.setAttribute("completed" , countCompleted);
		System.out.println("Active done!");
		}		

		
		int total = countAborted+countCompleted+countActive;
		System.out.println("Total : " + total);
		
		countCompletedPer = ((countCompleted*100)/total);
		countAbortedPer = ((countAborted*100)/(total));
		countActivePer = ((countActive*100)/(total));

		System.out.println("Count completed : "+countCompletedPer);
		System.out.println("Count aborted :  "+countAbortedPer);
		
map = new HashMap<Object,Object>(); map.put("y", (double)countCompletedPer);  map.put("legendText", "Completed");  map.put("label", "Completed"); list.add(map);
map = new HashMap<Object,Object>(); map.put("y", (double)countAbortedPer);  map.put("legendText", "Aborted");  map.put("label", "Aborted"); list.add(map);
map = new HashMap<Object,Object>(); map.put("y", (double)countActivePer);  map.put("legendText", "Active");  map.put("label", "Active"); list.add(map);
		dataPoints = gsonObj.toJson(list);
		connection.close();
		request.setAttribute("completed", countCompleted);
		request.setAttribute("aborted", countAborted);
		request.setAttribute("active", countActive);
		System.out.println(dataPoints);
	}
	catch(SQLException e){
		out.println("<div class='alert alert-danger' style='margin:1%;'>Could not connect to the database. Please check if you have mySQL Connector installed on the machine - if not, try installing the same. Please refer to Instruction.txt</div>");
		dataPoints = null;
	}
	
	System.out.println();
	System.out.println();
	System.out.println();
]]></jsp:scriptlet>

<jsp:include page="display/completedVsAborted_show.jsp">
	<jsp:param value="scheme_101" name="district_name"/>
	<jsp:param value="<div id='chartContainer'/>" name="content"/> 	
</jsp:include>
		
<script type="text/javascript">

   $(function () {
	   <%if(dataPoints != null){%>
	   var chart = new CanvasJS.Chart("chartContainer", {
           title: {
               text: "Enrolled versus Deliverd"
           },
           animationEnabled: true,
           legend: {
               verticalAlign: "center",
               horizontalAlign: "left",
               fontSize: 20,
               fontFamily: "Helvetica"
           },
           theme: "light2",
           data: [
           {
               type: "pie",
               indexLabelFontFamily: "Garamond",
               indexLabelFontSize: 20,
               indexLabel: "{label} {y}%",
               startAngle: -20,
               showInLegend: true,
               toolTipContent: "{legendText} {y}%",
               dataPoints: <%out.print(dataPoints);%>              
           }
           ]
       });
       chart.render();
       	<%} %>
   });
</script>