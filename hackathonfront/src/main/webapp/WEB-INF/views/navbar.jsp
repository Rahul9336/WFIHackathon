		<div class="container" style="margin:auto; width:100%; background:#EEC84F; height:170px;">
<a href="/hackathonfront/"><img src="${url_img }/logo.PNG" style=" width:25%; height:150px;"/></a>
<img src="${url_img }/banner.png" style=" width:75%; height:100%; float:right; "/>
</div>
		<div class="container"  style="width: 100%;margin:auto;">
		<nav class="navbar navbar-default"
			style="background-color: #3B5999; margin-top: 10px; margin-bottom: 5px; text-color: white;">
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
						<li><a href="/hackathonfront/" style="color: white;" id="home"><s:message code="Home" text="Home"></s:message></a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#" style="color: white;"><s:message code="Storage" text="Storage"></s:message><span
								class="caret"></span></a>      
							<ul class="dropdown-menu">
								<li><a href="#"><s:message code="Booking_storage" text="Booking_storage"></s:message></a></li>
							</ul></li>
						<li><a href="/hackathonfront/cartdetail/" style="color: white;"><s:message code="cart" text="Cart"></s:message><span
								class="badge" style="color: white;">${cart}</span></a></li>
					</ul>
					<form class="navbar-form navbar-left" action="#">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="<s:message code="search" text="search"></s:message>"
								id="searchbox" name="search">
							<div class="input-group-btn">
								<button class="btn btn-default" type="submit" id="searchbutton">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>
						</div>
					</form>
					<c:if test="${pageContext.request.userPrincipal.name==null }">
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#"
								style="color: white;"><span class="glyphicon glyphicon-user"></span>
									<s:message code="signup" text="Sign Up"></s:message><span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="/hackathonfront/signup"
										style="font-size: 15px; border-bottom: 1px solid blue;"
										id="bg"><s:message code="Farmer" text="Farmer"></s:message></a></li>
										<li><a href="/hackathonfront/storagesignup"
										style="font-size: 15px; border-bottom: 1px solid blue;"
										id="bg"><s:message code="Storage" text="Storage"></s:message></a></li>
									<li><a href="#"
										style="font-size: 15px; border-bottom: 1px solid blue;"
										id="bg"><s:message code="Manufacturer_Distributor" text="Manufacturer/Distributor"></s:message></a></li>
									<li><a href="#"
										style="font-size: 15px; border-bottom: 1px solid blue;"
										id="bg"><s:message code="Retailer" text="Retailer"></s:message></a></li>
										<li><a href="#"
										style="font-size: 15px; border-bottom: 1px solid blue;"
										id="bg">NGO Register</a></li>
																	</ul></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li><a href="#" style="color: white;"
								class="dropdown-toggle" data-toggle="dropdown"><span
									class="glyphicon glyphicon-user"></span> <s:message code="login" text="Login"></s:message><span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="/hackathonfront/farmer/mainpanel"
										style="font-size: 15px; border-bottom: 1px solid blue;"
										id="bg"><s:message code="Farmer" text="Farmer"></s:message></a></li>
													<li><a href="/hackathonfront/storage/mainpanel"
										style="font-size: 15px; border-bottom: 1px solid blue;"
										id="bg"><s:message code="storage_vendor" text="Storage Vendor"></s:message></a></li>
									<li><a href="#"
										style="font-size: 15px; border-bottom: 1px solid blue;"
										id="bg"><s:message code="Manufacturer_Distributor" text="Manufacturer/Distributor"></s:message></a></li>
									<li><a href="#"
										style="font-size: 15px; border-bottom: 1px solid blue;"
										id="bg"><s:message code="Retailer" text="Retailer"></s:message></a></li>
										<li><a href="#"
										style="font-size: 15px; border-bottom: 1px solid blue;"
										id="bg">NGO</a></li>
								</ul></li>
						</ul>
					</c:if>
					<ul class="nav navbar-nav navbar-right">
						<c:url value="/j_spring_security_logout" var="logout"></c:url>
						<c:if test="${pageContext.request.userPrincipal.name!=null }">
							<li><a href="#" style="color: white;"><span class="glyphicon glyphicon-send"></span>
									<s:message code="My_order" text="My_order"></s:message></a></li>
							<li><a href="${logout}" style="color: white;"><span
									class="glyphicon glyphicon-user"></span> <s:message code="Logout" text="Logout"></s:message></a></li>
						</c:if>
					</ul>
				</div>
			</div>
		</nav>
	</div>