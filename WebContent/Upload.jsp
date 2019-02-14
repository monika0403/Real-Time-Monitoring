
<!-- AIzaSyAtdeQ24zJjwbhYL9pD-JgT2naYW3ozW54  -->



<!-- <!DOCTYPE html> 
<html> 
<head> 
<meta name="viewport" content="initial-scale=1.0, user-scalable=no"/> 
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/> 
<title>Reverse Geocoding</title> 

<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script> 
<script type="text/javascript"> 
  var geocoder;

  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(successFunction, errorFunction);
} 
//Get the latitude and the longitude;
function successFunction(position) {
    var lat = position.coords.latitude;
    var lng = position.coords.longitude;
    codeLatLng(lat, lng)
}

function errorFunction(){
    alert("Geocoder failed");
}

  function initialize() {
    geocoder = new google.maps.Geocoder();



  }

  function codeLatLng(lat, lng) {

    var latlng = new google.maps.LatLng(lat, lng);
    geocoder.geocode({'latLng': latlng}, function(results, status) {
      if (status == google.maps.GeocoderStatus.OK) {
      console.log(results)
        if (results[1]) {
         //formatted address
         alert(results[0].formatted_address)
        //find country name
             for (var i=0; i<results[0].address_components.length; i++) {
            for (var b=0;b<results[0].address_components[i].types.length;b++) {

            //there are different types that might hold a city admin_area_lvl_1 usually does in come cases looking for sublocality type will be more appropriate
                if (results[0].address_components[i].types[b] == "administrative_area_level_1") {
                    //this is the object you are looking for
                    city= results[0].address_components[i];
                    break;
                }
            }
        }
        //city data
        alert(city.short_name + " " + city.long_name)


        } else {
          alert("No results found");
        }
      } else {
        alert("Geocoder failed due to: " + status);
      }
    });
  }
</script> 
</head> 
<body onload="initialize()"> 

</body> 
</html> 

 -->
 <!-- code 2   -->

 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.2.3.js"></script>
</head>
<body>
    
		<h1>some heading</h1>
		<form method="post" action="uploadServlet" enctype="multipart/form-data">
      <p>Address: <input  type="text" name='address'  id="address"></p>
      
	UPLOAD PHOTO :   <input type="file" name='photo' size="50"/>
	  <input type="submit" >
	  </form>
	  
  <script type="text/javascript">
    
        navigator.geolocation.getCurrentPosition(success, error); 

         function success(position) {

            var GEOCODING = 'https://maps.googleapis.com/maps/api/geocode/json?latlng=' + position.coords.latitude + '%2C' + position.coords.longitude + '&language=en';

            $.getJSON(GEOCODING).done(function(location) {
            	 var add = location.results[0].formatted_address;
                $('#address').html(add);
                document.getElementById("address").value =add ;
                            })
          
                           
        }

        function error(err) {
            console.log(err)
        } 
    </script> 
  
</body>
</html> 


