<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<c:import url="/sharedViews/headMeta.jsp" />
<title>Notable Wholesale - Home</title>
</head>

<body>
	<c:import url="/sharedViews/header.jsp" />

	<div class="container home">
		<div class="row">
			<div class="col-md-12">
				<h1>Featured Products</h1>
			</div>
		</div>
	</div>
	<div class="container home">
		<div class="row featureProducts">
			<div class="col-sm-3">
				<a href="product?name=javelin"><img src="images/javelin.jpg"
					alt="Roman Javelin"></a>
				<p>Authentic Roman Javelin</p>
				<p>$575.99</p>
			</div>
			<div class="col-sm-3">
				<a href="product?name=TV"><img src="images/television.jpg"
					alt="Television"></a>
				<p>Samsung 40in Television</p>
				<p>$299.00</p>
			</div>
			<div class="col-sm-3">
				<a href="product?name=stapler"><img src="images/stapler.jpg"
					alt="Stapler"></a>
				<p>Stapler</p>
				<p>$9.99</p>
			</div>
			<div class="col-sm-3">
				<a href="product?name=romphim"><img src="images/romphim.jpg"
					alt="Romphim"></a>
				<p>Stylish Romphim</p>
				<p>$59.99</p>
			</div>
		</div>
	</div>

	<c:import url="/sharedViews/footer.jsp" />
	<c:import url="/sharedViews/scripts.jsp" />

</body>

</html>
