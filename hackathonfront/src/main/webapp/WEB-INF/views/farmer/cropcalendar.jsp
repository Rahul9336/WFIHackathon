<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<s:url var="css" value="/resources/css/"></s:url>
<s:url var="url_img" value="/resources/Image/"></s:url>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	font-size: 22px;
}

a#bg:hover {
	background-color: #3B5999;
	color: red;
	font-weight: bold;
}
#bodystyle {
	background-image: url(${url_img}/bg.jpg);
}
</style>
<title>Crop Calendar</title>
</head>
<body>
<%@include file="/WEB-INF/views/farmer/farmernavbar.jsp"%>
		<!-- navigation bar ends -->
		<div style="padding: 5px; width: 100%; height: 250px;">

			<img src="${url_img}/cc1.jpg" width="22%" height="250" style="margin-left: 5%;" />
			<img src="${url_img}/cc2.jpg" width="22%" height="250" /> <img src="${url_img}/cc3.jpg"
				width="22%" height="250" /> <img src="${url_img}/cc4.jpg" width="22%"
				height="250" />
		</div>
		<hr>
<div id="bodystyle">
		<div class="container">


			<form:form action="/hackathonfront/farmer/cropcalendarshow"
				method="post" modelAttribute="crops">
				<c:if test="${empty cropslist}">
					<h6>${message}</h6>
				</c:if>
				<div class="form-group" style="width: 30%; float: left;">
					<h2>select state:</h2>
					<form:select class="form-control" id="sel1" path="state"
						name="state" onchange="findstate(this.value)">
						<form:option selected="selected" value="---Select State---">---Select State---</form:option>
						<form:option value="28">ANDHRA PRADESH                                    </form:option>
						<form:option value="12">ARUNACHAL PRADESH                                 </form:option>
						<form:option value="18">ASSAM                                             </form:option>
						<form:option value="BIHAR">BIHAR                                             </form:option>
						<form:option value="0">CENTRAL USER										</form:option>
						<form:option value="22">CHHATTISGARH                                      </form:option>
						<form:option value="30">GOA</form:option>
						<form:option value="24">GUJARAT                                           </form:option>
						<form:option value="HARYANA">HARYANA                                           </form:option>
						<form:option value="2">HIMACHAL PRADESH                                  </form:option>
						<form:option value="1">JAMMU AND KASHMIR</form:option>
						<form:option value="20">JHARKHAND                                         </form:option>
						<form:option value="29">KARNATAKA                                         </form:option>
						<form:option value="32">KERALA                                            </form:option>
						<form:option value="23">MADHYA PRADESH                                    </form:option>
						<form:option value="27">MAHARASHTRA                                       </form:option>
						<form:option value="14">MANIPUR                                           </form:option>
						<form:option value="17">MEGHALAYA                                         </form:option>
						<form:option value="15">MIZORAM                                           </form:option>
						<form:option value="13">NAGALAND                                          </form:option>
						<form:option value="7">NEW DELHI (Central Level )                        </form:option>
						<form:option value="21">ODISHA                                           </form:option>
						<form:option value="3">PUNJAB                                            </form:option>
						<form:option value="8">RAJASTHAN                                         </form:option>
						<form:option value="11">SIKKIM                                            </form:option>
						<form:option value="33">TAMIL NADU                                        </form:option>
						<form:option value="36">TELANGANA                                        </form:option>
						<form:option value="16">TRIPURA                                          </form:option>
						<form:option value="9">UTTAR PRADESH                                     </form:option>
						<form:option value="5">UTTARAKHAND                                       </form:option>
						<form:option value="19">WEST BENGAL                                      </form:option>
					</form:select>
				</div>

				<div class="form-group"
					style="width: 30%; float: left; margin-left: 4%;">
					<h2>select crop:</h2>
					<form:select path="name" class="form-control" id="sel1">
						<c:if test="${!empty cropslist}">
							<c:forEach var="crop" items="${cropslist}">
								<form:option value="${crop.name}">${crop.name}</form:option>
							</c:forEach>
						</c:if>
					</form:select>
				</div>

				<div class="form-group"
					style="width: 30%; float: left; margin-left: 4%;">
					<br>
					<br>
					<br> <input type="submit" class="btn-success" id="sel1"
						value="Get Shedule" />
				</div>
			</form:form>
		</div>

		<div id="GridViewContainer" class="GridViewContainer"
			style="width: 100%; height: 300px;">

			<div>
			<c:if test="${!empty cropslist}">
				<table cellspacing="0" cellpadding="4" align="Center" rules="all"
					border="1" id="GridView1"
					style="color: #333333; font-family: Verdana; width: 90%; border-collapse: collapse;">
					<tr class="FrozenHeader" align="left"
						style="color: White; background-color: #990000; border-width: 2px; border-style: Groove; font-weight: bold;">
						<th scope="col"><s:message code="State" text="State"></s:message></th>
						<th scope="col"><s:message code="Crop" text="Crop"></s:message></th>
						<th scope="col"><s:message code="Season" text="Season"></s:message></th>
						<th scope="col"><s:message code="From" text="From"></s:message></th>
						<th scope="col"><s:message code="To" text="To"></s:message></th>
						<th scope="col"><s:message code="Period" text="Period"></s:message></th>
						<th scope="col"><s:message code="Start_Crop_calender" text="Start_crop_calender"></s:message></th>
					</tr>
   					 <c:forEach var="crop" items="${cropslist}">
					<tr align="left" valign="middle"
						style="color: #333333; background-color: #FFFBD6;">
						<td rowspan="4">${crop.state}</td>
						<td rowspan="4">${crop.name}</td>
						<td>${crop.season}</td>
						<td>${crop.startMonth}</td>
						<td>${crop.endMonth}</td>
						<td>Slowing</td>
						<td><a href="/hackathonfront/farmer/startcropcalendar/${crop.name}"><button class="btn btn-primary" style="margin-left:5px;margin-bottom:2px"><s:message code="Click_here" text="Click_here"></s:message></button></a></td>
					</tr>
					</c:forEach>
					
				</table></c:if>
			</div>
		</div>

</div>
<%@include file="/WEB-INF/views/footer.jsp"%>
			<script type="text/javascript">
		function findstate(state) {
			if (state != '') {
				window.location.href = '/hackathonfront/farmer/cropcalendarstate/'
						+ state;
			}
		}
	</script>
</body>
</html>