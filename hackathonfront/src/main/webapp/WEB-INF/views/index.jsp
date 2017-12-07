<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<s:url var="url_img" value="/resources/Image"></s:url>
<s:url var="product_img" value="/resources/productimages"></s:url>
<s:url var="url_css" value="/resources/css"></s:url>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>ANN RAKSHAK</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="${url_css }/styles.css">
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
</head>
<body>
<div>
<%@include file="/WEB-INF/views/navbar.jsp"%>
		<div id="myCarousel" class="carousel slide" data-ride="carousel"
			style="width: 100%; height: 350px; float: left;">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="${url_img}/1.jpg" alt="farmers"
						style="width: 100%; height: 350px;">
					<div class="carousel-caption">
						<h3>Your Way, Right Away.</h3>
						<p>The farmer has to be an optimist or he wouldn’t still be a
							farmer.</p>
					</div>
				</div>

				<div class="item">
					<img src="${url_img}/2.jpg" alt="emandi"
						style="width: 100%; height: 350px;">
					<div class="carousel-caption">
						<h3>Eat to live; don’t live to eat.</h3>
						<p>Don’t waste food, its like wasting one of the most precious
							things given by God to us.</p>
					</div>
				</div>

				<div class="item">
					<img src="${url_img}/3.jpg" alt="agriculture"
						style="width: 100%; height: 350px;">
					<div class="carousel-caption">
						<h3>Waste it once…pay for it twice!</h3>
						<p>Don’t waste food, its like wasting one of the most precious
							things given by God to us.</p>
					</div>
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only"><s:message code="Previous" text="Previous"></s:message></span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only"><s:message code="Next" text="Next"></s:message></span>
			</a>
		</div>
		</div><br><br>	<br><br>	<br><br>	<br><br>	<br><br><br><br>	<br><br>	<br><br>	<br><br>	<br><br>	
	<div class="container" style="border:2px solid:">
		
		<div class="row">
		<div class="col-sm-4"><%@include file="/WEB-INF/views/searchBox.jsp"%></div>
			<c:if test="${!empty product}">
				<div class="col-sm-8" id="featureheading" class="container">
					<c:forEach var="pro" items="${product}">
						<div class="col-sm-4" style="display: inline-block">
							<a href="/hackathonfront/productdetail/${pro.product_id}"><img
								src="${product_img}/${pro.name}.jpg" alt="productimage"
								width="250px" height="200px"><br> <strong><font
									size="2">${pro.name}</font></strong><br> <strong>&#x20B9
									${pro.price}</strong></a><br>
							<br>
							<form action="/hackathonfront/addcart/${pro.product_id}">
								<button class="btn btn-primary" type="submit"><s:message code="addtocart" text="Add To
									Cart"></s:message></button>
							</form>
						</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</c:forEach>
				</div>
			</c:if>
		</div>
	</div>
<br><br>
<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>