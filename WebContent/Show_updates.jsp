<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
    <%@ page import="sis.com.bo.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Show</title>
<style>
* {
    box-sizing: border-box;
}

body {
    margin: 0;
    font-family: Arial;
}

/* The grid: Four equal columns that floats next to each other */
.column {
    float: left;
    width: 25%;
    padding: 10px;
}

/* Style the images inside the grid */
.column img {
    opacity: 0.8; 
    cursor: pointer; 
}

.column img:hover {
    opacity: 1;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* The expanding image container */
.container {
    position: relative;
    display: none;
}

/* Expanding image text */
#imgtext {
    position: absolute;
    bottom: 15px;
    left: 15px;
    color: white;
    font-size: 20px;
}

/* Closable button inside the expanded image */
.closebtn {
    position: absolute;
    top: 10px;
    right: 15px;
    color: white;
    font-size: 35px;
    cursor: pointer;
}
</style>
</head>
<body>
 <a href="ShowPhoto"> <button  type="button" class="btn btn-primary" >Primary</button></a>
 <%if(session.getAttribute("list")!=null){
	 %><table class="table table-bordered">
	    <thead>
	      <tr>
	        <th>Id</th>
	        <th>Name</th>
	        <th>location</th>
	        <th>Date</th>
	        <th>Image</th>
	        </tr>
    </thead><% 
	 ArrayList<Photo> list=(ArrayList<Photo>)session.getAttribute("list");
	 for(Photo photo:list){
		 %>
		 
		
      
    <tbody>
      <tr>
        <td><%=photo.getId() %></td>
        <td><%="Hello" %></td>
        <td><%=photo.getLocation() %></td>
        <td><%=photo.getDate()%></td>
        <td> <figure> <img src="ViewImageController?id=<%=photo.getId()%>&name=image1" height="150px" width="150px" alt="Lights" style="" onclick="myFunction(this);">
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#'<%=photo.getId()%>'">View</button>
  <!-- Modal -->
  <div class="modal fade" id="'<%=photo.getId()%>'" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        
        <div class="modal-body">
          <img src="ViewImageController?id=<%=photo.getId()%>&name=image1"  alt="Lights" style="" onclick="myFunction(this);">
         
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
</figure>
  <figcaption><center></center></figcaption>
</td>
      </tr>
      
    </tbody>
	
<%	}
}%>
</table>
<div class="container">
  <span onclick="this.parentElement.style.display='none'" class="closebtn">&times;</span>
  <img id="expandedImg" style="width:100%">
  <div id="imgtext"></div>
</div>

<script>
function myFunction(imgs) {
    var expandImg = document.getElementById("expandedImg");
    var imgText = document.getElementById("imgtext");
    expandImg.src = imgs.src;
    imgText.innerHTML = imgs.alt;
    expandImg.parentElement.style.display = "block";
}
</script>

</body>
</html>