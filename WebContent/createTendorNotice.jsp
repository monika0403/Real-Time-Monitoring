<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 15px;
}
</style>

<body><center><u><h1> NOTICE INVITING TENDOR</h1></u> </center>
<br>
N.I.T. No : <%=request.getParameter("nitNo")%>
<span float="right">Dated : <%=request.getParameter("date") %> </span>
<br>
<p> For and on behalf of Government of Arunanchal Pradesh,Chief engineer,building and housing Department,invites
sealed tendor from the contractor for work listed under:- </p>
<br>
<table style="width:100%">
  <tr>
    <th>S.NO</th>
    <th>Name of work</th> 
    <th>Value put to tender (Rs.)</th>
    <th>Completion Time (in months)</th>
    <th>Amount of Bank Receipt for cost of tender documents (Rs)</th>
    <th>Amount of Earnest Money @ 2.5% for issue of tender form (Rs.)</th>
    
  </tr>
  <tr>
  <td>1</td>
    <td><%=request.getParameter("nameOfWork")%></td>
    <td><%=request.getParameter("valueTendor") %></td>
    <td><%=request.getParameter("completionTime") %></td>
     <td><%=request.getParameter("amountBank") %></td>
      <td><%=request.getParameter("amountEarnest") %></td>
  </tr>
  </table>
<br>
<u><h3>TIME SCHEDULE</h3> </u><br>
Last date for submission of application : <%=request.getParameter("lastDate") %><br>
Display of the list of short listed contractors in the Notice Board  : <%=request.getParameter("dateShortlist") %><br>
Date of issue of tender documents (excluding tender forms) : <%= request.getParameter("dateDocument")%><br>
Date of issue of tender forms (on production of T.D.R) : <%= request.getParameter("dateForm")%><br>
Date of pre-bid meeting : <%=request.getParameter("dateMeeting") %><br>
Submission of tender : <%=request.getParameter("submisionTendor") %><br>
Opening of tender : <%=request.getParameter("openingTendor") %> <br>

<br>
<u><h3>CONDITIONS OF CONTRACT</h3> </u><br>
 <%=request.getParameter("condition") %>
</body>
</html>