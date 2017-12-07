<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<s:url var="url_img" value="/resources/Image"></s:url>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
	font-size: 20px;
}

a:hover {
	font-size: 22px;
}

a#bg:hover {
	background-color: #3B5999;
	color: red;
	font-weight: bold;
}
</style>
<script>
	$(document).ready(function() {
		$("#lat,#lon").hide();
	});
</script>
<title>Storage Registration</title>
</head>
<body onload="getLocation()">
<%@include file="/WEB-INF/views/navbar.jsp"%>
		<div class="container">
		<h1 class="well">Storage Registration Form</h1>
		<h3>${message }</h3>
		<div class="col-lg-12 well">
			<div class="row">
				<form action="/hackathonfront/storagesignupsuccess" method="post">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-12 form-group">
								<label>Full Name</label> <input type="text"
									placeholder="Enter storage Manager Last Name Here.."
									class="form-control" name="manager_name">
							</div>
						</div>
						<div class="form-group">
							<label>Date Of Birth</label> <input type="text"
								placeholder="Enter DOB DD/MM/YYYY.." class="form-control" name="dob">
						</div>
						<div class="form-group">
							<label>Phone Number</label> <input type="text"
								placeholder="Enter Phone Number Here.." class="form-control" name="manager_contact">
						</div>
						<div class="form-group">
							<label>Email Address</label> <input type="email"
								placeholder="Enter Email Address Here.." class="form-control" name="email">
						</div>
						<div class="form-group">
							<label>Password</label> <input type="password"
								placeholder="Enter Password  Here.." class="form-control" name="password">
						</div>
						<div class="form-group">
							<label>Adhaar Card</label> <input type="text"
								placeholder="Enter Adhaar Number Here.." class="form-control" name="adhaar">
						</div>
						<div class="form-group">
							<label>Address</label>
							<textarea placeholder="Enter Address Here.." rows="3"
								class="form-control" name="address"></textarea>
						</div>
						<div class="row">
							<div class="col-sm-4 form-group">
								<label>City</label> <input type="text"
									placeholder="Enter City Name Here.." class="form-control" name="city">
							</div>
							<div class="col-sm-4 form-group">
								<label>State</label> <select class="form-control" id="sel1"
									name="state" >
									<option selected="selected" value="<---Select State---"><---Select
										State--->
									<option value="ANDHRA PRADESH">
										<s:message code="ANDHRA PRADESH" text="ANDHRA PRADESH"></s:message>
									<option value="ARUNACHAL PRADESH"><s:message
											code="ARUNACHAL PRADESH" text="ARUNACHAL PRADESH"></s:message>
									<option value="ASSAM">
										<s:message code="ASSAM" text="ASSAM"></s:message>
									<option value="BIHAR"><s:message code="BIHAR"
											text="BIHAR"></s:message>
									<option value="CENTRAL USER"><s:message
											code="CENTRAL USER" text="CENTRAL USER"></s:message>
									<option value="CHHATTISGARH"><s:message
											code="CHHATTISGARH" text="CHHATTISGARH"></s:message>
									<option value="GOA"><s:message code="GOA" text="GOA"></s:message>
									<option value="GUJARAT"><s:message code="GUJARAT"
											text="GUJARAT"></s:message>
									<option value="HARYANA"><s:message code="HARYANA"
											text="HARYANA"></s:message>
									<option value="HIMACHAL PRADESH"><s:message
											code="HIMACHAL PRADESH" text="HIMACHAL PRADESH"></s:message>
									<option value="JAMMU AND KASHMIR"><s:message
											code="JAMMU AND KASHMIR" text="JAMMU AND KASHMIR"></s:message>
									<option value="JHARKHAND"><s:message code="JHARKHAND"
											text="JHARKHAND"></s:message>
									<option value="KARNATAKA"><s:message code="KARNATAKA"
											text="KARNATAKA"></s:message>
									<option value="KERALA"><s:message code="KERALA"
											text="KERALA"></s:message>
									<option value="MADHYA PRADESH"><s:message
											code="MADHYA PRADESH" text="MADHYA PRADESH"></s:message>
									<option value="MAHARASHTRA"><s:message
											code="MAHARASHTRA" text="MAHARASHTRA"></s:message>
									<option value="MANIPUR"><s:message code="MANIPUR"
											text="MANIPUR"></s:message>
									<option value="MEGHALAYA"><s:message code="MEGHALAYA"
											text="MEGHALAYA"></s:message>
									<option value="MIZORAM"><s:message code="MIZORAM"
											text="MIZORAM"></s:message>
									<option value="NAGALAND"><s:message code="NAGALAND"
											text="NAGALAND"></s:message>
									<option value="NEW DELHI (Central Level )"><s:message
											code="NEW DELHI (Central Level )"
											text="NEW DELHI (Central Level )"></s:message>
									<option value="ODISHA"><s:message code="ODISHA"
											text="ODISHA"></s:message>
									<option value="PUNJAB"><s:message code="PUNJAB"
											text="PUNJAB"></s:message>
									<option value="RAJASTHAN"><s:message code="RAJASTHAN"
											text="RAJASTHAN"></s:message>
									<option value="SIKKIM"><s:message code="SIKKIM"
											text="SIKKIM"></s:message>
									<option value="TAMILNADU"><s:message code="TAMILNADU"
											text="TAMILNADU"></s:message>
									<option value="TELANGANA"><s:message code="TELANGANA"
											text="TELANGANA"></s:message>
									<option value="TRIPURA"><s:message code="TRIPURA"
											text="TRIPURA"></s:message>
									<option value="UTTAR PRADESH"><s:message
											code="UTTAR PRADESH" text="UTTAR PRADESH"></s:message>
									<option value="UTTARAKHAND"><s:message
											code="UTTARAKHAND" text="UTTARAKHAND"></s:message>
									<option value="WEST BENGAL"><s:message
											code="WEST BENGAL" text="WEST BENGAL"></s:message>
								</select>
							</div>
							<div class="col-sm-4 form-group">
								<label>Pincode</label> <input type="text"
									placeholder="Enter Pin Code Here.." class="form-control" name="pincode">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Storage Name</label> <input type="text"
									placeholder="Enter Name of Storage" class="form-control" name="storage_name">
							</div>
							<div class="col-sm-6 form-group">
								<label>Storage Type</label> <select class="form-control" id="sel1"
									name="storage_type" >
									<option selected="selected" value="Not Defined"><---Select
										Storage Type--->
									<option value="Warehouse">
										Warehouse
									<option value="Cold Storgae">Cold Storage
									</select>
							</div>
						</div>
						<div class="form-group">
							<label>Suitable Crops</label>
							<textarea placeholder="Enter Suitable Crop names(Optional).." rows="3"
								class="form-control" name="crop_names"></textarea>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Total Storage Capacity</label> <input type="text"
									placeholder="Size of Storage" class="form-control" name="total_capacity">
							</div>
							<div class="col-sm-6 form-group">
								<label>Available Storage Capacity</label> <input type="text"
									placeholder="Available Storage" class="form-control" name="available_storage">
							</div>
						</div>
						<input name="longitude" id="lon"> <input name="latitude"
							id="lat">
						<button type="submit" class="btn btn-lg btn-info">Register</button>
					</div>
				</form>
			</div>
		</div>
	</div>
<%@include file="/WEB-INF/views/footer.jsp"%>
	<script>
		var lat = document.getElementById("lat");
		var lon = document.getElementById("lon");
		function getLocation() {
			if (navigator.geolocation) {
				navigator.geolocation.getCurrentPosition(showPosition);
			} else {
				x.innerHTML = "Geolocation is not supported by this browser.";
			}
		}

		function showPosition(position) {
			lat.value = position.coords.latitude;
			lon.value = position.coords.longitude;
		}
	</script>
</body>
</html>