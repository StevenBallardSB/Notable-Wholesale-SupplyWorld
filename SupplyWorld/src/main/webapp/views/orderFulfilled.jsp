<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<c:import url="/sharedViews/headMeta.jsp" />
<title>Orders</title>
</head>

<body>
	<c:import url="/sharedViews/header.jsp" />

	<div class="container home">
		<div class="container home">
		<div class="row">
			<div class="col-md-12">
				<h3 style="color:red">Order Fulfilled</h3>
				<a href="myOrders"><button class="headerButton btn">View Orders</button></a>
				<a href="index.jsp"><button class="headerButton btn">Log Out</button></a>
			</div>
		</div>
	</div>

		
	</div>
	


	

	<c:import url="/sharedViews/footer.jsp" />
	<c:import url="/sharedViews/scripts.jsp" />

</body>

</html>