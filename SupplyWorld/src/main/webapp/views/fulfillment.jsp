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
					<th scope="col">Product</th>
					<th scope="col">Price</th>
					<th scope="col">Quantity</th>
					<th scope="col">Product Total</th>
					<th scope="col">Order Status</th>
					<th scope="col">Order Total</th>
				</tr>
			</thead>
			<tbody>

				<%-- <c:forEach items="${orderDetails }" var="orderDetails">
					<tr>
						<td>${orderDetails.orderId }</td>
						<td>${orderDetails.productName }</td>
						<td>${orderDetails.price }</td>
						<td>${orderDetails.quantity }</td>
						<td>${orderDetails.productCurrencyFormat }</td>
						<td>${orderDetails.orderCurrencyFormat }</td>
						<td>Processing</td>
					</tr>
				</c:forEach>
 --%>
				<c:forEach var="entry" items="${ordersHash}">
					<c:forEach var="orderDetails" items="${entry.value}"
						varStatus="loop">
						<tr>
							<c:if test="${loop.index == 0}">
								<td rowspan="${entry.value.size()}" style="border-right:1px solid #dee2e6; vertical-align: middle; font-weight: bold;">${orderDetails.orderId}</td>
							</c:if>
							<td>${orderDetails.productName}</td>
							<td>${orderDetails.price}</td>
							<td>${orderDetails.quantity}</td>
							<td>${orderDetails.productCurrencyFormat}</td>
							<td>Processing</td>
							<c:if test="${loop.index == 0}">
								<td rowspan="${entry.value.size()}" style="border-left:1px solid #dee2e6; vertical-align: middle; font-weight: bold;">${orderDetails.orderCurrencyFormat}</td>
							</c:if>

						</tr>
					</c:forEach>
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