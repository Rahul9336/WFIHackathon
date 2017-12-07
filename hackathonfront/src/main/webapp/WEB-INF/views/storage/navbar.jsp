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
					<li ><a href="/Frontend1/" style="color:white;" id="home">Home</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#" style="color:white;">Storage Detail<span class="caret"></span></a>      
							
						</li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#" style="color:white;">My Account<span class="caret"></span></a> 
					     
						<ul class="dropdown-menu">
								<li><a href="/Frontend1/bybrand/${brand.brand_name}">Crop Calendar</a></li>
						</ul></li>
					<li><a href="/Frontend1/cartdetail/" style="color:white;">Cart<span class="badge" style="color:white;">0</span></a></li>
				</ul>
				<form class="navbar-form navbar-left" action="/Frontend1/searchbox">
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
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="/Frontend1/signupflow" style="color:white;"><span class="glyphicon glyphicon-user"></span>
							Sign Up<span class="caret"></span></a>
							<ul class="dropdown-menu" >
          <li><a href="farmer_register.html" style="font-size:15px;border-bottom: 1px solid blue;" id="bg">FARMERS</a></li>
          <li><a href="manufacturer_register.html" style="font-size:15px;border-bottom: 1px solid blue;" id="bg">MANUFACTURERS/DISTRIBUTORS</a></li>
          <li><a href="retailer_register.html" style="font-size:15px;border-bottom: 1px solid blue;" id="bg">RETAILER</a></li>
          <li><a href="storage_register.html" style="font-size:15px;border-bottom: 1px solid blue;" id="bg">STORAGE</a></li>
        </ul>
							</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/Frontend1/login" style="color:white;"class="dropdown-toggle"
						data-toggle="dropdown"><span class="glyphicon glyphicon-user" ></span>
							Login<span class="caret"></span></a>
							<ul class="dropdown-menu" >
          <li><a href="farmer_register.html" style="font-size:15px;border-bottom: 1px solid blue;" id="bg">FARMERS</a></li>
          <li><a href="manufacturer_register.html" style="font-size:15px;border-bottom: 1px solid blue;" id="bg">MANUFACTURERS/DISTRIBUTORS</a></li>
          <li><a href="retailer_register.html" style="font-size:15px;border-bottom: 1px solid blue;" id="bg">RETAILER</a></li>
          <li><a href="storage_register.html" style="font-size:15px;border-bottom: 1px solid blue;" id="bg">STORAGE</a></li>
        </ul></li>
				</ul>
				<!-- <ul class="nav navbar-nav navbar-right">
				<c:url value="/j_spring_security_logout" var="logout"></c:url>
				<c:if test="${pageContext.request.userPrincipal.name!=null }">
					<li><a href="#"><span class="glyphicon glyphicon-send"></span>
							My Order</a></li><li><a href="${logout}"><span class="glyphicon glyphicon-user"></span>
							Logout</a></li></c:if>
				</ul> -->
			</div>
		</div>
		</nav>
</div>