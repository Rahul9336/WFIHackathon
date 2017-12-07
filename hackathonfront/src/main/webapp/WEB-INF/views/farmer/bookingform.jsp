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
<title>Storage Booking Form</title>
</head>
<body>
	<%@include file="/WEB-INF/views/farmer/farmernavbar.jsp"%>
	<div class="container" id="bodystyle">
    <h4 class="well" style="background-color:inherit; font-family: " Times NewRoman", Georgia, Serif";><center> <strong style="font-size:150%;color:blue;"><s:message code="Fill_your_crop_detail" text="Fill_your_crop_detail"></s:message></strong></center></h4>
	<div class="col-lg-12 well" style="background-color:transparent; font-family: " Times NewRoman", Georgia, Serif";>
	<div class="row" style="height:400px;">
	<h2 style="background-color: transparent; font-family:"TimesNewRoman", Georgia, Serif;color:blue;">${message}</h2>
				<form style="width:60%;margin:auto;" action="/hackathonfront/farmer/bookstorage/${storageid}">
					<div class="col-sm-12">	
						<div class="form-group">
						<label><strong><s:message code="Duration" text="Duration"></s:message></strong></label>
						<input type="text" placeholder="In weeks" class="form-control" name="duration">
					</div>								
					<div class="form-group">
						<label><s:message code="Crop_name" text="Crop_name"></s:message></label>
						<input type="text" placeholder="Enter Your Crop Name" class="form-control" name="crops_names">
					</div>		
					<div class="form-group">
						<label><s:message code="weight" text="Weight(Kgs)"></s:message></label>
						<input type="text" placeholder="Enter weight of your crop to be stored" class="form-control" name="acquire_capacity">
					</div>
						<div class="form-group">
						<label><s:message code="Any_other_specification" text="Any_other_specification"></s:message></label>
						<textarea type="text" placeholder="Text upto 255" class="form-control" rows="4" cols="50" name="descp"></textarea>
					</div>		
					<button type="submit" class="btn btn-lg btn-info"><s:message code="Add" text="Add"></s:message></button>
					<a href="/hackathonfront/farmer/bookstorage"><button type="submit" class="btn btn-danger">Cancel</button>	</a>				
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