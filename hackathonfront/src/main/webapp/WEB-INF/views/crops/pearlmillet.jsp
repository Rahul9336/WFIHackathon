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
		<img src="${url_img}/bajra.jpg" width="100%" height="200px;">
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
                    <li class="active"><a href="javascript:;">PEARL MILLET(BAJRA)</a></li>
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
   <div id="land"><H4>LAND PREPARATION/GENERAL INFO</h2><p>Bajra or pearl millets is grown for grain as well as for fodder purpose whereas Napier or elephant grass is mainly cultivated as forage crop. Napier-bajra is hybridization between bajra and elephant grass. This hybrid increases number of tillers thus yield, quality of forage also minimize risk of becoming weed in case of napier. After plantation, it give yield continuously upto 2-3 years..2 or 3 harrowing is followed by a ploughing is required to make the soil in the field to the fine tilth.Any weeds should be destroy during the field preparation to accommodate  preper sowing  and distribution of seed at appropriate depth.</p></div>
   <div id="varieties"><H4>SEED VARIETIES</h2><p>HHB-67(hybrid),HHB-94,HC-20.
NBH-149.</br>VBH-4 developed for Andhra Pradesh, Madhya Pradesh, Gujarat, Maharashtra are capable of producing 14% higher yield.</br>
ICM4-155 gave higher yield than the standard check and adopted for all growing tracts of India.Also H-306, NH-338 and hybrid like MP-204, MP205 have been identified.
</p></div>
   <div id="seed_sowing"><H4>SEED SOWING PROCESS</h2>Under irrigated conditions, optimum time for planting is from last week of February to May. For rainfed areas, sowing can be done from June to August.    <br>

<B>SPACING</B><br>For good growth and yield spacing of "90 cm x 40 cm" or "60 cm x 60 cm" is recommended<br>

<B>SOWING DEPTH</B><br>Stem cutting are sown at depth of 7-8 cm in furrow.

</br>
</p></div>
   <div id="irrigation"><H4>IRRIGATION TIME</H2><P>Apply irrigation during summer month or hot and dry months depending upon soil type and climate conditions.Bajra is grown rainfed and crop being drought resistant hardly needs any irrigation, however it is observed that the yield may be significantly increased by irrigating the crop at critical growth stages like maximum tillering, flowering and grain filling stage. Therefore light irrigations and efficient drainage is very essential for bajra production.
 </P></div>
   <div id="manure"><H4>MANURE AND FERTILIZATION</H2><P>Generally the crop requires low quantity of nutrients. But All India Co-ordinated Millet Improvement Project has proved that new plant types of bajra especially hybrids respond to very high doses of fertilizers.Under rainfed areas application of organic manures such as FYM or compost helps in increasing the crop yield at the rate of 150-200 quintals/ha 80 –100 kg N:40-50 kgP:40-50kgK is recommended dose for hybrid variety. Fertilizers are applied in split doses, half of nitrogen, full phosphorus and potash should be basal placed at the time of sowing . The organic manures must be applied 20 days before the sowing of the seeds for full decomposition. One fourth dose of nitrogen should be applied about 30 days and 60 days after sowing.At time of field preparation add well decomposed cow dung@20ton/acre.15 days after sowing, add Nitrogen@30kg/acre in form of Urea@70kg/acre. After each cutting, repeat this nitrogen dose. Apply Phosphorus@40kg/acre in form of SSP@240kg/acre in two equal splits, first dose in spring and second dose in monsoon.
</P></div>
   <div id="pest" class="table-responsive"><H4>PESTICIDES</H4><p>Stem bores and grasshoppers are serious pests of bajra controlled by two sprayings with 2 litres of Eldrin 20 c.c and grasshoppers may be controlled by dusting the crop with BHC 5 percent.
Downy mildew- for controlling this disease seed treatment with fungicide like Dithane Z-78 or M-45 @ 2.0kg/ha in 800-1000 lit. of water.
Smut- Treatment with Ceresan or Thirum @ 1-2 g/kg seeds is effective.
Ergot- Seed treatment with 20% common salt solution followed by washing with fresh water and then treating with Ceresan or Thirum @ 1-2 g/kg seeds is effective
   </p>
  </div>
   <div id="harvest"><H4>HARVESTING</H2><P>The crop is harvested when grains become hard enough and contain moisture. Two methods are adopted for harvesting the crop Cutting earhead<br>
i) from standing crop followed by cutting of remaining plants later <br>
ii) Cutting of entire plants by sticks and stalking the plants for five days in sun for obtaining grains. Grains are separated either by beating the earheads<br> with sticks or by trampling the earheads under bullock feet.<br>
The separated grains must be cleaned and dried in sun to bring about 12-14% moisture after which the grains may be bagged and stored in a moisture proof store.<br>
YIELD- Irrigated crop yields 30-35 quintals/ha, while unirrigated crop yield 12-15 quintals/ha<br>

</P></div>
</div></div></div>
    
    
    
</body></html>