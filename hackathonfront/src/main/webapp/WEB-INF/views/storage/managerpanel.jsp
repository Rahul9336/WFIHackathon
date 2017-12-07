<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<s:url var="css" value="/resources/css/"></s:url>
<s:url var="url_img" value="/resources/Image/"></s:url>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>ANN RAKSHAK</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
</head>
<body onload="onload();">
    <div style="margin:auto; width:100%; background:#EEC84F; height:170px; border:3px groove black;">
<a href="/hackathonfront/"><img src="${url_img }/logo.PNG" style=" width:25%; height:150px;"/></a>
<img src="${url_img }/banner.png" style=" width:75%; height:100%; float:right; "/>
</div>
<div>
    <!--navigation bar starts -->
    
  <nav class="navbar navbar-default" style="background-color:	#3B5999; margin-top:10px;margin-bottom:5px; text-color:white;">
		<div class="container">
			<div class="navbar-header" id="head">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li ><a href="/storage/mainpanel" style="color:white;" id="home">Home</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#" style="color:white;">Manage storage<span class="caret"></span></a>      
							<ul class="dropdown-menu">
								<li><a href=""
									style="font-size: 15px; border-bottom: 1px solid blue;" id="bg"><i
										class="fa fa-money"></i>update storage</a></li>
											
											<li><a href=""
									style="font-size: 15px; border-bottom: 1px solid blue;" id="bg"><i
										class="fa fa-money"></i>see stored items</a></li>
										
							</ul>
						</li>
									<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#" style="color:white;">Services<span class="caret"></span></a>      
							<ul class="dropdown-menu">
								<li><a href=""
									style="font-size: 15px; border-bottom: 1px solid blue;" id="bg"><i
										class="fa fa-money"></i>My Logistics</a></li>
											
											<li><a href=""
									style="font-size: 15px; border-bottom: 1px solid blue;" id="bg"><i
										class="fa fa-money"></i>Make Remainder</a></li>
										
							</ul>
						</li>
					<li><a href="/hackathonfront/farmer/notification"
								style="color: white;"><span
									class="glyphicon glyphicon-bell badge" style="color: white;">${count}</span>
							</a></li>
				</ul>
				<form class="navbar-form navbar-left" action="#">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search"
							id="searchbox" name="search">
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit" id="searchbutton">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</form>
				
				<ul class="nav navbar-nav navbar-right">
				</ul>
				<ul class="nav navbar-nav navbar-right">
				<c:url value="/j_spring_security_logout" var="logout"></c:url>
				<c:if test="${pageContext.request.userPrincipal.name!=null }">
					<li><a href="#"  style="color:white;"><span class="glyphicon glyphicon-send"></span>
							My Order</a></li><li><a href="${logout}"  style="color:white;"><span class="glyphicon glyphicon-user"></span>
							Logout</a></li></c:if>
				</ul>
			</div>
		</div>
		</nav>
</div>
<div class="container" style="width:100%; height:300px;">
    
    
  
    <div id="right" style="width:95%; margin:auto; background:skyblue;">
        <div id="piechart" style="width:100%; padding:20px; padding-left: 40px; float:left; background:silver;">
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);
// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
  ['Space', 'Availability'],
  ['Available',${storage.available_storage}],
 ['Total',${storage.total_capacity}]
]);

  // Optional; add a title and set the width and height of the chart  
  var options = {'title':'Storage House Status'};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
  chart.draw(data, options);
}
</script>
        </div>
    </div>
 </div>   
 <%@include file="/WEB-INF/views/footer.jsp"%>	</body></html>
