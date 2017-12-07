<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<s:url var="url_img" value="/resources/Image"></s:url>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<title>Home</title>
</head>
<body>  
<div class="container" style="width:100%; height:100%;">
     <div>
    <!--navigation bar starts -->
    
  <nav class="navbar navbar-inverse" style="background: #ffc299;">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="#">Ann Rakshak</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.html">Home</a></li>
       
        <li><a href="#">Contact us</a></li> 
        <li><a href="#">About us</a></li> 
      </ul>
         <ul class="nav navbar-nav navbar-right">
       <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">SIGNUP
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">FARMERS</a></li>
          <li><a href="#">MANUFACTURERS/DISTRIBUTORS</a></li>
          <li><a href="#">RETAILER</a></li>
          <li><a href="#">STORAGE</a></li>
        </ul>
      </li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
    </div>
  </div>
</nav>
</div>
   <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width:100%; height:350px; float:left;">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="${url_img}/1.jpg" alt="farmers" style="width:100%; height:350px;">
    </div>

    <div class="item">
      <img src="${url_img}/2.jpg" alt="emandi" style="width:100%; height:350px;">
    </div>

    <div class="item">
      <img src="${url_img}/3.png" alt="agriculture" style="width:100%; height:350px;">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    
</div>
    <div style="height:200px; width:100%; background:#ffc299; float:center;">
        <a href="#"><img src ="${url_img}/link1.gif" style="padding:20px; margin-left:10%; height:200px; width:20%;"></a>
         <a href="emandi.html"><img src ="${url_img}/link2.gif" style="padding:20px;  margin-left:10%; height:200px; width:20%;"></a>
         <a href="#"> <img src ="${url_img}/link3.png" style="padding:20px; margin-left:10%; height:200px; width:20%;"></a>
    </div>
    
    <div class="footer-section" style="background:skyblue">
    <div class="container">
        <div id="go-top"><br><br>
            <center><a class="smoothscroll" href="#top" title="Back to Top">Back to Top</a></center><br>
        </div>
        <div class="footer-top" style="width:100%; height:50px;">
            <p style="text-align:center">Copyright &copy; 2017 <span>Ann Rakshak</span> All rights reserved</p>
        </div></div></div>
    
    