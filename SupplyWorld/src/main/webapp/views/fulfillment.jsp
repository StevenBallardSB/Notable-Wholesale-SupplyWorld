<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date"%>
<!doctype html>
<html lang="en">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<head>
<c:import url="/sharedViews/headMeta.jsp" />
<title>Orders</title>
</head>

<body>
	<c:import url="/sharedViews/header.jsp" />

	<div class="container home">
		<div class="container home2">
		<div class="row">
			<div class="col-md-12">
				<h2>Menu</h2>
				<a href="myOrders"><button class="headerButton btn">View Orders</button></a>
				<c:if test="${!orderDetails.isEmpty() }">
					<a href="fulfill"><button class="headerButton btn">Fulfill Order</button></a>
				</c:if>
				
				<a href="index.jsp"><button class="headerButton btn">Log Out</button></a>
			</div>
		</div>
		
	</div>




<c:if test="${orderDetails.isEmpty() }">
<p>There are no orders</p>
</c:if>



		<table class="table">
		<c:if test="${!orderDetails.isEmpty() }">
		<h1>Orders</h1>

			<thead>
				<tr>
					<th scope="col">Order #</th>
					<th scope="col">Product ID</th>
					<th scope="col">Name</th>
					<th scope="col">Quantity</th>
					<th scope="col">Status</th>
					<c:set var="tomorrow" value="<%=new Date(new Date().getTime() + 60*60*24*1000)%>"/>
					<c:set var="today" value="<%=new Date()%>"/>

				</tr>
			</thead>
			</c:if>
			<tbody>

<%-- 				<c:forEach items="${orderDetails }" var="orderDetails">
					<tr>
						<td>${orderDetails.orderId }</td>
						<td>${orderDetails.productId}</td>
						<td>${orderDetails.name }</td>
						<td>${orderDetails.quantity }</td>
						<td>${orderDetails.status }</td>
						
					</tr>
				</c:forEach> --%>
		
		<c:forEach var="entry" items="${adminOrdersHash}">
					<c:forEach var="adminOrder" items="${entry.value}"
						varStatus="loop">
						<tr>
							<c:if test="${loop.index == 0}">
								<td rowspan="${entry.value.size()}" style="border-right:1px solid #dee2e6; vertical-align: middle; font-weight: bold;">${adminOrder.orderId}</td>
							</c:if>
							<td>${adminOrder.productId}</td>
							<td>${adminOrder.name}</td>
							<td>${adminOrder.quantity}</td>
							
							<c:choose>
									<c:when test="${adminOrder.status == 'Processing'}">
										<c:if test="${loop.index == 0}">
											<td rowspan="${entry.value.size()}"
												style="border-left: 1px solid #dee2e6; vertical-align: middle; font-weight: bold;">
												${adminOrder.status} - <fmt:formatDate type="date" value="${tomorrow}" pattern="MM/dd/yyyy"/></td>
										</c:if>
							
									</c:when>
									<c:when test="${adminOrder.status == 'Complete'}">
										<c:if test="${loop.index == 0}">
											<td rowspan="${entry.value.size()}"
<%-- 												colspan="${entry.value.size()}" --%>
												style="border-left: 1px solid #dee2e6; vertical-align: middle; font-weight: bold;">
												${adminOrder.status} - <fmt:formatDate type="date" value="${today}" pattern="MM/dd/yyyy"/>
												</td>
										</c:if>
								
							
									</c:when>
								</c:choose>
							
						</tr>
					</c:forEach>
				</c:forEach>
		
			</tbody>
		</table>
	</div>
	

<!-- 		<div class="container home"> -->
<!-- 		<div class="row"> -->
<!-- 			<div class="col-md-12"> -->
<!-- 				<a href="fulfill"><button class="headerButton btn">Fulfill Order</button></a> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 		</div> -->
	

	<c:import url="/sharedViews/footer.jsp" />
	<c:import url="/sharedViews/scripts.jsp" />

</body>

</html>