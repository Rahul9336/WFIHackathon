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
	font-family: "Lato", sans-serif;
	background-image: url(${url_img}/bg.jpg);
}
</style>
<title>Farmer Dashboard</title>
</head>
<body>
	<div class="container" id="main" style="width: 100%;">
		<%@include file="/WEB-INF/views/farmer/farmernavbar.jsp"%>

</div>
	<!-- navigation bar ends -->
	<div class=col-12>
				<div class="well hidden-xs" style="background-image:url(${url_img}/fm.jpg);">
					<div class="page-header">
						<center>
						<h2 class="headingTxt" style="font-size:200%; font-weight: bold;color:red;margin-top:10px;">Welcome
							${farmer.firstname} ${farmer.lastname}</h2>
					</center>
					<center>
						<h3 class="headingTxt" style="font-size: 125%; font-weight: bold;">Jai
							Jawan Jai kisan</h3>
					</center>
				</div>
			</div>
		</div>
		<div class="container" id="bodystyle">
		<!-- middle container starts -->
		<div class="scrollTxt"
			style="width: 50%; float: left; margin-left: 20%;" >

			<div class="midPanel">
				<div class="midPanel2">
			
					<div>
						<!--<marquee behavior="scroll" direction="left">Announcements</marquee>-->
						<marquee id="banner" scrollamount="5" align="middle"
							onmouseover="this.scrollAmount=0"
							onmouseout="this.scrollAmount=3" behavior="scroll">
							<h3 style="font-size: 20px; font-weight: bold;">
								Gallery</h3>
						</marquee>
					</div>


					<div class="highboard">
						<marquee height="160px;">
							<ul>
								<li><iframe width="250" height="300"
										src="https://www.youtube.com/embed/CybaGXZZtLc"
										frameborder="0" allowfullscreen></iframe> <iframe width="250"
										height="300" src="https://www.youtube.com/embed/DdF4FEBFAYw"
										frameborder="0" allowfullscreen></iframe> <iframe width="250"
										height="300" src="https://www.youtube.com/embed/r7MGXGXqT-A"
										frameborder="0" allowfullscreen></iframe> <iframe width="250"
										height="300" src="https://www.youtube.com/embed/hf-jITv0N50"
										frameborder="0" allowfullscreen></iframe></li>
							</ul>
						</marquee>

					</div>
					<br>
					<br>
					<br>
				</div>

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