<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<s:url var="css" value="/resources/css/"></s:url>
<s:url value="/resources/js" var="js"></s:url>
<s:url var="url_img" value="/resources/Image/"></s:url>
<s:url var="product_img" value="/resources/productimages"></s:url>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${css}/styles.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Cart Detail</title>
</head>
<body>
	<%@include file="/WEB-INF/views/navbar.jsp"%>
			<div class="row" style="background-color: rgb(255, 190, 119)">
			<div class="col-sm-1"></div>
			<c:if test="${!empty detail}">
				<div class="col-sm-10">
					<div class="w3-responsive">
					<h4>${quantity}</h4>
						<table class="w3-table-all">
							<tr class="w3-striped w3-bordered">
							<th>Remove</th>
							<th style="padding-left: 10px">Image</th>
								<th style="padding-left: 10px">Name</th>
								<th style="padding-left: 10px">Price/Kg</th>
								<th style="padding-left: 10px">Quantity(Kg)</th>
								<th style="padding-left: 10px">Update</th>
							</tr>
							<c:forEach var="pro" items="${detail}">
								<tr>
								<td><a href="/Frontend1/cartitems/remove/${pro.getCartItem_Id()}"><button class="btn btn-primary"><span class="glyphicon glyphicon-remove"></span></button></a></td>
									<td style="padding-left: 10px;padding-top:10px"><img
										src="${product_img}/${pro.product.name}.jpg"
										alt="productimage" width="100px" height="100px"></td>
									<td style="padding-left: 15px;"><a href="/hackathonfront/productdetail/${pro.product.product_id}">${pro.product.name}</a></td>
									<td style="padding-left: 15px">${pro.product.price}</td>
										<form action="/hackathonfront/cartitems/update/${pro.getCartItem_Id()}">
									<td style="padding-left: 15px"><input type="text" name="qty" value="${pro.getSell_quantity()}"></td>
									<td style="padding-left: 15px"><button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-ok"></span></button></td>
								</form>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</c:if>
			<c:if test="${!empty detail}">
			<div class="col-sm-1"></div>
			<br> <a href="/Frontend1/" style=" display: inline-block;"><br><button 
					class="btn btn-primary"style=" margin-left:100px">Back To Home</button></a>
					<a href="https://www.bhimupi.org.in/" style=" display: inline-block;"><button 
					class="btn btn-primary"style=" margin-left:500px">CheckOut</button></a></c:if>
					<c:if test="${empty detail}"><h3 align="center">No Item In Your Cart Item</h3><a href="/hackathonfront/" style=" display: inline-block;"><button 
					class="btn btn-primary"style=" margin-left:100px">Back To Home</button></a></c:if>
					<br>
					<br>
		</div>
		<br><br>
	</div>
	<%@include file="/WEB-INF/views/footer.jsp"%>
	
</body>
</html>