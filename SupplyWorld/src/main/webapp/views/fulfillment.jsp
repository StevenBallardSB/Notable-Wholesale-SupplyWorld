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
				<h1>Administrator Page</h1>
				<a href="myOrders"><button class="headerButton btn">View Orders</button></a>
			</div>
		</div>
	</div>

		<table class="table">
			<thead>
				<tr>
					<th scope="col">Order #</th>
					<th scope="col">Product ID</th>
					<th scope="col">Name</th>
					<th scope="col">Quantity</th>
					<th scope="col">Status</th>

				</tr>
			</thead>
			<tbody>

				<c:forEach items="${orderDetails }" var="orderDetails">
					<tr>
						<td>${orderDetails.orderId }</td>
						<td>${orderDetails.productId}</td>
						<td>${orderDetails.name }</td>
						<td>${orderDetails.quantity }</td>
						<td>${orderDetails.status }</td>
						
					</tr>
				</c:forEach>
		
			</tbody>
		</table>
	</div>
	

		<div class="container home">
		<div class="row">
			<div class="col-md-12">
				<a href="fulfill"><button class="headerButton btn">Fulfill Order</button></a>
			</div>
		</div>
		</div>
	

	<c:import url="/sharedViews/footer.jsp" />
	<c:import url="/sharedViews/scripts.jsp" />

</body>

</html>