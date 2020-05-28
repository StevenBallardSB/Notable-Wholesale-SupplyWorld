<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<c:import url="/sharedViews/headMeta.jsp" />
<title>Cart</title>
</head>

<body>
  <c:import url="/sharedViews/header.jsp" />

  <c:if test="${cookie.loggedInCookie.value == 'yes'}">
      <div class="container home">
	<div class="row">
	<div class="col-xs-12 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3 col-xl-4 col-xl-offset-4">
		<div class="container" id="nwContainer">
			<div class="card" id="nwCard">
							<h1>Cart</h1>
				<div class="container-fluid" id="nwContainer">
    <c:choose>
      <c:when test="${emptyCart != null}">
          <p>Your cart is empty.</p>
      </c:when>
      <c:when test="${cart == null}">
          <p>Your cart is empty.</p>
      </c:when>
      <c:otherwise>
        <table>
           <tr>
            <th class="cartTD">Qty</th>
						<th class="cartTD">Name</th>
						<th class="cartTD">Price</th>
						<th class="cartTD">Amount</th>
						<th>&nbsp;</th>
         </tr>
          <c:forEach var="item" items="${cart.items}">
            <tr class="cart_row">
              <td>
                <form action="<c:url value='cart'/>" method="post">

				  <input type="hidden" name="name" value="<c:out value='${item.product.name}'/>">
                  <input type="number" name='${item.product.name}' class="cartQuantity" min="1" max="100" value="<c:out value='${item.quantity}'/>" id="quantity">                         
                  <input type="submit" class="headerButton btn" name = "action" value="Update">
                </form>                  
              </td>
              <td class="cartTD">${item.product.name}</td>
							<td class="cartTD">${item.product.priceCurrencyFormat}</td>
							<td class="cartTD">${item.totalCurrencyFormat}</td>

              <td>
                <form action="<c:url value='cart'/>" method="post">

                  <input type="hidden" name="name" value="<c:out value='${item.product.name}'/>">
                  <input type="submit" class="headerButton btn" name= "action" value="Remove">

                </form>                  
              </td>
            </tr>
          </c:forEach>


          </table>
      </c:otherwise>
  </c:choose>
    </div>
			</div>
		</div>
	</div>
	</div>
</div>
</c:if>
 <c:if test="${cookie.loggedInCookie.value != 'yes'}">
 	<p>Please log in to view your cart</p>
 </c:if>
    <c:import url="/sharedViews/footer.jsp" />
	<c:import url="/sharedViews/scripts.jsp" />

</body>

</html>