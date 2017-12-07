<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<s:url var="css" value="/resources/css/"></s:url>
<s:url value="/resources/js" var="js"></s:url>
<s:url var="url_img" value="/resources/Image/"></s:url>
<s:url var="url_product_img" value="/resources/Image/ProductImages"></s:url>
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
<title>${product.name}</title>
</head>
<body>
		<%@include file="/WEB-INF/views/navbar.jsp"%>
			<div class="row">
			<c:if test="${!empty product}">
				<div class="col-sm-4">
					<img src="${url_product_img}/${product.name}.jpg"
						alt="productimage"  width="400" class="pop">
				</div>
				<div class="col-sm-4">
					<br> <br> <br>
					<hr>
					<h5 id="productname">${product.name}</h5>
					<br> <strong><font size="+1">&#x20B9
							${product.price}</font></strong><br>
					<br>
					<hr>
					<c:if test="${empty product.quantity}"><h6 style="color: green; font-size: 15px">
						Out Of Stock<span class="badge">--</span>
					</h6></c:if>
					<c:if test="${!empty product.quantity }">
					<h6 style="color: green; font-size: 15px">
						Quantity In Stock<span class="badge">${product.quantity} Quintal</span>
					</h6></c:if>
					<hr>
					<h6 id="heading">Description</h6>
					<br>
					<p id="paragraph">${product.description}</p>
					<hr>
					<h6 id="heading">Keywords</h6>
					<br>
					<p id="paragraph">${product.keywords}</p>
					<hr>
					<h6 id="heading">Supplier</h6>
					<hr>
					<h4>${product.supplier}<span class="badge"
							style="color: green; font-weight: bold; background-color: black">&#10004
							VERIFIED</span>
					</h4>
					<hr>
					<h6 id="heading">More about Product</h6>
					<br>
					<p id="paragraph"><strong>Category name:-</strong>${product.category_name}</p>
					<hr>
					<a href="/Frontend1/user/buynow/${product.product_id}"><button class="btn" style="background-color:green;font-weight:bold;color:black">Buy Now</button></a>
					<br><br>
					<form action="/hackathonfront/addcart/${product.product_id}">
					<button class="btn btn-primary" type="submit">Add To Cart</button></form>
				</div>
			</c:if>
			<div class="col-sm-4">
				<c:if test="${!empty suggestproduct}">
					<div class="row" id="featureheading" class="container">
						<div class="col-sm-4" style="display: inline-block">
							<br> <br> <br>
							<h4>Suggested</h4>
							<a href="/Frontend1/productdetail/${suggestproduct.product_id}"><img
								src="${url_product_img}/${suggestproduct.name}.jpg"
								alt="productimage" width="250px" ><br>
								<strong><font size="2">${suggestproduct.name}</font></strong><br>
								<strong>&#x20B9 ${suggestproduct.price}</strong></a><br>
							<br>
						</div>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</div>
				</c:if>
			</div>
		</div>
		<div>
			<c:if test="${!empty suggestion}">
				<div class="row" id="featureheading" class="container">
					<hr>
					<h2>More product From Same Category........</h2>
					<hr>
					<c:forEach var="pro" items="${suggestion}">
						<div class="col-sm-4" style="display: inline-block">
							<a href="/Frontend1/productdetail/${pro.product_id}"><img
								src="${url_product_img}/${pro.name}.jpg"
								alt="productimage" width="250px" height="220px"><br>
								<strong><font size="2">${pro.name}</font></strong><br> <strong>&#x20B9
									${pro.price}</strong></a><br>
							<br>
						</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</c:forEach>
					<br>
				</div>
				<hr>
			</c:if>
		</div>
	</div>
	<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>