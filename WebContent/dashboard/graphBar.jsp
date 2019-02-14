<%//page import="java.util.function.ToDoubleFunction"%>
<%@ page import="java.util.*,java.sql.*"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.google.gson.JsonObject"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="pages/template.jsp">
	<jsp:param value="Render Data From Database" name="pageTitle"/>
	<jsp:param value="<div id='chartContainer'/>" name="content"/> 	
</jsp:include>

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
		
		ResultSet resultSet = statement.executeQuery("select * from datapoints");
		ResultSetMetaData rsmd = resultSet.getMetaData();
		
		while(resultSet.next()){
			xVal = resultSet.getString("x");
			yVal = resultSet.getString("y");
			map = new HashMap<Object,Object>();	map.put("x", Double.parseDouble(xVal));	map.put("y", Double.parseDouble(yVal)); list.add(map);
			dataPoints = gsonObj.toJson(list);
		}
		connection.close();
	}
	catch(SQLException e){
		out.println("<div class='alert alert-danger' style='margin:1%;'>Could not connect to the database. Please check if you have mySQL Connector installed on the machine - if not, try installing the same. Please refer to Instruction.txt</div>");
		dataPoints = null;
	}
]]></jsp:scriptlet>


		
<script type="text/javascript">

   $(function () {
	   <%if(dataPoints != null){%>
	   var chart = new CanvasJS.Chart("chartContainer", {
           title: {
               text: "Olympic Medals of all Times (till 2016 Olympics)"
           },
           subtitles: [
               {
                   text: "Click on Legends to Enable/Disable Data Series"
               }
           ],
           animationEnabled: true,
           legend: {
               cursor: "pointer",
               itemclick: function (e) {
                   if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
                       e.dataSeries.visible = false;
                   }
                   else {
                       e.dataSeries.visible = true;
                   }
                   chart.render();
               }
           },
           axisY: {
               title: "Medals"
           },
           toolTip: {
               shared: true,
               content: function (e) {
                   var str = '';
                   var total = 0;
                   var str3;
                   var str2;
                   for (var i = 0; i < e.entries.length; i++) {
                       var str1 = "<span style= 'color:" + e.entries[i].dataSeries.color + "'> " + e.entries[i].dataSeries.name + "</span>: <strong>" + e.entries[i].dataPoint.y + "</strong> <br/>";
                       total = e.entries[i].dataPoint.y + total;
                       str = str.concat(str1);
                   }
                   str2 = "<span style = 'color:DodgerBlue; '><strong>" + e.entries[0].dataPoint.label + "</strong></span><br/>";
                   str3 = "<span style = 'color:Tomato '>Total: </span><strong>" + total + "</strong><br/>";

                   return (str2.concat(str)).concat(str3);
               }

           },
           data: [
           {
               type: "bar",
               showInLegend: true,
               name: "Gold",
               color: "gold",
               dataPoints: <%out.print(dataPoints);%>
           }

           ]
       });

       chart.render();
       	<%} %>
   });
</script>