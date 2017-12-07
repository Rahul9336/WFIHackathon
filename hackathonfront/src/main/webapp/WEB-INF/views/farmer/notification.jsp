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
<title>Notification</title>
<style>
#bodystyle {
	background-image: url(${url_img}/bg.jpg);
}
</style>
</head>
<body>
	<%@include file="/WEB-INF/views/farmer/farmernavbar.jsp"%>
	<div class="container" id="bodystyle">
		<div class="row">
			<br> <br>
			<div class="span3 well"
				style="background-color: transparent; height: 300px;">
				<center>
					<c:if test="${!empty aboutexpcrop}">
						<div class="alert alert-danger">
						About to Expire
						
							<c:forEach var="exp" items="${aboutexpcrop}">
								<h2 style="font-size: 100%;">
									Your ${exp.crop_name} is Going To expire Soon.Date Of Harvest of your crop is <strong>
										${exp.dateofharvest}</strong>.Choose Your Future Options
										<a href="#"><button class="btn btn-danger">PostToClearanceSell</button></a><a href="#">
								</h2>
							</c:forEach>
					</c:if></div>
				</center>
				<center>
					<c:if test="${count==0}">
						<P style="font-size: 20px">No Notification Yet
							Mr.${farmer.firstname} ${farmer.lastname}</p>
					</c:if>
					<c:if test="${!empty storage}">
						<c:forEach var="storage" items="${storage}">
							<h2 style="font-size: 100%; color: red; background-color: black">
								Your Storage Booking Request has been Successfully Send to
								Storage Manager <strong>
									${storage.storage.storage_name}</strong>.We Back to You When Your
								Storage Confirmed.<br>Date:${storage.notify.notify_date}
							</h2>
						</c:forEach>
					</c:if>
				</center>
				<center>
					<c:if test="${!empty cropcalendar}">
						<c:forEach var="cr" items="${cropcalendar}">
							<h2 style="font-size: 100%; color: red; background-color: black">
								Your CropCalendar Successfully Started.We We Notify time to time
								about your CropCalendar.<br>Date:${cr.notify.notify_date}
							</h2>
						</c:forEach>
					</c:if>
				</center>
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