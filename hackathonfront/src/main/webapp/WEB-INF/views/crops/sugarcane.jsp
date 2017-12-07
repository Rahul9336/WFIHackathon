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
		<img src="${url_img}/sugarcane.jpg" width="100%" height="200px;">
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
                    <li class="active"><a href="javascript:;">SUGARCANE</a></li>
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
   <div id="land"><H4>LAND PREPARATION/GENERAL INFO</h2><p>Give two ploughings to land. First ploughing should be given at depth of 20-25cm. Crush clods with suitable implements or machine. Well drained, deep, loamy soil with ground water table below 1.5-2m from the soil surface with adequate water holding capacity is ideal for sugarcane cultivation. It can tolerate considerable degree of acidity and alkalinity so it can be grown on soil, ranging from 5 to 8.5. If soil is low in pH (less than 5) add lime in soil and for high pH (more than 9.5) do gypsum application.</p></div>
   <div id="varieties"><H4>SEED VARIETIES</h2><p>CO – 419, CO – 740, CO – 7219 (Sanjivini), CO.M – 7125, CO – 7527, CO.M – 88121(7714), CO –8014 (Mahalaxmi), CO – 86032 (Nira), CO.C – 671, CO.C – 85061, CO - 8011, CO.M. – 7114, CO.S.I – 776 etc.
</p></div>
   <div id="seed_sowing"><H4>SEED PLANTING PROCESS</h2> Planting of sugarcane is done in three seasons that is suru- January-February, adsali - July-August and pre seasonal- October-November for planting generally ridges and furrows are prepared on 100-120cm spacing. For planting one hectare area 25-30 thousand three eye buded cane setts are required. The availability of good quality cane seed materials (setts) from a nursery crop of 10-11 months are essential for better germination and good growth. The treatments included were namely control, 0.05% Bavistin, 2.5% Urea, 2.5% KCI, 2.5% KCI+Urea, 1% Hadron. Two budded setts were used for planting after treating with above chemicals. Also hot water treatment is given to prevent seed borne diseases.</br>
<B>TIME OF SOWING</B>Under irrigated conditions, optimum time for planting is from last week of February to May. For rainfed areas, sowing can be done from June to August.    </br>
 
<B>SPACING</B><br>For good growth and yield spacing of "90 cm x 40 cm" or "60 cm x 60 cm" is recommended</br>

<B>SOWING DEPTH</B></br>Stem cutting are sown at depth of 7-8 cm in furrow.

</br>
</p></div>
   <div id="irrigation"><H4>IRRIGATION TIME</H2><P>Water requirement of sugarcane varies from 2000 to 2500 mm depending upon its duration, soil type and climatological factors. For sugarcane germination, tillering, grand growth and maturity are the critical stages for irrigation. During germination phase (1-35 days) there should be enough moisture in the soil for better germination but waterlogging is undesirable as it leads to rotting of setts. During this period irrigation can be scheduled at weekly intervals. But irrigation at 10 days interval during tillering stage (36-100 days) is sufficient. The formative and grand growth stages (101-270 days) are the critical stages for water demand. During this period irrigation can be practised at weekly intervals. At the maturity phase (271 days to harvest) fortnightly irrigation is enough. Irrigation will have to be stopped at 15 days prior to harvest.
 </P></div>
   <div id="manure"><H4>MANURE AND FERTILIZATION</H2><P>Adequate manuring is essential for sustained high yields. The general recommendation in most places is to apply half to two-thirds of the nitrogen in the form of bulky organic manures, such as farmyard manure, compost, green manure or tree leaves, and the remainder in the form of ammonium sulphate or oil-cakes or a combination of the two. For sugarcane fertilizer is recommended according to planting season and it is varied from growing tract to tract. </br>In general for suru sugarcane 250:115:115 for Adsali 400:170:170 and for pre seasonal 340:170:170 kg nitrogen, phosphorus and potash per hectare is recommended respectively. For ratooning 250:115:115kg nitrogen, phosphorus and potash per hectare is recommended. Soil testing after every three year is necessary to know actual need of fertilizer. Before sowing at time of last ploughing, add well decomposed cow dung@8ton or Vermicompost+ Ralligold@8-10kg or PSB@5-10kg per Acre. </br>
At time of sowing apply Urea@66kg per acre. At development stage, apply second dose of Urea@66kg at the time of second irrigation. Apply third dose of Urea@66kg at time of fourth irrigation.

In winter due to low temperature uptake of nutrient by crop become less and plant give yellow appearance. To recovered crop take spray of 19:19:19@100gm/15Ltr of water. In water scaricity situation spray of Urea+Potash@2.5kg/100Ltr is helpful for crop.

</P></div>
   <div id="pest" class="table-responsive"><H4>PESTICIDES</H4><p><b>Early shoot borer:</b> Attacked in germination stage upto internodes formations. Larva make holes in shoot below the ground level and then enter into it thus causes dead heart. It give offensive smell. It is mostly observed in light soil and in dry weather. Pest is active from March - June.</br>
Avoid late plantation. Apply Chlorpyriphos@1litres/acre with 100-150 litres of water over the setts placed on furrows with the help of rosecan. Remove dead heart infected plants. Give light irrigation and avoid drying of field.</br>
<b>Top Borer:</b> It attacks crops from tillering to maturity phase. Larvae makes tunnels into midribs causes white streak which later turns brown. If infestation occurs during tillering phase, the attacked shoots dies resulting in dead heart formation. If it attacks on grown up canes, apical growth is arrested resulting in bunchy top symptoms.</br>

To control do drenching of Rynaxypyr 20SC@60ml/acre in 100-150Ltr of water in between period of month end of April to first week of May. Maintain proper drainage in soil, as water logging increases top borer incidence. </br>
<b>Red Rot: </b>From top, third and fourth leaves show yellowing and drying. At later stage show discoloured lesion on rind. If split the diseased stalk show reddening of internal tissue. A sour and alcoholic smell emanates from the infected cane.  </br>

To control grow disease resistance varieties. Select disease free cane for sowing. Discard cane which show reddening at cut end and at the nodal region. Do crop rotation with paddy or with green manure crops. Avoid water logging field. If infestation is observed remove the crop and destroyed it away from field. Disinfect soil around the diseased clump with Carbendazim@0.1% solution.</br>
<b>Wilt:</b> Root borer, nematodes, termite, drought and water logging condition cause plant to wilt infection. Crown leaves turn yellow and loose turgor and withers. Boat shape cavities appears in pith region and crop get shrink. It reduces germination and reduces yield. </br>

Use disease free setts for planting. Do setts treatments with Carbendazim@0.2% + Boric acid@0.2% for 10min. Intercropping with onion, garlic and coriander will reduces the wilt disease.

   </p>
  </div>
   <div id="harvest"><H4>HARVESTING</H2><P>Harvesting of cane at right time is necessary for good yield and for high sugar recovery. Harvesting at over aged or under aged cane leads to loss in cane yield. Depending upon withering of leaves and cane juice, harvesting time can be decided. To know the right harvesting time some farmer used hand sugar refractometer is used. Sickles are used for harvesting. Stalks are cut at ground level so that the bottom sugar rich internodes are harvested which add to yield and sugar. De-topping at appropriate height. After harvesting quick disposal of the harvested cane to factory is necessary.Harvesting should be done after 50 days of sowing. After first cutting, when crop height becomes one meter, take second cutting. Do not allow to grow crop for more than 2 meter as it will leads in decreased in nutritional value of fodder. Such fodder is heavy for digestion.
</P></div>
</div></div></div>
    
    
    
</body></html>