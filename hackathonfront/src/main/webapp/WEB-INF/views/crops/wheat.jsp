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
 <div class="container" id="main" style="width:95%;">
		<%@include file="/WEB-INF/views/farmer/farmernavbar.jsp"%>
</div>
<div class="container" style="width:100%; height:100%;">
    <div style="width:100%; margin:auto;">
		
		<div style="width:72%; height:200px; float:right;">
		<img src="${url_img}/wheat.jpg" width="100%" height="200px;">
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
		
	<h3>CROP CALANDER<br />
        <small>FARMING PROCESS</small>
    </h3>
    <br />
    
    <div class="row">
        <div style="left:0px; width:25%; position:relative;">
            <nav class="nav-sidebar">
                <ul class="nav">
                    <li class="active"><a href="javascript:;">WHEAT</a></li>
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
   <div id="land"><h4>LAND PREPARATION/GENERAL INFO</h4><p>After harvest of previous crop, the field should be ploughed with disc or mould board plough. Field is usually prepared by giving one deep plough with iron plough followed by two or three times local plough and planking. Carried out plough in evening time and kept furrow open whole night to absorb some moisture from dew. Planking should be done after each plough early in the morning.The wheat crop requires a well-pulverized but compact seed bed for good and uniform germination. Three or four ploughings in the summer, repeated harrowing in the rainy season, followed by three or four cultivations and planking immediately before sowing produce a good, firm seed bed for the dry crop on alluvial soils.</p></div>
   <div id="varieties"><H4>SEED VARIETIES</h2><p>HD 2189,MALVIKA,5 PURNA,HD 2501 ETC.</p></div>
   <div id="seed_sowing"><H4>SEED SOWING PROCESS</h2><p><B>TIME OF SOWING</B><BR>
Wheat must be sown at the optimum time. Delayed sowing causes a gradual decline in the yield of wheat. The time of sowing is 25 October – November.

<BR><B>SPACING</B><BR>
For normal sown crop a spacing of 20 - 22.5 cm between rows is recommended. When sowing is delayed a closer spacing of 15-18 cm should be adopted.

<BR><B>SOWING DEPTH</B><BR>
The sowing depth should be 4-5 cm.

<BR><B>METHOD OF SOWING</B><BR>
1. Seed drill
2. Broadcasting method
3. Zero tillage drill
4. Rotavator</p></div>
   <div id="irrigation"><H4>IRRIGATION TIME</H2><P>The number of irrigations required will vary depending upon soil type, water availability etc. Crown root initiation and heading stages are the most critical to moisture stress. For dwarf high yielding varieties, give pre sowing irrigation. For heavy soils, four to six irrigations are required whereas for light soils 6-8 irrigations are necessary. Under limited water supply apply irrigation only at critical stage. When water is available for only one irrigation, then apply at crown root initiation stage. When two irrigations are available then apply at crown root initiation and flowering stage. Where three irrigations are possible, 1st irrigation should be given at CRI stage and 2nd at late jointing (boot) and 3rd at milking stage. CRI stage is most important stage for irrigation. It has been found that each week delay in 1st irrigation from CRI stage results in yield reduction of 83-125kg per acre.

First irrigation should be given 20-25 days after sowing. This is crown root initiation stage and moisture stress at this stage will lead to yield loss. At tillering stage within 40-45 days after sowing, apply second irrigation. Third irrigation within 60-65 DAS at late jointing stage. At flowering stage (within 80-85 days) give fourth irrigation. Fifth irrigation at dough stage (within 100-105 DAS).<BR>
The high yielding wheat varieties should be given five to six irrigations at their critical growth stages viz. Crown root initiation, tillering, jointing, flowering, milk and dough which come at 21-25 days after sowing (DAS), 45-60 DAS, 60-70 DAS, 90-95 DAS, 100-105 DAS and 120-125 DAS respectively. Off these irrigation at CRI stage is most important.  
 

 </P></div>
   <div id="manure"><H4>MANURE AND FERTILIZATION</H2><P>The fertilizer requirement of the irrigated wheat crop are as follows:<BR>
a.	With assured fertilizer supply:Nitrogen(N)8-120kg/ha <BR>
Phosphorus(P2O5)@40-60kg/haPotash (K2O) @ 40 kg/ha.<BR>
b.	Under fertilizer constraints: <BR>
N @ 60-80 kg/ha.<BR>
P2O5 @ 30-40 kg/ha.<BR>
K2O @ 20-25 kg/ha.<BR>
c.	Total quantity of Phosphorus and potash and half the quantity of nitrogen should be applied at the time of sowing. Remaining quantity of Nitrogen should be applied at the time of crown root initiation.For the late sown irrigated wheat crop, the NPK fertilizer dose recommended is:<BR> 
N – 60-80 kg/ha.<BR>
P2O5 – 30-40 kg/ha.<BR>
K2O – 20-25 kg/ha.<BR>
</P></div>
   <div id="pest" class="table-responsive"><H4>PESTICIDES</H2>          
  <table class="table">
    <thead>
      <tr>
        <th>SR NO.</th>
        <th>NAME OF DISEASES</th>
        <th>PREVENTIVE MEASURE</th>
        <th>NAME OF CHEMICAL</th>
        <th>RATE</th>
        
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>Smut</td>
        <td>1.Use of healthy seeds<br>
2. Roguing & burning of disease affected plants<br>
3. Use of resistant varieties<br>
4.Solar heat treatment
</td>
        <td>Seed dressing with
Vitavax/Benlate/G 696
</td>
        <td>2-2.5 g/kg of seed</td>
		
        
      </tr>
	  <tr>
        <td>2</td>
        <td>Rust</td>
        <td>1. Use ofresistant varieties<br>
2.Timely sowing

</td>
        <td>Zinc/Manganese
</td>
        <td>-</td>
		
        
      </tr>
    </tbody>
  </table>
  </div>
   <div id="harvest"><H4>HARVESTING</H2><P>The rain-fed crop reaches the harvest stage much earlier than the irrigated crop. The crop is harvested when the grains become hard and the straw becomes dry and brittle.The harvesting is mostly done by sickle. The crop is threshed by treading with cattle on the threshing-flour or by power driven thresher.Harvesting of high yielding dwarf variety is carried out when leaves and stem turn yellow and become fairly dry. To avoid loss in yield crop should be harvested before it is dead ripe. Timely harvesting is needed for optimum quality and consumer acceptance. The right stage for harvesting is when moisture in grain reaches to 25-30%. For manual harvesting use serrate edge sickles. Combines harvester are also available which can do harvesting, threshing and winnowing of wheat crop in single operation.</P></div>
</div></div></div>
    
  </body>
  </html>