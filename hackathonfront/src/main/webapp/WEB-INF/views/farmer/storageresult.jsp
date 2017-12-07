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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="${css}/styles.css">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<title><s:message code="Booking_storage" text="Booking_storage"></s:message></title>
<style>
#bodystyle {
	background-image: url(${url_img}/bg.jpg);
}
</style>
</head>
<body>
<%@include file="/WEB-INF/views/farmer/farmernavbar.jsp"%>
	<div id="bodystyle">
<div style="background-color:transparent; font-family: " Times NewRoman", Georgia, Serif"; width="100%" height="200px;">
        <c:if test="${empty storage}"><div class="row"><div class="col-sm-4">
				<form style="margin-left:3%;" action="/hackathonfront/farmer/storageresult" method="post">
						
						<div class="form-group">
						<label><strong><s:message code="State" text="State"></s:message></strong></label>
						<select class="form-control" id="sel1"
									name="state"  style="width:90%;">
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
					<div class="form-group">
						<label><s:message code="Pin_code" text="Pin_code"></s:message></label>
						<input style="width:80%;" type="text" placeholder="Pincode(Optional)" class="form-control" name="pincode">
					</div>		
					<div class="form-group">
						<label><s:message code="For_crops" text="For_crops"></s:message></label>
						<input style="width:80%;" type="text" placeholder="Enter crop name  Here.." name="crop"class="form-control">
					</div>	
					<input type="submit" value="Search" id="search" />					
					
				</form></div><div class="col-sm-4"><center><h3>${message}</h3></center></div><div class="col-sm-4"></div></div></c:if>
</div>	
	<c:if test="${!empty storage}">
	<c:forEach var="str" items="${ storage}">
				 <div class="col-sm-4">
				 <a href="/hackathonfront/farmer/viewmap/${str.storage_id}"><button type="submit" class="btn btn-primary">View In Map</button></a>
            <h3 style="margin-left:20%">${str.storage_name}</h3>
          <div class="card card-01">
          <img class="card-img-top" src="${url_img}/storagelogo.png.jpg" width="50%" height="50%">
          <div class="card-body">
            <span class="badge-box"></span>
            <h4 class="card-title"><span class="icon-old-man"></span>${str.manager_name}</h4>
            <p class="card-text"><strong><s:message code="Available_storage" text="Available_storage"></s:message></strong>${str.available_storage}</p>
            <p class="card-text"><strong><s:message code="Total_storage_capacity" text="Total_storage_capacity"></s:message></strong>${str.total_capacity}</p>
            <a href="/hackathonfront/farmer/bookrequest/${str.storage_id}"><button type="submit" class="btn btn-primary">Book your Storage</button></a>
            <div class="dropdown">
    		<button class="btn btn-danger dropdown-toggle" type="button" data-toggle="dropdown"><s:message code="Full_detail" text="Full_detail"></s:message>
   			 <span class="caret"></span></button>
   			 <ul class="dropdown-menu">
     		 <p><span>Full Address</span>${str.address} ${str.city} ${str.district} ${str.state}</p>
     		 <p><strong>Pincode</strong>${str.pincode }</p>
     		 <p><span class="glyphicon glyphicon-phone">Phone Number:</span>${str.manager_contact }</p>
     		 <p><span class="glyphicon glyphicon-phone-alt">Landline:</span>${str.storage_contact }</p>
    </ul>
  </div>
          </div>
        </div>
        </div></c:forEach></c:if>		
        </div>
        </div></div>
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