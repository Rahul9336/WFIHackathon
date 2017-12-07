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
<title><s:message code="Crop_calender" text="Crop_calender"></s:message></title>
</head>
<body>
<%@include file="/WEB-INF/views/farmer/farmernavbar.jsp"%>
		<div id="bodystyle">
<div style="background-color:transparent; font-family: " Times NewRoman", Georgia, Serif"; width="100%" height="200px;">
	<div class="row">
	<div class="col-sm-4"><form style="margin-left:3%;" action="/hackathonfront/farmer/emandi/district" method="post">
						
						<div class="form-group">
						<label><strong><s:message code="State" text="State"></s:message></strong></label>
						<select class="form-control" id="sel1"
									name="state"  style="width:80%;"onchange="findstate(this.value)">
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
						<lable><strong><s:message code="District" text="District"></s:message></strong></label>
						<select class="form-control" id="sel1"
									name="state"  style="width:90%;">
									<option selected="selected" value="<---Select State---"><---Select
										District---></option>
										<c:if test="${!empty emandi }">
										<c:forEach var="dis" items="${emandi}"></c:forEach>
									<option value="${dis.district}">
										${dis.district}</option></c:if>
										</select>
					</div>		
					<div class="form-group">
						<label><s:message code="For_crops" text="For_crops"></s:message></label>
						<input style="width:80%;" type="text" placeholder="Enter crop name  Here.." name="crop"class="form-control">
					</div>	
					<input type="submit" value="Search" id="search" />					
					
				</form></div>
	
			 <div class="col-sm-8">
<c:if test="${!empty emandi}">
	<c:forEach var="cr" items="${ emandi}">
            <table class="table" id="table">
                <thead>
                    <tr>
                        <th><s:message code="Crop_name" text="Crop_name"></s:message></th>
                        <th><s:message code="Rate_per_quintal" text="Rate_per_quintal"></s:message></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>${cr.crop_name}</td>
                        <td>${price }</td>
                    </tr>
                </tbody>
            </table>
            <hr></c:forEach></c:if>
        </div>	
    </div>
            </div>
            	
        </div>	
	<%@include file="/WEB-INF/views/footer.jsp"%>
			<script type="text/javascript">
		function findstate(state) {
			if (state != '') {
				window.location.href = '/hackathonfront/farmer/emandistate/'
						+ state;
			}
		}
	</script>
</body>
</html>