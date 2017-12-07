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
	font-size: 17px;
}

a#bg:hover {
	background-color: #3B5999;
	color: red;
	font-weight: bold;
}

.bar {
	background: grey;
}

.bar:hover {
	border: 2px solid black;
}

h4 {
	background-color: #003300;
	color: white;
}

a {
	color: white;
	font-size: 20px;
}

temp:onclick {
	top: opx;
}

.nav-sidebar {
	width: 100%;
	padding: 8px 0;
	margin: 0;
	border-right: 3px solid #ddd;
}

.nav-sidebar a {
	color: #333;
	-webkit-transition: all 0.08s linear;
	-moz-transition: all 0.08s linear;
	-o-transition: all 0.08s linear;
	transition: all 0.08s linear;
	-webkit-border-radius: 4px 0 0 4px;
	-moz-border-radius: 4px 0 0 4px;
	border-radius: 4px 0 0 4px;
}

.nav-sidebar .active a {
	cursor: default;
	background-color: #428bca;
	color: #fff;
	text-shadow: 1px 1px 1px #666;
}

.nav-sidebar .active a:hover {
	background-color: #428bca;
}

.nav-sidebar .text-overflow a, .nav-sidebar .text-overflow .media-body {
	white-space: nowrap;
	overflow: hidden;
	-o-text-overflow: ellipsis;
	text-overflow: ellipsis;
}

/* Right-aligned sidebar */
.nav-sidebar.pull-right {
	border-right:;
	border-left: 1px solid #ddd;
}

