<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>${param.pageTitle}</title>
<link
	href="${pageContext.request.contextPath}/dashboard/assets/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/dashboard/assets/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/dashboard/assets/css/style.css"
	rel="stylesheet">
	
<!-- scripts -->

<!--[if lt IE 9 ]>
<script
	 src="${pageContext.request.contextPath}/assets/script/html5shiv.min.js"
	 type="text/javascript"></script>
<script
	 src="${pageContext.request.contextPath}/assets/script/respond.min.js"
	 type="text/javascript"></script>
<![endif]-->

<script
	src="${pageContext.request.contextPath}/dashboard/assets/script/jquery-1.12.4.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/dashboard/assets/script/bootstrap.min.js"
	type="text/javascript"></script>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"
	type="text/javascript"></script>
<script>
	$(function() {
		// #sidebar-toggle-button
		$('#sidebar-toggle-button').on('click', function() {
			$('#sidebar').toggleClass('sidebar-toggle');
			$('#page-content-wrapper').toggleClass('page-content-toggle');
			fireResize();
		});

		// sidebar collapse behavior
		$('#sidebar').on('show.bs.collapse', function() {
			$('#sidebar').find('.collapse.in').collapse('hide');
		});

		// To make current link active
		(function addActiveToNestedList () {
			var pageURL = $(location).attr('href');
			var URLSplits = pageURL.split('/');
		
			
			var routeURL = '/' + URLSplits[URLSplits.length - 2] + '/' + URLSplits[URLSplits.length - 1];
			var activeNestedList = $(
					'.sub-menu > li > a[href$="' + routeURL + '"]').parent();
			
			if (activeNestedList.length !== 0
					&& !activeNestedList.hasClass('active')) {
				$('.sub-menu > li').removeClass('active');
				activeNestedList.addClass('active');
			}
		})();
		
		function fireResize() {
			if (document.createEvent) { // W3C
				var ev = document.createEvent('Event');
				ev.initEvent('resize', true, true);
				window.dispatchEvent(ev);
			} else { // IE
				element = document.documentElement;
				var event = document.createEventObject();
				element.fireEvent("onresize", event);
			}
		}

	})
</script>
<%@include file="../../header.jsp" %>
</head>
<body>
 <center>
 <h2>Scheme : ${param.scheme_name}</h2>
 <hr>
  <div class="row" style="margin-left:18%">
    <div class="col-md-3" style="padding: 30px;margin:2px; 
                    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                    background-color: #66ccff;color:white">Completed : <%= request.getAttribute("completed") %></div>
    <div class="col-md-3" style="padding: 30px;margin:2px; 
                    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                    background-color: #ff9999;color:white">Aborted : <%= request.getAttribute("aborted") %></div>
    <div class="col-md-3" style="padding: 30px;margin:2px;
                    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                    background-color: #6c6;color:white">Active : <%= request.getAttribute("active") %>
        			</div>
 </center>
 <br>
<hr>
<div class="container">
	<div id="page-content-wrapper" >
					${param.content}
			<!-- /row -->
		</div>
	</div> 
  </div>

</body>
</html>