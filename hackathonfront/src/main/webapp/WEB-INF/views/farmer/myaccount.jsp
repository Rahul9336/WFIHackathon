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
.row-padding {
    margin-top: 25px;
    margin-bottom: 25px;
}
</style>
<title><s:message code="My_account" text="My_account"></s:message></title>
</head>
<body >
<%@include file="/WEB-INF/views/farmer/farmernavbar.jsp"%>
<div class="container" id="bodystyle">
    <div class="row">
<br>
<br>
    	<div class="span3 well" style="background-color:transparent;">
        <center>
        <a href="#aboutModal" data-toggle="modal"><img src="http://icons.iconarchive.com/icons/artua/dragon-soft/512/User-icon.png" name="aboutme" width="140" height="140" class="img-circle"></a>
         <h3><strong>${farmer.firstname} ${farmer.lastname}</strong></h3>
         <p>${farmer.username}<br><a target="_blank" href="http://bootsnipp.com/TXTCLASS/snippets/25zz">${farmer.phone_no}</a></p>
			</center>
			<center><button class="btn btn-primary"><span class="glyphicon glyphicon-pencil"></span><s:message code="Edit" text="Edit"></s:message></button></center>
</div>
</div>
</div></div>
<div class="container">
<c:if test="${!empty crop }">
    <div class="row" id="sd">
    
        <div class="col-lg-12">
            <h3><s:message code="Your_crop_detail" text="Your_crop_detail"></s:message></h3>
        </div>
    </div>
    <div class="row" id="sd">
    
        <div class="col-lg-12">
            <table class="table" id="table">
                <thead>
                
                    <tr>
                        <th><s:message code="Crop_name" text="Crop_name"></s:message></th>
                        <th><s:message code="Rate_per_quintal" text="Rate_per_quintal"></s:message></th>
                        <th><s:message code="Weight_you_have" text="Weight_you_have"></s:message></th>
                        <th><s:message code="harvestingdate" text="Date of Harvest"></s:message></th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="crop" items="${crop }">
                    <tr>
                        <td>${crop.crop_name }</td>
                        <td>&#8377; ${crop.crop_rate }</td>
                        <td>${crop.weight } Kg</td>
                        <td>${crop.dateofharvest }</td>
                    </tr></c:forEach>
                </tbody>
            </table>
            <hr>
        </div></c:if>
    </div>
    <c:if test="${!empty cropcalendar }">
        <div class="row" id="sd">
    
        <div class="col-lg-12">
            <h3><s:message code="Crop_calendar" text="Crop Calendar"></s:message></h3>
        </div>
    </div>
    <div class="row" id="sd">
    
        <div class="col-lg-12">
            <table class="table" id="table">
                <thead>
                
                    <tr>
                        <th><s:message code="Crop_name" text="Crop_name"></s:message></th>
                        <th><s:message code="status" text="Status"></s:message></th>
                        <th><s:message code="startingDate" text="Date Of Starting"></s:message></th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="cp" items="${cropcalendar }">
                    <tr>
                        <td>${cp.cropname }</td>
                        <td>${cp.status }</td>
                        <td>${cp.notify.notify_date}</td>
                    </tr></c:forEach>
                </tbody>
            </table>
            <hr>
        </div>
    </div></c:if>
</div>
	<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>