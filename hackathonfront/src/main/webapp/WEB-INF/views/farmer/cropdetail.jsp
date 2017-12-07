<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<s:url var="css" value="/resources/css/"></s:url>
<s:url var="url_img" value="/resources/Image/"></s:url>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
a {
	font-size: 15px;
}

a:hover {
	font-size: 22px;
}

a#bg:hover {
	background-color: #3B5999;
	color: red;
	font-weight: bold;
}
#bodystyle {
	background-image: url(${url_img}/bg.jpg);
}
</style>
<title>Crop Detail</title>
</head>
<body>
<%@include file="/WEB-INF/views/farmer/farmernavbar.jsp"%>
	<!-- navigation bar ends -->

	<div class="container" id="bodystyle">
    <h4 class="well" style="background-color:inherit; font-family: " Times NewRoman", Georgia, Serif";><center> <strong style="font-size:150%;color:blue;"><s:message code="Fill_your_crop_detail" text="Fill_your_crop_detail"></s:message></strong></center></h4>
	<div class="col-lg-12 well" style="background-color:transparent; font-family: " Times NewRoman", Georgia, Serif";>
	<div class="row" style="height:300px;">
	<h3>${message}</h3>
				<form style="width:60%;margin:auto;" action="/hackathonfront/farmer/addcropdetail" method="post">
					<div class="col-sm-12">	
						<div class="form-group">
						<label><strong><s:message code="Crop_name" text="Crop_name"></s:message></strong></label>
						<input name="crop_name" type="text" placeholder="Enter Crop Name Here.." class="form-control">
					</div>								
					<div class="form-group">
						<label><s:message code="Rate_per_quintal" text="Rate_per_quintal"></s:message></label>
						<input name="crop_rate" type="text" placeholder="Enter Rate  Here.." class="form-control">
					</div>		
					<div class="form-group">
						<label><s:message code="Total_quantity" text="Total_quantity"></s:message></label>
						<input name="weight" type="text" placeholder="Enter Total Quantity  Here.." class="form-control">
					</div>
					<div class="form-group">
						<label><s:message code="Harvesting_date" text="Harvesting_date"></s:message></label>
						<input name="dateofharvest" type="text" placeholder="DD/MM/YYYY" class="form-control">
					</div>
						<div class="form-group">
						<label><s:message code="Description" text="Description"></s:message></label>
						<textarea type="text" placeholder="Text upto 255" class="form-control" rows="4" cols="50" name="description"></textarea>
					</div>		
					<button type="submit" class="btn btn-lg btn-info"><s:message code="Add" text="Add"></s:message></button>					
					</div>
				</form> 
				</div>
	</div>
	</div>
			<%@include file="/WEB-INF/views/footer.jsp"%>
		<script>
			// When the user clicks on div, open the popup
			function myFunction() {
				var popup = document.getElementById("myPopup");
				popup.classList.toggle("show");
			}
		</script>
</body>
</html>