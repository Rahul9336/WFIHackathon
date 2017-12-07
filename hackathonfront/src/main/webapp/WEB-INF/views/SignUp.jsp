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
<title>Farmer Registration</title>
</head>
<body onload="getLocation()">
	<%@include file="/WEB-INF/views/navbar.jsp"%>
	<div class="container">
    <h1 class="well"><s:message code="Farmer_registration_form" text="Farmer_registration_form"></s:message></h1>
    <h1>${message}${Exception }</h1>
	<div class="col-lg-12 well">
	<div class="row">
	<div class="w3-panel w3-red"><form:errors path="farmer.*"/></div>
				<form action="/hackathonfront/signupsuccess" method="post" modelattribute="farmer">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label><s:message code="First_name" text="First_name"></s:message></label>
								<input type="text" placeholder="Enter First Name Here.." class="form-control" name="firstname">
							</div>
							<div class="col-sm-6 form-group">
								<label><s:message code="Last_name" text="Last_name"></s:message></label>
								<input type="text" placeholder="Enter Last Name Here.." class="form-control" name="lastname">
							</div>
						</div>	
						<div class="form-group">
						<label><s:message code="Date_of_birth" text="Date_of_birth"></s:message></label>
						<input type="text" placeholder="Enter Phone Number Here.." class="form-control" name="dob">
					</div>								
					<div class="form-group">
						<label><s:message code="Phone_no" text="Phone_no"></s:message></label>
						<input type="text" placeholder="Enter Phone Number Here.." class="form-control" name="phone_no">
					</div>		
					<div class="form-group">
						<label><s:message code="Email" text="Email"></s:message></label>
						<input type="email" placeholder="Enter Email Address Here.." class="form-control" name="username">
					</div>	
					<div class="form-group">
						<label><s:message code="Password" text="Password"></s:message></label>
						<input type="password" placeholder="Enter Password  Here.." class="form-control" name="password">
					</div>
					<div class="form-group">
						<label><s:message code="Adhaar_card" text="Adhaar_card"></s:message></label>
						<input type="text" placeholder="Enter Adhaar Number Here.." class="form-control" name="adhaar">
					</div>
					<div class="form-group">
							<label><s:message code="Address" text="Address"></s:message></label>
							<textarea placeholder="Enter Address Here.." rows="3" class="form-control" name="address"></textarea>
						</div>	
						<div class="row">
							<div class="col-sm-4 form-group">
								<label><s:message code="City" text="City"></s:message></label>
								<input type="text" placeholder="Enter City Name Here.." class="form-control" name="city">
							</div>	
							<div class="col-sm-4 form-group">
								<label><s:message code="State" text="State"></s:message></label>
								<select class="form-control" id="sel1"
									name="state">
									<option selected="selected" value="<---Select State---">---Select
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
								<label><s:message code="Pin_code" text="Pincode"></s:message></label>
								<input type="text" placeholder="Enter Pin Code Here.." class="form-control" name="pincode">
							</div>		
						</div>
						<input name="Longtitude" id="lon">	<input name="Latitude" id="lat">	
					<button type="submit" class="btn btn-lg btn-info"><s:message code="Register" text="Register"></s:message></button>					
					</div>
				</form> 
				</div>
	</div>
	</div>
	<%@include file="/WEB-INF/views/footer.jsp"%></body>
</html>