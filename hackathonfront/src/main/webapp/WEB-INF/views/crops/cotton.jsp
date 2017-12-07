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
  <style>
  .bar{
  background:grey;
  
  }
  .bar:hover{
  border:2px solid black;}
  h4
  {
  background-color:#003300;
  color:white;
  }
  a
  {
  color:white;
  font-size:20px;
  }
  temp:onclick
  {
  top:opx;
  }
  .nav-sidebar { 
    width: 100%;
    padding: 8px 0; 
	margin:0;
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
.nav-sidebar .text-overflow a,
.nav-sidebar .text-overflow .media-body {
    white-space: nowrap;
    overflow: hidden;
    -o-text-overflow: ellipsis;
    text-overflow: ellipsis; 
}

/* Right-aligned sidebar */
.nav-sidebar.pull-right { 
    border-right: ; 
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
   <div>
    <!--navigation bar starts -->
    <!DOCTYPE html>
<html lang="en">
<head>
  <title>ANN RAKSHAK</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
	a{
	font-size:20px;
	}
	a:hover{
	font-size:22px;
	}
	a#bg:hover{
	background-color: #3B5999;
	color:red;
	font-weight:bold;
	}
	.bar{
  background:grey;
  
  }
  .bar:hover{
  border:2px solid black;}
  h4
  {
  background-color:#003300;
  color:white;
  }
  a
  {
  color:white;
  font-size:20px;
  }
  temp:onclick
  {
  top:opx;
  }
  .nav-sidebar { 
    width: 100%;
    padding: 8px 0; 
	margin:0;
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
.nav-sidebar .text-overflow a,
.nav-sidebar .text-overflow .media-body {
    white-space: nowrap;
    overflow: hidden;
    -o-text-overflow: ellipsis;
    text-overflow: ellipsis; 
}

/* Right-aligned sidebar */
.nav-sidebar.pull-right { 
    border-right: ; 
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

 <div class="container" id="main" style="width:95%;">
		<%@include file="/WEB-INF/views/farmer/farmernavbar.jsp"%>
</div>
<div class="container" style="width:100%; height:100%;">
    <div style="width:100%; margin:auto;">
		
		<div style="width:72%; height:200px; float:right;">
		<img src="${url_img}/cotton.jpg" width="100%" height="200px;">
		</div>
<div id="temp" style="width:104%; height:100%;; position:fixed;">
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
        <div style="left:0px; width:25%; position:relative;">
            <nav class="nav-sidebar">
                <ul class="nav">
                    <li class="active"><a href="javascript:;">COTTON</a></li>
                    <li><a href="#land">LAND PREPARATION</a></li>
                    <li><a href="#varieties">SEED VARIETIES</a></li>
                    <li><a href="#seed_sowing">SEED SOWING PROCESS</a></li>
					<li><a href="#irrigation">IRRIGATION TIME</a></li>
			        <li><a href="#manure">MANURE AND FERTILIZATION</a></li>
					<li><a href="#pest">PESTICIDES</a></li>
				    <li><a href="#harvest">HARVESTING</a></li>
                    <li class="nav-divider"></li>
                    <li><a href="javascript:;"><i class="glyphicon glyphicon-off"></i></a></li>
                </ul>
            </nav>
        </div>
       </div>
	   
		
		
		</div>
<div style="width:72%; height:300px; float:right;">		
   <div id="land"><H4>LAND PREPARATION/GENERAL INFO</h2><p>Cotton is sown on ridges and furrows. For irrigated cotton the land is given a deep ploughing followed by two harrowings. Ridges and furrows having different spacing for irrigated and rainfed cotton. For irrigated cotton shallow ridges on 90cm spacing should be prepared which helps in irrigation. According to slope of land, length of ridges should be 6-9m.Cotton is one of the most important fibre and cash crop of India as well as of entire world. It plays a dominant role in the industrial and agricultural economy of the country. It provides the basic raw material to cotton textile industry. In India it provides direct livelihood to 6 million farmers and about 40-50 million people are employed in cotton trade and its processing. Cotton is a water thirsty crop and around 6% of the water for irrigation in is used for its cultivation. In India, it is grown on a large scale in Maharashtra, Gujarat, Karnataka, Madhya Pradesh, Punjab, Rajasthan, Haryana, Tamil Nadu and Uttar Pradesh. Gujarat is the largest producer of cotton followed by Maharashtra and Punjab. It is vital kharif crop of Punjab. The average lint yield of the State is around 697 kg per hectare.</p></div>
   <div id="varieties"><H4>SEED VARIETIES</h2><p>H 777,H 655c,F-414, L.H.1556, Ganganagar agethi<br> H-777, R.S.875, TURAB, H.Y.10, L.R.A.-5166 etc.</p></div>
   <div id="seed_sowing"><H4>SEED SOWING PROCESS</h2><p>Optimum time for sowing is in April - mid May. For Management of Mealybug, sow Bajra, Arhar, Maize and Jowar in the fields surrounding cotton crop. Avoid growing tur, moong and bhendi in and around cotton field as these harbour insect pests. In Punjab cotton wheat rotation is common but rotation with berseem and clusterbean has been found to have beneficial effect on the succeeding cotton crop.

<B>SPACING</B>For American cotton use spacing of 75x15 cm under irrigated condition while under rain fed condition use spacing of 60x30 cm. For desi cotton use spacing of 60x30 cm for rain fed as well as for irrigated condition.

<B>SOWING DEPTH</B>Sowing should be done at depth of 5 cm.

 
<BR><B>METHOD OF SOWING</B>For sowing use seed drill for desi cotton while dibbling of seed is done in case of hybrids and Bt cotton. Square planting is beneficial compared to rectangular planting. Few gaps arise due to failure of seed germination and mortality of seedling. To overcome this gap filling is necessary. Two weeks after sowing the weak/diseased/damaged seedlings should be removed by keeping a healthy seedling/hill.
</p></div>
   <div id="irrigation"><H4>IRRIGATION TIME</H2><P>Cotton required four to six irrigation depending upon rainfall intensity. Give first Irrigation to the crop four to six week after sowing. And remaining irrigation at interval of two or three weeks. Never let water to stand in younger plants. Do not let the crop to suffer for want of water during flowering and fruiting to avoid the shedding of flowers and bolls. Give last irrigation to the crop when 33% of bolls are opened and after that there is no need of more water through irrigation.<br>
   Whenever salty water has to use for irrigation, the water should be get tested from authenticated laboratory and as per their recommendation, Gypsum or Pyrite may be added. In Drought Condition, alternate furrow irrigation and use of micro irrigation system (wherever feasible) will be of immense help in saving irrigation water.

 </P></div>
   <div id="manure"><H4>MANURE AND FERTILIZATION</H2><P>The fertilizer required for irrigated cotton is 100:50:50kg nitrogen, phosphorus and potash per hectare is recommended. The application of nitrogen is given by ring method. 20% nitrogen and whole phosphorus and potash should be given at the time of sowing and 40% nitrogen at the time of square formation and final 40% nitrogen at the time of flowering. In case of rainfed cotton fertilizer dose for desi variety is 50:50:25kg nitrogen, phosphorus and potash per hectare. For hybrid varieties fertilizer dose is 80:40:40 nitrogen, phosphorus and potash per hectare. 1/4 nitrogen and whole phosphorus and potash is given at the time of sowing while 1/2 nitrogen is given 4 weeks after sowing and remaining 1/4 nitrogen is given through spraying.
</P></div>
   <div id="pest" class="table-responsive"><H4>PESTICIDES</H2>          
  <p>DISEASES-<b>ANTHRACNOSE</b><br>
infection on the seedlings and bolls is serious; large red spots appear on the seedlings; later, they girdle the stem and kill it.<br>
CONTROL<br>
Treat the seed with any organo-mercurial (Agrosan GN, Ceresan) @ 2-2.5 g/kg;<br> spray the crop with 1% Bordeaux mixture.<br>
 
<b>Leaf spot</b><br>
Spots are light brown, circular and numerous, the centre of the spot later turns ashy and falls off, leaving a hole; rusty brown spots of irregular size and shape are observed.<br>
•	Control<br>
Spray the crop with 0.3% fixed copper or 0.2% Zineb.<br>
 
<b>Powdery mildew</b><br>
White powdery patches appear on the undersurface of the leaves; the corresponding upper portions just above patches become pale and brown.<br>
•	Control<br>
Dust the crop with finely powdered sulphur @ 15 kg per hectare.<br>
At the time of square formation and 30 days after square formation spraying of 2% diammonium phosphate should be carried out for better boll development. For 1 hectare of area 8 kg DAP is used and solution is prepared in 400 litres of water and sprayed.<br>
</p>
  </div>
   <div id="harvest"><H4>HARVESTING</H2><P>Picking of bolls should be done when bolls are fully mature. Avoid picking of wet bolls, pick cotton free from dry leaves trash. Damaged boll should be picked separately and discarded for seed purpose. The first and last picking are usually of low quality and should not be mixed with rest of the produce to fetch better price. Pick boll should be clean and dry to get good price. Do picking when there is no dew. Picking should be regularly done after every 7-8 days to avoid losses incurred due to fall of the cotton on ground. Delay in picking leads to falling of cotton on the ground which results in deterioration of quality. Harvest the American cotton at the interval of 15-20days and Desi cotton at 8-10 days interval. The picked kapas should be properly cleaned before taking to the market for sale.</P></div>
</div></div></div>
    
    
    
</body></html>