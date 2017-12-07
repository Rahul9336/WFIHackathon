<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<s:url var="css" value="/resources/css/"></s:url>
<s:url value="/resources/js" var="js"></s:url>
<s:url var="url_img" value="/resources/Image/"></s:url>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADD Product</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cloud.tinymce.com/stable/tinymce.min.js?apiKey=8t7rv0vydbhhi2g0c7k7kbuoix5kck3mux35fnnlcbgjt8sv"></script>
  <script>tinymce.init({ selector:'textarea' });</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<script
	src="${js}/intial.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="${css}/styles.css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
</head>
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
<body style="background-color:   #FAFAFF">
	<%@include file="/WEB-INF/views/farmer/farmernavbar.jsp"%>
  <div style="margin-left: 25%; margin-right: 10%" id="box">
  <br><br>
<div class="w3-panel w3-red"><form:errors path="product.*"/></div>
<div class="w3-card-4" id="bodystyle" style="color:transparent";>
<h5>${message}</h5>
  <div class="w3-container w3-teal"><br>
    <h5>Add Product</h5>
    <br>
  </div>
  <form class="w3-container" action="/hackathonfront/admin/productaddsuccess" enctype="multipart/form-data" method="post">
  <p>    
    <label class="w3-text-orange"><b>Crop Name:</b></label>
    <input class="w3-input w3-border" name="name" type="text" ></p>
    <p> 
    <br>
    <label class="w3-text-orange"><b>Image:</b></label>
    <input class="w3-input w3-border " name="file" type="file"></p>
    <p>
    <input class="w3-input w3-border " name="supplier" type="hidden" value="${pageContext.request.userPrincipal.name}"></p>
    <p>
    <label class="w3-text-orange"><b>Price:</b></label>
    <input class="w3-input w3-border " name="price" type="number"></p>
    <p>
    <label class="w3-text-orange"><b>Quantity:</b></label>
    <input class="w3-input w3-border " name="quantity" type="number" placeholder="In Quintal"></p>
    <p>
    <label class="w3-text-orange"><b>Keywords:</b></label>
    <input class="w3-input w3-border " name="keywords" type="text"></p>
    <p>
    <p>
    <label class="w3-text-orange"><b>Description:</b></label>
    <input class="w3-input w3-border " name="description" type="text"></p><br>
   <c:if test="${!empty category}">
    <select name="category_name">
    <c:forEach var="cat" items="${category}">
	<option value="${cat.category_name}">${cat.category_name}</option>
	</c:forEach>
	</select>
	</c:if>
    <p>
    <br>
    <button class="w3-btn w3-teal">Add</button></p>
  </form>
</div>
<div><br> 
		<form action="/hackathonfront/farmer/mainpanel">
		<button  class="btn btn-primary" >Cancel</button>
		</form></div>
</div>
<br>
<br>
<footer style="background-color:white; font-family: " Times NewRoman", Georgia, Serif";>
	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<h6>
					<strong style="color: blue;">Copyright &copy:2017{ANN
						RAKSHAK}</strong>
				</h6>
			</div>
			<div class="col-sm-4">
				<h6>
					<strong style="color: blue;">Abouts Us</strong>
				</h6>
			</div>
			<div class="col-sm-2">
				<h6>
					<strong style="color: blue;">Navigation</strong>
				</h6>
				<ul class="list-unstyled">
					<li><span class="glyphicon glyphicon-home"></span><a href="#"
						style="color: blue; font-size: 15px;">Home</a></li>
					<li><span class="
glyphicon glyphicon-phone-alt"><span><a
								href="#" style="color: blue; font-size: 15px;">Contact us</a></li>
				</ul>
			</div>
			<div class="col-sm-2">
				<h6>
					<strong style="color: blue;">Follow us</strong>
				</h6>
				<ul class="list-unstyled">
					<li><span class="fa fa-twitter"></span><a href="#"
						style="color: blue; font-size: 15px;">Twitter</a></li>
					<li><span class="fa fa-facebook-official" /><a href="#"
						style="color: blue; font-size: 15px;">Facebook</a></li>
					<li><span class="fa fa-google-plus" /><a href="#"
						style="color: blue; font-size: 15px;">Google Plus</a></li>
				</ul>
			</div>
		</div>
	</div>
	</footer>

</body>
</html>