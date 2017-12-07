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
<title>Crop Videos</title>
</head><body>
<%@include file="/WEB-INF/views/farmer/farmernavbar.jsp"%>
	<div class="container" style="width: 100%; height: 100%;" id="bodystyle">

		<!-- middle container starts -->
		<div class="scrollTxt"
			style="width: 50%; float: left; margin-left: 20%;">

			<div class="midPanel">
				<div class="midPanel2">
					<center>
						<h2 class="headingTxt" style="font-size: 200%; font-weight: bold;">Welcome
							${farmer.firstname} ${farmer.lastname}</h2>
					</center>
					<center>
						<h3 class="headingTxt" style="font-size: 30px; font-weight: bold;">Jai
							Jawan Jai kisan</h3>
					</center>
					<hr>


					<div class="highboard">
						<c:if test="${empty links}">
							<p>No Videos Available Right Now Come Right Back After Some
								Time</p>
						</c:if>
						<c:if test="${!empty links}">
							<c:forEach var="link" items="${links}">
								<div class="row" id="featureheading" class="container">
									<div class="col-sm-4" style="display: inline-block">
									<center><h3 style="color:blue;font-weight:bold;margin-top:0px;">${link.name}</h3></center>
										<iframe width="250" height="300" src="${link.video_link}"
											frameborder="0" allowfullscreen></iframe>
									</div>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</div>
							</c:forEach>
						</c:if>
					</div>
					<br> <br> <br>
				</div>

			</div>
		</div>
		<br> <br> <br>
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