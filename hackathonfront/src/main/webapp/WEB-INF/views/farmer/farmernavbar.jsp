<div style="margin:auto; width:100%; background:#EEC84F; height:170px; border:3px groove black;">
<a href="/hackathonfront/farmer/mainpanel"><img src="${url_img }/logo.PNG" style=" width:25%; height:150px;"/></a>
<img src="${url_img }/banner.png" style=" width:75%; height:100%; float:right; "/>
</div>
<div>
	<div class="container" id="main"
		style="width: 100%; padding-bottom: 0px;">
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
						<li><a href="/hackathonfront/farmer/mainpanel" style="color: white;"
							id="home"><i class="glyphicon glyphicon-home"></i> <s:message
									code="Home" text="Home"></s:message></a></li>
						<li class="dropdown"><a
							href="/hackathonfront/farmer/cropcalendar" style="color: white;"><i
								class="glyphicon glyphicon-tree-deciduous"></i> <s:message
									code="Farming_process" text="Farming process"></s:message> </a> 
							     </li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#" style="color: white;"><i
								class="glyphicon glyphicon-briefcase"></i> <s:message
									code="Storage" text="Storage"></s:message><span class="caret"></span></a>      
							<ul class="dropdown-menu">
								<li><a href="/hackathonfront/farmer/bookstorage"
									style="font-size: 15px; border-bottom: 1px solid blue;" id="bg"><s:message
											code="Booking_storage" text="Booking storage"></s:message></a></li>

							</ul></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#" style="color: white;"><i
								class="glyphicon  glyphicon-grain"></i> <s:message code="Emandi"
									text="Emandi"></s:message><span class="caret"></span></a>      
							<ul class="dropdown-menu">
								<li><a href="/hackathonfront/farmer/emandi"
									style="font-size: 15px; border-bottom: 1px solid blue;" id="bg"><i
										class="fa fa-money"></i> <s:message code="Crop_prices"
											text="Crop Prices"></s:message></a></li>
											<li><a href="/hackathonfront/farmer/cropdetail"
									style="font-size: 15px; border-bottom: 1px solid blue;" id="bg"><i
										class="fa fa-money"></i> <s:message code="Crop_detail"
											text="Crop Detail"></s:message></a></li>
											<li><a href="/hackathonfront/admin/product"
									style="font-size: 15px; border-bottom: 1px solid blue;" id="bg"><i
										class="fa fa-money"></i> <s:message code="Sell_crop"
											text="Sell Your Crop"></s:message></a></li>
							</ul></li>

						<li><a href="/hackathonfront/farmer/videos"
							style="color: white;"><i class="glyphicon glyphicon-video"></i>
								<s:message code="Crop_video" text="Crop video"></s:message></a></li>
						<li><a href="/hackathonfront/cartdetail/" style="color: white;"><s:message
									code="cart" text="Cart"></s:message><span class="badge"
								style="color: white;">0</span></a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<c:url value="/j_spring_security_logout" var="logout"></c:url>
						<c:if test="${pageContext.request.userPrincipal.name!=null }">
							<li><a href="/hackathonfront/farmer/myaccount" style="color: white;"><span
									class="glyphicon glyphicon-send" style="color: white;"></span>
									<s:message code="My_account" text="My_account"></s:message></a></li>
							<li><a href="/hackathonfront/farmer/notification"
								style="color: white;"><span
									class="glyphicon glyphicon-bell badge" style="color: white;">${count}</span>
							</a></li>
							<li><a href="${logout}" style="color: white;"><span
									class="glyphicon glyphicon-user" style="color: white;"></span>
									<s:message code="Logout" text="Logout"></s:message></a></li>
						</c:if>
					</ul>
				</div>
			</div>
		</nav>
	</div>
</div>