.nav-sidebar.pull-right a {
	-webkit-border-radius: 0 4px 4px 0;
	-moz-border-radius: 0 4px 4px 0;
	border-radius: 0 4px 4px 0;
}
</style>
</head>
<body>
	<div class="container" id="main" style="width: 95%;">
		<%@include file="/WEB-INF/views/farmer/farmernavbar.jsp"%>
	</div>
	<div class="container" style="width: 100%; height: 100%;">
		<div style="width: 100%; margin: auto;">

			<div style="width: 72%; height: 200px; float: right;">
				<img src="${url_img}/rice.jpg" width="100%" height="200px;">
			</div>
			<div id="temp" style="width: 104%; height: 100%;; position: fixed;">
				<!-- <div style="width:25%; height:60px; float:left; background-color:green;"><h1><a href="#top">WHEAT</a></h1></div>
		<div class="bar" style="width:25%; height:60px; "><a href="#land">LAND PREPARATION</a></div>
		<div class="bar" style="width:25%; height:60px; "><a href="#varieties"></a></div>
		<div class="bar" style="width:25%; height:60px; "><a href="#varieties">SEED VARIETIES</a></div>
		<div class="bar" style="width:25%; height:60px; "><a href="#seed_sowing">SEED SOWING PROCESS</a></div>
		<div class="bar" style="width:25%; height:60px; "><a href="#irrigation">IRRIGATION TIME</a></div>
		<div class="bar" style="width:25%; height:60px; "><a href="#manure">MANURE AND FERTILIZATION</a></div>
		<div class="bar" style="width:25%; height:60px; "><a href="#pest">PESTICIDES</a></div>
		<div class="bar" style="width:25%; height:60px; "><a href="#harvest">HARVESTING METHOD</a> -->
				<br />

				<div class="row">
					<div style="left: 0px; width: 25%; position: relative;">
						<nav class="nav-sidebar">
							<ul class="nav">
								<li class="active"><a href="javascript:;">RICE</a></li>
								<li><a href="#land">LAND PREPARATION</a></li>
								<li><a href="#varieties">SEED VARIETIES</a></li>
								<li><a href="#seed_sowing">SEED SOWING PROCESS</a></li>
								<li><a href="#irrigation">IRRIGATION TIME</a></li>
								<li><a href="#manure">MANURE AND FERTILIZATION</a></li>
								<li><a href="#pest">PESTICIDES</a></li>
								<li><a href="#harvest">HARVESTING</a></li>
								<li class="nav-divider"></li>
								<li><a href="javascript:;"><i
										class="glyphicon glyphicon-off"></i></a></li>
							</ul>
						</nav>
					</div>
				</div>



			</div>
			<div style="width: 72%; height: 300px; float: right;">
				<div id="land">
					<H4>
						LAND PREPARATION/GENERAL INFO
						</h2>
						<p>Rice is the most important food crop of India covering
							about one-fourth of the total cropped area and providing food to
							about half of the Indian population. Punjab has made tremendous
							progress in rice productivity and production during the past 45
							years. Due to use of high yielding varieties and new technology
							Punjab has given the title of "Rice Bowl of India".At dry field
							condition,apply glyphosate to kill weeds and better field
							hygiene.Irrigate the field 2-3 days after glyphosate
							application.Maintain standing water at 2-3 cm level for about 3-7
							days.Plow or rotovate the field to incorporate stubbles and
							hasten decomposition.In wet preparation,my farm has access to
							irrigation and farm has a loamy to clay type of soil,farmers have
							equipment for prim,ary tillage,secondary tillage and
							levelling.Mud and water are thoroughly mixed .</p>
				</div>
				<div id="varieties">
					<H4>
						SEED VARIETIES
						</h2>
						<p>27P31,PAC801,GK5022 etc.</p>
				</div>
				<div id="seed_sowing">
					<H4>
						SEED SOWING PROCESS
						</h2>
						<p>
							<B>Transplanting Process</B><BR> For this ,firstly we
							prepare nursery ,different type of nurseries are the wet bed
							nursery,the dry bed nursery etc.Rice crop can either be seeded or
							transplanting.In directing seeding,seeds are shown directly in
							the field.while in transplanting,seedlings are first raised in
							seedbeds before they are planted in the field.The sowing season
							is different in all india region.In north india,its sowing time
							of rice autumn ismay-september and its harvesting time is
							October-january.Direct seeding requires 60-80kg of seeds per
							hac,while transplanting only requires 40kg per hac,at plants per
							hills. <BR>
							<B>SPACING</B><BR> For normal sown crop a spacing of 20 -
							22.5 cm between rows is recommended. When sowing is delayed a
							closer spacing of 15-18 cm should be adopted. <BR>
							<B>SOWING DEPTH</B><BR> The seedlings should be transplanted
							at 2 to 3 cm depth. Shallow planting gives better yields. <BR>
							<B>METHOD OF SOWING</B><BR> Broadcasting Method
						</p>
				</div>
				<div id="irrigation">
					<H4>
						IRRIGATION TIME
						</H2>
						<P>After transplanting,water level should be around 3cm
							initially and gradually increases to 5-10cm with increasing plant
							height and remain there until the field is drained7-10 days
							before the harvest.Keep the water level 5cm at all time from
							heading to the end of flowering.Keep field flooded up to two
							weeks after transplanting. When all water gets infiltrated two
							day after apply irrigation in field. Depth of standing water
							should not exceed 10 cm. While doing intercultural and weeding
							operation, drain out excess water from field and irrigate field
							after completion of this operations. Stop irrigation about a
							fortnight before maturity to facilitate easy harvesting.</P>
				</div>
				<div id="manure">
					<H4>
						MANURE AND FERTILIZATION
						</H2>
						<P>
							For paddy apply N:P:K@50:12:12 kg/acre in form of Urea @110
							kg/acre, SSP@75 kg/acre and MOP@20 kg/acre. Before fertilizer
							application, carried out soil test and apply fertilizer on the
							basis of soil test result. Apply P and K dose if soil test show
							deficiency of it. If DAP is to be used, apply Urea@100 kg/acre,
							DAP@27 kg/acre and MOP@20 kg/acre. Apply 1/3rd dose of Nitrogen
							and whole dose of P and K before last puddling.<br> Apply
							second dose three week after transplanting and three weeks after
							2nd dose, apply remaining dose of Nitrogen. Use neem coated Urea
							as it will increased uptake of N. Apply Zinc sulphate
							heptahydrate@25 kg or zinc sulphate monohydrate@16 kg/acre at
							puddling to overcome zinc deficiency. Due to water scarcity,
							young leaves give yellow or yellow white appearance about three
							week after transplanting. Apply irrigation immediately also spray
							with ferrous sulphate@1 kg/100 ltr water per acre, two-three time
							with weekly intervals.Apply one tonne of fully decomposed of
							compost to 20 cents nursery and spread the manure uniformly on
							dry soil.DAP is recommended when the seedling are to be pulled
							out in 20-25 days after sowing in less fertile nursery soil.If
							seedling are to be pulled out after 25 days,application of DAP is
							to be done 10 days prior to be pulling out.For clayey soils where
							root snapping is a problem,4kg of gypsum and 1kg of DAP/cent can
							be apply at 10 days after sowing.
						</P>
				</div>
				<div id="pest" class="table-responsive">
					<H4>
						PESTICIDES
						</H2>
						<p>
							Farmer lose an estimated avg of 37% of their crop to pests and
							diseses every year.<br> • Spray after observing initial
							infection of the disease,<br> • Carbendazim 50WP @ 500g/ha
							(or)<br> • Tricyclozole 75 WP @ 500g/ha (or)<br> •
							Metominostrobin 20 SC @ 500ml/ha (or) 47<br> • Azoxystrobin
							25 SC @ 500 ml/ha<br>
						</p>
				</div>
				<div id="harvest">
					<H4>
						HARVESTING
						</H2>
						<P>Harvesting is the process of collecting the mature rice
							crop from the field. Harvesting at the right time and in the
							right way maximizes grain yield and minimizes grain losses and
							quality deterioration. The post-harvesting operations of paddy
							crop and the storage of grains are as much important as producing
							the crop, because post-harvesting technology affects the quantity
							and quality of paddy and the finished product, that is, rice.
							Generally, losses in paddy and rice during the post-harvest
							operations amount to about 10% of field production. It is,
							therefore, necessary to adopt proper technology after harvesting
							the crop for the improvement of the quantity and quality of paddy
							and rice. Because of high labour requirements of manual
							threshing, many countries threshing of paddy is now mechanized by
							use of small stationary machine called as threshers. Stationary
							threshing is generally done in the field, or near or at the field
							side. 2. Many stationary threshers for paddy have peg-toothed
							threshing drums, however threshers fitted with wire-loop or
							rasp-bars are used as well. Most threshers are of the feed-in
							type (e.g. entire crop is fed through the thresher) which ensure
							high throughput. 4. Hold-on threshers (only panicle is fed into
							the machine) generally have a lower capacity than feed-in
							threshers and are primarily used in areas where rice straw is
							bundled and stored for later use. 5.Large stationary thresher are
							fitted with additional cleaning devices such as an oscillating
							screen, centrifugal blower, and wind board, and threshed grain
							can be handled without further cleaning. 6. In many regions,
							machine threshers are owned by individuals who offer custom
							operations to farmers. This requires that farmers schedule
							harvesting dates depending on the availability of the thresher.</P>
				</div>
			</div>
		</div>
	</div>



</body>
</html>